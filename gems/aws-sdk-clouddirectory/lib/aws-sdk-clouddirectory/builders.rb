# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CloudDirectory
  module Builders

    # Operation Builder for AddFacetToObject
    class AddFacetToObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/facets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SchemaFacet'] = Builders::SchemaFacet.build(input[:schema_facet]) unless input[:schema_facet].nil?
        data['ObjectAttributeList'] = Builders::AttributeKeyAndValueList.build(input[:object_attribute_list]) unless input[:object_attribute_list].nil?
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Structure Builder for ObjectReference
    class ObjectReference
      def self.build(input)
        data = {}
        data['Selector'] = input[:selector] unless input[:selector].nil?
        data
      end
    end

    # List Builder for AttributeKeyAndValueList
    class AttributeKeyAndValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeKeyAndValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AttributeKeyAndValue
    class AttributeKeyAndValue
      def self.build(input)
        data = {}
        data['Key'] = Builders::AttributeKey.build(input[:key]) unless input[:key].nil?
        data['Value'] = Builders::TypedAttributeValue.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Structure Builder for TypedAttributeValue
    class TypedAttributeValue
      def self.build(input)
        data = {}
        case input
        when Types::TypedAttributeValue::StringValue
          data['StringValue'] = input
        when Types::TypedAttributeValue::BinaryValue
          data['BinaryValue'] = Base64::encode64(input).strip
        when Types::TypedAttributeValue::BooleanValue
          data['BooleanValue'] = input
        when Types::TypedAttributeValue::NumberValue
          data['NumberValue'] = input
        when Types::TypedAttributeValue::DatetimeValue
          data['DatetimeValue'] = Hearth::TimeHelper.to_epoch_seconds(input).to_i
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TypedAttributeValue"
        end

        data
      end
    end

    # Structure Builder for AttributeKey
    class AttributeKey
      def self.build(input)
        data = {}
        data['SchemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        data['FacetName'] = input[:facet_name] unless input[:facet_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for SchemaFacet
    class SchemaFacet
      def self.build(input)
        data = {}
        data['SchemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        data['FacetName'] = input[:facet_name] unless input[:facet_name].nil?
        data
      end
    end

    # Operation Builder for ApplySchema
    class ApplySchema
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/apply')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PublishedSchemaArn'] = input[:published_schema_arn] unless input[:published_schema_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for AttachObject
    class AttachObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/attach')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ParentReference'] = Builders::ObjectReference.build(input[:parent_reference]) unless input[:parent_reference].nil?
        data['ChildReference'] = Builders::ObjectReference.build(input[:child_reference]) unless input[:child_reference].nil?
        data['LinkName'] = input[:link_name] unless input[:link_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for AttachPolicy
    class AttachPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/policy/attach')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PolicyReference'] = Builders::ObjectReference.build(input[:policy_reference]) unless input[:policy_reference].nil?
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for AttachToIndex
    class AttachToIndex
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/index/attach')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IndexReference'] = Builders::ObjectReference.build(input[:index_reference]) unless input[:index_reference].nil?
        data['TargetReference'] = Builders::ObjectReference.build(input[:target_reference]) unless input[:target_reference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for AttachTypedLink
    class AttachTypedLink
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/attach')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SourceObjectReference'] = Builders::ObjectReference.build(input[:source_object_reference]) unless input[:source_object_reference].nil?
        data['TargetObjectReference'] = Builders::ObjectReference.build(input[:target_object_reference]) unless input[:target_object_reference].nil?
        data['TypedLinkFacet'] = Builders::TypedLinkSchemaAndFacetName.build(input[:typed_link_facet]) unless input[:typed_link_facet].nil?
        data['Attributes'] = Builders::AttributeNameAndValueList.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # List Builder for AttributeNameAndValueList
    class AttributeNameAndValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeNameAndValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AttributeNameAndValue
    class AttributeNameAndValue
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['Value'] = Builders::TypedAttributeValue.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Structure Builder for TypedLinkSchemaAndFacetName
    class TypedLinkSchemaAndFacetName
      def self.build(input)
        data = {}
        data['SchemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        data['TypedLinkName'] = input[:typed_link_name] unless input[:typed_link_name].nil?
        data
      end
    end

    # Operation Builder for BatchRead
    class BatchRead
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/batchread')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Operations'] = Builders::BatchReadOperationList.build(input[:operations]) unless input[:operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # List Builder for BatchReadOperationList
    class BatchReadOperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BatchReadOperation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchReadOperation
    class BatchReadOperation
      def self.build(input)
        data = {}
        data['ListObjectAttributes'] = Builders::BatchListObjectAttributes.build(input[:list_object_attributes]) unless input[:list_object_attributes].nil?
        data['ListObjectChildren'] = Builders::BatchListObjectChildren.build(input[:list_object_children]) unless input[:list_object_children].nil?
        data['ListAttachedIndices'] = Builders::BatchListAttachedIndices.build(input[:list_attached_indices]) unless input[:list_attached_indices].nil?
        data['ListObjectParentPaths'] = Builders::BatchListObjectParentPaths.build(input[:list_object_parent_paths]) unless input[:list_object_parent_paths].nil?
        data['GetObjectInformation'] = Builders::BatchGetObjectInformation.build(input[:get_object_information]) unless input[:get_object_information].nil?
        data['GetObjectAttributes'] = Builders::BatchGetObjectAttributes.build(input[:get_object_attributes]) unless input[:get_object_attributes].nil?
        data['ListObjectParents'] = Builders::BatchListObjectParents.build(input[:list_object_parents]) unless input[:list_object_parents].nil?
        data['ListObjectPolicies'] = Builders::BatchListObjectPolicies.build(input[:list_object_policies]) unless input[:list_object_policies].nil?
        data['ListPolicyAttachments'] = Builders::BatchListPolicyAttachments.build(input[:list_policy_attachments]) unless input[:list_policy_attachments].nil?
        data['LookupPolicy'] = Builders::BatchLookupPolicy.build(input[:lookup_policy]) unless input[:lookup_policy].nil?
        data['ListIndex'] = Builders::BatchListIndex.build(input[:list_index]) unless input[:list_index].nil?
        data['ListOutgoingTypedLinks'] = Builders::BatchListOutgoingTypedLinks.build(input[:list_outgoing_typed_links]) unless input[:list_outgoing_typed_links].nil?
        data['ListIncomingTypedLinks'] = Builders::BatchListIncomingTypedLinks.build(input[:list_incoming_typed_links]) unless input[:list_incoming_typed_links].nil?
        data['GetLinkAttributes'] = Builders::BatchGetLinkAttributes.build(input[:get_link_attributes]) unless input[:get_link_attributes].nil?
        data
      end
    end

    # Structure Builder for BatchGetLinkAttributes
    class BatchGetLinkAttributes
      def self.build(input)
        data = {}
        data['TypedLinkSpecifier'] = Builders::TypedLinkSpecifier.build(input[:typed_link_specifier]) unless input[:typed_link_specifier].nil?
        data['AttributeNames'] = Builders::AttributeNameList.build(input[:attribute_names]) unless input[:attribute_names].nil?
        data
      end
    end

    # List Builder for AttributeNameList
    class AttributeNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TypedLinkSpecifier
    class TypedLinkSpecifier
      def self.build(input)
        data = {}
        data['TypedLinkFacet'] = Builders::TypedLinkSchemaAndFacetName.build(input[:typed_link_facet]) unless input[:typed_link_facet].nil?
        data['SourceObjectReference'] = Builders::ObjectReference.build(input[:source_object_reference]) unless input[:source_object_reference].nil?
        data['TargetObjectReference'] = Builders::ObjectReference.build(input[:target_object_reference]) unless input[:target_object_reference].nil?
        data['IdentityAttributeValues'] = Builders::AttributeNameAndValueList.build(input[:identity_attribute_values]) unless input[:identity_attribute_values].nil?
        data
      end
    end

    # Structure Builder for BatchListIncomingTypedLinks
    class BatchListIncomingTypedLinks
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['FilterAttributeRanges'] = Builders::TypedLinkAttributeRangeList.build(input[:filter_attribute_ranges]) unless input[:filter_attribute_ranges].nil?
        data['FilterTypedLink'] = Builders::TypedLinkSchemaAndFacetName.build(input[:filter_typed_link]) unless input[:filter_typed_link].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # List Builder for TypedLinkAttributeRangeList
    class TypedLinkAttributeRangeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TypedLinkAttributeRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TypedLinkAttributeRange
    class TypedLinkAttributeRange
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['Range'] = Builders::TypedAttributeValueRange.build(input[:range]) unless input[:range].nil?
        data
      end
    end

    # Structure Builder for TypedAttributeValueRange
    class TypedAttributeValueRange
      def self.build(input)
        data = {}
        data['StartMode'] = input[:start_mode] unless input[:start_mode].nil?
        data['StartValue'] = Builders::TypedAttributeValue.build(input[:start_value]) unless input[:start_value].nil?
        data['EndMode'] = input[:end_mode] unless input[:end_mode].nil?
        data['EndValue'] = Builders::TypedAttributeValue.build(input[:end_value]) unless input[:end_value].nil?
        data
      end
    end

    # Structure Builder for BatchListOutgoingTypedLinks
    class BatchListOutgoingTypedLinks
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['FilterAttributeRanges'] = Builders::TypedLinkAttributeRangeList.build(input[:filter_attribute_ranges]) unless input[:filter_attribute_ranges].nil?
        data['FilterTypedLink'] = Builders::TypedLinkSchemaAndFacetName.build(input[:filter_typed_link]) unless input[:filter_typed_link].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # Structure Builder for BatchListIndex
    class BatchListIndex
      def self.build(input)
        data = {}
        data['RangesOnIndexedValues'] = Builders::ObjectAttributeRangeList.build(input[:ranges_on_indexed_values]) unless input[:ranges_on_indexed_values].nil?
        data['IndexReference'] = Builders::ObjectReference.build(input[:index_reference]) unless input[:index_reference].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data
      end
    end

    # List Builder for ObjectAttributeRangeList
    class ObjectAttributeRangeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ObjectAttributeRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ObjectAttributeRange
    class ObjectAttributeRange
      def self.build(input)
        data = {}
        data['AttributeKey'] = Builders::AttributeKey.build(input[:attribute_key]) unless input[:attribute_key].nil?
        data['Range'] = Builders::TypedAttributeValueRange.build(input[:range]) unless input[:range].nil?
        data
      end
    end

    # Structure Builder for BatchLookupPolicy
    class BatchLookupPolicy
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # Structure Builder for BatchListPolicyAttachments
    class BatchListPolicyAttachments
      def self.build(input)
        data = {}
        data['PolicyReference'] = Builders::ObjectReference.build(input[:policy_reference]) unless input[:policy_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # Structure Builder for BatchListObjectPolicies
    class BatchListObjectPolicies
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # Structure Builder for BatchListObjectParents
    class BatchListObjectParents
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # Structure Builder for BatchGetObjectAttributes
    class BatchGetObjectAttributes
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['SchemaFacet'] = Builders::SchemaFacet.build(input[:schema_facet]) unless input[:schema_facet].nil?
        data['AttributeNames'] = Builders::AttributeNameList.build(input[:attribute_names]) unless input[:attribute_names].nil?
        data
      end
    end

    # Structure Builder for BatchGetObjectInformation
    class BatchGetObjectInformation
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data
      end
    end

    # Structure Builder for BatchListObjectParentPaths
    class BatchListObjectParentPaths
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # Structure Builder for BatchListAttachedIndices
    class BatchListAttachedIndices
      def self.build(input)
        data = {}
        data['TargetReference'] = Builders::ObjectReference.build(input[:target_reference]) unless input[:target_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # Structure Builder for BatchListObjectChildren
    class BatchListObjectChildren
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # Structure Builder for BatchListObjectAttributes
    class BatchListObjectAttributes
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['FacetFilter'] = Builders::SchemaFacet.build(input[:facet_filter]) unless input[:facet_filter].nil?
        data
      end
    end

    # Operation Builder for BatchWrite
    class BatchWrite
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/batchwrite')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Operations'] = Builders::BatchWriteOperationList.build(input[:operations]) unless input[:operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # List Builder for BatchWriteOperationList
    class BatchWriteOperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BatchWriteOperation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchWriteOperation
    class BatchWriteOperation
      def self.build(input)
        data = {}
        data['CreateObject'] = Builders::BatchCreateObject.build(input[:create_object]) unless input[:create_object].nil?
        data['AttachObject'] = Builders::BatchAttachObject.build(input[:attach_object]) unless input[:attach_object].nil?
        data['DetachObject'] = Builders::BatchDetachObject.build(input[:detach_object]) unless input[:detach_object].nil?
        data['UpdateObjectAttributes'] = Builders::BatchUpdateObjectAttributes.build(input[:update_object_attributes]) unless input[:update_object_attributes].nil?
        data['DeleteObject'] = Builders::BatchDeleteObject.build(input[:delete_object]) unless input[:delete_object].nil?
        data['AddFacetToObject'] = Builders::BatchAddFacetToObject.build(input[:add_facet_to_object]) unless input[:add_facet_to_object].nil?
        data['RemoveFacetFromObject'] = Builders::BatchRemoveFacetFromObject.build(input[:remove_facet_from_object]) unless input[:remove_facet_from_object].nil?
        data['AttachPolicy'] = Builders::BatchAttachPolicy.build(input[:attach_policy]) unless input[:attach_policy].nil?
        data['DetachPolicy'] = Builders::BatchDetachPolicy.build(input[:detach_policy]) unless input[:detach_policy].nil?
        data['CreateIndex'] = Builders::BatchCreateIndex.build(input[:create_index]) unless input[:create_index].nil?
        data['AttachToIndex'] = Builders::BatchAttachToIndex.build(input[:attach_to_index]) unless input[:attach_to_index].nil?
        data['DetachFromIndex'] = Builders::BatchDetachFromIndex.build(input[:detach_from_index]) unless input[:detach_from_index].nil?
        data['AttachTypedLink'] = Builders::BatchAttachTypedLink.build(input[:attach_typed_link]) unless input[:attach_typed_link].nil?
        data['DetachTypedLink'] = Builders::BatchDetachTypedLink.build(input[:detach_typed_link]) unless input[:detach_typed_link].nil?
        data['UpdateLinkAttributes'] = Builders::BatchUpdateLinkAttributes.build(input[:update_link_attributes]) unless input[:update_link_attributes].nil?
        data
      end
    end

    # Structure Builder for BatchUpdateLinkAttributes
    class BatchUpdateLinkAttributes
      def self.build(input)
        data = {}
        data['TypedLinkSpecifier'] = Builders::TypedLinkSpecifier.build(input[:typed_link_specifier]) unless input[:typed_link_specifier].nil?
        data['AttributeUpdates'] = Builders::LinkAttributeUpdateList.build(input[:attribute_updates]) unless input[:attribute_updates].nil?
        data
      end
    end

    # List Builder for LinkAttributeUpdateList
    class LinkAttributeUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LinkAttributeUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LinkAttributeUpdate
    class LinkAttributeUpdate
      def self.build(input)
        data = {}
        data['AttributeKey'] = Builders::AttributeKey.build(input[:attribute_key]) unless input[:attribute_key].nil?
        data['AttributeAction'] = Builders::LinkAttributeAction.build(input[:attribute_action]) unless input[:attribute_action].nil?
        data
      end
    end

    # Structure Builder for LinkAttributeAction
    class LinkAttributeAction
      def self.build(input)
        data = {}
        data['AttributeActionType'] = input[:attribute_action_type] unless input[:attribute_action_type].nil?
        data['AttributeUpdateValue'] = Builders::TypedAttributeValue.build(input[:attribute_update_value]) unless input[:attribute_update_value].nil?
        data
      end
    end

    # Structure Builder for BatchDetachTypedLink
    class BatchDetachTypedLink
      def self.build(input)
        data = {}
        data['TypedLinkSpecifier'] = Builders::TypedLinkSpecifier.build(input[:typed_link_specifier]) unless input[:typed_link_specifier].nil?
        data
      end
    end

    # Structure Builder for BatchAttachTypedLink
    class BatchAttachTypedLink
      def self.build(input)
        data = {}
        data['SourceObjectReference'] = Builders::ObjectReference.build(input[:source_object_reference]) unless input[:source_object_reference].nil?
        data['TargetObjectReference'] = Builders::ObjectReference.build(input[:target_object_reference]) unless input[:target_object_reference].nil?
        data['TypedLinkFacet'] = Builders::TypedLinkSchemaAndFacetName.build(input[:typed_link_facet]) unless input[:typed_link_facet].nil?
        data['Attributes'] = Builders::AttributeNameAndValueList.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end

    # Structure Builder for BatchDetachFromIndex
    class BatchDetachFromIndex
      def self.build(input)
        data = {}
        data['IndexReference'] = Builders::ObjectReference.build(input[:index_reference]) unless input[:index_reference].nil?
        data['TargetReference'] = Builders::ObjectReference.build(input[:target_reference]) unless input[:target_reference].nil?
        data
      end
    end

    # Structure Builder for BatchAttachToIndex
    class BatchAttachToIndex
      def self.build(input)
        data = {}
        data['IndexReference'] = Builders::ObjectReference.build(input[:index_reference]) unless input[:index_reference].nil?
        data['TargetReference'] = Builders::ObjectReference.build(input[:target_reference]) unless input[:target_reference].nil?
        data
      end
    end

    # Structure Builder for BatchCreateIndex
    class BatchCreateIndex
      def self.build(input)
        data = {}
        data['OrderedIndexedAttributeList'] = Builders::AttributeKeyList.build(input[:ordered_indexed_attribute_list]) unless input[:ordered_indexed_attribute_list].nil?
        data['IsUnique'] = input[:is_unique] unless input[:is_unique].nil?
        data['ParentReference'] = Builders::ObjectReference.build(input[:parent_reference]) unless input[:parent_reference].nil?
        data['LinkName'] = input[:link_name] unless input[:link_name].nil?
        data['BatchReferenceName'] = input[:batch_reference_name] unless input[:batch_reference_name].nil?
        data
      end
    end

    # List Builder for AttributeKeyList
    class AttributeKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeKey.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchDetachPolicy
    class BatchDetachPolicy
      def self.build(input)
        data = {}
        data['PolicyReference'] = Builders::ObjectReference.build(input[:policy_reference]) unless input[:policy_reference].nil?
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data
      end
    end

    # Structure Builder for BatchAttachPolicy
    class BatchAttachPolicy
      def self.build(input)
        data = {}
        data['PolicyReference'] = Builders::ObjectReference.build(input[:policy_reference]) unless input[:policy_reference].nil?
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data
      end
    end

    # Structure Builder for BatchRemoveFacetFromObject
    class BatchRemoveFacetFromObject
      def self.build(input)
        data = {}
        data['SchemaFacet'] = Builders::SchemaFacet.build(input[:schema_facet]) unless input[:schema_facet].nil?
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data
      end
    end

    # Structure Builder for BatchAddFacetToObject
    class BatchAddFacetToObject
      def self.build(input)
        data = {}
        data['SchemaFacet'] = Builders::SchemaFacet.build(input[:schema_facet]) unless input[:schema_facet].nil?
        data['ObjectAttributeList'] = Builders::AttributeKeyAndValueList.build(input[:object_attribute_list]) unless input[:object_attribute_list].nil?
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data
      end
    end

    # Structure Builder for BatchDeleteObject
    class BatchDeleteObject
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data
      end
    end

    # Structure Builder for BatchUpdateObjectAttributes
    class BatchUpdateObjectAttributes
      def self.build(input)
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['AttributeUpdates'] = Builders::ObjectAttributeUpdateList.build(input[:attribute_updates]) unless input[:attribute_updates].nil?
        data
      end
    end

    # List Builder for ObjectAttributeUpdateList
    class ObjectAttributeUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ObjectAttributeUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ObjectAttributeUpdate
    class ObjectAttributeUpdate
      def self.build(input)
        data = {}
        data['ObjectAttributeKey'] = Builders::AttributeKey.build(input[:object_attribute_key]) unless input[:object_attribute_key].nil?
        data['ObjectAttributeAction'] = Builders::ObjectAttributeAction.build(input[:object_attribute_action]) unless input[:object_attribute_action].nil?
        data
      end
    end

    # Structure Builder for ObjectAttributeAction
    class ObjectAttributeAction
      def self.build(input)
        data = {}
        data['ObjectAttributeActionType'] = input[:object_attribute_action_type] unless input[:object_attribute_action_type].nil?
        data['ObjectAttributeUpdateValue'] = Builders::TypedAttributeValue.build(input[:object_attribute_update_value]) unless input[:object_attribute_update_value].nil?
        data
      end
    end

    # Structure Builder for BatchDetachObject
    class BatchDetachObject
      def self.build(input)
        data = {}
        data['ParentReference'] = Builders::ObjectReference.build(input[:parent_reference]) unless input[:parent_reference].nil?
        data['LinkName'] = input[:link_name] unless input[:link_name].nil?
        data['BatchReferenceName'] = input[:batch_reference_name] unless input[:batch_reference_name].nil?
        data
      end
    end

    # Structure Builder for BatchAttachObject
    class BatchAttachObject
      def self.build(input)
        data = {}
        data['ParentReference'] = Builders::ObjectReference.build(input[:parent_reference]) unless input[:parent_reference].nil?
        data['ChildReference'] = Builders::ObjectReference.build(input[:child_reference]) unless input[:child_reference].nil?
        data['LinkName'] = input[:link_name] unless input[:link_name].nil?
        data
      end
    end

    # Structure Builder for BatchCreateObject
    class BatchCreateObject
      def self.build(input)
        data = {}
        data['SchemaFacet'] = Builders::SchemaFacetList.build(input[:schema_facet]) unless input[:schema_facet].nil?
        data['ObjectAttributeList'] = Builders::AttributeKeyAndValueList.build(input[:object_attribute_list]) unless input[:object_attribute_list].nil?
        data['ParentReference'] = Builders::ObjectReference.build(input[:parent_reference]) unless input[:parent_reference].nil?
        data['LinkName'] = input[:link_name] unless input[:link_name].nil?
        data['BatchReferenceName'] = input[:batch_reference_name] unless input[:batch_reference_name].nil?
        data
      end
    end

    # List Builder for SchemaFacetList
    class SchemaFacetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SchemaFacet.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDirectory
    class CreateDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/directory/create')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for CreateFacet
    class CreateFacet
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/facet/create')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Attributes'] = Builders::FacetAttributeList.build(input[:attributes]) unless input[:attributes].nil?
        data['ObjectType'] = input[:object_type] unless input[:object_type].nil?
        data['FacetStyle'] = input[:facet_style] unless input[:facet_style].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # List Builder for FacetAttributeList
    class FacetAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FacetAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FacetAttribute
    class FacetAttribute
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['AttributeDefinition'] = Builders::FacetAttributeDefinition.build(input[:attribute_definition]) unless input[:attribute_definition].nil?
        data['AttributeReference'] = Builders::FacetAttributeReference.build(input[:attribute_reference]) unless input[:attribute_reference].nil?
        data['RequiredBehavior'] = input[:required_behavior] unless input[:required_behavior].nil?
        data
      end
    end

    # Structure Builder for FacetAttributeReference
    class FacetAttributeReference
      def self.build(input)
        data = {}
        data['TargetFacetName'] = input[:target_facet_name] unless input[:target_facet_name].nil?
        data['TargetAttributeName'] = input[:target_attribute_name] unless input[:target_attribute_name].nil?
        data
      end
    end

    # Structure Builder for FacetAttributeDefinition
    class FacetAttributeDefinition
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['DefaultValue'] = Builders::TypedAttributeValue.build(input[:default_value]) unless input[:default_value].nil?
        data['IsImmutable'] = input[:is_immutable] unless input[:is_immutable].nil?
        data['Rules'] = Builders::RuleMap.build(input[:rules]) unless input[:rules].nil?
        data
      end
    end

    # Map Builder for RuleMap
    class RuleMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Rule.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Rule
    class Rule
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Parameters'] = Builders::RuleParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # Map Builder for RuleParameterMap
    class RuleParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateIndex
    class CreateIndex
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/index')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['OrderedIndexedAttributeList'] = Builders::AttributeKeyList.build(input[:ordered_indexed_attribute_list]) unless input[:ordered_indexed_attribute_list].nil?
        data['IsUnique'] = input[:is_unique] unless input[:is_unique].nil?
        data['ParentReference'] = Builders::ObjectReference.build(input[:parent_reference]) unless input[:parent_reference].nil?
        data['LinkName'] = input[:link_name] unless input[:link_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for CreateObject
    class CreateObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SchemaFacets'] = Builders::SchemaFacetList.build(input[:schema_facets]) unless input[:schema_facets].nil?
        data['ObjectAttributeList'] = Builders::AttributeKeyAndValueList.build(input[:object_attribute_list]) unless input[:object_attribute_list].nil?
        data['ParentReference'] = Builders::ObjectReference.build(input[:parent_reference]) unless input[:parent_reference].nil?
        data['LinkName'] = input[:link_name] unless input[:link_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for CreateSchema
    class CreateSchema
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/create')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTypedLinkFacet
    class CreateTypedLinkFacet
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/facet/create')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Facet'] = Builders::TypedLinkFacet.build(input[:facet]) unless input[:facet].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Structure Builder for TypedLinkFacet
    class TypedLinkFacet
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Attributes'] = Builders::TypedLinkAttributeDefinitionList.build(input[:attributes]) unless input[:attributes].nil?
        data['IdentityAttributeOrder'] = Builders::AttributeNameList.build(input[:identity_attribute_order]) unless input[:identity_attribute_order].nil?
        data
      end
    end

    # List Builder for TypedLinkAttributeDefinitionList
    class TypedLinkAttributeDefinitionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TypedLinkAttributeDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TypedLinkAttributeDefinition
    class TypedLinkAttributeDefinition
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['DefaultValue'] = Builders::TypedAttributeValue.build(input[:default_value]) unless input[:default_value].nil?
        data['IsImmutable'] = input[:is_immutable] unless input[:is_immutable].nil?
        data['Rules'] = Builders::RuleMap.build(input[:rules]) unless input[:rules].nil?
        data['RequiredBehavior'] = input[:required_behavior] unless input[:required_behavior].nil?
        data
      end
    end

    # Operation Builder for DeleteDirectory
    class DeleteDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/directory')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for DeleteFacet
    class DeleteFacet
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/facet/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for DeleteObject
    class DeleteObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for DeleteSchema
    class DeleteSchema
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for DeleteTypedLinkFacet
    class DeleteTypedLinkFacet
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/facet/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for DetachFromIndex
    class DetachFromIndex
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/index/detach')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IndexReference'] = Builders::ObjectReference.build(input[:index_reference]) unless input[:index_reference].nil?
        data['TargetReference'] = Builders::ObjectReference.build(input[:target_reference]) unless input[:target_reference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for DetachObject
    class DetachObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/detach')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ParentReference'] = Builders::ObjectReference.build(input[:parent_reference]) unless input[:parent_reference].nil?
        data['LinkName'] = input[:link_name] unless input[:link_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for DetachPolicy
    class DetachPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/policy/detach')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PolicyReference'] = Builders::ObjectReference.build(input[:policy_reference]) unless input[:policy_reference].nil?
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for DetachTypedLink
    class DetachTypedLink
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/detach')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TypedLinkSpecifier'] = Builders::TypedLinkSpecifier.build(input[:typed_link_specifier]) unless input[:typed_link_specifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for DisableDirectory
    class DisableDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/directory/disable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for EnableDirectory
    class EnableDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/directory/enable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for GetAppliedSchemaVersion
    class GetAppliedSchemaVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/getappliedschema')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SchemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDirectory
    class GetDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/directory/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for GetFacet
    class GetFacet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/facet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for GetLinkAttributes
    class GetLinkAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/attributes/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TypedLinkSpecifier'] = Builders::TypedLinkSpecifier.build(input[:typed_link_specifier]) unless input[:typed_link_specifier].nil?
        data['AttributeNames'] = Builders::AttributeNameList.build(input[:attribute_names]) unless input[:attribute_names].nil?
        data['ConsistencyLevel'] = input[:consistency_level] unless input[:consistency_level].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for GetObjectAttributes
    class GetObjectAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/attributes/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['SchemaFacet'] = Builders::SchemaFacet.build(input[:schema_facet]) unless input[:schema_facet].nil?
        data['AttributeNames'] = Builders::AttributeNameList.build(input[:attribute_names]) unless input[:attribute_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # Operation Builder for GetObjectInformation
    class GetObjectInformation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/information')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # Operation Builder for GetSchemaAsJson
    class GetSchemaAsJson
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/json')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for GetTypedLinkFacetInformation
    class GetTypedLinkFacetInformation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/facet/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for ListAppliedSchemaArns
    class ListAppliedSchemaArns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/applied')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DirectoryArn'] = input[:directory_arn] unless input[:directory_arn].nil?
        data['SchemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAttachedIndices
    class ListAttachedIndices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/indices')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TargetReference'] = Builders::ObjectReference.build(input[:target_reference]) unless input[:target_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # Operation Builder for ListDevelopmentSchemaArns
    class ListDevelopmentSchemaArns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/development')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDirectories
    class ListDirectories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/directory/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['state'] = input[:state] unless input[:state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFacetAttributes
    class ListFacetAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/facet/attributes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for ListFacetNames
    class ListFacetNames
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/facet/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for ListIncomingTypedLinks
    class ListIncomingTypedLinks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/incoming')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['FilterAttributeRanges'] = Builders::TypedLinkAttributeRangeList.build(input[:filter_attribute_ranges]) unless input[:filter_attribute_ranges].nil?
        data['FilterTypedLink'] = Builders::TypedLinkSchemaAndFacetName.build(input[:filter_typed_link]) unless input[:filter_typed_link].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ConsistencyLevel'] = input[:consistency_level] unless input[:consistency_level].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for ListIndex
    class ListIndex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/index/targets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RangesOnIndexedValues'] = Builders::ObjectAttributeRangeList.build(input[:ranges_on_indexed_values]) unless input[:ranges_on_indexed_values].nil?
        data['IndexReference'] = Builders::ObjectReference.build(input[:index_reference]) unless input[:index_reference].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # Operation Builder for ListManagedSchemaArns
    class ListManagedSchemaArns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/managed')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SchemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListObjectAttributes
    class ListObjectAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/attributes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['FacetFilter'] = Builders::SchemaFacet.build(input[:facet_filter]) unless input[:facet_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # Operation Builder for ListObjectChildren
    class ListObjectChildren
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/children')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # Operation Builder for ListObjectParentPaths
    class ListObjectParentPaths
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/parentpaths')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for ListObjectParents
    class ListObjectParents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/parent')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['IncludeAllLinksToEachParent'] = input[:include_all_links_to_each_parent] unless input[:include_all_links_to_each_parent].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # Operation Builder for ListObjectPolicies
    class ListObjectPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # Operation Builder for ListOutgoingTypedLinks
    class ListOutgoingTypedLinks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/outgoing')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['FilterAttributeRanges'] = Builders::TypedLinkAttributeRangeList.build(input[:filter_attribute_ranges]) unless input[:filter_attribute_ranges].nil?
        data['FilterTypedLink'] = Builders::TypedLinkSchemaAndFacetName.build(input[:filter_typed_link]) unless input[:filter_typed_link].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ConsistencyLevel'] = input[:consistency_level] unless input[:consistency_level].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for ListPolicyAttachments
    class ListPolicyAttachments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/policy/attachment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PolicyReference'] = Builders::ObjectReference.build(input[:policy_reference]) unless input[:policy_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
        http_req.headers['x-amz-consistency-level'] = input[:consistency_level] unless input[:consistency_level].nil? || input[:consistency_level].empty?
      end
    end

    # Operation Builder for ListPublishedSchemaArns
    class ListPublishedSchemaArns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/published')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SchemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTypedLinkFacetAttributes
    class ListTypedLinkFacetAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/facet/attributes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for ListTypedLinkFacetNames
    class ListTypedLinkFacetNames
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/facet/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for LookupPolicy
    class LookupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/policy/lookup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for PublishSchema
    class PublishSchema
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/publish')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Version'] = input[:version] unless input[:version].nil?
        data['MinorVersion'] = input[:minor_version] unless input[:minor_version].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:development_schema_arn] unless input[:development_schema_arn].nil? || input[:development_schema_arn].empty?
      end
    end

    # Operation Builder for PutSchemaFromJson
    class PutSchemaFromJson
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/json')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Document'] = input[:document] unless input[:document].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for RemoveFacetFromObject
    class RemoveFacetFromObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/facets/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SchemaFacet'] = Builders::SchemaFacet.build(input[:schema_facet]) unless input[:schema_facet].nil?
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/tags/add')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/tags/remove')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateFacet
    class UpdateFacet
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/facet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['AttributeUpdates'] = Builders::FacetAttributeUpdateList.build(input[:attribute_updates]) unless input[:attribute_updates].nil?
        data['ObjectType'] = input[:object_type] unless input[:object_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # List Builder for FacetAttributeUpdateList
    class FacetAttributeUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FacetAttributeUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FacetAttributeUpdate
    class FacetAttributeUpdate
      def self.build(input)
        data = {}
        data['Attribute'] = Builders::FacetAttribute.build(input[:attribute]) unless input[:attribute].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # Operation Builder for UpdateLinkAttributes
    class UpdateLinkAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/attributes/update')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TypedLinkSpecifier'] = Builders::TypedLinkSpecifier.build(input[:typed_link_specifier]) unless input[:typed_link_specifier].nil?
        data['AttributeUpdates'] = Builders::LinkAttributeUpdateList.build(input[:attribute_updates]) unless input[:attribute_updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for UpdateObjectAttributes
    class UpdateObjectAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/object/update')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectReference'] = Builders::ObjectReference.build(input[:object_reference]) unless input[:object_reference].nil?
        data['AttributeUpdates'] = Builders::ObjectAttributeUpdateList.build(input[:attribute_updates]) unless input[:attribute_updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:directory_arn] unless input[:directory_arn].nil? || input[:directory_arn].empty?
      end
    end

    # Operation Builder for UpdateSchema
    class UpdateSchema
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/update')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # Operation Builder for UpdateTypedLinkFacet
    class UpdateTypedLinkFacet
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/typedlink/facet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['AttributeUpdates'] = Builders::TypedLinkFacetAttributeUpdateList.build(input[:attribute_updates]) unless input[:attribute_updates].nil?
        data['IdentityAttributeOrder'] = Builders::AttributeNameList.build(input[:identity_attribute_order]) unless input[:identity_attribute_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-data-partition'] = input[:schema_arn] unless input[:schema_arn].nil? || input[:schema_arn].empty?
      end
    end

    # List Builder for TypedLinkFacetAttributeUpdateList
    class TypedLinkFacetAttributeUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TypedLinkFacetAttributeUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TypedLinkFacetAttributeUpdate
    class TypedLinkFacetAttributeUpdate
      def self.build(input)
        data = {}
        data['Attribute'] = Builders::TypedLinkAttributeDefinition.build(input[:attribute]) unless input[:attribute].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # Operation Builder for UpgradeAppliedSchema
    class UpgradeAppliedSchema
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/upgradeapplied')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PublishedSchemaArn'] = input[:published_schema_arn] unless input[:published_schema_arn].nil?
        data['DirectoryArn'] = input[:directory_arn] unless input[:directory_arn].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpgradePublishedSchema
    class UpgradePublishedSchema
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/amazonclouddirectory/2017-01-11/schema/upgradepublished')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DevelopmentSchemaArn'] = input[:development_schema_arn] unless input[:development_schema_arn].nil?
        data['PublishedSchemaArn'] = input[:published_schema_arn] unless input[:published_schema_arn].nil?
        data['MinorVersion'] = input[:minor_version] unless input[:minor_version].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
