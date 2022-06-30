# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CloudDirectory
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AddFacetToObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFacetToObjectInput, context: context)
        type = Types::AddFacetToObjectInput.new
        type.directory_arn = params[:directory_arn]
        type.schema_facet = SchemaFacet.build(params[:schema_facet], context: "#{context}[:schema_facet]") unless params[:schema_facet].nil?
        type.object_attribute_list = AttributeKeyAndValueList.build(params[:object_attribute_list], context: "#{context}[:object_attribute_list]") unless params[:object_attribute_list].nil?
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module AddFacetToObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddFacetToObjectOutput, context: context)
        type = Types::AddFacetToObjectOutput.new
        type
      end
    end

    module ApplySchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplySchemaInput, context: context)
        type = Types::ApplySchemaInput.new
        type.published_schema_arn = params[:published_schema_arn]
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module ApplySchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplySchemaOutput, context: context)
        type = Types::ApplySchemaOutput.new
        type.applied_schema_arn = params[:applied_schema_arn]
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module Arns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttachObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachObjectInput, context: context)
        type = Types::AttachObjectInput.new
        type.directory_arn = params[:directory_arn]
        type.parent_reference = ObjectReference.build(params[:parent_reference], context: "#{context}[:parent_reference]") unless params[:parent_reference].nil?
        type.child_reference = ObjectReference.build(params[:child_reference], context: "#{context}[:child_reference]") unless params[:child_reference].nil?
        type.link_name = params[:link_name]
        type
      end
    end

    module AttachObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachObjectOutput, context: context)
        type = Types::AttachObjectOutput.new
        type.attached_object_identifier = params[:attached_object_identifier]
        type
      end
    end

    module AttachPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachPolicyInput, context: context)
        type = Types::AttachPolicyInput.new
        type.directory_arn = params[:directory_arn]
        type.policy_reference = ObjectReference.build(params[:policy_reference], context: "#{context}[:policy_reference]") unless params[:policy_reference].nil?
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module AttachPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachPolicyOutput, context: context)
        type = Types::AttachPolicyOutput.new
        type
      end
    end

    module AttachToIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachToIndexInput, context: context)
        type = Types::AttachToIndexInput.new
        type.directory_arn = params[:directory_arn]
        type.index_reference = ObjectReference.build(params[:index_reference], context: "#{context}[:index_reference]") unless params[:index_reference].nil?
        type.target_reference = ObjectReference.build(params[:target_reference], context: "#{context}[:target_reference]") unless params[:target_reference].nil?
        type
      end
    end

    module AttachToIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachToIndexOutput, context: context)
        type = Types::AttachToIndexOutput.new
        type.attached_object_identifier = params[:attached_object_identifier]
        type
      end
    end

    module AttachTypedLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachTypedLinkInput, context: context)
        type = Types::AttachTypedLinkInput.new
        type.directory_arn = params[:directory_arn]
        type.source_object_reference = ObjectReference.build(params[:source_object_reference], context: "#{context}[:source_object_reference]") unless params[:source_object_reference].nil?
        type.target_object_reference = ObjectReference.build(params[:target_object_reference], context: "#{context}[:target_object_reference]") unless params[:target_object_reference].nil?
        type.typed_link_facet = TypedLinkSchemaAndFacetName.build(params[:typed_link_facet], context: "#{context}[:typed_link_facet]") unless params[:typed_link_facet].nil?
        type.attributes = AttributeNameAndValueList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module AttachTypedLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachTypedLinkOutput, context: context)
        type = Types::AttachTypedLinkOutput.new
        type.typed_link_specifier = TypedLinkSpecifier.build(params[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless params[:typed_link_specifier].nil?
        type
      end
    end

    module AttributeKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeKey, context: context)
        type = Types::AttributeKey.new
        type.schema_arn = params[:schema_arn]
        type.facet_name = params[:facet_name]
        type.name = params[:name]
        type
      end
    end

    module AttributeKeyAndValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeKeyAndValue, context: context)
        type = Types::AttributeKeyAndValue.new
        type.key = AttributeKey.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.value = TypedAttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module AttributeKeyAndValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeKeyAndValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeNameAndValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeNameAndValue, context: context)
        type = Types::AttributeNameAndValue.new
        type.attribute_name = params[:attribute_name]
        type.value = TypedAttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module AttributeNameAndValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeNameAndValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchAddFacetToObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAddFacetToObject, context: context)
        type = Types::BatchAddFacetToObject.new
        type.schema_facet = SchemaFacet.build(params[:schema_facet], context: "#{context}[:schema_facet]") unless params[:schema_facet].nil?
        type.object_attribute_list = AttributeKeyAndValueList.build(params[:object_attribute_list], context: "#{context}[:object_attribute_list]") unless params[:object_attribute_list].nil?
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module BatchAddFacetToObjectResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAddFacetToObjectResponse, context: context)
        type = Types::BatchAddFacetToObjectResponse.new
        type
      end
    end

    module BatchAttachObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAttachObject, context: context)
        type = Types::BatchAttachObject.new
        type.parent_reference = ObjectReference.build(params[:parent_reference], context: "#{context}[:parent_reference]") unless params[:parent_reference].nil?
        type.child_reference = ObjectReference.build(params[:child_reference], context: "#{context}[:child_reference]") unless params[:child_reference].nil?
        type.link_name = params[:link_name]
        type
      end
    end

    module BatchAttachObjectResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAttachObjectResponse, context: context)
        type = Types::BatchAttachObjectResponse.new
        type.attached_object_identifier = params[:attached_object_identifier]
        type
      end
    end

    module BatchAttachPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAttachPolicy, context: context)
        type = Types::BatchAttachPolicy.new
        type.policy_reference = ObjectReference.build(params[:policy_reference], context: "#{context}[:policy_reference]") unless params[:policy_reference].nil?
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module BatchAttachPolicyResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAttachPolicyResponse, context: context)
        type = Types::BatchAttachPolicyResponse.new
        type
      end
    end

    module BatchAttachToIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAttachToIndex, context: context)
        type = Types::BatchAttachToIndex.new
        type.index_reference = ObjectReference.build(params[:index_reference], context: "#{context}[:index_reference]") unless params[:index_reference].nil?
        type.target_reference = ObjectReference.build(params[:target_reference], context: "#{context}[:target_reference]") unless params[:target_reference].nil?
        type
      end
    end

    module BatchAttachToIndexResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAttachToIndexResponse, context: context)
        type = Types::BatchAttachToIndexResponse.new
        type.attached_object_identifier = params[:attached_object_identifier]
        type
      end
    end

    module BatchAttachTypedLink
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAttachTypedLink, context: context)
        type = Types::BatchAttachTypedLink.new
        type.source_object_reference = ObjectReference.build(params[:source_object_reference], context: "#{context}[:source_object_reference]") unless params[:source_object_reference].nil?
        type.target_object_reference = ObjectReference.build(params[:target_object_reference], context: "#{context}[:target_object_reference]") unless params[:target_object_reference].nil?
        type.typed_link_facet = TypedLinkSchemaAndFacetName.build(params[:typed_link_facet], context: "#{context}[:typed_link_facet]") unless params[:typed_link_facet].nil?
        type.attributes = AttributeNameAndValueList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module BatchAttachTypedLinkResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAttachTypedLinkResponse, context: context)
        type = Types::BatchAttachTypedLinkResponse.new
        type.typed_link_specifier = TypedLinkSpecifier.build(params[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless params[:typed_link_specifier].nil?
        type
      end
    end

    module BatchCreateIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateIndex, context: context)
        type = Types::BatchCreateIndex.new
        type.ordered_indexed_attribute_list = AttributeKeyList.build(params[:ordered_indexed_attribute_list], context: "#{context}[:ordered_indexed_attribute_list]") unless params[:ordered_indexed_attribute_list].nil?
        type.is_unique = params[:is_unique]
        type.parent_reference = ObjectReference.build(params[:parent_reference], context: "#{context}[:parent_reference]") unless params[:parent_reference].nil?
        type.link_name = params[:link_name]
        type.batch_reference_name = params[:batch_reference_name]
        type
      end
    end

    module BatchCreateIndexResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateIndexResponse, context: context)
        type = Types::BatchCreateIndexResponse.new
        type.object_identifier = params[:object_identifier]
        type
      end
    end

    module BatchCreateObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateObject, context: context)
        type = Types::BatchCreateObject.new
        type.schema_facet = SchemaFacetList.build(params[:schema_facet], context: "#{context}[:schema_facet]") unless params[:schema_facet].nil?
        type.object_attribute_list = AttributeKeyAndValueList.build(params[:object_attribute_list], context: "#{context}[:object_attribute_list]") unless params[:object_attribute_list].nil?
        type.parent_reference = ObjectReference.build(params[:parent_reference], context: "#{context}[:parent_reference]") unless params[:parent_reference].nil?
        type.link_name = params[:link_name]
        type.batch_reference_name = params[:batch_reference_name]
        type
      end
    end

    module BatchCreateObjectResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateObjectResponse, context: context)
        type = Types::BatchCreateObjectResponse.new
        type.object_identifier = params[:object_identifier]
        type
      end
    end

    module BatchDeleteObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteObject, context: context)
        type = Types::BatchDeleteObject.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module BatchDeleteObjectResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteObjectResponse, context: context)
        type = Types::BatchDeleteObjectResponse.new
        type
      end
    end

    module BatchDetachFromIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetachFromIndex, context: context)
        type = Types::BatchDetachFromIndex.new
        type.index_reference = ObjectReference.build(params[:index_reference], context: "#{context}[:index_reference]") unless params[:index_reference].nil?
        type.target_reference = ObjectReference.build(params[:target_reference], context: "#{context}[:target_reference]") unless params[:target_reference].nil?
        type
      end
    end

    module BatchDetachFromIndexResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetachFromIndexResponse, context: context)
        type = Types::BatchDetachFromIndexResponse.new
        type.detached_object_identifier = params[:detached_object_identifier]
        type
      end
    end

    module BatchDetachObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetachObject, context: context)
        type = Types::BatchDetachObject.new
        type.parent_reference = ObjectReference.build(params[:parent_reference], context: "#{context}[:parent_reference]") unless params[:parent_reference].nil?
        type.link_name = params[:link_name]
        type.batch_reference_name = params[:batch_reference_name]
        type
      end
    end

    module BatchDetachObjectResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetachObjectResponse, context: context)
        type = Types::BatchDetachObjectResponse.new
        type.detached_object_identifier = params[:detached_object_identifier]
        type
      end
    end

    module BatchDetachPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetachPolicy, context: context)
        type = Types::BatchDetachPolicy.new
        type.policy_reference = ObjectReference.build(params[:policy_reference], context: "#{context}[:policy_reference]") unless params[:policy_reference].nil?
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module BatchDetachPolicyResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetachPolicyResponse, context: context)
        type = Types::BatchDetachPolicyResponse.new
        type
      end
    end

    module BatchDetachTypedLink
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetachTypedLink, context: context)
        type = Types::BatchDetachTypedLink.new
        type.typed_link_specifier = TypedLinkSpecifier.build(params[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless params[:typed_link_specifier].nil?
        type
      end
    end

    module BatchDetachTypedLinkResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetachTypedLinkResponse, context: context)
        type = Types::BatchDetachTypedLinkResponse.new
        type
      end
    end

    module BatchGetLinkAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetLinkAttributes, context: context)
        type = Types::BatchGetLinkAttributes.new
        type.typed_link_specifier = TypedLinkSpecifier.build(params[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless params[:typed_link_specifier].nil?
        type.attribute_names = AttributeNameList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type
      end
    end

    module BatchGetLinkAttributesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetLinkAttributesResponse, context: context)
        type = Types::BatchGetLinkAttributesResponse.new
        type.attributes = AttributeKeyAndValueList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module BatchGetObjectAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetObjectAttributes, context: context)
        type = Types::BatchGetObjectAttributes.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.schema_facet = SchemaFacet.build(params[:schema_facet], context: "#{context}[:schema_facet]") unless params[:schema_facet].nil?
        type.attribute_names = AttributeNameList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type
      end
    end

    module BatchGetObjectAttributesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetObjectAttributesResponse, context: context)
        type = Types::BatchGetObjectAttributesResponse.new
        type.attributes = AttributeKeyAndValueList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module BatchGetObjectInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetObjectInformation, context: context)
        type = Types::BatchGetObjectInformation.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module BatchGetObjectInformationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetObjectInformationResponse, context: context)
        type = Types::BatchGetObjectInformationResponse.new
        type.schema_facets = SchemaFacetList.build(params[:schema_facets], context: "#{context}[:schema_facets]") unless params[:schema_facets].nil?
        type.object_identifier = params[:object_identifier]
        type
      end
    end

    module BatchListAttachedIndices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListAttachedIndices, context: context)
        type = Types::BatchListAttachedIndices.new
        type.target_reference = ObjectReference.build(params[:target_reference], context: "#{context}[:target_reference]") unless params[:target_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchListAttachedIndicesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListAttachedIndicesResponse, context: context)
        type = Types::BatchListAttachedIndicesResponse.new
        type.index_attachments = IndexAttachmentList.build(params[:index_attachments], context: "#{context}[:index_attachments]") unless params[:index_attachments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListIncomingTypedLinks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListIncomingTypedLinks, context: context)
        type = Types::BatchListIncomingTypedLinks.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.filter_attribute_ranges = TypedLinkAttributeRangeList.build(params[:filter_attribute_ranges], context: "#{context}[:filter_attribute_ranges]") unless params[:filter_attribute_ranges].nil?
        type.filter_typed_link = TypedLinkSchemaAndFacetName.build(params[:filter_typed_link], context: "#{context}[:filter_typed_link]") unless params[:filter_typed_link].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchListIncomingTypedLinksResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListIncomingTypedLinksResponse, context: context)
        type = Types::BatchListIncomingTypedLinksResponse.new
        type.link_specifiers = TypedLinkSpecifierList.build(params[:link_specifiers], context: "#{context}[:link_specifiers]") unless params[:link_specifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListIndex, context: context)
        type = Types::BatchListIndex.new
        type.ranges_on_indexed_values = ObjectAttributeRangeList.build(params[:ranges_on_indexed_values], context: "#{context}[:ranges_on_indexed_values]") unless params[:ranges_on_indexed_values].nil?
        type.index_reference = ObjectReference.build(params[:index_reference], context: "#{context}[:index_reference]") unless params[:index_reference].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListIndexResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListIndexResponse, context: context)
        type = Types::BatchListIndexResponse.new
        type.index_attachments = IndexAttachmentList.build(params[:index_attachments], context: "#{context}[:index_attachments]") unless params[:index_attachments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListObjectAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectAttributes, context: context)
        type = Types::BatchListObjectAttributes.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.facet_filter = SchemaFacet.build(params[:facet_filter], context: "#{context}[:facet_filter]") unless params[:facet_filter].nil?
        type
      end
    end

    module BatchListObjectAttributesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectAttributesResponse, context: context)
        type = Types::BatchListObjectAttributesResponse.new
        type.attributes = AttributeKeyAndValueList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListObjectChildren
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectChildren, context: context)
        type = Types::BatchListObjectChildren.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchListObjectChildrenResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectChildrenResponse, context: context)
        type = Types::BatchListObjectChildrenResponse.new
        type.children = LinkNameToObjectIdentifierMap.build(params[:children], context: "#{context}[:children]") unless params[:children].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListObjectParentPaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectParentPaths, context: context)
        type = Types::BatchListObjectParentPaths.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchListObjectParentPathsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectParentPathsResponse, context: context)
        type = Types::BatchListObjectParentPathsResponse.new
        type.path_to_object_identifiers_list = PathToObjectIdentifiersList.build(params[:path_to_object_identifiers_list], context: "#{context}[:path_to_object_identifiers_list]") unless params[:path_to_object_identifiers_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListObjectParents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectParents, context: context)
        type = Types::BatchListObjectParents.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchListObjectParentsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectParentsResponse, context: context)
        type = Types::BatchListObjectParentsResponse.new
        type.parent_links = ObjectIdentifierAndLinkNameList.build(params[:parent_links], context: "#{context}[:parent_links]") unless params[:parent_links].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListObjectPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectPolicies, context: context)
        type = Types::BatchListObjectPolicies.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchListObjectPoliciesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListObjectPoliciesResponse, context: context)
        type = Types::BatchListObjectPoliciesResponse.new
        type.attached_policy_ids = ObjectIdentifierList.build(params[:attached_policy_ids], context: "#{context}[:attached_policy_ids]") unless params[:attached_policy_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListOutgoingTypedLinks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListOutgoingTypedLinks, context: context)
        type = Types::BatchListOutgoingTypedLinks.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.filter_attribute_ranges = TypedLinkAttributeRangeList.build(params[:filter_attribute_ranges], context: "#{context}[:filter_attribute_ranges]") unless params[:filter_attribute_ranges].nil?
        type.filter_typed_link = TypedLinkSchemaAndFacetName.build(params[:filter_typed_link], context: "#{context}[:filter_typed_link]") unless params[:filter_typed_link].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchListOutgoingTypedLinksResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListOutgoingTypedLinksResponse, context: context)
        type = Types::BatchListOutgoingTypedLinksResponse.new
        type.typed_link_specifiers = TypedLinkSpecifierList.build(params[:typed_link_specifiers], context: "#{context}[:typed_link_specifiers]") unless params[:typed_link_specifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchListPolicyAttachments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListPolicyAttachments, context: context)
        type = Types::BatchListPolicyAttachments.new
        type.policy_reference = ObjectReference.build(params[:policy_reference], context: "#{context}[:policy_reference]") unless params[:policy_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchListPolicyAttachmentsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchListPolicyAttachmentsResponse, context: context)
        type = Types::BatchListPolicyAttachmentsResponse.new
        type.object_identifiers = ObjectIdentifierList.build(params[:object_identifiers], context: "#{context}[:object_identifiers]") unless params[:object_identifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchLookupPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchLookupPolicy, context: context)
        type = Types::BatchLookupPolicy.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchLookupPolicyResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchLookupPolicyResponse, context: context)
        type = Types::BatchLookupPolicyResponse.new
        type.policy_to_path_list = PolicyToPathList.build(params[:policy_to_path_list], context: "#{context}[:policy_to_path_list]") unless params[:policy_to_path_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchReadException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchReadException, context: context)
        type = Types::BatchReadException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module BatchReadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchReadInput, context: context)
        type = Types::BatchReadInput.new
        type.directory_arn = params[:directory_arn]
        type.operations = BatchReadOperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module BatchReadOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchReadOperation, context: context)
        type = Types::BatchReadOperation.new
        type.list_object_attributes = BatchListObjectAttributes.build(params[:list_object_attributes], context: "#{context}[:list_object_attributes]") unless params[:list_object_attributes].nil?
        type.list_object_children = BatchListObjectChildren.build(params[:list_object_children], context: "#{context}[:list_object_children]") unless params[:list_object_children].nil?
        type.list_attached_indices = BatchListAttachedIndices.build(params[:list_attached_indices], context: "#{context}[:list_attached_indices]") unless params[:list_attached_indices].nil?
        type.list_object_parent_paths = BatchListObjectParentPaths.build(params[:list_object_parent_paths], context: "#{context}[:list_object_parent_paths]") unless params[:list_object_parent_paths].nil?
        type.get_object_information = BatchGetObjectInformation.build(params[:get_object_information], context: "#{context}[:get_object_information]") unless params[:get_object_information].nil?
        type.get_object_attributes = BatchGetObjectAttributes.build(params[:get_object_attributes], context: "#{context}[:get_object_attributes]") unless params[:get_object_attributes].nil?
        type.list_object_parents = BatchListObjectParents.build(params[:list_object_parents], context: "#{context}[:list_object_parents]") unless params[:list_object_parents].nil?
        type.list_object_policies = BatchListObjectPolicies.build(params[:list_object_policies], context: "#{context}[:list_object_policies]") unless params[:list_object_policies].nil?
        type.list_policy_attachments = BatchListPolicyAttachments.build(params[:list_policy_attachments], context: "#{context}[:list_policy_attachments]") unless params[:list_policy_attachments].nil?
        type.lookup_policy = BatchLookupPolicy.build(params[:lookup_policy], context: "#{context}[:lookup_policy]") unless params[:lookup_policy].nil?
        type.list_index = BatchListIndex.build(params[:list_index], context: "#{context}[:list_index]") unless params[:list_index].nil?
        type.list_outgoing_typed_links = BatchListOutgoingTypedLinks.build(params[:list_outgoing_typed_links], context: "#{context}[:list_outgoing_typed_links]") unless params[:list_outgoing_typed_links].nil?
        type.list_incoming_typed_links = BatchListIncomingTypedLinks.build(params[:list_incoming_typed_links], context: "#{context}[:list_incoming_typed_links]") unless params[:list_incoming_typed_links].nil?
        type.get_link_attributes = BatchGetLinkAttributes.build(params[:get_link_attributes], context: "#{context}[:get_link_attributes]") unless params[:get_link_attributes].nil?
        type
      end
    end

    module BatchReadOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchReadOperation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchReadOperationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchReadOperationResponse, context: context)
        type = Types::BatchReadOperationResponse.new
        type.successful_response = BatchReadSuccessfulResponse.build(params[:successful_response], context: "#{context}[:successful_response]") unless params[:successful_response].nil?
        type.exception_response = BatchReadException.build(params[:exception_response], context: "#{context}[:exception_response]") unless params[:exception_response].nil?
        type
      end
    end

    module BatchReadOperationResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchReadOperationResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchReadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchReadOutput, context: context)
        type = Types::BatchReadOutput.new
        type.responses = BatchReadOperationResponseList.build(params[:responses], context: "#{context}[:responses]") unless params[:responses].nil?
        type
      end
    end

    module BatchReadSuccessfulResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchReadSuccessfulResponse, context: context)
        type = Types::BatchReadSuccessfulResponse.new
        type.list_object_attributes = BatchListObjectAttributesResponse.build(params[:list_object_attributes], context: "#{context}[:list_object_attributes]") unless params[:list_object_attributes].nil?
        type.list_object_children = BatchListObjectChildrenResponse.build(params[:list_object_children], context: "#{context}[:list_object_children]") unless params[:list_object_children].nil?
        type.get_object_information = BatchGetObjectInformationResponse.build(params[:get_object_information], context: "#{context}[:get_object_information]") unless params[:get_object_information].nil?
        type.get_object_attributes = BatchGetObjectAttributesResponse.build(params[:get_object_attributes], context: "#{context}[:get_object_attributes]") unless params[:get_object_attributes].nil?
        type.list_attached_indices = BatchListAttachedIndicesResponse.build(params[:list_attached_indices], context: "#{context}[:list_attached_indices]") unless params[:list_attached_indices].nil?
        type.list_object_parent_paths = BatchListObjectParentPathsResponse.build(params[:list_object_parent_paths], context: "#{context}[:list_object_parent_paths]") unless params[:list_object_parent_paths].nil?
        type.list_object_policies = BatchListObjectPoliciesResponse.build(params[:list_object_policies], context: "#{context}[:list_object_policies]") unless params[:list_object_policies].nil?
        type.list_policy_attachments = BatchListPolicyAttachmentsResponse.build(params[:list_policy_attachments], context: "#{context}[:list_policy_attachments]") unless params[:list_policy_attachments].nil?
        type.lookup_policy = BatchLookupPolicyResponse.build(params[:lookup_policy], context: "#{context}[:lookup_policy]") unless params[:lookup_policy].nil?
        type.list_index = BatchListIndexResponse.build(params[:list_index], context: "#{context}[:list_index]") unless params[:list_index].nil?
        type.list_outgoing_typed_links = BatchListOutgoingTypedLinksResponse.build(params[:list_outgoing_typed_links], context: "#{context}[:list_outgoing_typed_links]") unless params[:list_outgoing_typed_links].nil?
        type.list_incoming_typed_links = BatchListIncomingTypedLinksResponse.build(params[:list_incoming_typed_links], context: "#{context}[:list_incoming_typed_links]") unless params[:list_incoming_typed_links].nil?
        type.get_link_attributes = BatchGetLinkAttributesResponse.build(params[:get_link_attributes], context: "#{context}[:get_link_attributes]") unless params[:get_link_attributes].nil?
        type.list_object_parents = BatchListObjectParentsResponse.build(params[:list_object_parents], context: "#{context}[:list_object_parents]") unless params[:list_object_parents].nil?
        type
      end
    end

    module BatchRemoveFacetFromObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchRemoveFacetFromObject, context: context)
        type = Types::BatchRemoveFacetFromObject.new
        type.schema_facet = SchemaFacet.build(params[:schema_facet], context: "#{context}[:schema_facet]") unless params[:schema_facet].nil?
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module BatchRemoveFacetFromObjectResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchRemoveFacetFromObjectResponse, context: context)
        type = Types::BatchRemoveFacetFromObjectResponse.new
        type
      end
    end

    module BatchUpdateLinkAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateLinkAttributes, context: context)
        type = Types::BatchUpdateLinkAttributes.new
        type.typed_link_specifier = TypedLinkSpecifier.build(params[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless params[:typed_link_specifier].nil?
        type.attribute_updates = LinkAttributeUpdateList.build(params[:attribute_updates], context: "#{context}[:attribute_updates]") unless params[:attribute_updates].nil?
        type
      end
    end

    module BatchUpdateLinkAttributesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateLinkAttributesResponse, context: context)
        type = Types::BatchUpdateLinkAttributesResponse.new
        type
      end
    end

    module BatchUpdateObjectAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateObjectAttributes, context: context)
        type = Types::BatchUpdateObjectAttributes.new
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.attribute_updates = ObjectAttributeUpdateList.build(params[:attribute_updates], context: "#{context}[:attribute_updates]") unless params[:attribute_updates].nil?
        type
      end
    end

    module BatchUpdateObjectAttributesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateObjectAttributesResponse, context: context)
        type = Types::BatchUpdateObjectAttributesResponse.new
        type.object_identifier = params[:object_identifier]
        type
      end
    end

    module BatchWriteException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchWriteException, context: context)
        type = Types::BatchWriteException.new
        type.index = params[:index]
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module BatchWriteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchWriteInput, context: context)
        type = Types::BatchWriteInput.new
        type.directory_arn = params[:directory_arn]
        type.operations = BatchWriteOperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module BatchWriteOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchWriteOperation, context: context)
        type = Types::BatchWriteOperation.new
        type.create_object = BatchCreateObject.build(params[:create_object], context: "#{context}[:create_object]") unless params[:create_object].nil?
        type.attach_object = BatchAttachObject.build(params[:attach_object], context: "#{context}[:attach_object]") unless params[:attach_object].nil?
        type.detach_object = BatchDetachObject.build(params[:detach_object], context: "#{context}[:detach_object]") unless params[:detach_object].nil?
        type.update_object_attributes = BatchUpdateObjectAttributes.build(params[:update_object_attributes], context: "#{context}[:update_object_attributes]") unless params[:update_object_attributes].nil?
        type.delete_object = BatchDeleteObject.build(params[:delete_object], context: "#{context}[:delete_object]") unless params[:delete_object].nil?
        type.add_facet_to_object = BatchAddFacetToObject.build(params[:add_facet_to_object], context: "#{context}[:add_facet_to_object]") unless params[:add_facet_to_object].nil?
        type.remove_facet_from_object = BatchRemoveFacetFromObject.build(params[:remove_facet_from_object], context: "#{context}[:remove_facet_from_object]") unless params[:remove_facet_from_object].nil?
        type.attach_policy = BatchAttachPolicy.build(params[:attach_policy], context: "#{context}[:attach_policy]") unless params[:attach_policy].nil?
        type.detach_policy = BatchDetachPolicy.build(params[:detach_policy], context: "#{context}[:detach_policy]") unless params[:detach_policy].nil?
        type.create_index = BatchCreateIndex.build(params[:create_index], context: "#{context}[:create_index]") unless params[:create_index].nil?
        type.attach_to_index = BatchAttachToIndex.build(params[:attach_to_index], context: "#{context}[:attach_to_index]") unless params[:attach_to_index].nil?
        type.detach_from_index = BatchDetachFromIndex.build(params[:detach_from_index], context: "#{context}[:detach_from_index]") unless params[:detach_from_index].nil?
        type.attach_typed_link = BatchAttachTypedLink.build(params[:attach_typed_link], context: "#{context}[:attach_typed_link]") unless params[:attach_typed_link].nil?
        type.detach_typed_link = BatchDetachTypedLink.build(params[:detach_typed_link], context: "#{context}[:detach_typed_link]") unless params[:detach_typed_link].nil?
        type.update_link_attributes = BatchUpdateLinkAttributes.build(params[:update_link_attributes], context: "#{context}[:update_link_attributes]") unless params[:update_link_attributes].nil?
        type
      end
    end

    module BatchWriteOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchWriteOperation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchWriteOperationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchWriteOperationResponse, context: context)
        type = Types::BatchWriteOperationResponse.new
        type.create_object = BatchCreateObjectResponse.build(params[:create_object], context: "#{context}[:create_object]") unless params[:create_object].nil?
        type.attach_object = BatchAttachObjectResponse.build(params[:attach_object], context: "#{context}[:attach_object]") unless params[:attach_object].nil?
        type.detach_object = BatchDetachObjectResponse.build(params[:detach_object], context: "#{context}[:detach_object]") unless params[:detach_object].nil?
        type.update_object_attributes = BatchUpdateObjectAttributesResponse.build(params[:update_object_attributes], context: "#{context}[:update_object_attributes]") unless params[:update_object_attributes].nil?
        type.delete_object = BatchDeleteObjectResponse.build(params[:delete_object], context: "#{context}[:delete_object]") unless params[:delete_object].nil?
        type.add_facet_to_object = BatchAddFacetToObjectResponse.build(params[:add_facet_to_object], context: "#{context}[:add_facet_to_object]") unless params[:add_facet_to_object].nil?
        type.remove_facet_from_object = BatchRemoveFacetFromObjectResponse.build(params[:remove_facet_from_object], context: "#{context}[:remove_facet_from_object]") unless params[:remove_facet_from_object].nil?
        type.attach_policy = BatchAttachPolicyResponse.build(params[:attach_policy], context: "#{context}[:attach_policy]") unless params[:attach_policy].nil?
        type.detach_policy = BatchDetachPolicyResponse.build(params[:detach_policy], context: "#{context}[:detach_policy]") unless params[:detach_policy].nil?
        type.create_index = BatchCreateIndexResponse.build(params[:create_index], context: "#{context}[:create_index]") unless params[:create_index].nil?
        type.attach_to_index = BatchAttachToIndexResponse.build(params[:attach_to_index], context: "#{context}[:attach_to_index]") unless params[:attach_to_index].nil?
        type.detach_from_index = BatchDetachFromIndexResponse.build(params[:detach_from_index], context: "#{context}[:detach_from_index]") unless params[:detach_from_index].nil?
        type.attach_typed_link = BatchAttachTypedLinkResponse.build(params[:attach_typed_link], context: "#{context}[:attach_typed_link]") unless params[:attach_typed_link].nil?
        type.detach_typed_link = BatchDetachTypedLinkResponse.build(params[:detach_typed_link], context: "#{context}[:detach_typed_link]") unless params[:detach_typed_link].nil?
        type.update_link_attributes = BatchUpdateLinkAttributesResponse.build(params[:update_link_attributes], context: "#{context}[:update_link_attributes]") unless params[:update_link_attributes].nil?
        type
      end
    end

    module BatchWriteOperationResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchWriteOperationResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchWriteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchWriteOutput, context: context)
        type = Types::BatchWriteOutput.new
        type.responses = BatchWriteOperationResponseList.build(params[:responses], context: "#{context}[:responses]") unless params[:responses].nil?
        type
      end
    end

    module CannotListParentOfRootException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CannotListParentOfRootException, context: context)
        type = Types::CannotListParentOfRootException.new
        type.message = params[:message]
        type
      end
    end

    module CreateDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectoryInput, context: context)
        type = Types::CreateDirectoryInput.new
        type.name = params[:name]
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module CreateDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectoryOutput, context: context)
        type = Types::CreateDirectoryOutput.new
        type.directory_arn = params[:directory_arn]
        type.name = params[:name]
        type.object_identifier = params[:object_identifier]
        type.applied_schema_arn = params[:applied_schema_arn]
        type
      end
    end

    module CreateFacetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFacetInput, context: context)
        type = Types::CreateFacetInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type.attributes = FacetAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.object_type = params[:object_type]
        type.facet_style = params[:facet_style]
        type
      end
    end

    module CreateFacetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFacetOutput, context: context)
        type = Types::CreateFacetOutput.new
        type
      end
    end

    module CreateIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIndexInput, context: context)
        type = Types::CreateIndexInput.new
        type.directory_arn = params[:directory_arn]
        type.ordered_indexed_attribute_list = AttributeKeyList.build(params[:ordered_indexed_attribute_list], context: "#{context}[:ordered_indexed_attribute_list]") unless params[:ordered_indexed_attribute_list].nil?
        type.is_unique = params[:is_unique]
        type.parent_reference = ObjectReference.build(params[:parent_reference], context: "#{context}[:parent_reference]") unless params[:parent_reference].nil?
        type.link_name = params[:link_name]
        type
      end
    end

    module CreateIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIndexOutput, context: context)
        type = Types::CreateIndexOutput.new
        type.object_identifier = params[:object_identifier]
        type
      end
    end

    module CreateObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateObjectInput, context: context)
        type = Types::CreateObjectInput.new
        type.directory_arn = params[:directory_arn]
        type.schema_facets = SchemaFacetList.build(params[:schema_facets], context: "#{context}[:schema_facets]") unless params[:schema_facets].nil?
        type.object_attribute_list = AttributeKeyAndValueList.build(params[:object_attribute_list], context: "#{context}[:object_attribute_list]") unless params[:object_attribute_list].nil?
        type.parent_reference = ObjectReference.build(params[:parent_reference], context: "#{context}[:parent_reference]") unless params[:parent_reference].nil?
        type.link_name = params[:link_name]
        type
      end
    end

    module CreateObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateObjectOutput, context: context)
        type = Types::CreateObjectOutput.new
        type.object_identifier = params[:object_identifier]
        type
      end
    end

    module CreateSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchemaInput, context: context)
        type = Types::CreateSchemaInput.new
        type.name = params[:name]
        type
      end
    end

    module CreateSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchemaOutput, context: context)
        type = Types::CreateSchemaOutput.new
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module CreateTypedLinkFacetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTypedLinkFacetInput, context: context)
        type = Types::CreateTypedLinkFacetInput.new
        type.schema_arn = params[:schema_arn]
        type.facet = TypedLinkFacet.build(params[:facet], context: "#{context}[:facet]") unless params[:facet].nil?
        type
      end
    end

    module CreateTypedLinkFacetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTypedLinkFacetOutput, context: context)
        type = Types::CreateTypedLinkFacetOutput.new
        type
      end
    end

    module DeleteDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectoryInput, context: context)
        type = Types::DeleteDirectoryInput.new
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module DeleteDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectoryOutput, context: context)
        type = Types::DeleteDirectoryOutput.new
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module DeleteFacetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFacetInput, context: context)
        type = Types::DeleteFacetInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type
      end
    end

    module DeleteFacetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFacetOutput, context: context)
        type = Types::DeleteFacetOutput.new
        type
      end
    end

    module DeleteObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteObjectInput, context: context)
        type = Types::DeleteObjectInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module DeleteObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteObjectOutput, context: context)
        type = Types::DeleteObjectOutput.new
        type
      end
    end

    module DeleteSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaInput, context: context)
        type = Types::DeleteSchemaInput.new
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module DeleteSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaOutput, context: context)
        type = Types::DeleteSchemaOutput.new
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module DeleteTypedLinkFacetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTypedLinkFacetInput, context: context)
        type = Types::DeleteTypedLinkFacetInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type
      end
    end

    module DeleteTypedLinkFacetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTypedLinkFacetOutput, context: context)
        type = Types::DeleteTypedLinkFacetOutput.new
        type
      end
    end

    module DetachFromIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachFromIndexInput, context: context)
        type = Types::DetachFromIndexInput.new
        type.directory_arn = params[:directory_arn]
        type.index_reference = ObjectReference.build(params[:index_reference], context: "#{context}[:index_reference]") unless params[:index_reference].nil?
        type.target_reference = ObjectReference.build(params[:target_reference], context: "#{context}[:target_reference]") unless params[:target_reference].nil?
        type
      end
    end

    module DetachFromIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachFromIndexOutput, context: context)
        type = Types::DetachFromIndexOutput.new
        type.detached_object_identifier = params[:detached_object_identifier]
        type
      end
    end

    module DetachObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachObjectInput, context: context)
        type = Types::DetachObjectInput.new
        type.directory_arn = params[:directory_arn]
        type.parent_reference = ObjectReference.build(params[:parent_reference], context: "#{context}[:parent_reference]") unless params[:parent_reference].nil?
        type.link_name = params[:link_name]
        type
      end
    end

    module DetachObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachObjectOutput, context: context)
        type = Types::DetachObjectOutput.new
        type.detached_object_identifier = params[:detached_object_identifier]
        type
      end
    end

    module DetachPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachPolicyInput, context: context)
        type = Types::DetachPolicyInput.new
        type.directory_arn = params[:directory_arn]
        type.policy_reference = ObjectReference.build(params[:policy_reference], context: "#{context}[:policy_reference]") unless params[:policy_reference].nil?
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module DetachPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachPolicyOutput, context: context)
        type = Types::DetachPolicyOutput.new
        type
      end
    end

    module DetachTypedLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachTypedLinkInput, context: context)
        type = Types::DetachTypedLinkInput.new
        type.directory_arn = params[:directory_arn]
        type.typed_link_specifier = TypedLinkSpecifier.build(params[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless params[:typed_link_specifier].nil?
        type
      end
    end

    module DetachTypedLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachTypedLinkOutput, context: context)
        type = Types::DetachTypedLinkOutput.new
        type
      end
    end

    module Directory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Directory, context: context)
        type = Types::Directory.new
        type.name = params[:name]
        type.directory_arn = params[:directory_arn]
        type.state = params[:state]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module DirectoryAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryAlreadyExistsException, context: context)
        type = Types::DirectoryAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module DirectoryDeletedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryDeletedException, context: context)
        type = Types::DirectoryDeletedException.new
        type.message = params[:message]
        type
      end
    end

    module DirectoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Directory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DirectoryNotDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryNotDisabledException, context: context)
        type = Types::DirectoryNotDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module DirectoryNotEnabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryNotEnabledException, context: context)
        type = Types::DirectoryNotEnabledException.new
        type.message = params[:message]
        type
      end
    end

    module DisableDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableDirectoryInput, context: context)
        type = Types::DisableDirectoryInput.new
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module DisableDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableDirectoryOutput, context: context)
        type = Types::DisableDirectoryOutput.new
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module EnableDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableDirectoryInput, context: context)
        type = Types::EnableDirectoryInput.new
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module EnableDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableDirectoryOutput, context: context)
        type = Types::EnableDirectoryOutput.new
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module Facet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Facet, context: context)
        type = Types::Facet.new
        type.name = params[:name]
        type.object_type = params[:object_type]
        type.facet_style = params[:facet_style]
        type
      end
    end

    module FacetAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FacetAlreadyExistsException, context: context)
        type = Types::FacetAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module FacetAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FacetAttribute, context: context)
        type = Types::FacetAttribute.new
        type.name = params[:name]
        type.attribute_definition = FacetAttributeDefinition.build(params[:attribute_definition], context: "#{context}[:attribute_definition]") unless params[:attribute_definition].nil?
        type.attribute_reference = FacetAttributeReference.build(params[:attribute_reference], context: "#{context}[:attribute_reference]") unless params[:attribute_reference].nil?
        type.required_behavior = params[:required_behavior]
        type
      end
    end

    module FacetAttributeDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FacetAttributeDefinition, context: context)
        type = Types::FacetAttributeDefinition.new
        type.type = params[:type]
        type.default_value = TypedAttributeValue.build(params[:default_value], context: "#{context}[:default_value]") unless params[:default_value].nil?
        type.is_immutable = params[:is_immutable]
        type.rules = RuleMap.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module FacetAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FacetAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FacetAttributeReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FacetAttributeReference, context: context)
        type = Types::FacetAttributeReference.new
        type.target_facet_name = params[:target_facet_name]
        type.target_attribute_name = params[:target_attribute_name]
        type
      end
    end

    module FacetAttributeUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FacetAttributeUpdate, context: context)
        type = Types::FacetAttributeUpdate.new
        type.attribute = FacetAttribute.build(params[:attribute], context: "#{context}[:attribute]") unless params[:attribute].nil?
        type.action = params[:action]
        type
      end
    end

    module FacetAttributeUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FacetAttributeUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FacetInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FacetInUseException, context: context)
        type = Types::FacetInUseException.new
        type.message = params[:message]
        type
      end
    end

    module FacetNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FacetNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FacetNotFoundException, context: context)
        type = Types::FacetNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module FacetValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FacetValidationException, context: context)
        type = Types::FacetValidationException.new
        type.message = params[:message]
        type
      end
    end

    module GetAppliedSchemaVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppliedSchemaVersionInput, context: context)
        type = Types::GetAppliedSchemaVersionInput.new
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module GetAppliedSchemaVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppliedSchemaVersionOutput, context: context)
        type = Types::GetAppliedSchemaVersionOutput.new
        type.applied_schema_arn = params[:applied_schema_arn]
        type
      end
    end

    module GetDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDirectoryInput, context: context)
        type = Types::GetDirectoryInput.new
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module GetDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDirectoryOutput, context: context)
        type = Types::GetDirectoryOutput.new
        type.directory = Directory.build(params[:directory], context: "#{context}[:directory]") unless params[:directory].nil?
        type
      end
    end

    module GetFacetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFacetInput, context: context)
        type = Types::GetFacetInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type
      end
    end

    module GetFacetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFacetOutput, context: context)
        type = Types::GetFacetOutput.new
        type.facet = Facet.build(params[:facet], context: "#{context}[:facet]") unless params[:facet].nil?
        type
      end
    end

    module GetLinkAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLinkAttributesInput, context: context)
        type = Types::GetLinkAttributesInput.new
        type.directory_arn = params[:directory_arn]
        type.typed_link_specifier = TypedLinkSpecifier.build(params[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless params[:typed_link_specifier].nil?
        type.attribute_names = AttributeNameList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module GetLinkAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLinkAttributesOutput, context: context)
        type = Types::GetLinkAttributesOutput.new
        type.attributes = AttributeKeyAndValueList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module GetObjectAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetObjectAttributesInput, context: context)
        type = Types::GetObjectAttributesInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.consistency_level = params[:consistency_level]
        type.schema_facet = SchemaFacet.build(params[:schema_facet], context: "#{context}[:schema_facet]") unless params[:schema_facet].nil?
        type.attribute_names = AttributeNameList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type
      end
    end

    module GetObjectAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetObjectAttributesOutput, context: context)
        type = Types::GetObjectAttributesOutput.new
        type.attributes = AttributeKeyAndValueList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module GetObjectInformationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetObjectInformationInput, context: context)
        type = Types::GetObjectInformationInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module GetObjectInformationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetObjectInformationOutput, context: context)
        type = Types::GetObjectInformationOutput.new
        type.schema_facets = SchemaFacetList.build(params[:schema_facets], context: "#{context}[:schema_facets]") unless params[:schema_facets].nil?
        type.object_identifier = params[:object_identifier]
        type
      end
    end

    module GetSchemaAsJsonInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaAsJsonInput, context: context)
        type = Types::GetSchemaAsJsonInput.new
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module GetSchemaAsJsonOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaAsJsonOutput, context: context)
        type = Types::GetSchemaAsJsonOutput.new
        type.name = params[:name]
        type.document = params[:document]
        type
      end
    end

    module GetTypedLinkFacetInformationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTypedLinkFacetInformationInput, context: context)
        type = Types::GetTypedLinkFacetInformationInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type
      end
    end

    module GetTypedLinkFacetInformationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTypedLinkFacetInformationOutput, context: context)
        type = Types::GetTypedLinkFacetInformationOutput.new
        type.identity_attribute_order = AttributeNameList.build(params[:identity_attribute_order], context: "#{context}[:identity_attribute_order]") unless params[:identity_attribute_order].nil?
        type
      end
    end

    module IncompatibleSchemaException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatibleSchemaException, context: context)
        type = Types::IncompatibleSchemaException.new
        type.message = params[:message]
        type
      end
    end

    module IndexAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexAttachment, context: context)
        type = Types::IndexAttachment.new
        type.indexed_attributes = AttributeKeyAndValueList.build(params[:indexed_attributes], context: "#{context}[:indexed_attributes]") unless params[:indexed_attributes].nil?
        type.object_identifier = params[:object_identifier]
        type
      end
    end

    module IndexAttachmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IndexAttachment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IndexedAttributeMissingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexedAttributeMissingException, context: context)
        type = Types::IndexedAttributeMissingException.new
        type.message = params[:message]
        type
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArnException, context: context)
        type = Types::InvalidArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAttachmentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAttachmentException, context: context)
        type = Types::InvalidAttachmentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFacetUpdateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFacetUpdateException, context: context)
        type = Types::InvalidFacetUpdateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRuleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRuleException, context: context)
        type = Types::InvalidRuleException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSchemaDocException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSchemaDocException, context: context)
        type = Types::InvalidSchemaDocException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTaggingRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTaggingRequestException, context: context)
        type = Types::InvalidTaggingRequestException.new
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

    module LinkAttributeAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LinkAttributeAction, context: context)
        type = Types::LinkAttributeAction.new
        type.attribute_action_type = params[:attribute_action_type]
        type.attribute_update_value = TypedAttributeValue.build(params[:attribute_update_value], context: "#{context}[:attribute_update_value]") unless params[:attribute_update_value].nil?
        type
      end
    end

    module LinkAttributeUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LinkAttributeUpdate, context: context)
        type = Types::LinkAttributeUpdate.new
        type.attribute_key = AttributeKey.build(params[:attribute_key], context: "#{context}[:attribute_key]") unless params[:attribute_key].nil?
        type.attribute_action = LinkAttributeAction.build(params[:attribute_action], context: "#{context}[:attribute_action]") unless params[:attribute_action].nil?
        type
      end
    end

    module LinkAttributeUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LinkAttributeUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LinkNameAlreadyInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LinkNameAlreadyInUseException, context: context)
        type = Types::LinkNameAlreadyInUseException.new
        type.message = params[:message]
        type
      end
    end

    module LinkNameToObjectIdentifierMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ListAppliedSchemaArnsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppliedSchemaArnsInput, context: context)
        type = Types::ListAppliedSchemaArnsInput.new
        type.directory_arn = params[:directory_arn]
        type.schema_arn = params[:schema_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAppliedSchemaArnsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppliedSchemaArnsOutput, context: context)
        type = Types::ListAppliedSchemaArnsOutput.new
        type.schema_arns = Arns.build(params[:schema_arns], context: "#{context}[:schema_arns]") unless params[:schema_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAttachedIndicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedIndicesInput, context: context)
        type = Types::ListAttachedIndicesInput.new
        type.directory_arn = params[:directory_arn]
        type.target_reference = ObjectReference.build(params[:target_reference], context: "#{context}[:target_reference]") unless params[:target_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module ListAttachedIndicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedIndicesOutput, context: context)
        type = Types::ListAttachedIndicesOutput.new
        type.index_attachments = IndexAttachmentList.build(params[:index_attachments], context: "#{context}[:index_attachments]") unless params[:index_attachments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevelopmentSchemaArnsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevelopmentSchemaArnsInput, context: context)
        type = Types::ListDevelopmentSchemaArnsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDevelopmentSchemaArnsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevelopmentSchemaArnsOutput, context: context)
        type = Types::ListDevelopmentSchemaArnsOutput.new
        type.schema_arns = Arns.build(params[:schema_arns], context: "#{context}[:schema_arns]") unless params[:schema_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDirectoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDirectoriesInput, context: context)
        type = Types::ListDirectoriesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.state = params[:state]
        type
      end
    end

    module ListDirectoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDirectoriesOutput, context: context)
        type = Types::ListDirectoriesOutput.new
        type.directories = DirectoryList.build(params[:directories], context: "#{context}[:directories]") unless params[:directories].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFacetAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFacetAttributesInput, context: context)
        type = Types::ListFacetAttributesInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFacetAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFacetAttributesOutput, context: context)
        type = Types::ListFacetAttributesOutput.new
        type.attributes = FacetAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFacetNamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFacetNamesInput, context: context)
        type = Types::ListFacetNamesInput.new
        type.schema_arn = params[:schema_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFacetNamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFacetNamesOutput, context: context)
        type = Types::ListFacetNamesOutput.new
        type.facet_names = FacetNameList.build(params[:facet_names], context: "#{context}[:facet_names]") unless params[:facet_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIncomingTypedLinksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIncomingTypedLinksInput, context: context)
        type = Types::ListIncomingTypedLinksInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.filter_attribute_ranges = TypedLinkAttributeRangeList.build(params[:filter_attribute_ranges], context: "#{context}[:filter_attribute_ranges]") unless params[:filter_attribute_ranges].nil?
        type.filter_typed_link = TypedLinkSchemaAndFacetName.build(params[:filter_typed_link], context: "#{context}[:filter_typed_link]") unless params[:filter_typed_link].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module ListIncomingTypedLinksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIncomingTypedLinksOutput, context: context)
        type = Types::ListIncomingTypedLinksOutput.new
        type.link_specifiers = TypedLinkSpecifierList.build(params[:link_specifiers], context: "#{context}[:link_specifiers]") unless params[:link_specifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIndexInput, context: context)
        type = Types::ListIndexInput.new
        type.directory_arn = params[:directory_arn]
        type.ranges_on_indexed_values = ObjectAttributeRangeList.build(params[:ranges_on_indexed_values], context: "#{context}[:ranges_on_indexed_values]") unless params[:ranges_on_indexed_values].nil?
        type.index_reference = ObjectReference.build(params[:index_reference], context: "#{context}[:index_reference]") unless params[:index_reference].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module ListIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIndexOutput, context: context)
        type = Types::ListIndexOutput.new
        type.index_attachments = IndexAttachmentList.build(params[:index_attachments], context: "#{context}[:index_attachments]") unless params[:index_attachments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagedSchemaArnsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedSchemaArnsInput, context: context)
        type = Types::ListManagedSchemaArnsInput.new
        type.schema_arn = params[:schema_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListManagedSchemaArnsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedSchemaArnsOutput, context: context)
        type = Types::ListManagedSchemaArnsOutput.new
        type.schema_arns = Arns.build(params[:schema_arns], context: "#{context}[:schema_arns]") unless params[:schema_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListObjectAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectAttributesInput, context: context)
        type = Types::ListObjectAttributesInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.consistency_level = params[:consistency_level]
        type.facet_filter = SchemaFacet.build(params[:facet_filter], context: "#{context}[:facet_filter]") unless params[:facet_filter].nil?
        type
      end
    end

    module ListObjectAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectAttributesOutput, context: context)
        type = Types::ListObjectAttributesOutput.new
        type.attributes = AttributeKeyAndValueList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListObjectChildrenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectChildrenInput, context: context)
        type = Types::ListObjectChildrenInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module ListObjectChildrenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectChildrenOutput, context: context)
        type = Types::ListObjectChildrenOutput.new
        type.children = LinkNameToObjectIdentifierMap.build(params[:children], context: "#{context}[:children]") unless params[:children].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListObjectParentPathsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectParentPathsInput, context: context)
        type = Types::ListObjectParentPathsInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListObjectParentPathsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectParentPathsOutput, context: context)
        type = Types::ListObjectParentPathsOutput.new
        type.path_to_object_identifiers_list = PathToObjectIdentifiersList.build(params[:path_to_object_identifiers_list], context: "#{context}[:path_to_object_identifiers_list]") unless params[:path_to_object_identifiers_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListObjectParentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectParentsInput, context: context)
        type = Types::ListObjectParentsInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.consistency_level = params[:consistency_level]
        type.include_all_links_to_each_parent = params[:include_all_links_to_each_parent]
        type
      end
    end

    module ListObjectParentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectParentsOutput, context: context)
        type = Types::ListObjectParentsOutput.new
        type.parents = ObjectIdentifierToLinkNameMap.build(params[:parents], context: "#{context}[:parents]") unless params[:parents].nil?
        type.next_token = params[:next_token]
        type.parent_links = ObjectIdentifierAndLinkNameList.build(params[:parent_links], context: "#{context}[:parent_links]") unless params[:parent_links].nil?
        type
      end
    end

    module ListObjectPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectPoliciesInput, context: context)
        type = Types::ListObjectPoliciesInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module ListObjectPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListObjectPoliciesOutput, context: context)
        type = Types::ListObjectPoliciesOutput.new
        type.attached_policy_ids = ObjectIdentifierList.build(params[:attached_policy_ids], context: "#{context}[:attached_policy_ids]") unless params[:attached_policy_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOutgoingTypedLinksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOutgoingTypedLinksInput, context: context)
        type = Types::ListOutgoingTypedLinksInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.filter_attribute_ranges = TypedLinkAttributeRangeList.build(params[:filter_attribute_ranges], context: "#{context}[:filter_attribute_ranges]") unless params[:filter_attribute_ranges].nil?
        type.filter_typed_link = TypedLinkSchemaAndFacetName.build(params[:filter_typed_link], context: "#{context}[:filter_typed_link]") unless params[:filter_typed_link].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module ListOutgoingTypedLinksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOutgoingTypedLinksOutput, context: context)
        type = Types::ListOutgoingTypedLinksOutput.new
        type.typed_link_specifiers = TypedLinkSpecifierList.build(params[:typed_link_specifiers], context: "#{context}[:typed_link_specifiers]") unless params[:typed_link_specifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPolicyAttachmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyAttachmentsInput, context: context)
        type = Types::ListPolicyAttachmentsInput.new
        type.directory_arn = params[:directory_arn]
        type.policy_reference = ObjectReference.build(params[:policy_reference], context: "#{context}[:policy_reference]") unless params[:policy_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.consistency_level = params[:consistency_level]
        type
      end
    end

    module ListPolicyAttachmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyAttachmentsOutput, context: context)
        type = Types::ListPolicyAttachmentsOutput.new
        type.object_identifiers = ObjectIdentifierList.build(params[:object_identifiers], context: "#{context}[:object_identifiers]") unless params[:object_identifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPublishedSchemaArnsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPublishedSchemaArnsInput, context: context)
        type = Types::ListPublishedSchemaArnsInput.new
        type.schema_arn = params[:schema_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPublishedSchemaArnsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPublishedSchemaArnsOutput, context: context)
        type = Types::ListPublishedSchemaArnsOutput.new
        type.schema_arns = Arns.build(params[:schema_arns], context: "#{context}[:schema_arns]") unless params[:schema_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTypedLinkFacetAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypedLinkFacetAttributesInput, context: context)
        type = Types::ListTypedLinkFacetAttributesInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTypedLinkFacetAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypedLinkFacetAttributesOutput, context: context)
        type = Types::ListTypedLinkFacetAttributesOutput.new
        type.attributes = TypedLinkAttributeDefinitionList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTypedLinkFacetNamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypedLinkFacetNamesInput, context: context)
        type = Types::ListTypedLinkFacetNamesInput.new
        type.schema_arn = params[:schema_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTypedLinkFacetNamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypedLinkFacetNamesOutput, context: context)
        type = Types::ListTypedLinkFacetNamesOutput.new
        type.facet_names = TypedLinkNameList.build(params[:facet_names], context: "#{context}[:facet_names]") unless params[:facet_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LookupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LookupPolicyInput, context: context)
        type = Types::LookupPolicyInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module LookupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LookupPolicyOutput, context: context)
        type = Types::LookupPolicyOutput.new
        type.policy_to_path_list = PolicyToPathList.build(params[:policy_to_path_list], context: "#{context}[:policy_to_path_list]") unless params[:policy_to_path_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotIndexException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotIndexException, context: context)
        type = Types::NotIndexException.new
        type.message = params[:message]
        type
      end
    end

    module NotNodeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotNodeException, context: context)
        type = Types::NotNodeException.new
        type.message = params[:message]
        type
      end
    end

    module NotPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotPolicyException, context: context)
        type = Types::NotPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module ObjectAlreadyDetachedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectAlreadyDetachedException, context: context)
        type = Types::ObjectAlreadyDetachedException.new
        type.message = params[:message]
        type
      end
    end

    module ObjectAttributeAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectAttributeAction, context: context)
        type = Types::ObjectAttributeAction.new
        type.object_attribute_action_type = params[:object_attribute_action_type]
        type.object_attribute_update_value = TypedAttributeValue.build(params[:object_attribute_update_value], context: "#{context}[:object_attribute_update_value]") unless params[:object_attribute_update_value].nil?
        type
      end
    end

    module ObjectAttributeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectAttributeRange, context: context)
        type = Types::ObjectAttributeRange.new
        type.attribute_key = AttributeKey.build(params[:attribute_key], context: "#{context}[:attribute_key]") unless params[:attribute_key].nil?
        type.range = TypedAttributeValueRange.build(params[:range], context: "#{context}[:range]") unless params[:range].nil?
        type
      end
    end

    module ObjectAttributeRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectAttributeRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ObjectAttributeUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectAttributeUpdate, context: context)
        type = Types::ObjectAttributeUpdate.new
        type.object_attribute_key = AttributeKey.build(params[:object_attribute_key], context: "#{context}[:object_attribute_key]") unless params[:object_attribute_key].nil?
        type.object_attribute_action = ObjectAttributeAction.build(params[:object_attribute_action], context: "#{context}[:object_attribute_action]") unless params[:object_attribute_action].nil?
        type
      end
    end

    module ObjectAttributeUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectAttributeUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ObjectIdentifierAndLinkNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectIdentifierAndLinkNameTuple.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ObjectIdentifierAndLinkNameTuple
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectIdentifierAndLinkNameTuple, context: context)
        type = Types::ObjectIdentifierAndLinkNameTuple.new
        type.object_identifier = params[:object_identifier]
        type.link_name = params[:link_name]
        type
      end
    end

    module ObjectIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ObjectIdentifierToLinkNameMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ObjectNotDetachedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectNotDetachedException, context: context)
        type = Types::ObjectNotDetachedException.new
        type.message = params[:message]
        type
      end
    end

    module ObjectReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectReference, context: context)
        type = Types::ObjectReference.new
        type.selector = params[:selector]
        type
      end
    end

    module PathToObjectIdentifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PathToObjectIdentifiers, context: context)
        type = Types::PathToObjectIdentifiers.new
        type.path = params[:path]
        type.object_identifiers = ObjectIdentifierList.build(params[:object_identifiers], context: "#{context}[:object_identifiers]") unless params[:object_identifiers].nil?
        type
      end
    end

    module PathToObjectIdentifiersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PathToObjectIdentifiers.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyAttachment, context: context)
        type = Types::PolicyAttachment.new
        type.policy_id = params[:policy_id]
        type.object_identifier = params[:object_identifier]
        type.policy_type = params[:policy_type]
        type
      end
    end

    module PolicyAttachmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyAttachment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyToPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyToPath, context: context)
        type = Types::PolicyToPath.new
        type.path = params[:path]
        type.policies = PolicyAttachmentList.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type
      end
    end

    module PolicyToPathList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyToPath.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PublishSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishSchemaInput, context: context)
        type = Types::PublishSchemaInput.new
        type.development_schema_arn = params[:development_schema_arn]
        type.version = params[:version]
        type.minor_version = params[:minor_version]
        type.name = params[:name]
        type
      end
    end

    module PublishSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishSchemaOutput, context: context)
        type = Types::PublishSchemaOutput.new
        type.published_schema_arn = params[:published_schema_arn]
        type
      end
    end

    module PutSchemaFromJsonInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSchemaFromJsonInput, context: context)
        type = Types::PutSchemaFromJsonInput.new
        type.schema_arn = params[:schema_arn]
        type.document = params[:document]
        type
      end
    end

    module PutSchemaFromJsonOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSchemaFromJsonOutput, context: context)
        type = Types::PutSchemaFromJsonOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module RemoveFacetFromObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFacetFromObjectInput, context: context)
        type = Types::RemoveFacetFromObjectInput.new
        type.directory_arn = params[:directory_arn]
        type.schema_facet = SchemaFacet.build(params[:schema_facet], context: "#{context}[:schema_facet]") unless params[:schema_facet].nil?
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type
      end
    end

    module RemoveFacetFromObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveFacetFromObjectOutput, context: context)
        type = Types::RemoveFacetFromObjectOutput.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RetryableConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryableConflictException, context: context)
        type = Types::RetryableConflictException.new
        type.message = params[:message]
        type
      end
    end

    module Rule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rule, context: context)
        type = Types::Rule.new
        type.type = params[:type]
        type.parameters = RuleParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module RuleMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Rule.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module RuleParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SchemaAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaAlreadyExistsException, context: context)
        type = Types::SchemaAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module SchemaAlreadyPublishedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaAlreadyPublishedException, context: context)
        type = Types::SchemaAlreadyPublishedException.new
        type.message = params[:message]
        type
      end
    end

    module SchemaFacet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaFacet, context: context)
        type = Types::SchemaFacet.new
        type.schema_arn = params[:schema_arn]
        type.facet_name = params[:facet_name]
        type
      end
    end

    module SchemaFacetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaFacet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StillContainsLinksException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StillContainsLinksException, context: context)
        type = Types::StillContainsLinksException.new
        type.message = params[:message]
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

    module TypedAttributeValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::TypedAttributeValue)
        Hearth::Validator.validate!(params, ::Hash, Types::TypedAttributeValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :string_value
          Types::TypedAttributeValue::StringValue.new(
            params[:string_value]
          )
        when :binary_value
          Types::TypedAttributeValue::BinaryValue.new(
            params[:binary_value]
          )
        when :boolean_value
          Types::TypedAttributeValue::BooleanValue.new(
            params[:boolean_value]
          )
        when :number_value
          Types::TypedAttributeValue::NumberValue.new(
            params[:number_value]
          )
        when :datetime_value
          Types::TypedAttributeValue::DatetimeValue.new(
            params[:datetime_value]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :string_value, :binary_value, :boolean_value, :number_value, :datetime_value set"
        end
      end
    end

    module TypedAttributeValueRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypedAttributeValueRange, context: context)
        type = Types::TypedAttributeValueRange.new
        type.start_mode = params[:start_mode]
        type.start_value = TypedAttributeValue.build(params[:start_value], context: "#{context}[:start_value]") unless params[:start_value].nil?
        type.end_mode = params[:end_mode]
        type.end_value = TypedAttributeValue.build(params[:end_value], context: "#{context}[:end_value]") unless params[:end_value].nil?
        type
      end
    end

    module TypedLinkAttributeDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypedLinkAttributeDefinition, context: context)
        type = Types::TypedLinkAttributeDefinition.new
        type.name = params[:name]
        type.type = params[:type]
        type.default_value = TypedAttributeValue.build(params[:default_value], context: "#{context}[:default_value]") unless params[:default_value].nil?
        type.is_immutable = params[:is_immutable]
        type.rules = RuleMap.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.required_behavior = params[:required_behavior]
        type
      end
    end

    module TypedLinkAttributeDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TypedLinkAttributeDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TypedLinkAttributeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypedLinkAttributeRange, context: context)
        type = Types::TypedLinkAttributeRange.new
        type.attribute_name = params[:attribute_name]
        type.range = TypedAttributeValueRange.build(params[:range], context: "#{context}[:range]") unless params[:range].nil?
        type
      end
    end

    module TypedLinkAttributeRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TypedLinkAttributeRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TypedLinkFacet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypedLinkFacet, context: context)
        type = Types::TypedLinkFacet.new
        type.name = params[:name]
        type.attributes = TypedLinkAttributeDefinitionList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.identity_attribute_order = AttributeNameList.build(params[:identity_attribute_order], context: "#{context}[:identity_attribute_order]") unless params[:identity_attribute_order].nil?
        type
      end
    end

    module TypedLinkFacetAttributeUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypedLinkFacetAttributeUpdate, context: context)
        type = Types::TypedLinkFacetAttributeUpdate.new
        type.attribute = TypedLinkAttributeDefinition.build(params[:attribute], context: "#{context}[:attribute]") unless params[:attribute].nil?
        type.action = params[:action]
        type
      end
    end

    module TypedLinkFacetAttributeUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TypedLinkFacetAttributeUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TypedLinkNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TypedLinkSchemaAndFacetName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypedLinkSchemaAndFacetName, context: context)
        type = Types::TypedLinkSchemaAndFacetName.new
        type.schema_arn = params[:schema_arn]
        type.typed_link_name = params[:typed_link_name]
        type
      end
    end

    module TypedLinkSpecifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypedLinkSpecifier, context: context)
        type = Types::TypedLinkSpecifier.new
        type.typed_link_facet = TypedLinkSchemaAndFacetName.build(params[:typed_link_facet], context: "#{context}[:typed_link_facet]") unless params[:typed_link_facet].nil?
        type.source_object_reference = ObjectReference.build(params[:source_object_reference], context: "#{context}[:source_object_reference]") unless params[:source_object_reference].nil?
        type.target_object_reference = ObjectReference.build(params[:target_object_reference], context: "#{context}[:target_object_reference]") unless params[:target_object_reference].nil?
        type.identity_attribute_values = AttributeNameAndValueList.build(params[:identity_attribute_values], context: "#{context}[:identity_attribute_values]") unless params[:identity_attribute_values].nil?
        type
      end
    end

    module TypedLinkSpecifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TypedLinkSpecifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnsupportedIndexTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedIndexTypeException, context: context)
        type = Types::UnsupportedIndexTypeException.new
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

    module UpdateFacetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFacetInput, context: context)
        type = Types::UpdateFacetInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type.attribute_updates = FacetAttributeUpdateList.build(params[:attribute_updates], context: "#{context}[:attribute_updates]") unless params[:attribute_updates].nil?
        type.object_type = params[:object_type]
        type
      end
    end

    module UpdateFacetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFacetOutput, context: context)
        type = Types::UpdateFacetOutput.new
        type
      end
    end

    module UpdateLinkAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLinkAttributesInput, context: context)
        type = Types::UpdateLinkAttributesInput.new
        type.directory_arn = params[:directory_arn]
        type.typed_link_specifier = TypedLinkSpecifier.build(params[:typed_link_specifier], context: "#{context}[:typed_link_specifier]") unless params[:typed_link_specifier].nil?
        type.attribute_updates = LinkAttributeUpdateList.build(params[:attribute_updates], context: "#{context}[:attribute_updates]") unless params[:attribute_updates].nil?
        type
      end
    end

    module UpdateLinkAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLinkAttributesOutput, context: context)
        type = Types::UpdateLinkAttributesOutput.new
        type
      end
    end

    module UpdateObjectAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateObjectAttributesInput, context: context)
        type = Types::UpdateObjectAttributesInput.new
        type.directory_arn = params[:directory_arn]
        type.object_reference = ObjectReference.build(params[:object_reference], context: "#{context}[:object_reference]") unless params[:object_reference].nil?
        type.attribute_updates = ObjectAttributeUpdateList.build(params[:attribute_updates], context: "#{context}[:attribute_updates]") unless params[:attribute_updates].nil?
        type
      end
    end

    module UpdateObjectAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateObjectAttributesOutput, context: context)
        type = Types::UpdateObjectAttributesOutput.new
        type.object_identifier = params[:object_identifier]
        type
      end
    end

    module UpdateSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSchemaInput, context: context)
        type = Types::UpdateSchemaInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type
      end
    end

    module UpdateSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSchemaOutput, context: context)
        type = Types::UpdateSchemaOutput.new
        type.schema_arn = params[:schema_arn]
        type
      end
    end

    module UpdateTypedLinkFacetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTypedLinkFacetInput, context: context)
        type = Types::UpdateTypedLinkFacetInput.new
        type.schema_arn = params[:schema_arn]
        type.name = params[:name]
        type.attribute_updates = TypedLinkFacetAttributeUpdateList.build(params[:attribute_updates], context: "#{context}[:attribute_updates]") unless params[:attribute_updates].nil?
        type.identity_attribute_order = AttributeNameList.build(params[:identity_attribute_order], context: "#{context}[:identity_attribute_order]") unless params[:identity_attribute_order].nil?
        type
      end
    end

    module UpdateTypedLinkFacetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTypedLinkFacetOutput, context: context)
        type = Types::UpdateTypedLinkFacetOutput.new
        type
      end
    end

    module UpgradeAppliedSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeAppliedSchemaInput, context: context)
        type = Types::UpgradeAppliedSchemaInput.new
        type.published_schema_arn = params[:published_schema_arn]
        type.directory_arn = params[:directory_arn]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module UpgradeAppliedSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeAppliedSchemaOutput, context: context)
        type = Types::UpgradeAppliedSchemaOutput.new
        type.upgraded_schema_arn = params[:upgraded_schema_arn]
        type.directory_arn = params[:directory_arn]
        type
      end
    end

    module UpgradePublishedSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradePublishedSchemaInput, context: context)
        type = Types::UpgradePublishedSchemaInput.new
        type.development_schema_arn = params[:development_schema_arn]
        type.published_schema_arn = params[:published_schema_arn]
        type.minor_version = params[:minor_version]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module UpgradePublishedSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradePublishedSchemaOutput, context: context)
        type = Types::UpgradePublishedSchemaOutput.new
        type.upgraded_schema_arn = params[:upgraded_schema_arn]
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

  end
end
