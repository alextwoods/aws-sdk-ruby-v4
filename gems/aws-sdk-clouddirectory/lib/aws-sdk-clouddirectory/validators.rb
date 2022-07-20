# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CloudDirectory
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddFacetToObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFacetToObjectInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        SchemaFacet.validate!(input[:schema_facet], context: "#{context}[:schema_facet]") unless input[:schema_facet].nil?
        AttributeKeyAndValueList.validate!(input[:object_attribute_list], context: "#{context}[:object_attribute_list]") unless input[:object_attribute_list].nil?
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class AddFacetToObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddFacetToObjectOutput, context: context)
      end
    end

    class ApplySchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplySchemaInput, context: context)
        Hearth::Validator.validate!(input[:published_schema_arn], ::String, context: "#{context}[:published_schema_arn]")
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class ApplySchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplySchemaOutput, context: context)
        Hearth::Validator.validate!(input[:applied_schema_arn], ::String, context: "#{context}[:applied_schema_arn]")
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class Arns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttachObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachObjectInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:parent_reference], context: "#{context}[:parent_reference]") unless input[:parent_reference].nil?
        ObjectReference.validate!(input[:child_reference], context: "#{context}[:child_reference]") unless input[:child_reference].nil?
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
      end
    end

    class AttachObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachObjectOutput, context: context)
        Hearth::Validator.validate!(input[:attached_object_identifier], ::String, context: "#{context}[:attached_object_identifier]")
      end
    end

    class AttachPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachPolicyInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:policy_reference], context: "#{context}[:policy_reference]") unless input[:policy_reference].nil?
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class AttachPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachPolicyOutput, context: context)
      end
    end

    class AttachToIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachToIndexInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:index_reference], context: "#{context}[:index_reference]") unless input[:index_reference].nil?
        ObjectReference.validate!(input[:target_reference], context: "#{context}[:target_reference]") unless input[:target_reference].nil?
      end
    end

    class AttachToIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachToIndexOutput, context: context)
        Hearth::Validator.validate!(input[:attached_object_identifier], ::String, context: "#{context}[:attached_object_identifier]")
      end
    end

    class AttachTypedLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachTypedLinkInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:source_object_reference], context: "#{context}[:source_object_reference]") unless input[:source_object_reference].nil?
        ObjectReference.validate!(input[:target_object_reference], context: "#{context}[:target_object_reference]") unless input[:target_object_reference].nil?
        TypedLinkSchemaAndFacetName.validate!(input[:typed_link_facet], context: "#{context}[:typed_link_facet]") unless input[:typed_link_facet].nil?
        AttributeNameAndValueList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class AttachTypedLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachTypedLinkOutput, context: context)
        TypedLinkSpecifier.validate!(input[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless input[:typed_link_specifier].nil?
      end
    end

    class AttributeKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeKey, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:facet_name], ::String, context: "#{context}[:facet_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AttributeKeyAndValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeKeyAndValue, context: context)
        AttributeKey.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        TypedAttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class AttributeKeyAndValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeKeyAndValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeNameAndValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeNameAndValue, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        TypedAttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class AttributeNameAndValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeNameAndValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchAddFacetToObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAddFacetToObject, context: context)
        SchemaFacet.validate!(input[:schema_facet], context: "#{context}[:schema_facet]") unless input[:schema_facet].nil?
        AttributeKeyAndValueList.validate!(input[:object_attribute_list], context: "#{context}[:object_attribute_list]") unless input[:object_attribute_list].nil?
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class BatchAddFacetToObjectResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAddFacetToObjectResponse, context: context)
      end
    end

    class BatchAttachObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAttachObject, context: context)
        ObjectReference.validate!(input[:parent_reference], context: "#{context}[:parent_reference]") unless input[:parent_reference].nil?
        ObjectReference.validate!(input[:child_reference], context: "#{context}[:child_reference]") unless input[:child_reference].nil?
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
      end
    end

    class BatchAttachObjectResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAttachObjectResponse, context: context)
        Hearth::Validator.validate!(input[:attached_object_identifier], ::String, context: "#{context}[:attached_object_identifier]")
      end
    end

    class BatchAttachPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAttachPolicy, context: context)
        ObjectReference.validate!(input[:policy_reference], context: "#{context}[:policy_reference]") unless input[:policy_reference].nil?
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class BatchAttachPolicyResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAttachPolicyResponse, context: context)
      end
    end

    class BatchAttachToIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAttachToIndex, context: context)
        ObjectReference.validate!(input[:index_reference], context: "#{context}[:index_reference]") unless input[:index_reference].nil?
        ObjectReference.validate!(input[:target_reference], context: "#{context}[:target_reference]") unless input[:target_reference].nil?
      end
    end

    class BatchAttachToIndexResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAttachToIndexResponse, context: context)
        Hearth::Validator.validate!(input[:attached_object_identifier], ::String, context: "#{context}[:attached_object_identifier]")
      end
    end

    class BatchAttachTypedLink
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAttachTypedLink, context: context)
        ObjectReference.validate!(input[:source_object_reference], context: "#{context}[:source_object_reference]") unless input[:source_object_reference].nil?
        ObjectReference.validate!(input[:target_object_reference], context: "#{context}[:target_object_reference]") unless input[:target_object_reference].nil?
        TypedLinkSchemaAndFacetName.validate!(input[:typed_link_facet], context: "#{context}[:typed_link_facet]") unless input[:typed_link_facet].nil?
        AttributeNameAndValueList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class BatchAttachTypedLinkResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAttachTypedLinkResponse, context: context)
        TypedLinkSpecifier.validate!(input[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless input[:typed_link_specifier].nil?
      end
    end

    class BatchCreateIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateIndex, context: context)
        AttributeKeyList.validate!(input[:ordered_indexed_attribute_list], context: "#{context}[:ordered_indexed_attribute_list]") unless input[:ordered_indexed_attribute_list].nil?
        Hearth::Validator.validate!(input[:is_unique], ::TrueClass, ::FalseClass, context: "#{context}[:is_unique]")
        ObjectReference.validate!(input[:parent_reference], context: "#{context}[:parent_reference]") unless input[:parent_reference].nil?
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
        Hearth::Validator.validate!(input[:batch_reference_name], ::String, context: "#{context}[:batch_reference_name]")
      end
    end

    class BatchCreateIndexResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateIndexResponse, context: context)
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
      end
    end

    class BatchCreateObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateObject, context: context)
        SchemaFacetList.validate!(input[:schema_facet], context: "#{context}[:schema_facet]") unless input[:schema_facet].nil?
        AttributeKeyAndValueList.validate!(input[:object_attribute_list], context: "#{context}[:object_attribute_list]") unless input[:object_attribute_list].nil?
        ObjectReference.validate!(input[:parent_reference], context: "#{context}[:parent_reference]") unless input[:parent_reference].nil?
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
        Hearth::Validator.validate!(input[:batch_reference_name], ::String, context: "#{context}[:batch_reference_name]")
      end
    end

    class BatchCreateObjectResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateObjectResponse, context: context)
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
      end
    end

    class BatchDeleteObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteObject, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class BatchDeleteObjectResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteObjectResponse, context: context)
      end
    end

    class BatchDetachFromIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetachFromIndex, context: context)
        ObjectReference.validate!(input[:index_reference], context: "#{context}[:index_reference]") unless input[:index_reference].nil?
        ObjectReference.validate!(input[:target_reference], context: "#{context}[:target_reference]") unless input[:target_reference].nil?
      end
    end

    class BatchDetachFromIndexResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetachFromIndexResponse, context: context)
        Hearth::Validator.validate!(input[:detached_object_identifier], ::String, context: "#{context}[:detached_object_identifier]")
      end
    end

    class BatchDetachObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetachObject, context: context)
        ObjectReference.validate!(input[:parent_reference], context: "#{context}[:parent_reference]") unless input[:parent_reference].nil?
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
        Hearth::Validator.validate!(input[:batch_reference_name], ::String, context: "#{context}[:batch_reference_name]")
      end
    end

    class BatchDetachObjectResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetachObjectResponse, context: context)
        Hearth::Validator.validate!(input[:detached_object_identifier], ::String, context: "#{context}[:detached_object_identifier]")
      end
    end

    class BatchDetachPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetachPolicy, context: context)
        ObjectReference.validate!(input[:policy_reference], context: "#{context}[:policy_reference]") unless input[:policy_reference].nil?
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class BatchDetachPolicyResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetachPolicyResponse, context: context)
      end
    end

    class BatchDetachTypedLink
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetachTypedLink, context: context)
        TypedLinkSpecifier.validate!(input[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless input[:typed_link_specifier].nil?
      end
    end

    class BatchDetachTypedLinkResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetachTypedLinkResponse, context: context)
      end
    end

    class BatchGetLinkAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetLinkAttributes, context: context)
        TypedLinkSpecifier.validate!(input[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless input[:typed_link_specifier].nil?
        AttributeNameList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
      end
    end

    class BatchGetLinkAttributesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetLinkAttributesResponse, context: context)
        AttributeKeyAndValueList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class BatchGetObjectAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetObjectAttributes, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        SchemaFacet.validate!(input[:schema_facet], context: "#{context}[:schema_facet]") unless input[:schema_facet].nil?
        AttributeNameList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
      end
    end

    class BatchGetObjectAttributesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetObjectAttributesResponse, context: context)
        AttributeKeyAndValueList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class BatchGetObjectInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetObjectInformation, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class BatchGetObjectInformationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetObjectInformationResponse, context: context)
        SchemaFacetList.validate!(input[:schema_facets], context: "#{context}[:schema_facets]") unless input[:schema_facets].nil?
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
      end
    end

    class BatchListAttachedIndices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListAttachedIndices, context: context)
        ObjectReference.validate!(input[:target_reference], context: "#{context}[:target_reference]") unless input[:target_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchListAttachedIndicesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListAttachedIndicesResponse, context: context)
        IndexAttachmentList.validate!(input[:index_attachments], context: "#{context}[:index_attachments]") unless input[:index_attachments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListIncomingTypedLinks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListIncomingTypedLinks, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        TypedLinkAttributeRangeList.validate!(input[:filter_attribute_ranges], context: "#{context}[:filter_attribute_ranges]") unless input[:filter_attribute_ranges].nil?
        TypedLinkSchemaAndFacetName.validate!(input[:filter_typed_link], context: "#{context}[:filter_typed_link]") unless input[:filter_typed_link].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchListIncomingTypedLinksResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListIncomingTypedLinksResponse, context: context)
        TypedLinkSpecifierList.validate!(input[:link_specifiers], context: "#{context}[:link_specifiers]") unless input[:link_specifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListIndex, context: context)
        ObjectAttributeRangeList.validate!(input[:ranges_on_indexed_values], context: "#{context}[:ranges_on_indexed_values]") unless input[:ranges_on_indexed_values].nil?
        ObjectReference.validate!(input[:index_reference], context: "#{context}[:index_reference]") unless input[:index_reference].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListIndexResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListIndexResponse, context: context)
        IndexAttachmentList.validate!(input[:index_attachments], context: "#{context}[:index_attachments]") unless input[:index_attachments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListObjectAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectAttributes, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        SchemaFacet.validate!(input[:facet_filter], context: "#{context}[:facet_filter]") unless input[:facet_filter].nil?
      end
    end

    class BatchListObjectAttributesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectAttributesResponse, context: context)
        AttributeKeyAndValueList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListObjectChildren
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectChildren, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchListObjectChildrenResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectChildrenResponse, context: context)
        LinkNameToObjectIdentifierMap.validate!(input[:children], context: "#{context}[:children]") unless input[:children].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListObjectParentPaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectParentPaths, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchListObjectParentPathsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectParentPathsResponse, context: context)
        PathToObjectIdentifiersList.validate!(input[:path_to_object_identifiers_list], context: "#{context}[:path_to_object_identifiers_list]") unless input[:path_to_object_identifiers_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListObjectParents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectParents, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchListObjectParentsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectParentsResponse, context: context)
        ObjectIdentifierAndLinkNameList.validate!(input[:parent_links], context: "#{context}[:parent_links]") unless input[:parent_links].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListObjectPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectPolicies, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchListObjectPoliciesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListObjectPoliciesResponse, context: context)
        ObjectIdentifierList.validate!(input[:attached_policy_ids], context: "#{context}[:attached_policy_ids]") unless input[:attached_policy_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListOutgoingTypedLinks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListOutgoingTypedLinks, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        TypedLinkAttributeRangeList.validate!(input[:filter_attribute_ranges], context: "#{context}[:filter_attribute_ranges]") unless input[:filter_attribute_ranges].nil?
        TypedLinkSchemaAndFacetName.validate!(input[:filter_typed_link], context: "#{context}[:filter_typed_link]") unless input[:filter_typed_link].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchListOutgoingTypedLinksResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListOutgoingTypedLinksResponse, context: context)
        TypedLinkSpecifierList.validate!(input[:typed_link_specifiers], context: "#{context}[:typed_link_specifiers]") unless input[:typed_link_specifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchListPolicyAttachments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListPolicyAttachments, context: context)
        ObjectReference.validate!(input[:policy_reference], context: "#{context}[:policy_reference]") unless input[:policy_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchListPolicyAttachmentsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchListPolicyAttachmentsResponse, context: context)
        ObjectIdentifierList.validate!(input[:object_identifiers], context: "#{context}[:object_identifiers]") unless input[:object_identifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchLookupPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchLookupPolicy, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchLookupPolicyResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchLookupPolicyResponse, context: context)
        PolicyToPathList.validate!(input[:policy_to_path_list], context: "#{context}[:policy_to_path_list]") unless input[:policy_to_path_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchReadException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchReadException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchReadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchReadInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        BatchReadOperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class BatchReadOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchReadOperation, context: context)
        BatchListObjectAttributes.validate!(input[:list_object_attributes], context: "#{context}[:list_object_attributes]") unless input[:list_object_attributes].nil?
        BatchListObjectChildren.validate!(input[:list_object_children], context: "#{context}[:list_object_children]") unless input[:list_object_children].nil?
        BatchListAttachedIndices.validate!(input[:list_attached_indices], context: "#{context}[:list_attached_indices]") unless input[:list_attached_indices].nil?
        BatchListObjectParentPaths.validate!(input[:list_object_parent_paths], context: "#{context}[:list_object_parent_paths]") unless input[:list_object_parent_paths].nil?
        BatchGetObjectInformation.validate!(input[:get_object_information], context: "#{context}[:get_object_information]") unless input[:get_object_information].nil?
        BatchGetObjectAttributes.validate!(input[:get_object_attributes], context: "#{context}[:get_object_attributes]") unless input[:get_object_attributes].nil?
        BatchListObjectParents.validate!(input[:list_object_parents], context: "#{context}[:list_object_parents]") unless input[:list_object_parents].nil?
        BatchListObjectPolicies.validate!(input[:list_object_policies], context: "#{context}[:list_object_policies]") unless input[:list_object_policies].nil?
        BatchListPolicyAttachments.validate!(input[:list_policy_attachments], context: "#{context}[:list_policy_attachments]") unless input[:list_policy_attachments].nil?
        BatchLookupPolicy.validate!(input[:lookup_policy], context: "#{context}[:lookup_policy]") unless input[:lookup_policy].nil?
        BatchListIndex.validate!(input[:list_index], context: "#{context}[:list_index]") unless input[:list_index].nil?
        BatchListOutgoingTypedLinks.validate!(input[:list_outgoing_typed_links], context: "#{context}[:list_outgoing_typed_links]") unless input[:list_outgoing_typed_links].nil?
        BatchListIncomingTypedLinks.validate!(input[:list_incoming_typed_links], context: "#{context}[:list_incoming_typed_links]") unless input[:list_incoming_typed_links].nil?
        BatchGetLinkAttributes.validate!(input[:get_link_attributes], context: "#{context}[:get_link_attributes]") unless input[:get_link_attributes].nil?
      end
    end

    class BatchReadOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchReadOperation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchReadOperationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchReadOperationResponse, context: context)
        BatchReadSuccessfulResponse.validate!(input[:successful_response], context: "#{context}[:successful_response]") unless input[:successful_response].nil?
        BatchReadException.validate!(input[:exception_response], context: "#{context}[:exception_response]") unless input[:exception_response].nil?
      end
    end

    class BatchReadOperationResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchReadOperationResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchReadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchReadOutput, context: context)
        BatchReadOperationResponseList.validate!(input[:responses], context: "#{context}[:responses]") unless input[:responses].nil?
      end
    end

    class BatchReadSuccessfulResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchReadSuccessfulResponse, context: context)
        BatchListObjectAttributesResponse.validate!(input[:list_object_attributes], context: "#{context}[:list_object_attributes]") unless input[:list_object_attributes].nil?
        BatchListObjectChildrenResponse.validate!(input[:list_object_children], context: "#{context}[:list_object_children]") unless input[:list_object_children].nil?
        BatchGetObjectInformationResponse.validate!(input[:get_object_information], context: "#{context}[:get_object_information]") unless input[:get_object_information].nil?
        BatchGetObjectAttributesResponse.validate!(input[:get_object_attributes], context: "#{context}[:get_object_attributes]") unless input[:get_object_attributes].nil?
        BatchListAttachedIndicesResponse.validate!(input[:list_attached_indices], context: "#{context}[:list_attached_indices]") unless input[:list_attached_indices].nil?
        BatchListObjectParentPathsResponse.validate!(input[:list_object_parent_paths], context: "#{context}[:list_object_parent_paths]") unless input[:list_object_parent_paths].nil?
        BatchListObjectPoliciesResponse.validate!(input[:list_object_policies], context: "#{context}[:list_object_policies]") unless input[:list_object_policies].nil?
        BatchListPolicyAttachmentsResponse.validate!(input[:list_policy_attachments], context: "#{context}[:list_policy_attachments]") unless input[:list_policy_attachments].nil?
        BatchLookupPolicyResponse.validate!(input[:lookup_policy], context: "#{context}[:lookup_policy]") unless input[:lookup_policy].nil?
        BatchListIndexResponse.validate!(input[:list_index], context: "#{context}[:list_index]") unless input[:list_index].nil?
        BatchListOutgoingTypedLinksResponse.validate!(input[:list_outgoing_typed_links], context: "#{context}[:list_outgoing_typed_links]") unless input[:list_outgoing_typed_links].nil?
        BatchListIncomingTypedLinksResponse.validate!(input[:list_incoming_typed_links], context: "#{context}[:list_incoming_typed_links]") unless input[:list_incoming_typed_links].nil?
        BatchGetLinkAttributesResponse.validate!(input[:get_link_attributes], context: "#{context}[:get_link_attributes]") unless input[:get_link_attributes].nil?
        BatchListObjectParentsResponse.validate!(input[:list_object_parents], context: "#{context}[:list_object_parents]") unless input[:list_object_parents].nil?
      end
    end

    class BatchRemoveFacetFromObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchRemoveFacetFromObject, context: context)
        SchemaFacet.validate!(input[:schema_facet], context: "#{context}[:schema_facet]") unless input[:schema_facet].nil?
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class BatchRemoveFacetFromObjectResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchRemoveFacetFromObjectResponse, context: context)
      end
    end

    class BatchUpdateLinkAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateLinkAttributes, context: context)
        TypedLinkSpecifier.validate!(input[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless input[:typed_link_specifier].nil?
        LinkAttributeUpdateList.validate!(input[:attribute_updates], context: "#{context}[:attribute_updates]") unless input[:attribute_updates].nil?
      end
    end

    class BatchUpdateLinkAttributesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateLinkAttributesResponse, context: context)
      end
    end

    class BatchUpdateObjectAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateObjectAttributes, context: context)
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        ObjectAttributeUpdateList.validate!(input[:attribute_updates], context: "#{context}[:attribute_updates]") unless input[:attribute_updates].nil?
      end
    end

    class BatchUpdateObjectAttributesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateObjectAttributesResponse, context: context)
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
      end
    end

    class BatchWriteException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchWriteException, context: context)
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchWriteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchWriteInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        BatchWriteOperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class BatchWriteOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchWriteOperation, context: context)
        BatchCreateObject.validate!(input[:create_object], context: "#{context}[:create_object]") unless input[:create_object].nil?
        BatchAttachObject.validate!(input[:attach_object], context: "#{context}[:attach_object]") unless input[:attach_object].nil?
        BatchDetachObject.validate!(input[:detach_object], context: "#{context}[:detach_object]") unless input[:detach_object].nil?
        BatchUpdateObjectAttributes.validate!(input[:update_object_attributes], context: "#{context}[:update_object_attributes]") unless input[:update_object_attributes].nil?
        BatchDeleteObject.validate!(input[:delete_object], context: "#{context}[:delete_object]") unless input[:delete_object].nil?
        BatchAddFacetToObject.validate!(input[:add_facet_to_object], context: "#{context}[:add_facet_to_object]") unless input[:add_facet_to_object].nil?
        BatchRemoveFacetFromObject.validate!(input[:remove_facet_from_object], context: "#{context}[:remove_facet_from_object]") unless input[:remove_facet_from_object].nil?
        BatchAttachPolicy.validate!(input[:attach_policy], context: "#{context}[:attach_policy]") unless input[:attach_policy].nil?
        BatchDetachPolicy.validate!(input[:detach_policy], context: "#{context}[:detach_policy]") unless input[:detach_policy].nil?
        BatchCreateIndex.validate!(input[:create_index], context: "#{context}[:create_index]") unless input[:create_index].nil?
        BatchAttachToIndex.validate!(input[:attach_to_index], context: "#{context}[:attach_to_index]") unless input[:attach_to_index].nil?
        BatchDetachFromIndex.validate!(input[:detach_from_index], context: "#{context}[:detach_from_index]") unless input[:detach_from_index].nil?
        BatchAttachTypedLink.validate!(input[:attach_typed_link], context: "#{context}[:attach_typed_link]") unless input[:attach_typed_link].nil?
        BatchDetachTypedLink.validate!(input[:detach_typed_link], context: "#{context}[:detach_typed_link]") unless input[:detach_typed_link].nil?
        BatchUpdateLinkAttributes.validate!(input[:update_link_attributes], context: "#{context}[:update_link_attributes]") unless input[:update_link_attributes].nil?
      end
    end

    class BatchWriteOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchWriteOperation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchWriteOperationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchWriteOperationResponse, context: context)
        BatchCreateObjectResponse.validate!(input[:create_object], context: "#{context}[:create_object]") unless input[:create_object].nil?
        BatchAttachObjectResponse.validate!(input[:attach_object], context: "#{context}[:attach_object]") unless input[:attach_object].nil?
        BatchDetachObjectResponse.validate!(input[:detach_object], context: "#{context}[:detach_object]") unless input[:detach_object].nil?
        BatchUpdateObjectAttributesResponse.validate!(input[:update_object_attributes], context: "#{context}[:update_object_attributes]") unless input[:update_object_attributes].nil?
        BatchDeleteObjectResponse.validate!(input[:delete_object], context: "#{context}[:delete_object]") unless input[:delete_object].nil?
        BatchAddFacetToObjectResponse.validate!(input[:add_facet_to_object], context: "#{context}[:add_facet_to_object]") unless input[:add_facet_to_object].nil?
        BatchRemoveFacetFromObjectResponse.validate!(input[:remove_facet_from_object], context: "#{context}[:remove_facet_from_object]") unless input[:remove_facet_from_object].nil?
        BatchAttachPolicyResponse.validate!(input[:attach_policy], context: "#{context}[:attach_policy]") unless input[:attach_policy].nil?
        BatchDetachPolicyResponse.validate!(input[:detach_policy], context: "#{context}[:detach_policy]") unless input[:detach_policy].nil?
        BatchCreateIndexResponse.validate!(input[:create_index], context: "#{context}[:create_index]") unless input[:create_index].nil?
        BatchAttachToIndexResponse.validate!(input[:attach_to_index], context: "#{context}[:attach_to_index]") unless input[:attach_to_index].nil?
        BatchDetachFromIndexResponse.validate!(input[:detach_from_index], context: "#{context}[:detach_from_index]") unless input[:detach_from_index].nil?
        BatchAttachTypedLinkResponse.validate!(input[:attach_typed_link], context: "#{context}[:attach_typed_link]") unless input[:attach_typed_link].nil?
        BatchDetachTypedLinkResponse.validate!(input[:detach_typed_link], context: "#{context}[:detach_typed_link]") unless input[:detach_typed_link].nil?
        BatchUpdateLinkAttributesResponse.validate!(input[:update_link_attributes], context: "#{context}[:update_link_attributes]") unless input[:update_link_attributes].nil?
      end
    end

    class BatchWriteOperationResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchWriteOperationResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchWriteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchWriteOutput, context: context)
        BatchWriteOperationResponseList.validate!(input[:responses], context: "#{context}[:responses]") unless input[:responses].nil?
      end
    end

    class CannotListParentOfRootException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CannotListParentOfRootException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class CreateDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
        Hearth::Validator.validate!(input[:applied_schema_arn], ::String, context: "#{context}[:applied_schema_arn]")
      end
    end

    class CreateFacetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFacetInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FacetAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:object_type], ::String, context: "#{context}[:object_type]")
        Hearth::Validator.validate!(input[:facet_style], ::String, context: "#{context}[:facet_style]")
      end
    end

    class CreateFacetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFacetOutput, context: context)
      end
    end

    class CreateIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIndexInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        AttributeKeyList.validate!(input[:ordered_indexed_attribute_list], context: "#{context}[:ordered_indexed_attribute_list]") unless input[:ordered_indexed_attribute_list].nil?
        Hearth::Validator.validate!(input[:is_unique], ::TrueClass, ::FalseClass, context: "#{context}[:is_unique]")
        ObjectReference.validate!(input[:parent_reference], context: "#{context}[:parent_reference]") unless input[:parent_reference].nil?
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
      end
    end

    class CreateIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIndexOutput, context: context)
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
      end
    end

    class CreateObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateObjectInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        SchemaFacetList.validate!(input[:schema_facets], context: "#{context}[:schema_facets]") unless input[:schema_facets].nil?
        AttributeKeyAndValueList.validate!(input[:object_attribute_list], context: "#{context}[:object_attribute_list]") unless input[:object_attribute_list].nil?
        ObjectReference.validate!(input[:parent_reference], context: "#{context}[:parent_reference]") unless input[:parent_reference].nil?
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
      end
    end

    class CreateObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateObjectOutput, context: context)
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
      end
    end

    class CreateSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchemaInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class CreateTypedLinkFacetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTypedLinkFacetInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        TypedLinkFacet.validate!(input[:facet], context: "#{context}[:facet]") unless input[:facet].nil?
      end
    end

    class CreateTypedLinkFacetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTypedLinkFacetOutput, context: context)
      end
    end

    class DeleteDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class DeleteDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class DeleteFacetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFacetInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteFacetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFacetOutput, context: context)
      end
    end

    class DeleteObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class DeleteObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectOutput, context: context)
      end
    end

    class DeleteSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class DeleteSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class DeleteTypedLinkFacetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTypedLinkFacetInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteTypedLinkFacetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTypedLinkFacetOutput, context: context)
      end
    end

    class DetachFromIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachFromIndexInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:index_reference], context: "#{context}[:index_reference]") unless input[:index_reference].nil?
        ObjectReference.validate!(input[:target_reference], context: "#{context}[:target_reference]") unless input[:target_reference].nil?
      end
    end

    class DetachFromIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachFromIndexOutput, context: context)
        Hearth::Validator.validate!(input[:detached_object_identifier], ::String, context: "#{context}[:detached_object_identifier]")
      end
    end

    class DetachObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachObjectInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:parent_reference], context: "#{context}[:parent_reference]") unless input[:parent_reference].nil?
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
      end
    end

    class DetachObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachObjectOutput, context: context)
        Hearth::Validator.validate!(input[:detached_object_identifier], ::String, context: "#{context}[:detached_object_identifier]")
      end
    end

    class DetachPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachPolicyInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:policy_reference], context: "#{context}[:policy_reference]") unless input[:policy_reference].nil?
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class DetachPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachPolicyOutput, context: context)
      end
    end

    class DetachTypedLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachTypedLinkInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        TypedLinkSpecifier.validate!(input[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless input[:typed_link_specifier].nil?
      end
    end

    class DetachTypedLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachTypedLinkOutput, context: context)
      end
    end

    class Directory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Directory, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class DirectoryAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DirectoryDeletedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryDeletedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DirectoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Directory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DirectoryNotDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryNotDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DirectoryNotEnabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryNotEnabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisableDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class DisableDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class EnableDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class EnableDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableDirectoryOutput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class Facet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Facet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:object_type], ::String, context: "#{context}[:object_type]")
        Hearth::Validator.validate!(input[:facet_style], ::String, context: "#{context}[:facet_style]")
      end
    end

    class FacetAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FacetAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FacetAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FacetAttribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FacetAttributeDefinition.validate!(input[:attribute_definition], context: "#{context}[:attribute_definition]") unless input[:attribute_definition].nil?
        FacetAttributeReference.validate!(input[:attribute_reference], context: "#{context}[:attribute_reference]") unless input[:attribute_reference].nil?
        Hearth::Validator.validate!(input[:required_behavior], ::String, context: "#{context}[:required_behavior]")
      end
    end

    class FacetAttributeDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FacetAttributeDefinition, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        TypedAttributeValue.validate!(input[:default_value], context: "#{context}[:default_value]") unless input[:default_value].nil?
        Hearth::Validator.validate!(input[:is_immutable], ::TrueClass, ::FalseClass, context: "#{context}[:is_immutable]")
        RuleMap.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class FacetAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FacetAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FacetAttributeReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FacetAttributeReference, context: context)
        Hearth::Validator.validate!(input[:target_facet_name], ::String, context: "#{context}[:target_facet_name]")
        Hearth::Validator.validate!(input[:target_attribute_name], ::String, context: "#{context}[:target_attribute_name]")
      end
    end

    class FacetAttributeUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FacetAttributeUpdate, context: context)
        FacetAttribute.validate!(input[:attribute], context: "#{context}[:attribute]") unless input[:attribute].nil?
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class FacetAttributeUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FacetAttributeUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FacetInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FacetInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FacetNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FacetNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FacetNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FacetValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FacetValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetAppliedSchemaVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppliedSchemaVersionInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class GetAppliedSchemaVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppliedSchemaVersionOutput, context: context)
        Hearth::Validator.validate!(input[:applied_schema_arn], ::String, context: "#{context}[:applied_schema_arn]")
      end
    end

    class GetDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class GetDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDirectoryOutput, context: context)
        Directory.validate!(input[:directory], context: "#{context}[:directory]") unless input[:directory].nil?
      end
    end

    class GetFacetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFacetInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetFacetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFacetOutput, context: context)
        Facet.validate!(input[:facet], context: "#{context}[:facet]") unless input[:facet].nil?
      end
    end

    class GetLinkAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLinkAttributesInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        TypedLinkSpecifier.validate!(input[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless input[:typed_link_specifier].nil?
        AttributeNameList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class GetLinkAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLinkAttributesOutput, context: context)
        AttributeKeyAndValueList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class GetObjectAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectAttributesInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
        SchemaFacet.validate!(input[:schema_facet], context: "#{context}[:schema_facet]") unless input[:schema_facet].nil?
        AttributeNameList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
      end
    end

    class GetObjectAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectAttributesOutput, context: context)
        AttributeKeyAndValueList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class GetObjectInformationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectInformationInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class GetObjectInformationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectInformationOutput, context: context)
        SchemaFacetList.validate!(input[:schema_facets], context: "#{context}[:schema_facets]") unless input[:schema_facets].nil?
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
      end
    end

    class GetSchemaAsJsonInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaAsJsonInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class GetSchemaAsJsonOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaAsJsonOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
      end
    end

    class GetTypedLinkFacetInformationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTypedLinkFacetInformationInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetTypedLinkFacetInformationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTypedLinkFacetInformationOutput, context: context)
        AttributeNameList.validate!(input[:identity_attribute_order], context: "#{context}[:identity_attribute_order]") unless input[:identity_attribute_order].nil?
      end
    end

    class IncompatibleSchemaException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatibleSchemaException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IndexAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexAttachment, context: context)
        AttributeKeyAndValueList.validate!(input[:indexed_attributes], context: "#{context}[:indexed_attributes]") unless input[:indexed_attributes].nil?
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
      end
    end

    class IndexAttachmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IndexAttachment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IndexedAttributeMissingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexedAttributeMissingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAttachmentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAttachmentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFacetUpdateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFacetUpdateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRuleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRuleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSchemaDocException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSchemaDocException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTaggingRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTaggingRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LinkAttributeAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LinkAttributeAction, context: context)
        Hearth::Validator.validate!(input[:attribute_action_type], ::String, context: "#{context}[:attribute_action_type]")
        TypedAttributeValue.validate!(input[:attribute_update_value], context: "#{context}[:attribute_update_value]") unless input[:attribute_update_value].nil?
      end
    end

    class LinkAttributeUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LinkAttributeUpdate, context: context)
        AttributeKey.validate!(input[:attribute_key], context: "#{context}[:attribute_key]") unless input[:attribute_key].nil?
        LinkAttributeAction.validate!(input[:attribute_action], context: "#{context}[:attribute_action]") unless input[:attribute_action].nil?
      end
    end

    class LinkAttributeUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LinkAttributeUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LinkNameAlreadyInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LinkNameAlreadyInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LinkNameToObjectIdentifierMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ListAppliedSchemaArnsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppliedSchemaArnsInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAppliedSchemaArnsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppliedSchemaArnsOutput, context: context)
        Arns.validate!(input[:schema_arns], context: "#{context}[:schema_arns]") unless input[:schema_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAttachedIndicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedIndicesInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:target_reference], context: "#{context}[:target_reference]") unless input[:target_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class ListAttachedIndicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttachedIndicesOutput, context: context)
        IndexAttachmentList.validate!(input[:index_attachments], context: "#{context}[:index_attachments]") unless input[:index_attachments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevelopmentSchemaArnsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevelopmentSchemaArnsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDevelopmentSchemaArnsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevelopmentSchemaArnsOutput, context: context)
        Arns.validate!(input[:schema_arns], context: "#{context}[:schema_arns]") unless input[:schema_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDirectoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDirectoriesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class ListDirectoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDirectoriesOutput, context: context)
        DirectoryList.validate!(input[:directories], context: "#{context}[:directories]") unless input[:directories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFacetAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFacetAttributesInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFacetAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFacetAttributesOutput, context: context)
        FacetAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFacetNamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFacetNamesInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFacetNamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFacetNamesOutput, context: context)
        FacetNameList.validate!(input[:facet_names], context: "#{context}[:facet_names]") unless input[:facet_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIncomingTypedLinksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIncomingTypedLinksInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        TypedLinkAttributeRangeList.validate!(input[:filter_attribute_ranges], context: "#{context}[:filter_attribute_ranges]") unless input[:filter_attribute_ranges].nil?
        TypedLinkSchemaAndFacetName.validate!(input[:filter_typed_link], context: "#{context}[:filter_typed_link]") unless input[:filter_typed_link].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class ListIncomingTypedLinksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIncomingTypedLinksOutput, context: context)
        TypedLinkSpecifierList.validate!(input[:link_specifiers], context: "#{context}[:link_specifiers]") unless input[:link_specifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIndexInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectAttributeRangeList.validate!(input[:ranges_on_indexed_values], context: "#{context}[:ranges_on_indexed_values]") unless input[:ranges_on_indexed_values].nil?
        ObjectReference.validate!(input[:index_reference], context: "#{context}[:index_reference]") unless input[:index_reference].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class ListIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIndexOutput, context: context)
        IndexAttachmentList.validate!(input[:index_attachments], context: "#{context}[:index_attachments]") unless input[:index_attachments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagedSchemaArnsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedSchemaArnsInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListManagedSchemaArnsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedSchemaArnsOutput, context: context)
        Arns.validate!(input[:schema_arns], context: "#{context}[:schema_arns]") unless input[:schema_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListObjectAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectAttributesInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
        SchemaFacet.validate!(input[:facet_filter], context: "#{context}[:facet_filter]") unless input[:facet_filter].nil?
      end
    end

    class ListObjectAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectAttributesOutput, context: context)
        AttributeKeyAndValueList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListObjectChildrenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectChildrenInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class ListObjectChildrenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectChildrenOutput, context: context)
        LinkNameToObjectIdentifierMap.validate!(input[:children], context: "#{context}[:children]") unless input[:children].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListObjectParentPathsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectParentPathsInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListObjectParentPathsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectParentPathsOutput, context: context)
        PathToObjectIdentifiersList.validate!(input[:path_to_object_identifiers_list], context: "#{context}[:path_to_object_identifiers_list]") unless input[:path_to_object_identifiers_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListObjectParentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectParentsInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
        Hearth::Validator.validate!(input[:include_all_links_to_each_parent], ::TrueClass, ::FalseClass, context: "#{context}[:include_all_links_to_each_parent]")
      end
    end

    class ListObjectParentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectParentsOutput, context: context)
        ObjectIdentifierToLinkNameMap.validate!(input[:parents], context: "#{context}[:parents]") unless input[:parents].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ObjectIdentifierAndLinkNameList.validate!(input[:parent_links], context: "#{context}[:parent_links]") unless input[:parent_links].nil?
      end
    end

    class ListObjectPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class ListObjectPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectPoliciesOutput, context: context)
        ObjectIdentifierList.validate!(input[:attached_policy_ids], context: "#{context}[:attached_policy_ids]") unless input[:attached_policy_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOutgoingTypedLinksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOutgoingTypedLinksInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        TypedLinkAttributeRangeList.validate!(input[:filter_attribute_ranges], context: "#{context}[:filter_attribute_ranges]") unless input[:filter_attribute_ranges].nil?
        TypedLinkSchemaAndFacetName.validate!(input[:filter_typed_link], context: "#{context}[:filter_typed_link]") unless input[:filter_typed_link].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class ListOutgoingTypedLinksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOutgoingTypedLinksOutput, context: context)
        TypedLinkSpecifierList.validate!(input[:typed_link_specifiers], context: "#{context}[:typed_link_specifiers]") unless input[:typed_link_specifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPolicyAttachmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyAttachmentsInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:policy_reference], context: "#{context}[:policy_reference]") unless input[:policy_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:consistency_level], ::String, context: "#{context}[:consistency_level]")
      end
    end

    class ListPolicyAttachmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyAttachmentsOutput, context: context)
        ObjectIdentifierList.validate!(input[:object_identifiers], context: "#{context}[:object_identifiers]") unless input[:object_identifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPublishedSchemaArnsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPublishedSchemaArnsInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPublishedSchemaArnsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPublishedSchemaArnsOutput, context: context)
        Arns.validate!(input[:schema_arns], context: "#{context}[:schema_arns]") unless input[:schema_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTypedLinkFacetAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypedLinkFacetAttributesInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTypedLinkFacetAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypedLinkFacetAttributesOutput, context: context)
        TypedLinkAttributeDefinitionList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTypedLinkFacetNamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypedLinkFacetNamesInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTypedLinkFacetNamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypedLinkFacetNamesOutput, context: context)
        TypedLinkNameList.validate!(input[:facet_names], context: "#{context}[:facet_names]") unless input[:facet_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LookupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LookupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class LookupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LookupPolicyOutput, context: context)
        PolicyToPathList.validate!(input[:policy_to_path_list], context: "#{context}[:policy_to_path_list]") unless input[:policy_to_path_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotIndexException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotIndexException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotNodeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotNodeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ObjectAlreadyDetachedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectAlreadyDetachedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ObjectAttributeAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectAttributeAction, context: context)
        Hearth::Validator.validate!(input[:object_attribute_action_type], ::String, context: "#{context}[:object_attribute_action_type]")
        TypedAttributeValue.validate!(input[:object_attribute_update_value], context: "#{context}[:object_attribute_update_value]") unless input[:object_attribute_update_value].nil?
      end
    end

    class ObjectAttributeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectAttributeRange, context: context)
        AttributeKey.validate!(input[:attribute_key], context: "#{context}[:attribute_key]") unless input[:attribute_key].nil?
        TypedAttributeValueRange.validate!(input[:range], context: "#{context}[:range]") unless input[:range].nil?
      end
    end

    class ObjectAttributeRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectAttributeRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectAttributeUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectAttributeUpdate, context: context)
        AttributeKey.validate!(input[:object_attribute_key], context: "#{context}[:object_attribute_key]") unless input[:object_attribute_key].nil?
        ObjectAttributeAction.validate!(input[:object_attribute_action], context: "#{context}[:object_attribute_action]") unless input[:object_attribute_action].nil?
      end
    end

    class ObjectAttributeUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectAttributeUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectIdentifierAndLinkNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectIdentifierAndLinkNameTuple.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectIdentifierAndLinkNameTuple
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectIdentifierAndLinkNameTuple, context: context)
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
      end
    end

    class ObjectIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ObjectIdentifierToLinkNameMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ObjectNotDetachedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectNotDetachedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ObjectReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectReference, context: context)
        Hearth::Validator.validate!(input[:selector], ::String, context: "#{context}[:selector]")
      end
    end

    class PathToObjectIdentifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PathToObjectIdentifiers, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        ObjectIdentifierList.validate!(input[:object_identifiers], context: "#{context}[:object_identifiers]") unless input[:object_identifiers].nil?
      end
    end

    class PathToObjectIdentifiersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PathToObjectIdentifiers.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyAttachment, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
      end
    end

    class PolicyAttachmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyAttachment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyToPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyToPath, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        PolicyAttachmentList.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
      end
    end

    class PolicyToPathList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyToPath.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PublishSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishSchemaInput, context: context)
        Hearth::Validator.validate!(input[:development_schema_arn], ::String, context: "#{context}[:development_schema_arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class PublishSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:published_schema_arn], ::String, context: "#{context}[:published_schema_arn]")
      end
    end

    class PutSchemaFromJsonInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSchemaFromJsonInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
      end
    end

    class PutSchemaFromJsonOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSchemaFromJsonOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RemoveFacetFromObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFacetFromObjectInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        SchemaFacet.validate!(input[:schema_facet], context: "#{context}[:schema_facet]") unless input[:schema_facet].nil?
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
      end
    end

    class RemoveFacetFromObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveFacetFromObjectOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RetryableConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryableConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Rule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rule, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        RuleParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class RuleMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Rule.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class RuleParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SchemaAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SchemaAlreadyPublishedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaAlreadyPublishedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SchemaFacet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaFacet, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:facet_name], ::String, context: "#{context}[:facet_name]")
      end
    end

    class SchemaFacetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaFacet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StillContainsLinksException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StillContainsLinksException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class TypedAttributeValue
      def self.validate!(input, context:)
        case input
        when Types::TypedAttributeValue::StringValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::TypedAttributeValue::BinaryValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::TypedAttributeValue::BooleanValue
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::TypedAttributeValue::NumberValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::TypedAttributeValue::DatetimeValue
          Hearth::Validator.validate!(input.__getobj__, ::Time, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::TypedAttributeValue, got #{input.class}."
        end
      end

      class StringValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class BinaryValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class BooleanValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class NumberValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class DatetimeValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Time, context: context)
        end
      end
    end

    class TypedAttributeValueRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypedAttributeValueRange, context: context)
        Hearth::Validator.validate!(input[:start_mode], ::String, context: "#{context}[:start_mode]")
        TypedAttributeValue.validate!(input[:start_value], context: "#{context}[:start_value]") unless input[:start_value].nil?
        Hearth::Validator.validate!(input[:end_mode], ::String, context: "#{context}[:end_mode]")
        TypedAttributeValue.validate!(input[:end_value], context: "#{context}[:end_value]") unless input[:end_value].nil?
      end
    end

    class TypedLinkAttributeDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypedLinkAttributeDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        TypedAttributeValue.validate!(input[:default_value], context: "#{context}[:default_value]") unless input[:default_value].nil?
        Hearth::Validator.validate!(input[:is_immutable], ::TrueClass, ::FalseClass, context: "#{context}[:is_immutable]")
        RuleMap.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:required_behavior], ::String, context: "#{context}[:required_behavior]")
      end
    end

    class TypedLinkAttributeDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TypedLinkAttributeDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TypedLinkAttributeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypedLinkAttributeRange, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        TypedAttributeValueRange.validate!(input[:range], context: "#{context}[:range]") unless input[:range].nil?
      end
    end

    class TypedLinkAttributeRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TypedLinkAttributeRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TypedLinkFacet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypedLinkFacet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TypedLinkAttributeDefinitionList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        AttributeNameList.validate!(input[:identity_attribute_order], context: "#{context}[:identity_attribute_order]") unless input[:identity_attribute_order].nil?
      end
    end

    class TypedLinkFacetAttributeUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypedLinkFacetAttributeUpdate, context: context)
        TypedLinkAttributeDefinition.validate!(input[:attribute], context: "#{context}[:attribute]") unless input[:attribute].nil?
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class TypedLinkFacetAttributeUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TypedLinkFacetAttributeUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TypedLinkNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TypedLinkSchemaAndFacetName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypedLinkSchemaAndFacetName, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:typed_link_name], ::String, context: "#{context}[:typed_link_name]")
      end
    end

    class TypedLinkSpecifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypedLinkSpecifier, context: context)
        TypedLinkSchemaAndFacetName.validate!(input[:typed_link_facet], context: "#{context}[:typed_link_facet]") unless input[:typed_link_facet].nil?
        ObjectReference.validate!(input[:source_object_reference], context: "#{context}[:source_object_reference]") unless input[:source_object_reference].nil?
        ObjectReference.validate!(input[:target_object_reference], context: "#{context}[:target_object_reference]") unless input[:target_object_reference].nil?
        AttributeNameAndValueList.validate!(input[:identity_attribute_values], context: "#{context}[:identity_attribute_values]") unless input[:identity_attribute_values].nil?
      end
    end

    class TypedLinkSpecifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TypedLinkSpecifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnsupportedIndexTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedIndexTypeException, context: context)
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

    class UpdateFacetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFacetInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FacetAttributeUpdateList.validate!(input[:attribute_updates], context: "#{context}[:attribute_updates]") unless input[:attribute_updates].nil?
        Hearth::Validator.validate!(input[:object_type], ::String, context: "#{context}[:object_type]")
      end
    end

    class UpdateFacetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFacetOutput, context: context)
      end
    end

    class UpdateLinkAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLinkAttributesInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        TypedLinkSpecifier.validate!(input[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless input[:typed_link_specifier].nil?
        LinkAttributeUpdateList.validate!(input[:attribute_updates], context: "#{context}[:attribute_updates]") unless input[:attribute_updates].nil?
      end
    end

    class UpdateLinkAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLinkAttributesOutput, context: context)
      end
    end

    class UpdateObjectAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateObjectAttributesInput, context: context)
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        ObjectReference.validate!(input[:object_reference], context: "#{context}[:object_reference]") unless input[:object_reference].nil?
        ObjectAttributeUpdateList.validate!(input[:attribute_updates], context: "#{context}[:attribute_updates]") unless input[:attribute_updates].nil?
      end
    end

    class UpdateObjectAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateObjectAttributesOutput, context: context)
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
      end
    end

    class UpdateSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSchemaInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
      end
    end

    class UpdateTypedLinkFacetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTypedLinkFacetInput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TypedLinkFacetAttributeUpdateList.validate!(input[:attribute_updates], context: "#{context}[:attribute_updates]") unless input[:attribute_updates].nil?
        AttributeNameList.validate!(input[:identity_attribute_order], context: "#{context}[:identity_attribute_order]") unless input[:identity_attribute_order].nil?
      end
    end

    class UpdateTypedLinkFacetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTypedLinkFacetOutput, context: context)
      end
    end

    class UpgradeAppliedSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeAppliedSchemaInput, context: context)
        Hearth::Validator.validate!(input[:published_schema_arn], ::String, context: "#{context}[:published_schema_arn]")
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class UpgradeAppliedSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeAppliedSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:upgraded_schema_arn], ::String, context: "#{context}[:upgraded_schema_arn]")
        Hearth::Validator.validate!(input[:directory_arn], ::String, context: "#{context}[:directory_arn]")
      end
    end

    class UpgradePublishedSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradePublishedSchemaInput, context: context)
        Hearth::Validator.validate!(input[:development_schema_arn], ::String, context: "#{context}[:development_schema_arn]")
        Hearth::Validator.validate!(input[:published_schema_arn], ::String, context: "#{context}[:published_schema_arn]")
        Hearth::Validator.validate!(input[:minor_version], ::String, context: "#{context}[:minor_version]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class UpgradePublishedSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradePublishedSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:upgraded_schema_arn], ::String, context: "#{context}[:upgraded_schema_arn]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
