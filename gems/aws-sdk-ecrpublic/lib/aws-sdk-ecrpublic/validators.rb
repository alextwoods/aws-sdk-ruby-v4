# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ECRPUBLIC
  module Validators

    class ArchitectureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AuthorizationData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationData, context: context)
        Hearth::Validator.validate!(input[:authorization_token], ::String, context: "#{context}[:authorization_token]")
        Hearth::Validator.validate!(input[:expires_at], ::Time, context: "#{context}[:expires_at]")
      end
    end

    class BatchCheckLayerAvailabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCheckLayerAvailabilityInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        BatchedOperationLayerDigestList.validate!(input[:layer_digests], context: "#{context}[:layer_digests]") unless input[:layer_digests].nil?
      end
    end

    class BatchCheckLayerAvailabilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCheckLayerAvailabilityOutput, context: context)
        LayerList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        LayerFailureList.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class BatchDeleteImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteImageInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        ImageIdentifierList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
      end
    end

    class BatchDeleteImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteImageOutput, context: context)
        ImageIdentifierList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
        ImageFailureList.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
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
        LayerDigestList.validate!(input[:layer_digests], context: "#{context}[:layer_digests]") unless input[:layer_digests].nil?
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

    class CreateRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        RepositoryCatalogDataInput.validate!(input[:catalog_data], context: "#{context}[:catalog_data]") unless input[:catalog_data].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryOutput, context: context)
        Repository.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
        RepositoryCatalogData.validate!(input[:catalog_data], context: "#{context}[:catalog_data]") unless input[:catalog_data].nil?
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
        Repository.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
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

    class DescribeImageTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageTagsInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeImageTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageTagsOutput, context: context)
        ImageTagDetailList.validate!(input[:image_tag_details], context: "#{context}[:image_tag_details]") unless input[:image_tag_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagesInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        ImageIdentifierList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagesOutput, context: context)
        ImageDetailList.validate!(input[:image_details], context: "#{context}[:image_details]") unless input[:image_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRegistriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegistriesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeRegistriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRegistriesOutput, context: context)
        RegistryList.validate!(input[:registries], context: "#{context}[:registries]") unless input[:registries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRepositoriesInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        RepositoryNameList.validate!(input[:repository_names], context: "#{context}[:repository_names]") unless input[:repository_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRepositoriesOutput, context: context)
        RepositoryList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class EmptyUploadException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmptyUploadException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetAuthorizationTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizationTokenInput, context: context)
      end
    end

    class GetAuthorizationTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizationTokenOutput, context: context)
        AuthorizationData.validate!(input[:authorization_data], context: "#{context}[:authorization_data]") unless input[:authorization_data].nil?
      end
    end

    class GetRegistryCatalogDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistryCatalogDataInput, context: context)
      end
    end

    class GetRegistryCatalogDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistryCatalogDataOutput, context: context)
        RegistryCatalogData.validate!(input[:registry_catalog_data], context: "#{context}[:registry_catalog_data]") unless input[:registry_catalog_data].nil?
      end
    end

    class GetRepositoryCatalogDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryCatalogDataInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class GetRepositoryCatalogDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryCatalogDataOutput, context: context)
        RepositoryCatalogData.validate!(input[:catalog_data], context: "#{context}[:catalog_data]") unless input[:catalog_data].nil?
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
        ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
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
        ImageTagList.validate!(input[:image_tags], context: "#{context}[:image_tags]") unless input[:image_tags].nil?
        Hearth::Validator.validate!(input[:image_size_in_bytes], ::Integer, context: "#{context}[:image_size_in_bytes]")
        Hearth::Validator.validate!(input[:image_pushed_at], ::Time, context: "#{context}[:image_pushed_at]")
        Hearth::Validator.validate!(input[:image_manifest_media_type], ::String, context: "#{context}[:image_manifest_media_type]")
        Hearth::Validator.validate!(input[:artifact_media_type], ::String, context: "#{context}[:artifact_media_type]")
      end
    end

    class ImageDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImageDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        ImageIdentifier.validate!(input[:image_id], context: "#{context}[:image_id]") unless input[:image_id].nil?
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class ImageFailureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImageFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          ImageIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImageTagAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageTagAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImageTagDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageTagDetail, context: context)
        Hearth::Validator.validate!(input[:image_tag], ::String, context: "#{context}[:image_tag]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ReferencedImageDetail.validate!(input[:image_detail], context: "#{context}[:image_detail]") unless input[:image_detail].nil?
      end
    end

    class ImageTagDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImageTagDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
          LayerFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LayerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Layer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class OperatingSystemList
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
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
      end
    end

    class PutRegistryCatalogDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRegistryCatalogDataInput, context: context)
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class PutRegistryCatalogDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRegistryCatalogDataOutput, context: context)
        RegistryCatalogData.validate!(input[:registry_catalog_data], context: "#{context}[:registry_catalog_data]") unless input[:registry_catalog_data].nil?
      end
    end

    class PutRepositoryCatalogDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRepositoryCatalogDataInput, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        RepositoryCatalogDataInput.validate!(input[:catalog_data], context: "#{context}[:catalog_data]") unless input[:catalog_data].nil?
      end
    end

    class PutRepositoryCatalogDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRepositoryCatalogDataOutput, context: context)
        RepositoryCatalogData.validate!(input[:catalog_data], context: "#{context}[:catalog_data]") unless input[:catalog_data].nil?
      end
    end

    class ReferencedImageDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferencedImageDetail, context: context)
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
        Hearth::Validator.validate!(input[:image_size_in_bytes], ::Integer, context: "#{context}[:image_size_in_bytes]")
        Hearth::Validator.validate!(input[:image_pushed_at], ::Time, context: "#{context}[:image_pushed_at]")
        Hearth::Validator.validate!(input[:image_manifest_media_type], ::String, context: "#{context}[:image_manifest_media_type]")
        Hearth::Validator.validate!(input[:artifact_media_type], ::String, context: "#{context}[:artifact_media_type]")
      end
    end

    class ReferencedImagesNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferencedImagesNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Registry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Registry, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:registry_uri], ::String, context: "#{context}[:registry_uri]")
        Hearth::Validator.validate!(input[:verified], ::TrueClass, ::FalseClass, context: "#{context}[:verified]")
        RegistryAliasList.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
      end
    end

    class RegistryAlias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistryAlias, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:primary_registry_alias], ::TrueClass, ::FalseClass, context: "#{context}[:primary_registry_alias]")
        Hearth::Validator.validate!(input[:default_registry_alias], ::TrueClass, ::FalseClass, context: "#{context}[:default_registry_alias]")
      end
    end

    class RegistryAliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegistryAlias.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegistryCatalogData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistryCatalogData, context: context)
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class RegistryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Registry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegistryNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistryNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
      end
    end

    class RepositoryAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryCatalogData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryCatalogData, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ArchitectureList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        OperatingSystemList.validate!(input[:operating_systems], context: "#{context}[:operating_systems]") unless input[:operating_systems].nil?
        Hearth::Validator.validate!(input[:logo_url], ::String, context: "#{context}[:logo_url]")
        Hearth::Validator.validate!(input[:about_text], ::String, context: "#{context}[:about_text]")
        Hearth::Validator.validate!(input[:usage_text], ::String, context: "#{context}[:usage_text]")
        Hearth::Validator.validate!(input[:marketplace_certified], ::TrueClass, ::FalseClass, context: "#{context}[:marketplace_certified]")
      end
    end

    class RepositoryCatalogDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryCatalogDataInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ArchitectureList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        OperatingSystemList.validate!(input[:operating_systems], context: "#{context}[:operating_systems]") unless input[:operating_systems].nil?
        Hearth::Validator.validate!(input[:logo_image_blob], ::String, context: "#{context}[:logo_image_blob]")
        Hearth::Validator.validate!(input[:about_text], ::String, context: "#{context}[:about_text]")
        Hearth::Validator.validate!(input[:usage_text], ::String, context: "#{context}[:usage_text]")
      end
    end

    class RepositoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Repository.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedCommandException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedCommandException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
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

  end
end
