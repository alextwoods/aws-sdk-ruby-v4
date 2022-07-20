# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECR
  module Params

    module Attribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attribute, context: context)
        type = Types::Attribute.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthorizationData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationData, context: context)
        type = Types::AuthorizationData.new
        type.authorization_token = params[:authorization_token]
        type.expires_at = params[:expires_at]
        type.proxy_endpoint = params[:proxy_endpoint]
        type
      end
    end

    module AuthorizationDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuthorizationData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcrContainerImageDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcrContainerImageDetails, context: context)
        type = Types::AwsEcrContainerImageDetails.new
        type.architecture = params[:architecture]
        type.author = params[:author]
        type.image_hash = params[:image_hash]
        type.image_tags = ImageTagsList.build(params[:image_tags], context: "#{context}[:image_tags]") unless params[:image_tags].nil?
        type.platform = params[:platform]
        type.pushed_at = params[:pushed_at]
        type.registry = params[:registry]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module BatchCheckLayerAvailabilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCheckLayerAvailabilityInput, context: context)
        type = Types::BatchCheckLayerAvailabilityInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.layer_digests = BatchedOperationLayerDigestList.build(params[:layer_digests], context: "#{context}[:layer_digests]") unless params[:layer_digests].nil?
        type
      end
    end

    module BatchCheckLayerAvailabilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCheckLayerAvailabilityOutput, context: context)
        type = Types::BatchCheckLayerAvailabilityOutput.new
        type.layers = LayerList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.failures = LayerFailureList.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module BatchDeleteImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteImageInput, context: context)
        type = Types::BatchDeleteImageInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_ids = ImageIdentifierList.build(params[:image_ids], context: "#{context}[:image_ids]") unless params[:image_ids].nil?
        type
      end
    end

    module BatchDeleteImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteImageOutput, context: context)
        type = Types::BatchDeleteImageOutput.new
        type.image_ids = ImageIdentifierList.build(params[:image_ids], context: "#{context}[:image_ids]") unless params[:image_ids].nil?
        type.failures = ImageFailureList.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module BatchGetImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetImageInput, context: context)
        type = Types::BatchGetImageInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_ids = ImageIdentifierList.build(params[:image_ids], context: "#{context}[:image_ids]") unless params[:image_ids].nil?
        type.accepted_media_types = MediaTypeList.build(params[:accepted_media_types], context: "#{context}[:accepted_media_types]") unless params[:accepted_media_types].nil?
        type
      end
    end

    module BatchGetImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetImageOutput, context: context)
        type = Types::BatchGetImageOutput.new
        type.images = ImageList.build(params[:images], context: "#{context}[:images]") unless params[:images].nil?
        type.failures = ImageFailureList.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module BatchGetRepositoryScanningConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetRepositoryScanningConfigurationInput, context: context)
        type = Types::BatchGetRepositoryScanningConfigurationInput.new
        type.repository_names = ScanningConfigurationRepositoryNameList.build(params[:repository_names], context: "#{context}[:repository_names]") unless params[:repository_names].nil?
        type
      end
    end

    module BatchGetRepositoryScanningConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetRepositoryScanningConfigurationOutput, context: context)
        type = Types::BatchGetRepositoryScanningConfigurationOutput.new
        type.scanning_configurations = RepositoryScanningConfigurationList.build(params[:scanning_configurations], context: "#{context}[:scanning_configurations]") unless params[:scanning_configurations].nil?
        type.failures = RepositoryScanningConfigurationFailureList.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module BatchedOperationLayerDigestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CompleteLayerUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteLayerUploadInput, context: context)
        type = Types::CompleteLayerUploadInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.upload_id = params[:upload_id]
        type.layer_digests = LayerDigestList.build(params[:layer_digests], context: "#{context}[:layer_digests]") unless params[:layer_digests].nil?
        type
      end
    end

    module CompleteLayerUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteLayerUploadOutput, context: context)
        type = Types::CompleteLayerUploadOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.upload_id = params[:upload_id]
        type.layer_digest = params[:layer_digest]
        type
      end
    end

    module CreatePullThroughCacheRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePullThroughCacheRuleInput, context: context)
        type = Types::CreatePullThroughCacheRuleInput.new
        type.ecr_repository_prefix = params[:ecr_repository_prefix]
        type.upstream_registry_url = params[:upstream_registry_url]
        type.registry_id = params[:registry_id]
        type
      end
    end

    module CreatePullThroughCacheRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePullThroughCacheRuleOutput, context: context)
        type = Types::CreatePullThroughCacheRuleOutput.new
        type.ecr_repository_prefix = params[:ecr_repository_prefix]
        type.upstream_registry_url = params[:upstream_registry_url]
        type.created_at = params[:created_at]
        type.registry_id = params[:registry_id]
        type
      end
    end

    module CreateRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryInput, context: context)
        type = Types::CreateRepositoryInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.image_tag_mutability = params[:image_tag_mutability]
        type.image_scanning_configuration = ImageScanningConfiguration.build(params[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless params[:image_scanning_configuration].nil?
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module CreateRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryOutput, context: context)
        type = Types::CreateRepositoryOutput.new
        type.repository = Repository.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module CvssScore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CvssScore, context: context)
        type = Types::CvssScore.new
        type.base_score = params[:base_score]
        type.scoring_vector = params[:scoring_vector]
        type.source = params[:source]
        type.version = params[:version]
        type
      end
    end

    module CvssScoreAdjustment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CvssScoreAdjustment, context: context)
        type = Types::CvssScoreAdjustment.new
        type.metric = params[:metric]
        type.reason = params[:reason]
        type
      end
    end

    module CvssScoreAdjustmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CvssScoreAdjustment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CvssScoreDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CvssScoreDetails, context: context)
        type = Types::CvssScoreDetails.new
        type.adjustments = CvssScoreAdjustmentList.build(params[:adjustments], context: "#{context}[:adjustments]") unless params[:adjustments].nil?
        type.score = params[:score]
        type.score_source = params[:score_source]
        type.scoring_vector = params[:scoring_vector]
        type.version = params[:version]
        type
      end
    end

    module CvssScoreList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CvssScore.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLifecyclePolicyInput, context: context)
        type = Types::DeleteLifecyclePolicyInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module DeleteLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLifecyclePolicyOutput, context: context)
        type = Types::DeleteLifecyclePolicyOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.lifecycle_policy_text = params[:lifecycle_policy_text]
        type.last_evaluated_at = params[:last_evaluated_at]
        type
      end
    end

    module DeletePullThroughCacheRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePullThroughCacheRuleInput, context: context)
        type = Types::DeletePullThroughCacheRuleInput.new
        type.ecr_repository_prefix = params[:ecr_repository_prefix]
        type.registry_id = params[:registry_id]
        type
      end
    end

    module DeletePullThroughCacheRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePullThroughCacheRuleOutput, context: context)
        type = Types::DeletePullThroughCacheRuleOutput.new
        type.ecr_repository_prefix = params[:ecr_repository_prefix]
        type.upstream_registry_url = params[:upstream_registry_url]
        type.created_at = params[:created_at]
        type.registry_id = params[:registry_id]
        type
      end
    end

    module DeleteRegistryPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegistryPolicyInput, context: context)
        type = Types::DeleteRegistryPolicyInput.new
        type
      end
    end

    module DeleteRegistryPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegistryPolicyOutput, context: context)
        type = Types::DeleteRegistryPolicyOutput.new
        type.registry_id = params[:registry_id]
        type.policy_text = params[:policy_text]
        type
      end
    end

    module DeleteRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryInput, context: context)
        type = Types::DeleteRepositoryInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.force = params[:force]
        type
      end
    end

    module DeleteRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryOutput, context: context)
        type = Types::DeleteRepositoryOutput.new
        type.repository = Repository.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type
      end
    end

    module DeleteRepositoryPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryPolicyInput, context: context)
        type = Types::DeleteRepositoryPolicyInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module DeleteRepositoryPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryPolicyOutput, context: context)
        type = Types::DeleteRepositoryPolicyOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.policy_text = params[:policy_text]
        type
      end
    end

    module DescribeImageReplicationStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageReplicationStatusInput, context: context)
        type = Types::DescribeImageReplicationStatusInput.new
        type.repository_name = params[:repository_name]
        type.image_id = ImageIdentifier.build(params[:image_id], context: "#{context}[:image_id]") unless params[:image_id].nil?
        type.registry_id = params[:registry_id]
        type
      end
    end

    module DescribeImageReplicationStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageReplicationStatusOutput, context: context)
        type = Types::DescribeImageReplicationStatusOutput.new
        type.repository_name = params[:repository_name]
        type.image_id = ImageIdentifier.build(params[:image_id], context: "#{context}[:image_id]") unless params[:image_id].nil?
        type.replication_statuses = ImageReplicationStatusList.build(params[:replication_statuses], context: "#{context}[:replication_statuses]") unless params[:replication_statuses].nil?
        type
      end
    end

    module DescribeImageScanFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageScanFindingsInput, context: context)
        type = Types::DescribeImageScanFindingsInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_id = ImageIdentifier.build(params[:image_id], context: "#{context}[:image_id]") unless params[:image_id].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeImageScanFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageScanFindingsOutput, context: context)
        type = Types::DescribeImageScanFindingsOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_id = ImageIdentifier.build(params[:image_id], context: "#{context}[:image_id]") unless params[:image_id].nil?
        type.image_scan_status = ImageScanStatus.build(params[:image_scan_status], context: "#{context}[:image_scan_status]") unless params[:image_scan_status].nil?
        type.image_scan_findings = ImageScanFindings.build(params[:image_scan_findings], context: "#{context}[:image_scan_findings]") unless params[:image_scan_findings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeImagesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImagesFilter, context: context)
        type = Types::DescribeImagesFilter.new
        type.tag_status = params[:tag_status]
        type
      end
    end

    module DescribeImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImagesInput, context: context)
        type = Types::DescribeImagesInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_ids = ImageIdentifierList.build(params[:image_ids], context: "#{context}[:image_ids]") unless params[:image_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filter = DescribeImagesFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module DescribeImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImagesOutput, context: context)
        type = Types::DescribeImagesOutput.new
        type.image_details = ImageDetailList.build(params[:image_details], context: "#{context}[:image_details]") unless params[:image_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePullThroughCacheRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePullThroughCacheRulesInput, context: context)
        type = Types::DescribePullThroughCacheRulesInput.new
        type.registry_id = params[:registry_id]
        type.ecr_repository_prefixes = PullThroughCacheRuleRepositoryPrefixList.build(params[:ecr_repository_prefixes], context: "#{context}[:ecr_repository_prefixes]") unless params[:ecr_repository_prefixes].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribePullThroughCacheRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePullThroughCacheRulesOutput, context: context)
        type = Types::DescribePullThroughCacheRulesOutput.new
        type.pull_through_cache_rules = PullThroughCacheRuleList.build(params[:pull_through_cache_rules], context: "#{context}[:pull_through_cache_rules]") unless params[:pull_through_cache_rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRegistryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegistryInput, context: context)
        type = Types::DescribeRegistryInput.new
        type
      end
    end

    module DescribeRegistryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegistryOutput, context: context)
        type = Types::DescribeRegistryOutput.new
        type.registry_id = params[:registry_id]
        type.replication_configuration = ReplicationConfiguration.build(params[:replication_configuration], context: "#{context}[:replication_configuration]") unless params[:replication_configuration].nil?
        type
      end
    end

    module DescribeRepositoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRepositoriesInput, context: context)
        type = Types::DescribeRepositoriesInput.new
        type.registry_id = params[:registry_id]
        type.repository_names = RepositoryNameList.build(params[:repository_names], context: "#{context}[:repository_names]") unless params[:repository_names].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeRepositoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRepositoriesOutput, context: context)
        type = Types::DescribeRepositoriesOutput.new
        type.repositories = RepositoryList.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module EmptyUploadException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmptyUploadException, context: context)
        type = Types::EmptyUploadException.new
        type.message = params[:message]
        type
      end
    end

    module EncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfiguration, context: context)
        type = Types::EncryptionConfiguration.new
        type.encryption_type = params[:encryption_type]
        type.kms_key = params[:kms_key]
        type
      end
    end

    module EnhancedImageScanFinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnhancedImageScanFinding, context: context)
        type = Types::EnhancedImageScanFinding.new
        type.aws_account_id = params[:aws_account_id]
        type.description = params[:description]
        type.finding_arn = params[:finding_arn]
        type.first_observed_at = params[:first_observed_at]
        type.last_observed_at = params[:last_observed_at]
        type.package_vulnerability_details = PackageVulnerabilityDetails.build(params[:package_vulnerability_details], context: "#{context}[:package_vulnerability_details]") unless params[:package_vulnerability_details].nil?
        type.remediation = Remediation.build(params[:remediation], context: "#{context}[:remediation]") unless params[:remediation].nil?
        type.resources = ResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.score = params[:score]
        type.score_details = ScoreDetails.build(params[:score_details], context: "#{context}[:score_details]") unless params[:score_details].nil?
        type.severity = params[:severity]
        type.status = params[:status]
        type.title = params[:title]
        type.type = params[:type]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module EnhancedImageScanFindingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnhancedImageScanFinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FindingSeverityCounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetAuthorizationTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizationTokenInput, context: context)
        type = Types::GetAuthorizationTokenInput.new
        type.registry_ids = GetAuthorizationTokenRegistryIdList.build(params[:registry_ids], context: "#{context}[:registry_ids]") unless params[:registry_ids].nil?
        type
      end
    end

    module GetAuthorizationTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizationTokenOutput, context: context)
        type = Types::GetAuthorizationTokenOutput.new
        type.authorization_data = AuthorizationDataList.build(params[:authorization_data], context: "#{context}[:authorization_data]") unless params[:authorization_data].nil?
        type
      end
    end

    module GetAuthorizationTokenRegistryIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetDownloadUrlForLayerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDownloadUrlForLayerInput, context: context)
        type = Types::GetDownloadUrlForLayerInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.layer_digest = params[:layer_digest]
        type
      end
    end

    module GetDownloadUrlForLayerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDownloadUrlForLayerOutput, context: context)
        type = Types::GetDownloadUrlForLayerOutput.new
        type.download_url = params[:download_url]
        type.layer_digest = params[:layer_digest]
        type
      end
    end

    module GetLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePolicyInput, context: context)
        type = Types::GetLifecyclePolicyInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module GetLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePolicyOutput, context: context)
        type = Types::GetLifecyclePolicyOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.lifecycle_policy_text = params[:lifecycle_policy_text]
        type.last_evaluated_at = params[:last_evaluated_at]
        type
      end
    end

    module GetLifecyclePolicyPreviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePolicyPreviewInput, context: context)
        type = Types::GetLifecyclePolicyPreviewInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_ids = ImageIdentifierList.build(params[:image_ids], context: "#{context}[:image_ids]") unless params[:image_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filter = LifecyclePolicyPreviewFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module GetLifecyclePolicyPreviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePolicyPreviewOutput, context: context)
        type = Types::GetLifecyclePolicyPreviewOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.lifecycle_policy_text = params[:lifecycle_policy_text]
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.preview_results = LifecyclePolicyPreviewResultList.build(params[:preview_results], context: "#{context}[:preview_results]") unless params[:preview_results].nil?
        type.summary = LifecyclePolicyPreviewSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module GetRegistryPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistryPolicyInput, context: context)
        type = Types::GetRegistryPolicyInput.new
        type
      end
    end

    module GetRegistryPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistryPolicyOutput, context: context)
        type = Types::GetRegistryPolicyOutput.new
        type.registry_id = params[:registry_id]
        type.policy_text = params[:policy_text]
        type
      end
    end

    module GetRegistryScanningConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistryScanningConfigurationInput, context: context)
        type = Types::GetRegistryScanningConfigurationInput.new
        type
      end
    end

    module GetRegistryScanningConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistryScanningConfigurationOutput, context: context)
        type = Types::GetRegistryScanningConfigurationOutput.new
        type.registry_id = params[:registry_id]
        type.scanning_configuration = RegistryScanningConfiguration.build(params[:scanning_configuration], context: "#{context}[:scanning_configuration]") unless params[:scanning_configuration].nil?
        type
      end
    end

    module GetRepositoryPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryPolicyInput, context: context)
        type = Types::GetRepositoryPolicyInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module GetRepositoryPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryPolicyOutput, context: context)
        type = Types::GetRepositoryPolicyOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.policy_text = params[:policy_text]
        type
      end
    end

    module Image
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Image, context: context)
        type = Types::Image.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_id = ImageIdentifier.build(params[:image_id], context: "#{context}[:image_id]") unless params[:image_id].nil?
        type.image_manifest = params[:image_manifest]
        type.image_manifest_media_type = params[:image_manifest_media_type]
        type
      end
    end

    module ImageAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageAlreadyExistsException, context: context)
        type = Types::ImageAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ImageDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageDetail, context: context)
        type = Types::ImageDetail.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_digest = params[:image_digest]
        type.image_tags = ImageTagList.build(params[:image_tags], context: "#{context}[:image_tags]") unless params[:image_tags].nil?
        type.image_size_in_bytes = params[:image_size_in_bytes]
        type.image_pushed_at = params[:image_pushed_at]
        type.image_scan_status = ImageScanStatus.build(params[:image_scan_status], context: "#{context}[:image_scan_status]") unless params[:image_scan_status].nil?
        type.image_scan_findings_summary = ImageScanFindingsSummary.build(params[:image_scan_findings_summary], context: "#{context}[:image_scan_findings_summary]") unless params[:image_scan_findings_summary].nil?
        type.image_manifest_media_type = params[:image_manifest_media_type]
        type.artifact_media_type = params[:artifact_media_type]
        type.last_recorded_pull_time = params[:last_recorded_pull_time]
        type
      end
    end

    module ImageDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageDigestDoesNotMatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageDigestDoesNotMatchException, context: context)
        type = Types::ImageDigestDoesNotMatchException.new
        type.message = params[:message]
        type
      end
    end

    module ImageFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageFailure, context: context)
        type = Types::ImageFailure.new
        type.image_id = ImageIdentifier.build(params[:image_id], context: "#{context}[:image_id]") unless params[:image_id].nil?
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module ImageFailureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageFailure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageIdentifier, context: context)
        type = Types::ImageIdentifier.new
        type.image_digest = params[:image_digest]
        type.image_tag = params[:image_tag]
        type
      end
    end

    module ImageIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Image.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageNotFoundException, context: context)
        type = Types::ImageNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ImageReplicationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageReplicationStatus, context: context)
        type = Types::ImageReplicationStatus.new
        type.region = params[:region]
        type.registry_id = params[:registry_id]
        type.status = params[:status]
        type.failure_code = params[:failure_code]
        type
      end
    end

    module ImageReplicationStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageReplicationStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageScanFinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageScanFinding, context: context)
        type = Types::ImageScanFinding.new
        type.name = params[:name]
        type.description = params[:description]
        type.uri = params[:uri]
        type.severity = params[:severity]
        type.attributes = AttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ImageScanFindingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageScanFinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageScanFindings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageScanFindings, context: context)
        type = Types::ImageScanFindings.new
        type.image_scan_completed_at = params[:image_scan_completed_at]
        type.vulnerability_source_updated_at = params[:vulnerability_source_updated_at]
        type.finding_severity_counts = FindingSeverityCounts.build(params[:finding_severity_counts], context: "#{context}[:finding_severity_counts]") unless params[:finding_severity_counts].nil?
        type.findings = ImageScanFindingList.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type.enhanced_findings = EnhancedImageScanFindingList.build(params[:enhanced_findings], context: "#{context}[:enhanced_findings]") unless params[:enhanced_findings].nil?
        type
      end
    end

    module ImageScanFindingsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageScanFindingsSummary, context: context)
        type = Types::ImageScanFindingsSummary.new
        type.image_scan_completed_at = params[:image_scan_completed_at]
        type.vulnerability_source_updated_at = params[:vulnerability_source_updated_at]
        type.finding_severity_counts = FindingSeverityCounts.build(params[:finding_severity_counts], context: "#{context}[:finding_severity_counts]") unless params[:finding_severity_counts].nil?
        type
      end
    end

    module ImageScanStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageScanStatus, context: context)
        type = Types::ImageScanStatus.new
        type.status = params[:status]
        type.description = params[:description]
        type
      end
    end

    module ImageScanningConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageScanningConfiguration, context: context)
        type = Types::ImageScanningConfiguration.new
        type.scan_on_push = params[:scan_on_push]
        type
      end
    end

    module ImageTagAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageTagAlreadyExistsException, context: context)
        type = Types::ImageTagAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ImageTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImageTagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InitiateLayerUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateLayerUploadInput, context: context)
        type = Types::InitiateLayerUploadInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module InitiateLayerUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateLayerUploadOutput, context: context)
        type = Types::InitiateLayerUploadOutput.new
        type.upload_id = params[:upload_id]
        type.part_size = params[:part_size]
        type
      end
    end

    module InvalidLayerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLayerException, context: context)
        type = Types::InvalidLayerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidLayerPartException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLayerPartException, context: context)
        type = Types::InvalidLayerPartException.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.upload_id = params[:upload_id]
        type.last_valid_byte_received = params[:last_valid_byte_received]
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagParameterException, context: context)
        type = Types::InvalidTagParameterException.new
        type.message = params[:message]
        type
      end
    end

    module KmsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KmsException, context: context)
        type = Types::KmsException.new
        type.message = params[:message]
        type.kms_error = params[:kms_error]
        type
      end
    end

    module Layer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Layer, context: context)
        type = Types::Layer.new
        type.layer_digest = params[:layer_digest]
        type.layer_availability = params[:layer_availability]
        type.layer_size = params[:layer_size]
        type.media_type = params[:media_type]
        type
      end
    end

    module LayerAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LayerAlreadyExistsException, context: context)
        type = Types::LayerAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module LayerDigestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LayerFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LayerFailure, context: context)
        type = Types::LayerFailure.new
        type.layer_digest = params[:layer_digest]
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module LayerFailureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LayerFailure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LayerInaccessibleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LayerInaccessibleException, context: context)
        type = Types::LayerInaccessibleException.new
        type.message = params[:message]
        type
      end
    end

    module LayerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Layer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LayerPartTooSmallException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LayerPartTooSmallException, context: context)
        type = Types::LayerPartTooSmallException.new
        type.message = params[:message]
        type
      end
    end

    module LayersNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LayersNotFoundException, context: context)
        type = Types::LayersNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module LifecyclePolicyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicyNotFoundException, context: context)
        type = Types::LifecyclePolicyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module LifecyclePolicyPreviewFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicyPreviewFilter, context: context)
        type = Types::LifecyclePolicyPreviewFilter.new
        type.tag_status = params[:tag_status]
        type
      end
    end

    module LifecyclePolicyPreviewInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicyPreviewInProgressException, context: context)
        type = Types::LifecyclePolicyPreviewInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module LifecyclePolicyPreviewNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicyPreviewNotFoundException, context: context)
        type = Types::LifecyclePolicyPreviewNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module LifecyclePolicyPreviewResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicyPreviewResult, context: context)
        type = Types::LifecyclePolicyPreviewResult.new
        type.image_tags = ImageTagList.build(params[:image_tags], context: "#{context}[:image_tags]") unless params[:image_tags].nil?
        type.image_digest = params[:image_digest]
        type.image_pushed_at = params[:image_pushed_at]
        type.action = LifecyclePolicyRuleAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.applied_rule_priority = params[:applied_rule_priority]
        type
      end
    end

    module LifecyclePolicyPreviewResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LifecyclePolicyPreviewResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LifecyclePolicyPreviewSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicyPreviewSummary, context: context)
        type = Types::LifecyclePolicyPreviewSummary.new
        type.expiring_image_total_count = params[:expiring_image_total_count]
        type
      end
    end

    module LifecyclePolicyRuleAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicyRuleAction, context: context)
        type = Types::LifecyclePolicyRuleAction.new
        type.type = params[:type]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListImagesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagesFilter, context: context)
        type = Types::ListImagesFilter.new
        type.tag_status = params[:tag_status]
        type
      end
    end

    module ListImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagesInput, context: context)
        type = Types::ListImagesInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filter = ListImagesFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module ListImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagesOutput, context: context)
        type = Types::ListImagesOutput.new
        type.image_ids = ImageIdentifierList.build(params[:image_ids], context: "#{context}[:image_ids]") unless params[:image_ids].nil?
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

    module MediaTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PackageVulnerabilityDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageVulnerabilityDetails, context: context)
        type = Types::PackageVulnerabilityDetails.new
        type.cvss = CvssScoreList.build(params[:cvss], context: "#{context}[:cvss]") unless params[:cvss].nil?
        type.reference_urls = ReferenceUrlsList.build(params[:reference_urls], context: "#{context}[:reference_urls]") unless params[:reference_urls].nil?
        type.related_vulnerabilities = RelatedVulnerabilitiesList.build(params[:related_vulnerabilities], context: "#{context}[:related_vulnerabilities]") unless params[:related_vulnerabilities].nil?
        type.source = params[:source]
        type.source_url = params[:source_url]
        type.vendor_created_at = params[:vendor_created_at]
        type.vendor_severity = params[:vendor_severity]
        type.vendor_updated_at = params[:vendor_updated_at]
        type.vulnerability_id = params[:vulnerability_id]
        type.vulnerable_packages = VulnerablePackagesList.build(params[:vulnerable_packages], context: "#{context}[:vulnerable_packages]") unless params[:vulnerable_packages].nil?
        type
      end
    end

    module PullThroughCacheRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullThroughCacheRule, context: context)
        type = Types::PullThroughCacheRule.new
        type.ecr_repository_prefix = params[:ecr_repository_prefix]
        type.upstream_registry_url = params[:upstream_registry_url]
        type.created_at = params[:created_at]
        type.registry_id = params[:registry_id]
        type
      end
    end

    module PullThroughCacheRuleAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullThroughCacheRuleAlreadyExistsException, context: context)
        type = Types::PullThroughCacheRuleAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module PullThroughCacheRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PullThroughCacheRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PullThroughCacheRuleNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullThroughCacheRuleNotFoundException, context: context)
        type = Types::PullThroughCacheRuleNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PullThroughCacheRuleRepositoryPrefixList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PutImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImageInput, context: context)
        type = Types::PutImageInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_manifest = params[:image_manifest]
        type.image_manifest_media_type = params[:image_manifest_media_type]
        type.image_tag = params[:image_tag]
        type.image_digest = params[:image_digest]
        type
      end
    end

    module PutImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImageOutput, context: context)
        type = Types::PutImageOutput.new
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type
      end
    end

    module PutImageScanningConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImageScanningConfigurationInput, context: context)
        type = Types::PutImageScanningConfigurationInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_scanning_configuration = ImageScanningConfiguration.build(params[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless params[:image_scanning_configuration].nil?
        type
      end
    end

    module PutImageScanningConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImageScanningConfigurationOutput, context: context)
        type = Types::PutImageScanningConfigurationOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_scanning_configuration = ImageScanningConfiguration.build(params[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless params[:image_scanning_configuration].nil?
        type
      end
    end

    module PutImageTagMutabilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImageTagMutabilityInput, context: context)
        type = Types::PutImageTagMutabilityInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_tag_mutability = params[:image_tag_mutability]
        type
      end
    end

    module PutImageTagMutabilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutImageTagMutabilityOutput, context: context)
        type = Types::PutImageTagMutabilityOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_tag_mutability = params[:image_tag_mutability]
        type
      end
    end

    module PutLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecyclePolicyInput, context: context)
        type = Types::PutLifecyclePolicyInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.lifecycle_policy_text = params[:lifecycle_policy_text]
        type
      end
    end

    module PutLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecyclePolicyOutput, context: context)
        type = Types::PutLifecyclePolicyOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.lifecycle_policy_text = params[:lifecycle_policy_text]
        type
      end
    end

    module PutRegistryPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRegistryPolicyInput, context: context)
        type = Types::PutRegistryPolicyInput.new
        type.policy_text = params[:policy_text]
        type
      end
    end

    module PutRegistryPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRegistryPolicyOutput, context: context)
        type = Types::PutRegistryPolicyOutput.new
        type.registry_id = params[:registry_id]
        type.policy_text = params[:policy_text]
        type
      end
    end

    module PutRegistryScanningConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRegistryScanningConfigurationInput, context: context)
        type = Types::PutRegistryScanningConfigurationInput.new
        type.scan_type = params[:scan_type]
        type.rules = RegistryScanningRuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module PutRegistryScanningConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRegistryScanningConfigurationOutput, context: context)
        type = Types::PutRegistryScanningConfigurationOutput.new
        type.registry_scanning_configuration = RegistryScanningConfiguration.build(params[:registry_scanning_configuration], context: "#{context}[:registry_scanning_configuration]") unless params[:registry_scanning_configuration].nil?
        type
      end
    end

    module PutReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutReplicationConfigurationInput, context: context)
        type = Types::PutReplicationConfigurationInput.new
        type.replication_configuration = ReplicationConfiguration.build(params[:replication_configuration], context: "#{context}[:replication_configuration]") unless params[:replication_configuration].nil?
        type
      end
    end

    module PutReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutReplicationConfigurationOutput, context: context)
        type = Types::PutReplicationConfigurationOutput.new
        type.replication_configuration = ReplicationConfiguration.build(params[:replication_configuration], context: "#{context}[:replication_configuration]") unless params[:replication_configuration].nil?
        type
      end
    end

    module Recommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recommendation, context: context)
        type = Types::Recommendation.new
        type.url = params[:url]
        type.text = params[:text]
        type
      end
    end

    module ReferenceUrlsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReferencedImagesNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReferencedImagesNotFoundException, context: context)
        type = Types::ReferencedImagesNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RegistryPolicyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistryPolicyNotFoundException, context: context)
        type = Types::RegistryPolicyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RegistryScanningConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistryScanningConfiguration, context: context)
        type = Types::RegistryScanningConfiguration.new
        type.scan_type = params[:scan_type]
        type.rules = RegistryScanningRuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module RegistryScanningRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistryScanningRule, context: context)
        type = Types::RegistryScanningRule.new
        type.scan_frequency = params[:scan_frequency]
        type.repository_filters = ScanningRepositoryFilterList.build(params[:repository_filters], context: "#{context}[:repository_filters]") unless params[:repository_filters].nil?
        type
      end
    end

    module RegistryScanningRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegistryScanningRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelatedVulnerabilitiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Remediation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Remediation, context: context)
        type = Types::Remediation.new
        type.recommendation = Recommendation.build(params[:recommendation], context: "#{context}[:recommendation]") unless params[:recommendation].nil?
        type
      end
    end

    module ReplicationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationConfiguration, context: context)
        type = Types::ReplicationConfiguration.new
        type.rules = ReplicationRuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module ReplicationDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationDestination, context: context)
        type = Types::ReplicationDestination.new
        type.region = params[:region]
        type.registry_id = params[:registry_id]
        type
      end
    end

    module ReplicationDestinationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationRule, context: context)
        type = Types::ReplicationRule.new
        type.destinations = ReplicationDestinationList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.repository_filters = RepositoryFilterList.build(params[:repository_filters], context: "#{context}[:repository_filters]") unless params[:repository_filters].nil?
        type
      end
    end

    module ReplicationRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Repository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Repository, context: context)
        type = Types::Repository.new
        type.repository_arn = params[:repository_arn]
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.repository_uri = params[:repository_uri]
        type.created_at = params[:created_at]
        type.image_tag_mutability = params[:image_tag_mutability]
        type.image_scanning_configuration = ImageScanningConfiguration.build(params[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless params[:image_scanning_configuration].nil?
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module RepositoryAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryAlreadyExistsException, context: context)
        type = Types::RepositoryAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryFilter, context: context)
        type = Types::RepositoryFilter.new
        type.filter = params[:filter]
        type.filter_type = params[:filter_type]
        type
      end
    end

    module RepositoryFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Repository.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RepositoryNotEmptyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryNotEmptyException, context: context)
        type = Types::RepositoryNotEmptyException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryNotFoundException, context: context)
        type = Types::RepositoryNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryPolicyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryPolicyNotFoundException, context: context)
        type = Types::RepositoryPolicyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryScanningConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryScanningConfiguration, context: context)
        type = Types::RepositoryScanningConfiguration.new
        type.repository_arn = params[:repository_arn]
        type.repository_name = params[:repository_name]
        type.scan_on_push = params[:scan_on_push]
        type.scan_frequency = params[:scan_frequency]
        type.applied_scan_filters = ScanningRepositoryFilterList.build(params[:applied_scan_filters], context: "#{context}[:applied_scan_filters]") unless params[:applied_scan_filters].nil?
        type
      end
    end

    module RepositoryScanningConfigurationFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryScanningConfigurationFailure, context: context)
        type = Types::RepositoryScanningConfigurationFailure.new
        type.repository_name = params[:repository_name]
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module RepositoryScanningConfigurationFailureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryScanningConfigurationFailure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryScanningConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryScanningConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.details = ResourceDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type.id = params[:id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type
      end
    end

    module ResourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDetails, context: context)
        type = Types::ResourceDetails.new
        type.aws_ecr_container_image = AwsEcrContainerImageDetails.build(params[:aws_ecr_container_image], context: "#{context}[:aws_ecr_container_image]") unless params[:aws_ecr_container_image].nil?
        type
      end
    end

    module ResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScanNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScanNotFoundException, context: context)
        type = Types::ScanNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ScanningConfigurationRepositoryNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ScanningRepositoryFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScanningRepositoryFilter, context: context)
        type = Types::ScanningRepositoryFilter.new
        type.filter = params[:filter]
        type.filter_type = params[:filter_type]
        type
      end
    end

    module ScanningRepositoryFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScanningRepositoryFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScoreDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScoreDetails, context: context)
        type = Types::ScoreDetails.new
        type.cvss = CvssScoreDetails.build(params[:cvss], context: "#{context}[:cvss]") unless params[:cvss].nil?
        type
      end
    end

    module ServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerException, context: context)
        type = Types::ServerException.new
        type.message = params[:message]
        type
      end
    end

    module SetRepositoryPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetRepositoryPolicyInput, context: context)
        type = Types::SetRepositoryPolicyInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.policy_text = params[:policy_text]
        type.force = params[:force]
        type
      end
    end

    module SetRepositoryPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetRepositoryPolicyOutput, context: context)
        type = Types::SetRepositoryPolicyOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.policy_text = params[:policy_text]
        type
      end
    end

    module StartImageScanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImageScanInput, context: context)
        type = Types::StartImageScanInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_id = ImageIdentifier.build(params[:image_id], context: "#{context}[:image_id]") unless params[:image_id].nil?
        type
      end
    end

    module StartImageScanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImageScanOutput, context: context)
        type = Types::StartImageScanOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.image_id = ImageIdentifier.build(params[:image_id], context: "#{context}[:image_id]") unless params[:image_id].nil?
        type.image_scan_status = ImageScanStatus.build(params[:image_scan_status], context: "#{context}[:image_scan_status]") unless params[:image_scan_status].nil?
        type
      end
    end

    module StartLifecyclePolicyPreviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartLifecyclePolicyPreviewInput, context: context)
        type = Types::StartLifecyclePolicyPreviewInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.lifecycle_policy_text = params[:lifecycle_policy_text]
        type
      end
    end

    module StartLifecyclePolicyPreviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartLifecyclePolicyPreviewOutput, context: context)
        type = Types::StartLifecyclePolicyPreviewOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.lifecycle_policy_text = params[:lifecycle_policy_text]
        type.status = params[:status]
        type
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedImageTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedImageTypeException, context: context)
        type = Types::UnsupportedImageTypeException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedUpstreamRegistryException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedUpstreamRegistryException, context: context)
        type = Types::UnsupportedUpstreamRegistryException.new
        type.message = params[:message]
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

    module UploadLayerPartInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadLayerPartInput, context: context)
        type = Types::UploadLayerPartInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.upload_id = params[:upload_id]
        type.part_first_byte = params[:part_first_byte]
        type.part_last_byte = params[:part_last_byte]
        type.layer_part_blob = params[:layer_part_blob]
        type
      end
    end

    module UploadLayerPartOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadLayerPartOutput, context: context)
        type = Types::UploadLayerPartOutput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.upload_id = params[:upload_id]
        type.last_byte_received = params[:last_byte_received]
        type
      end
    end

    module UploadNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadNotFoundException, context: context)
        type = Types::UploadNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module VulnerablePackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VulnerablePackage, context: context)
        type = Types::VulnerablePackage.new
        type.arch = params[:arch]
        type.epoch = params[:epoch]
        type.file_path = params[:file_path]
        type.name = params[:name]
        type.package_manager = params[:package_manager]
        type.release = params[:release]
        type.source_layer_hash = params[:source_layer_hash]
        type.version = params[:version]
        type
      end
    end

    module VulnerablePackagesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VulnerablePackage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
