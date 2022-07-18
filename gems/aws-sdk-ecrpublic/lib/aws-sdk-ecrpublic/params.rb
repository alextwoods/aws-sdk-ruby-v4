# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECRPUBLIC
  module Params

    module ArchitectureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module CreateRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryInput, context: context)
        type = Types::CreateRepositoryInput.new
        type.repository_name = params[:repository_name]
        type.catalog_data = RepositoryCatalogDataInput.build(params[:catalog_data], context: "#{context}[:catalog_data]") unless params[:catalog_data].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryOutput, context: context)
        type = Types::CreateRepositoryOutput.new
        type.repository = Repository.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type.catalog_data = RepositoryCatalogData.build(params[:catalog_data], context: "#{context}[:catalog_data]") unless params[:catalog_data].nil?
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

    module DescribeImageTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageTagsInput, context: context)
        type = Types::DescribeImageTagsInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeImageTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageTagsOutput, context: context)
        type = Types::DescribeImageTagsOutput.new
        type.image_tag_details = ImageTagDetailList.build(params[:image_tag_details], context: "#{context}[:image_tag_details]") unless params[:image_tag_details].nil?
        type.next_token = params[:next_token]
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

    module DescribeRegistriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegistriesInput, context: context)
        type = Types::DescribeRegistriesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeRegistriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRegistriesOutput, context: context)
        type = Types::DescribeRegistriesOutput.new
        type.registries = RegistryList.build(params[:registries], context: "#{context}[:registries]") unless params[:registries].nil?
        type.next_token = params[:next_token]
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

    module GetAuthorizationTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizationTokenInput, context: context)
        type = Types::GetAuthorizationTokenInput.new
        type
      end
    end

    module GetAuthorizationTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizationTokenOutput, context: context)
        type = Types::GetAuthorizationTokenOutput.new
        type.authorization_data = AuthorizationData.build(params[:authorization_data], context: "#{context}[:authorization_data]") unless params[:authorization_data].nil?
        type
      end
    end

    module GetRegistryCatalogDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistryCatalogDataInput, context: context)
        type = Types::GetRegistryCatalogDataInput.new
        type
      end
    end

    module GetRegistryCatalogDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistryCatalogDataOutput, context: context)
        type = Types::GetRegistryCatalogDataOutput.new
        type.registry_catalog_data = RegistryCatalogData.build(params[:registry_catalog_data], context: "#{context}[:registry_catalog_data]") unless params[:registry_catalog_data].nil?
        type
      end
    end

    module GetRepositoryCatalogDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryCatalogDataInput, context: context)
        type = Types::GetRepositoryCatalogDataInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module GetRepositoryCatalogDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryCatalogDataOutput, context: context)
        type = Types::GetRepositoryCatalogDataOutput.new
        type.catalog_data = RepositoryCatalogData.build(params[:catalog_data], context: "#{context}[:catalog_data]") unless params[:catalog_data].nil?
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
        type.image_manifest_media_type = params[:image_manifest_media_type]
        type.artifact_media_type = params[:artifact_media_type]
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

    module ImageNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageNotFoundException, context: context)
        type = Types::ImageNotFoundException.new
        type.message = params[:message]
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

    module ImageTagDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageTagDetail, context: context)
        type = Types::ImageTagDetail.new
        type.image_tag = params[:image_tag]
        type.created_at = params[:created_at]
        type.image_detail = ReferencedImageDetail.build(params[:image_detail], context: "#{context}[:image_detail]") unless params[:image_detail].nil?
        type
      end
    end

    module ImageTagDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageTagDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
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

    module OperatingSystemList
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

    module PutRegistryCatalogDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRegistryCatalogDataInput, context: context)
        type = Types::PutRegistryCatalogDataInput.new
        type.display_name = params[:display_name]
        type
      end
    end

    module PutRegistryCatalogDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRegistryCatalogDataOutput, context: context)
        type = Types::PutRegistryCatalogDataOutput.new
        type.registry_catalog_data = RegistryCatalogData.build(params[:registry_catalog_data], context: "#{context}[:registry_catalog_data]") unless params[:registry_catalog_data].nil?
        type
      end
    end

    module PutRepositoryCatalogDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRepositoryCatalogDataInput, context: context)
        type = Types::PutRepositoryCatalogDataInput.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.catalog_data = RepositoryCatalogDataInput.build(params[:catalog_data], context: "#{context}[:catalog_data]") unless params[:catalog_data].nil?
        type
      end
    end

    module PutRepositoryCatalogDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRepositoryCatalogDataOutput, context: context)
        type = Types::PutRepositoryCatalogDataOutput.new
        type.catalog_data = RepositoryCatalogData.build(params[:catalog_data], context: "#{context}[:catalog_data]") unless params[:catalog_data].nil?
        type
      end
    end

    module ReferencedImageDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReferencedImageDetail, context: context)
        type = Types::ReferencedImageDetail.new
        type.image_digest = params[:image_digest]
        type.image_size_in_bytes = params[:image_size_in_bytes]
        type.image_pushed_at = params[:image_pushed_at]
        type.image_manifest_media_type = params[:image_manifest_media_type]
        type.artifact_media_type = params[:artifact_media_type]
        type
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

    module Registry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Registry, context: context)
        type = Types::Registry.new
        type.registry_id = params[:registry_id]
        type.registry_arn = params[:registry_arn]
        type.registry_uri = params[:registry_uri]
        type.verified = params[:verified]
        type.aliases = RegistryAliasList.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type
      end
    end

    module RegistryAlias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistryAlias, context: context)
        type = Types::RegistryAlias.new
        type.name = params[:name]
        type.status = params[:status]
        type.primary_registry_alias = params[:primary_registry_alias]
        type.default_registry_alias = params[:default_registry_alias]
        type
      end
    end

    module RegistryAliasList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegistryAlias.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegistryCatalogData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistryCatalogData, context: context)
        type = Types::RegistryCatalogData.new
        type.display_name = params[:display_name]
        type
      end
    end

    module RegistryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Registry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegistryNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistryNotFoundException, context: context)
        type = Types::RegistryNotFoundException.new
        type.message = params[:message]
        type
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

    module RepositoryCatalogData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryCatalogData, context: context)
        type = Types::RepositoryCatalogData.new
        type.description = params[:description]
        type.architectures = ArchitectureList.build(params[:architectures], context: "#{context}[:architectures]") unless params[:architectures].nil?
        type.operating_systems = OperatingSystemList.build(params[:operating_systems], context: "#{context}[:operating_systems]") unless params[:operating_systems].nil?
        type.logo_url = params[:logo_url]
        type.about_text = params[:about_text]
        type.usage_text = params[:usage_text]
        type.marketplace_certified = params[:marketplace_certified]
        type
      end
    end

    module RepositoryCatalogDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryCatalogDataInput, context: context)
        type = Types::RepositoryCatalogDataInput.new
        type.description = params[:description]
        type.architectures = ArchitectureList.build(params[:architectures], context: "#{context}[:architectures]") unless params[:architectures].nil?
        type.operating_systems = OperatingSystemList.build(params[:operating_systems], context: "#{context}[:operating_systems]") unless params[:operating_systems].nil?
        type.logo_image_blob = params[:logo_image_blob]
        type.about_text = params[:about_text]
        type.usage_text = params[:usage_text]
        type
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

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedCommandException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedCommandException, context: context)
        type = Types::UnsupportedCommandException.new
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

  end
end
