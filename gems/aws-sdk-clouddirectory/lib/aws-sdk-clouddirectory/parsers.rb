# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudDirectory
  module Parsers

    # Operation Parser for AddFacetToObject
    class AddFacetToObject
      def self.parse(http_resp)
        data = Types::AddFacetToObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for FacetValidationException
    class FacetValidationException
      def self.parse(http_resp)
        data = Types::FacetValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidArnException
    class InvalidArnException
      def self.parse(http_resp)
        data = Types::InvalidArnException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for RetryableConflictException
    class RetryableConflictException
      def self.parse(http_resp)
        data = Types::RetryableConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DirectoryNotEnabledException
    class DirectoryNotEnabledException
      def self.parse(http_resp)
        data = Types::DirectoryNotEnabledException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ApplySchema
    class ApplySchema
      def self.parse(http_resp)
        data = Types::ApplySchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.applied_schema_arn = map['AppliedSchemaArn']
        data.directory_arn = map['DirectoryArn']
        data
      end
    end

    # Error Parser for SchemaAlreadyExistsException
    class SchemaAlreadyExistsException
      def self.parse(http_resp)
        data = Types::SchemaAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidAttachmentException
    class InvalidAttachmentException
      def self.parse(http_resp)
        data = Types::InvalidAttachmentException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AttachObject
    class AttachObject
      def self.parse(http_resp)
        data = Types::AttachObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attached_object_identifier = map['AttachedObjectIdentifier']
        data
      end
    end

    # Error Parser for LinkNameAlreadyInUseException
    class LinkNameAlreadyInUseException
      def self.parse(http_resp)
        data = Types::LinkNameAlreadyInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AttachPolicy
    class AttachPolicy
      def self.parse(http_resp)
        data = Types::AttachPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for NotPolicyException
    class NotPolicyException
      def self.parse(http_resp)
        data = Types::NotPolicyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AttachToIndex
    class AttachToIndex
      def self.parse(http_resp)
        data = Types::AttachToIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attached_object_identifier = map['AttachedObjectIdentifier']
        data
      end
    end

    # Error Parser for NotIndexException
    class NotIndexException
      def self.parse(http_resp)
        data = Types::NotIndexException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for IndexedAttributeMissingException
    class IndexedAttributeMissingException
      def self.parse(http_resp)
        data = Types::IndexedAttributeMissingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AttachTypedLink
    class AttachTypedLink
      def self.parse(http_resp)
        data = Types::AttachTypedLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.typed_link_specifier = (TypedLinkSpecifier.parse(map['TypedLinkSpecifier']) unless map['TypedLinkSpecifier'].nil?)
        data
      end
    end

    class TypedLinkSpecifier
      def self.parse(map)
        data = Types::TypedLinkSpecifier.new
        data.typed_link_facet = (TypedLinkSchemaAndFacetName.parse(map['TypedLinkFacet']) unless map['TypedLinkFacet'].nil?)
        data.source_object_reference = (ObjectReference.parse(map['SourceObjectReference']) unless map['SourceObjectReference'].nil?)
        data.target_object_reference = (ObjectReference.parse(map['TargetObjectReference']) unless map['TargetObjectReference'].nil?)
        data.identity_attribute_values = (AttributeNameAndValueList.parse(map['IdentityAttributeValues']) unless map['IdentityAttributeValues'].nil?)
        return data
      end
    end

    class AttributeNameAndValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AttributeNameAndValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class AttributeNameAndValue
      def self.parse(map)
        data = Types::AttributeNameAndValue.new
        data.attribute_name = map['AttributeName']
        data.value = (TypedAttributeValue.parse(map['Value']) unless map['Value'].nil?)
        return data
      end
    end

    class TypedAttributeValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'StringValue'
          value = value
          Types::TypedAttributeValue::StringValue.new(value) if value
        when 'BinaryValue'
          value = Base64::decode64(value) unless value.nil?
          Types::TypedAttributeValue::BinaryValue.new(value) if value
        when 'BooleanValue'
          value = value
          Types::TypedAttributeValue::BooleanValue.new(value) if value
        when 'NumberValue'
          value = value
          Types::TypedAttributeValue::NumberValue.new(value) if value
        when 'DatetimeValue'
          value = Time.at(value.to_i) if value
          Types::TypedAttributeValue::DatetimeValue.new(value) if value
        else
          Types::TypedAttributeValue::Unknown.new({name: key, value: value})
        end
      end
    end

    class ObjectReference
      def self.parse(map)
        data = Types::ObjectReference.new
        data.selector = map['Selector']
        return data
      end
    end

    class TypedLinkSchemaAndFacetName
      def self.parse(map)
        data = Types::TypedLinkSchemaAndFacetName.new
        data.schema_arn = map['SchemaArn']
        data.typed_link_name = map['TypedLinkName']
        return data
      end
    end

    # Operation Parser for BatchRead
    class BatchRead
      def self.parse(http_resp)
        data = Types::BatchReadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.responses = (BatchReadOperationResponseList.parse(map['Responses']) unless map['Responses'].nil?)
        data
      end
    end

    class BatchReadOperationResponseList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchReadOperationResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchReadOperationResponse
      def self.parse(map)
        data = Types::BatchReadOperationResponse.new
        data.successful_response = (BatchReadSuccessfulResponse.parse(map['SuccessfulResponse']) unless map['SuccessfulResponse'].nil?)
        data.exception_response = (BatchReadException.parse(map['ExceptionResponse']) unless map['ExceptionResponse'].nil?)
        return data
      end
    end

    class BatchReadException
      def self.parse(map)
        data = Types::BatchReadException.new
        data.type = map['Type']
        data.message = map['Message']
        return data
      end
    end

    class BatchReadSuccessfulResponse
      def self.parse(map)
        data = Types::BatchReadSuccessfulResponse.new
        data.list_object_attributes = (BatchListObjectAttributesResponse.parse(map['ListObjectAttributes']) unless map['ListObjectAttributes'].nil?)
        data.list_object_children = (BatchListObjectChildrenResponse.parse(map['ListObjectChildren']) unless map['ListObjectChildren'].nil?)
        data.get_object_information = (BatchGetObjectInformationResponse.parse(map['GetObjectInformation']) unless map['GetObjectInformation'].nil?)
        data.get_object_attributes = (BatchGetObjectAttributesResponse.parse(map['GetObjectAttributes']) unless map['GetObjectAttributes'].nil?)
        data.list_attached_indices = (BatchListAttachedIndicesResponse.parse(map['ListAttachedIndices']) unless map['ListAttachedIndices'].nil?)
        data.list_object_parent_paths = (BatchListObjectParentPathsResponse.parse(map['ListObjectParentPaths']) unless map['ListObjectParentPaths'].nil?)
        data.list_object_policies = (BatchListObjectPoliciesResponse.parse(map['ListObjectPolicies']) unless map['ListObjectPolicies'].nil?)
        data.list_policy_attachments = (BatchListPolicyAttachmentsResponse.parse(map['ListPolicyAttachments']) unless map['ListPolicyAttachments'].nil?)
        data.lookup_policy = (BatchLookupPolicyResponse.parse(map['LookupPolicy']) unless map['LookupPolicy'].nil?)
        data.list_index = (BatchListIndexResponse.parse(map['ListIndex']) unless map['ListIndex'].nil?)
        data.list_outgoing_typed_links = (BatchListOutgoingTypedLinksResponse.parse(map['ListOutgoingTypedLinks']) unless map['ListOutgoingTypedLinks'].nil?)
        data.list_incoming_typed_links = (BatchListIncomingTypedLinksResponse.parse(map['ListIncomingTypedLinks']) unless map['ListIncomingTypedLinks'].nil?)
        data.get_link_attributes = (BatchGetLinkAttributesResponse.parse(map['GetLinkAttributes']) unless map['GetLinkAttributes'].nil?)
        data.list_object_parents = (BatchListObjectParentsResponse.parse(map['ListObjectParents']) unless map['ListObjectParents'].nil?)
        return data
      end
    end

    class BatchListObjectParentsResponse
      def self.parse(map)
        data = Types::BatchListObjectParentsResponse.new
        data.parent_links = (ObjectIdentifierAndLinkNameList.parse(map['ParentLinks']) unless map['ParentLinks'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ObjectIdentifierAndLinkNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ObjectIdentifierAndLinkNameTuple.parse(value) unless value.nil?
        end
        data
      end
    end

    class ObjectIdentifierAndLinkNameTuple
      def self.parse(map)
        data = Types::ObjectIdentifierAndLinkNameTuple.new
        data.object_identifier = map['ObjectIdentifier']
        data.link_name = map['LinkName']
        return data
      end
    end

    class BatchGetLinkAttributesResponse
      def self.parse(map)
        data = Types::BatchGetLinkAttributesResponse.new
        data.attributes = (AttributeKeyAndValueList.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    class AttributeKeyAndValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AttributeKeyAndValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class AttributeKeyAndValue
      def self.parse(map)
        data = Types::AttributeKeyAndValue.new
        data.key = (AttributeKey.parse(map['Key']) unless map['Key'].nil?)
        data.value = (TypedAttributeValue.parse(map['Value']) unless map['Value'].nil?)
        return data
      end
    end

    class AttributeKey
      def self.parse(map)
        data = Types::AttributeKey.new
        data.schema_arn = map['SchemaArn']
        data.facet_name = map['FacetName']
        data.name = map['Name']
        return data
      end
    end

    class BatchListIncomingTypedLinksResponse
      def self.parse(map)
        data = Types::BatchListIncomingTypedLinksResponse.new
        data.link_specifiers = (TypedLinkSpecifierList.parse(map['LinkSpecifiers']) unless map['LinkSpecifiers'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class TypedLinkSpecifierList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TypedLinkSpecifier.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchListOutgoingTypedLinksResponse
      def self.parse(map)
        data = Types::BatchListOutgoingTypedLinksResponse.new
        data.typed_link_specifiers = (TypedLinkSpecifierList.parse(map['TypedLinkSpecifiers']) unless map['TypedLinkSpecifiers'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class BatchListIndexResponse
      def self.parse(map)
        data = Types::BatchListIndexResponse.new
        data.index_attachments = (IndexAttachmentList.parse(map['IndexAttachments']) unless map['IndexAttachments'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class IndexAttachmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << IndexAttachment.parse(value) unless value.nil?
        end
        data
      end
    end

    class IndexAttachment
      def self.parse(map)
        data = Types::IndexAttachment.new
        data.indexed_attributes = (AttributeKeyAndValueList.parse(map['IndexedAttributes']) unless map['IndexedAttributes'].nil?)
        data.object_identifier = map['ObjectIdentifier']
        return data
      end
    end

    class BatchLookupPolicyResponse
      def self.parse(map)
        data = Types::BatchLookupPolicyResponse.new
        data.policy_to_path_list = (PolicyToPathList.parse(map['PolicyToPathList']) unless map['PolicyToPathList'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class PolicyToPathList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PolicyToPath.parse(value) unless value.nil?
        end
        data
      end
    end

    class PolicyToPath
      def self.parse(map)
        data = Types::PolicyToPath.new
        data.path = map['Path']
        data.policies = (PolicyAttachmentList.parse(map['Policies']) unless map['Policies'].nil?)
        return data
      end
    end

    class PolicyAttachmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PolicyAttachment.parse(value) unless value.nil?
        end
        data
      end
    end

    class PolicyAttachment
      def self.parse(map)
        data = Types::PolicyAttachment.new
        data.policy_id = map['PolicyId']
        data.object_identifier = map['ObjectIdentifier']
        data.policy_type = map['PolicyType']
        return data
      end
    end

    class BatchListPolicyAttachmentsResponse
      def self.parse(map)
        data = Types::BatchListPolicyAttachmentsResponse.new
        data.object_identifiers = (ObjectIdentifierList.parse(map['ObjectIdentifiers']) unless map['ObjectIdentifiers'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ObjectIdentifierList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class BatchListObjectPoliciesResponse
      def self.parse(map)
        data = Types::BatchListObjectPoliciesResponse.new
        data.attached_policy_ids = (ObjectIdentifierList.parse(map['AttachedPolicyIds']) unless map['AttachedPolicyIds'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class BatchListObjectParentPathsResponse
      def self.parse(map)
        data = Types::BatchListObjectParentPathsResponse.new
        data.path_to_object_identifiers_list = (PathToObjectIdentifiersList.parse(map['PathToObjectIdentifiersList']) unless map['PathToObjectIdentifiersList'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class PathToObjectIdentifiersList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PathToObjectIdentifiers.parse(value) unless value.nil?
        end
        data
      end
    end

    class PathToObjectIdentifiers
      def self.parse(map)
        data = Types::PathToObjectIdentifiers.new
        data.path = map['Path']
        data.object_identifiers = (ObjectIdentifierList.parse(map['ObjectIdentifiers']) unless map['ObjectIdentifiers'].nil?)
        return data
      end
    end

    class BatchListAttachedIndicesResponse
      def self.parse(map)
        data = Types::BatchListAttachedIndicesResponse.new
        data.index_attachments = (IndexAttachmentList.parse(map['IndexAttachments']) unless map['IndexAttachments'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class BatchGetObjectAttributesResponse
      def self.parse(map)
        data = Types::BatchGetObjectAttributesResponse.new
        data.attributes = (AttributeKeyAndValueList.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    class BatchGetObjectInformationResponse
      def self.parse(map)
        data = Types::BatchGetObjectInformationResponse.new
        data.schema_facets = (SchemaFacetList.parse(map['SchemaFacets']) unless map['SchemaFacets'].nil?)
        data.object_identifier = map['ObjectIdentifier']
        return data
      end
    end

    class SchemaFacetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SchemaFacet.parse(value) unless value.nil?
        end
        data
      end
    end

    class SchemaFacet
      def self.parse(map)
        data = Types::SchemaFacet.new
        data.schema_arn = map['SchemaArn']
        data.facet_name = map['FacetName']
        return data
      end
    end

    class BatchListObjectChildrenResponse
      def self.parse(map)
        data = Types::BatchListObjectChildrenResponse.new
        data.children = (LinkNameToObjectIdentifierMap.parse(map['Children']) unless map['Children'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class LinkNameToObjectIdentifierMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class BatchListObjectAttributesResponse
      def self.parse(map)
        data = Types::BatchListObjectAttributesResponse.new
        data.attributes = (AttributeKeyAndValueList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    # Operation Parser for BatchWrite
    class BatchWrite
      def self.parse(http_resp)
        data = Types::BatchWriteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.responses = (BatchWriteOperationResponseList.parse(map['Responses']) unless map['Responses'].nil?)
        data
      end
    end

    class BatchWriteOperationResponseList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchWriteOperationResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchWriteOperationResponse
      def self.parse(map)
        data = Types::BatchWriteOperationResponse.new
        data.create_object = (BatchCreateObjectResponse.parse(map['CreateObject']) unless map['CreateObject'].nil?)
        data.attach_object = (BatchAttachObjectResponse.parse(map['AttachObject']) unless map['AttachObject'].nil?)
        data.detach_object = (BatchDetachObjectResponse.parse(map['DetachObject']) unless map['DetachObject'].nil?)
        data.update_object_attributes = (BatchUpdateObjectAttributesResponse.parse(map['UpdateObjectAttributes']) unless map['UpdateObjectAttributes'].nil?)
        data.delete_object = (BatchDeleteObjectResponse.parse(map['DeleteObject']) unless map['DeleteObject'].nil?)
        data.add_facet_to_object = (BatchAddFacetToObjectResponse.parse(map['AddFacetToObject']) unless map['AddFacetToObject'].nil?)
        data.remove_facet_from_object = (BatchRemoveFacetFromObjectResponse.parse(map['RemoveFacetFromObject']) unless map['RemoveFacetFromObject'].nil?)
        data.attach_policy = (BatchAttachPolicyResponse.parse(map['AttachPolicy']) unless map['AttachPolicy'].nil?)
        data.detach_policy = (BatchDetachPolicyResponse.parse(map['DetachPolicy']) unless map['DetachPolicy'].nil?)
        data.create_index = (BatchCreateIndexResponse.parse(map['CreateIndex']) unless map['CreateIndex'].nil?)
        data.attach_to_index = (BatchAttachToIndexResponse.parse(map['AttachToIndex']) unless map['AttachToIndex'].nil?)
        data.detach_from_index = (BatchDetachFromIndexResponse.parse(map['DetachFromIndex']) unless map['DetachFromIndex'].nil?)
        data.attach_typed_link = (BatchAttachTypedLinkResponse.parse(map['AttachTypedLink']) unless map['AttachTypedLink'].nil?)
        data.detach_typed_link = (BatchDetachTypedLinkResponse.parse(map['DetachTypedLink']) unless map['DetachTypedLink'].nil?)
        data.update_link_attributes = (BatchUpdateLinkAttributesResponse.parse(map['UpdateLinkAttributes']) unless map['UpdateLinkAttributes'].nil?)
        return data
      end
    end

    class BatchUpdateLinkAttributesResponse
      def self.parse(map)
        data = Types::BatchUpdateLinkAttributesResponse.new
        return data
      end
    end

    class BatchDetachTypedLinkResponse
      def self.parse(map)
        data = Types::BatchDetachTypedLinkResponse.new
        return data
      end
    end

    class BatchAttachTypedLinkResponse
      def self.parse(map)
        data = Types::BatchAttachTypedLinkResponse.new
        data.typed_link_specifier = (TypedLinkSpecifier.parse(map['TypedLinkSpecifier']) unless map['TypedLinkSpecifier'].nil?)
        return data
      end
    end

    class BatchDetachFromIndexResponse
      def self.parse(map)
        data = Types::BatchDetachFromIndexResponse.new
        data.detached_object_identifier = map['DetachedObjectIdentifier']
        return data
      end
    end

    class BatchAttachToIndexResponse
      def self.parse(map)
        data = Types::BatchAttachToIndexResponse.new
        data.attached_object_identifier = map['AttachedObjectIdentifier']
        return data
      end
    end

    class BatchCreateIndexResponse
      def self.parse(map)
        data = Types::BatchCreateIndexResponse.new
        data.object_identifier = map['ObjectIdentifier']
        return data
      end
    end

    class BatchDetachPolicyResponse
      def self.parse(map)
        data = Types::BatchDetachPolicyResponse.new
        return data
      end
    end

    class BatchAttachPolicyResponse
      def self.parse(map)
        data = Types::BatchAttachPolicyResponse.new
        return data
      end
    end

    class BatchRemoveFacetFromObjectResponse
      def self.parse(map)
        data = Types::BatchRemoveFacetFromObjectResponse.new
        return data
      end
    end

    class BatchAddFacetToObjectResponse
      def self.parse(map)
        data = Types::BatchAddFacetToObjectResponse.new
        return data
      end
    end

    class BatchDeleteObjectResponse
      def self.parse(map)
        data = Types::BatchDeleteObjectResponse.new
        return data
      end
    end

    class BatchUpdateObjectAttributesResponse
      def self.parse(map)
        data = Types::BatchUpdateObjectAttributesResponse.new
        data.object_identifier = map['ObjectIdentifier']
        return data
      end
    end

    class BatchDetachObjectResponse
      def self.parse(map)
        data = Types::BatchDetachObjectResponse.new
        data.detached_object_identifier = map['detachedObjectIdentifier']
        return data
      end
    end

    class BatchAttachObjectResponse
      def self.parse(map)
        data = Types::BatchAttachObjectResponse.new
        data.attached_object_identifier = map['attachedObjectIdentifier']
        return data
      end
    end

    class BatchCreateObjectResponse
      def self.parse(map)
        data = Types::BatchCreateObjectResponse.new
        data.object_identifier = map['ObjectIdentifier']
        return data
      end
    end

    # Error Parser for BatchWriteException
    class BatchWriteException
      def self.parse(http_resp)
        data = Types::BatchWriteException.new
        map = Hearth::JSON.load(http_resp.body)
        data.index = map['Index']
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateDirectory
    class CreateDirectory
      def self.parse(http_resp)
        data = Types::CreateDirectoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.directory_arn = map['DirectoryArn']
        data.name = map['Name']
        data.object_identifier = map['ObjectIdentifier']
        data.applied_schema_arn = map['AppliedSchemaArn']
        data
      end
    end

    # Error Parser for DirectoryAlreadyExistsException
    class DirectoryAlreadyExistsException
      def self.parse(http_resp)
        data = Types::DirectoryAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateFacet
    class CreateFacet
      def self.parse(http_resp)
        data = Types::CreateFacetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for FacetAlreadyExistsException
    class FacetAlreadyExistsException
      def self.parse(http_resp)
        data = Types::FacetAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRuleException
    class InvalidRuleException
      def self.parse(http_resp)
        data = Types::InvalidRuleException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateIndex
    class CreateIndex
      def self.parse(http_resp)
        data = Types::CreateIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.object_identifier = map['ObjectIdentifier']
        data
      end
    end

    # Error Parser for UnsupportedIndexTypeException
    class UnsupportedIndexTypeException
      def self.parse(http_resp)
        data = Types::UnsupportedIndexTypeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateObject
    class CreateObject
      def self.parse(http_resp)
        data = Types::CreateObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.object_identifier = map['ObjectIdentifier']
        data
      end
    end

    # Operation Parser for CreateSchema
    class CreateSchema
      def self.parse(http_resp)
        data = Types::CreateSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.schema_arn = map['SchemaArn']
        data
      end
    end

    # Operation Parser for CreateTypedLinkFacet
    class CreateTypedLinkFacet
      def self.parse(http_resp)
        data = Types::CreateTypedLinkFacetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDirectory
    class DeleteDirectory
      def self.parse(http_resp)
        data = Types::DeleteDirectoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.directory_arn = map['DirectoryArn']
        data
      end
    end

    # Error Parser for DirectoryNotDisabledException
    class DirectoryNotDisabledException
      def self.parse(http_resp)
        data = Types::DirectoryNotDisabledException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DirectoryDeletedException
    class DirectoryDeletedException
      def self.parse(http_resp)
        data = Types::DirectoryDeletedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteFacet
    class DeleteFacet
      def self.parse(http_resp)
        data = Types::DeleteFacetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for FacetNotFoundException
    class FacetNotFoundException
      def self.parse(http_resp)
        data = Types::FacetNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for FacetInUseException
    class FacetInUseException
      def self.parse(http_resp)
        data = Types::FacetInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteObject
    class DeleteObject
      def self.parse(http_resp)
        data = Types::DeleteObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ObjectNotDetachedException
    class ObjectNotDetachedException
      def self.parse(http_resp)
        data = Types::ObjectNotDetachedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteSchema
    class DeleteSchema
      def self.parse(http_resp)
        data = Types::DeleteSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.schema_arn = map['SchemaArn']
        data
      end
    end

    # Error Parser for StillContainsLinksException
    class StillContainsLinksException
      def self.parse(http_resp)
        data = Types::StillContainsLinksException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteTypedLinkFacet
    class DeleteTypedLinkFacet
      def self.parse(http_resp)
        data = Types::DeleteTypedLinkFacetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DetachFromIndex
    class DetachFromIndex
      def self.parse(http_resp)
        data = Types::DetachFromIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detached_object_identifier = map['DetachedObjectIdentifier']
        data
      end
    end

    # Error Parser for ObjectAlreadyDetachedException
    class ObjectAlreadyDetachedException
      def self.parse(http_resp)
        data = Types::ObjectAlreadyDetachedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DetachObject
    class DetachObject
      def self.parse(http_resp)
        data = Types::DetachObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detached_object_identifier = map['DetachedObjectIdentifier']
        data
      end
    end

    # Error Parser for NotNodeException
    class NotNodeException
      def self.parse(http_resp)
        data = Types::NotNodeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DetachPolicy
    class DetachPolicy
      def self.parse(http_resp)
        data = Types::DetachPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DetachTypedLink
    class DetachTypedLink
      def self.parse(http_resp)
        data = Types::DetachTypedLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisableDirectory
    class DisableDirectory
      def self.parse(http_resp)
        data = Types::DisableDirectoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.directory_arn = map['DirectoryArn']
        data
      end
    end

    # Operation Parser for EnableDirectory
    class EnableDirectory
      def self.parse(http_resp)
        data = Types::EnableDirectoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.directory_arn = map['DirectoryArn']
        data
      end
    end

    # Operation Parser for GetAppliedSchemaVersion
    class GetAppliedSchemaVersion
      def self.parse(http_resp)
        data = Types::GetAppliedSchemaVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.applied_schema_arn = map['AppliedSchemaArn']
        data
      end
    end

    # Operation Parser for GetDirectory
    class GetDirectory
      def self.parse(http_resp)
        data = Types::GetDirectoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.directory = (Directory.parse(map['Directory']) unless map['Directory'].nil?)
        data
      end
    end

    class Directory
      def self.parse(map)
        data = Types::Directory.new
        data.name = map['Name']
        data.directory_arn = map['DirectoryArn']
        data.state = map['State']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        return data
      end
    end

    # Operation Parser for GetFacet
    class GetFacet
      def self.parse(http_resp)
        data = Types::GetFacetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.facet = (Facet.parse(map['Facet']) unless map['Facet'].nil?)
        data
      end
    end

    class Facet
      def self.parse(map)
        data = Types::Facet.new
        data.name = map['Name']
        data.object_type = map['ObjectType']
        data.facet_style = map['FacetStyle']
        return data
      end
    end

    # Operation Parser for GetLinkAttributes
    class GetLinkAttributes
      def self.parse(http_resp)
        data = Types::GetLinkAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attributes = (AttributeKeyAndValueList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data
      end
    end

    # Operation Parser for GetObjectAttributes
    class GetObjectAttributes
      def self.parse(http_resp)
        data = Types::GetObjectAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attributes = (AttributeKeyAndValueList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data
      end
    end

    # Operation Parser for GetObjectInformation
    class GetObjectInformation
      def self.parse(http_resp)
        data = Types::GetObjectInformationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.schema_facets = (SchemaFacetList.parse(map['SchemaFacets']) unless map['SchemaFacets'].nil?)
        data.object_identifier = map['ObjectIdentifier']
        data
      end
    end

    # Operation Parser for GetSchemaAsJson
    class GetSchemaAsJson
      def self.parse(http_resp)
        data = Types::GetSchemaAsJsonOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.document = map['Document']
        data
      end
    end

    # Operation Parser for GetTypedLinkFacetInformation
    class GetTypedLinkFacetInformation
      def self.parse(http_resp)
        data = Types::GetTypedLinkFacetInformationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_attribute_order = (AttributeNameList.parse(map['IdentityAttributeOrder']) unless map['IdentityAttributeOrder'].nil?)
        data
      end
    end

    class AttributeNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListAppliedSchemaArns
    class ListAppliedSchemaArns
      def self.parse(http_resp)
        data = Types::ListAppliedSchemaArnsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.schema_arns = (Arns.parse(map['SchemaArns']) unless map['SchemaArns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Arns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListAttachedIndices
    class ListAttachedIndices
      def self.parse(http_resp)
        data = Types::ListAttachedIndicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.index_attachments = (IndexAttachmentList.parse(map['IndexAttachments']) unless map['IndexAttachments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListDevelopmentSchemaArns
    class ListDevelopmentSchemaArns
      def self.parse(http_resp)
        data = Types::ListDevelopmentSchemaArnsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.schema_arns = (Arns.parse(map['SchemaArns']) unless map['SchemaArns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListDirectories
    class ListDirectories
      def self.parse(http_resp)
        data = Types::ListDirectoriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.directories = (DirectoryList.parse(map['Directories']) unless map['Directories'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DirectoryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Directory.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFacetAttributes
    class ListFacetAttributes
      def self.parse(http_resp)
        data = Types::ListFacetAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attributes = (FacetAttributeList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FacetAttributeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << FacetAttribute.parse(value) unless value.nil?
        end
        data
      end
    end

    class FacetAttribute
      def self.parse(map)
        data = Types::FacetAttribute.new
        data.name = map['Name']
        data.attribute_definition = (FacetAttributeDefinition.parse(map['AttributeDefinition']) unless map['AttributeDefinition'].nil?)
        data.attribute_reference = (FacetAttributeReference.parse(map['AttributeReference']) unless map['AttributeReference'].nil?)
        data.required_behavior = map['RequiredBehavior']
        return data
      end
    end

    class FacetAttributeReference
      def self.parse(map)
        data = Types::FacetAttributeReference.new
        data.target_facet_name = map['TargetFacetName']
        data.target_attribute_name = map['TargetAttributeName']
        return data
      end
    end

    class FacetAttributeDefinition
      def self.parse(map)
        data = Types::FacetAttributeDefinition.new
        data.type = map['Type']
        data.default_value = (TypedAttributeValue.parse(map['DefaultValue']) unless map['DefaultValue'].nil?)
        data.is_immutable = map['IsImmutable']
        data.rules = (RuleMap.parse(map['Rules']) unless map['Rules'].nil?)
        return data
      end
    end

    class RuleMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Rule.parse(value) unless value.nil?
        end
        data
      end
    end

    class Rule
      def self.parse(map)
        data = Types::Rule.new
        data.type = map['Type']
        data.parameters = (RuleParameterMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class RuleParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFacetNames
    class ListFacetNames
      def self.parse(http_resp)
        data = Types::ListFacetNamesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.facet_names = (FacetNameList.parse(map['FacetNames']) unless map['FacetNames'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FacetNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListIncomingTypedLinks
    class ListIncomingTypedLinks
      def self.parse(http_resp)
        data = Types::ListIncomingTypedLinksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.link_specifiers = (TypedLinkSpecifierList.parse(map['LinkSpecifiers']) unless map['LinkSpecifiers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListIndex
    class ListIndex
      def self.parse(http_resp)
        data = Types::ListIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.index_attachments = (IndexAttachmentList.parse(map['IndexAttachments']) unless map['IndexAttachments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListManagedSchemaArns
    class ListManagedSchemaArns
      def self.parse(http_resp)
        data = Types::ListManagedSchemaArnsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.schema_arns = (Arns.parse(map['SchemaArns']) unless map['SchemaArns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListObjectAttributes
    class ListObjectAttributes
      def self.parse(http_resp)
        data = Types::ListObjectAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attributes = (AttributeKeyAndValueList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListObjectChildren
    class ListObjectChildren
      def self.parse(http_resp)
        data = Types::ListObjectChildrenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.children = (LinkNameToObjectIdentifierMap.parse(map['Children']) unless map['Children'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListObjectParentPaths
    class ListObjectParentPaths
      def self.parse(http_resp)
        data = Types::ListObjectParentPathsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.path_to_object_identifiers_list = (PathToObjectIdentifiersList.parse(map['PathToObjectIdentifiersList']) unless map['PathToObjectIdentifiersList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListObjectParents
    class ListObjectParents
      def self.parse(http_resp)
        data = Types::ListObjectParentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.parents = (ObjectIdentifierToLinkNameMap.parse(map['Parents']) unless map['Parents'].nil?)
        data.next_token = map['NextToken']
        data.parent_links = (ObjectIdentifierAndLinkNameList.parse(map['ParentLinks']) unless map['ParentLinks'].nil?)
        data
      end
    end

    class ObjectIdentifierToLinkNameMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for CannotListParentOfRootException
    class CannotListParentOfRootException
      def self.parse(http_resp)
        data = Types::CannotListParentOfRootException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListObjectPolicies
    class ListObjectPolicies
      def self.parse(http_resp)
        data = Types::ListObjectPoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attached_policy_ids = (ObjectIdentifierList.parse(map['AttachedPolicyIds']) unless map['AttachedPolicyIds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListOutgoingTypedLinks
    class ListOutgoingTypedLinks
      def self.parse(http_resp)
        data = Types::ListOutgoingTypedLinksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.typed_link_specifiers = (TypedLinkSpecifierList.parse(map['TypedLinkSpecifiers']) unless map['TypedLinkSpecifiers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListPolicyAttachments
    class ListPolicyAttachments
      def self.parse(http_resp)
        data = Types::ListPolicyAttachmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.object_identifiers = (ObjectIdentifierList.parse(map['ObjectIdentifiers']) unless map['ObjectIdentifiers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListPublishedSchemaArns
    class ListPublishedSchemaArns
      def self.parse(http_resp)
        data = Types::ListPublishedSchemaArnsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.schema_arns = (Arns.parse(map['SchemaArns']) unless map['SchemaArns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for InvalidTaggingRequestException
    class InvalidTaggingRequestException
      def self.parse(http_resp)
        data = Types::InvalidTaggingRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListTypedLinkFacetAttributes
    class ListTypedLinkFacetAttributes
      def self.parse(http_resp)
        data = Types::ListTypedLinkFacetAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attributes = (TypedLinkAttributeDefinitionList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TypedLinkAttributeDefinitionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TypedLinkAttributeDefinition.parse(value) unless value.nil?
        end
        data
      end
    end

    class TypedLinkAttributeDefinition
      def self.parse(map)
        data = Types::TypedLinkAttributeDefinition.new
        data.name = map['Name']
        data.type = map['Type']
        data.default_value = (TypedAttributeValue.parse(map['DefaultValue']) unless map['DefaultValue'].nil?)
        data.is_immutable = map['IsImmutable']
        data.rules = (RuleMap.parse(map['Rules']) unless map['Rules'].nil?)
        data.required_behavior = map['RequiredBehavior']
        return data
      end
    end

    # Operation Parser for ListTypedLinkFacetNames
    class ListTypedLinkFacetNames
      def self.parse(http_resp)
        data = Types::ListTypedLinkFacetNamesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.facet_names = (TypedLinkNameList.parse(map['FacetNames']) unless map['FacetNames'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TypedLinkNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for LookupPolicy
    class LookupPolicy
      def self.parse(http_resp)
        data = Types::LookupPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_to_path_list = (PolicyToPathList.parse(map['PolicyToPathList']) unless map['PolicyToPathList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for PublishSchema
    class PublishSchema
      def self.parse(http_resp)
        data = Types::PublishSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.published_schema_arn = map['PublishedSchemaArn']
        data
      end
    end

    # Error Parser for SchemaAlreadyPublishedException
    class SchemaAlreadyPublishedException
      def self.parse(http_resp)
        data = Types::SchemaAlreadyPublishedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutSchemaFromJson
    class PutSchemaFromJson
      def self.parse(http_resp)
        data = Types::PutSchemaFromJsonOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Error Parser for InvalidSchemaDocException
    class InvalidSchemaDocException
      def self.parse(http_resp)
        data = Types::InvalidSchemaDocException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RemoveFacetFromObject
    class RemoveFacetFromObject
      def self.parse(http_resp)
        data = Types::RemoveFacetFromObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFacet
    class UpdateFacet
      def self.parse(http_resp)
        data = Types::UpdateFacetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidFacetUpdateException
    class InvalidFacetUpdateException
      def self.parse(http_resp)
        data = Types::InvalidFacetUpdateException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateLinkAttributes
    class UpdateLinkAttributes
      def self.parse(http_resp)
        data = Types::UpdateLinkAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateObjectAttributes
    class UpdateObjectAttributes
      def self.parse(http_resp)
        data = Types::UpdateObjectAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.object_identifier = map['ObjectIdentifier']
        data
      end
    end

    # Operation Parser for UpdateSchema
    class UpdateSchema
      def self.parse(http_resp)
        data = Types::UpdateSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.schema_arn = map['SchemaArn']
        data
      end
    end

    # Operation Parser for UpdateTypedLinkFacet
    class UpdateTypedLinkFacet
      def self.parse(http_resp)
        data = Types::UpdateTypedLinkFacetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpgradeAppliedSchema
    class UpgradeAppliedSchema
      def self.parse(http_resp)
        data = Types::UpgradeAppliedSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.upgraded_schema_arn = map['UpgradedSchemaArn']
        data.directory_arn = map['DirectoryArn']
        data
      end
    end

    # Error Parser for IncompatibleSchemaException
    class IncompatibleSchemaException
      def self.parse(http_resp)
        data = Types::IncompatibleSchemaException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpgradePublishedSchema
    class UpgradePublishedSchema
      def self.parse(http_resp)
        data = Types::UpgradePublishedSchemaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.upgraded_schema_arn = map['UpgradedSchemaArn']
        data
      end
    end
  end
end
