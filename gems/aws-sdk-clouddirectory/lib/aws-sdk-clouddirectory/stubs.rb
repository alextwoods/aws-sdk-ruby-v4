# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudDirectory
  module Stubs

    # Operation Stubber for AddFacetToObject
    class AddFacetToObject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ApplySchema
    class ApplySchema
      def self.default(visited=[])
        {
          applied_schema_arn: 'applied_schema_arn',
          directory_arn: 'directory_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppliedSchemaArn'] = stub[:applied_schema_arn] unless stub[:applied_schema_arn].nil?
        data['DirectoryArn'] = stub[:directory_arn] unless stub[:directory_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AttachObject
    class AttachObject
      def self.default(visited=[])
        {
          attached_object_identifier: 'attached_object_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AttachedObjectIdentifier'] = stub[:attached_object_identifier] unless stub[:attached_object_identifier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AttachPolicy
    class AttachPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachToIndex
    class AttachToIndex
      def self.default(visited=[])
        {
          attached_object_identifier: 'attached_object_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AttachedObjectIdentifier'] = stub[:attached_object_identifier] unless stub[:attached_object_identifier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AttachTypedLink
    class AttachTypedLink
      def self.default(visited=[])
        {
          typed_link_specifier: TypedLinkSpecifier.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TypedLinkSpecifier'] = Stubs::TypedLinkSpecifier.stub(stub[:typed_link_specifier]) unless stub[:typed_link_specifier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TypedLinkSpecifier
    class TypedLinkSpecifier
      def self.default(visited=[])
        return nil if visited.include?('TypedLinkSpecifier')
        visited = visited + ['TypedLinkSpecifier']
        {
          typed_link_facet: TypedLinkSchemaAndFacetName.default(visited),
          source_object_reference: ObjectReference.default(visited),
          target_object_reference: ObjectReference.default(visited),
          identity_attribute_values: AttributeNameAndValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TypedLinkSpecifier.new
        data = {}
        data['TypedLinkFacet'] = Stubs::TypedLinkSchemaAndFacetName.stub(stub[:typed_link_facet]) unless stub[:typed_link_facet].nil?
        data['SourceObjectReference'] = Stubs::ObjectReference.stub(stub[:source_object_reference]) unless stub[:source_object_reference].nil?
        data['TargetObjectReference'] = Stubs::ObjectReference.stub(stub[:target_object_reference]) unless stub[:target_object_reference].nil?
        data['IdentityAttributeValues'] = Stubs::AttributeNameAndValueList.stub(stub[:identity_attribute_values]) unless stub[:identity_attribute_values].nil?
        data
      end
    end

    # List Stubber for AttributeNameAndValueList
    class AttributeNameAndValueList
      def self.default(visited=[])
        return nil if visited.include?('AttributeNameAndValueList')
        visited = visited + ['AttributeNameAndValueList']
        [
          AttributeNameAndValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttributeNameAndValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttributeNameAndValue
    class AttributeNameAndValue
      def self.default(visited=[])
        return nil if visited.include?('AttributeNameAndValue')
        visited = visited + ['AttributeNameAndValue']
        {
          attribute_name: 'attribute_name',
          value: TypedAttributeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeNameAndValue.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['Value'] = Stubs::TypedAttributeValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Union Stubber for TypedAttributeValue
    class TypedAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('TypedAttributeValue')
        visited = visited + ['TypedAttributeValue']
        {
          string_value: 'string_value',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::TypedAttributeValue::StringValue
          data['StringValue'] = stub.__getobj__
        when Types::TypedAttributeValue::BinaryValue
          data['BinaryValue'] = Base64::encode64(stub.__getobj__)
        when Types::TypedAttributeValue::BooleanValue
          data['BooleanValue'] = stub.__getobj__
        when Types::TypedAttributeValue::NumberValue
          data['NumberValue'] = stub.__getobj__
        when Types::TypedAttributeValue::DatetimeValue
          data['DatetimeValue'] = Hearth::TimeHelper.to_epoch_seconds(stub.__getobj__).to_i
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TypedAttributeValue"
        end

        data
      end
    end

    # Structure Stubber for ObjectReference
    class ObjectReference
      def self.default(visited=[])
        return nil if visited.include?('ObjectReference')
        visited = visited + ['ObjectReference']
        {
          selector: 'selector',
        }
      end

      def self.stub(stub)
        stub ||= Types::ObjectReference.new
        data = {}
        data['Selector'] = stub[:selector] unless stub[:selector].nil?
        data
      end
    end

    # Structure Stubber for TypedLinkSchemaAndFacetName
    class TypedLinkSchemaAndFacetName
      def self.default(visited=[])
        return nil if visited.include?('TypedLinkSchemaAndFacetName')
        visited = visited + ['TypedLinkSchemaAndFacetName']
        {
          schema_arn: 'schema_arn',
          typed_link_name: 'typed_link_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TypedLinkSchemaAndFacetName.new
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['TypedLinkName'] = stub[:typed_link_name] unless stub[:typed_link_name].nil?
        data
      end
    end

    # Operation Stubber for BatchRead
    class BatchRead
      def self.default(visited=[])
        {
          responses: BatchReadOperationResponseList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Responses'] = Stubs::BatchReadOperationResponseList.stub(stub[:responses]) unless stub[:responses].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchReadOperationResponseList
    class BatchReadOperationResponseList
      def self.default(visited=[])
        return nil if visited.include?('BatchReadOperationResponseList')
        visited = visited + ['BatchReadOperationResponseList']
        [
          BatchReadOperationResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchReadOperationResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchReadOperationResponse
    class BatchReadOperationResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchReadOperationResponse')
        visited = visited + ['BatchReadOperationResponse']
        {
          successful_response: BatchReadSuccessfulResponse.default(visited),
          exception_response: BatchReadException.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchReadOperationResponse.new
        data = {}
        data['SuccessfulResponse'] = Stubs::BatchReadSuccessfulResponse.stub(stub[:successful_response]) unless stub[:successful_response].nil?
        data['ExceptionResponse'] = Stubs::BatchReadException.stub(stub[:exception_response]) unless stub[:exception_response].nil?
        data
      end
    end

    # Structure Stubber for BatchReadException
    class BatchReadException
      def self.default(visited=[])
        return nil if visited.include?('BatchReadException')
        visited = visited + ['BatchReadException']
        {
          type: 'type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchReadException.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for BatchReadSuccessfulResponse
    class BatchReadSuccessfulResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchReadSuccessfulResponse')
        visited = visited + ['BatchReadSuccessfulResponse']
        {
          list_object_attributes: BatchListObjectAttributesResponse.default(visited),
          list_object_children: BatchListObjectChildrenResponse.default(visited),
          get_object_information: BatchGetObjectInformationResponse.default(visited),
          get_object_attributes: BatchGetObjectAttributesResponse.default(visited),
          list_attached_indices: BatchListAttachedIndicesResponse.default(visited),
          list_object_parent_paths: BatchListObjectParentPathsResponse.default(visited),
          list_object_policies: BatchListObjectPoliciesResponse.default(visited),
          list_policy_attachments: BatchListPolicyAttachmentsResponse.default(visited),
          lookup_policy: BatchLookupPolicyResponse.default(visited),
          list_index: BatchListIndexResponse.default(visited),
          list_outgoing_typed_links: BatchListOutgoingTypedLinksResponse.default(visited),
          list_incoming_typed_links: BatchListIncomingTypedLinksResponse.default(visited),
          get_link_attributes: BatchGetLinkAttributesResponse.default(visited),
          list_object_parents: BatchListObjectParentsResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchReadSuccessfulResponse.new
        data = {}
        data['ListObjectAttributes'] = Stubs::BatchListObjectAttributesResponse.stub(stub[:list_object_attributes]) unless stub[:list_object_attributes].nil?
        data['ListObjectChildren'] = Stubs::BatchListObjectChildrenResponse.stub(stub[:list_object_children]) unless stub[:list_object_children].nil?
        data['GetObjectInformation'] = Stubs::BatchGetObjectInformationResponse.stub(stub[:get_object_information]) unless stub[:get_object_information].nil?
        data['GetObjectAttributes'] = Stubs::BatchGetObjectAttributesResponse.stub(stub[:get_object_attributes]) unless stub[:get_object_attributes].nil?
        data['ListAttachedIndices'] = Stubs::BatchListAttachedIndicesResponse.stub(stub[:list_attached_indices]) unless stub[:list_attached_indices].nil?
        data['ListObjectParentPaths'] = Stubs::BatchListObjectParentPathsResponse.stub(stub[:list_object_parent_paths]) unless stub[:list_object_parent_paths].nil?
        data['ListObjectPolicies'] = Stubs::BatchListObjectPoliciesResponse.stub(stub[:list_object_policies]) unless stub[:list_object_policies].nil?
        data['ListPolicyAttachments'] = Stubs::BatchListPolicyAttachmentsResponse.stub(stub[:list_policy_attachments]) unless stub[:list_policy_attachments].nil?
        data['LookupPolicy'] = Stubs::BatchLookupPolicyResponse.stub(stub[:lookup_policy]) unless stub[:lookup_policy].nil?
        data['ListIndex'] = Stubs::BatchListIndexResponse.stub(stub[:list_index]) unless stub[:list_index].nil?
        data['ListOutgoingTypedLinks'] = Stubs::BatchListOutgoingTypedLinksResponse.stub(stub[:list_outgoing_typed_links]) unless stub[:list_outgoing_typed_links].nil?
        data['ListIncomingTypedLinks'] = Stubs::BatchListIncomingTypedLinksResponse.stub(stub[:list_incoming_typed_links]) unless stub[:list_incoming_typed_links].nil?
        data['GetLinkAttributes'] = Stubs::BatchGetLinkAttributesResponse.stub(stub[:get_link_attributes]) unless stub[:get_link_attributes].nil?
        data['ListObjectParents'] = Stubs::BatchListObjectParentsResponse.stub(stub[:list_object_parents]) unless stub[:list_object_parents].nil?
        data
      end
    end

    # Structure Stubber for BatchListObjectParentsResponse
    class BatchListObjectParentsResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListObjectParentsResponse')
        visited = visited + ['BatchListObjectParentsResponse']
        {
          parent_links: ObjectIdentifierAndLinkNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListObjectParentsResponse.new
        data = {}
        data['ParentLinks'] = Stubs::ObjectIdentifierAndLinkNameList.stub(stub[:parent_links]) unless stub[:parent_links].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ObjectIdentifierAndLinkNameList
    class ObjectIdentifierAndLinkNameList
      def self.default(visited=[])
        return nil if visited.include?('ObjectIdentifierAndLinkNameList')
        visited = visited + ['ObjectIdentifierAndLinkNameList']
        [
          ObjectIdentifierAndLinkNameTuple.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ObjectIdentifierAndLinkNameTuple.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ObjectIdentifierAndLinkNameTuple
    class ObjectIdentifierAndLinkNameTuple
      def self.default(visited=[])
        return nil if visited.include?('ObjectIdentifierAndLinkNameTuple')
        visited = visited + ['ObjectIdentifierAndLinkNameTuple']
        {
          object_identifier: 'object_identifier',
          link_name: 'link_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ObjectIdentifierAndLinkNameTuple.new
        data = {}
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        data['LinkName'] = stub[:link_name] unless stub[:link_name].nil?
        data
      end
    end

    # Structure Stubber for BatchGetLinkAttributesResponse
    class BatchGetLinkAttributesResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchGetLinkAttributesResponse')
        visited = visited + ['BatchGetLinkAttributesResponse']
        {
          attributes: AttributeKeyAndValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetLinkAttributesResponse.new
        data = {}
        data['Attributes'] = Stubs::AttributeKeyAndValueList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # List Stubber for AttributeKeyAndValueList
    class AttributeKeyAndValueList
      def self.default(visited=[])
        return nil if visited.include?('AttributeKeyAndValueList')
        visited = visited + ['AttributeKeyAndValueList']
        [
          AttributeKeyAndValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttributeKeyAndValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttributeKeyAndValue
    class AttributeKeyAndValue
      def self.default(visited=[])
        return nil if visited.include?('AttributeKeyAndValue')
        visited = visited + ['AttributeKeyAndValue']
        {
          key: AttributeKey.default(visited),
          value: TypedAttributeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeKeyAndValue.new
        data = {}
        data['Key'] = Stubs::AttributeKey.stub(stub[:key]) unless stub[:key].nil?
        data['Value'] = Stubs::TypedAttributeValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AttributeKey
    class AttributeKey
      def self.default(visited=[])
        return nil if visited.include?('AttributeKey')
        visited = visited + ['AttributeKey']
        {
          schema_arn: 'schema_arn',
          facet_name: 'facet_name',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeKey.new
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['FacetName'] = stub[:facet_name] unless stub[:facet_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for BatchListIncomingTypedLinksResponse
    class BatchListIncomingTypedLinksResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListIncomingTypedLinksResponse')
        visited = visited + ['BatchListIncomingTypedLinksResponse']
        {
          link_specifiers: TypedLinkSpecifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListIncomingTypedLinksResponse.new
        data = {}
        data['LinkSpecifiers'] = Stubs::TypedLinkSpecifierList.stub(stub[:link_specifiers]) unless stub[:link_specifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for TypedLinkSpecifierList
    class TypedLinkSpecifierList
      def self.default(visited=[])
        return nil if visited.include?('TypedLinkSpecifierList')
        visited = visited + ['TypedLinkSpecifierList']
        [
          TypedLinkSpecifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TypedLinkSpecifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchListOutgoingTypedLinksResponse
    class BatchListOutgoingTypedLinksResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListOutgoingTypedLinksResponse')
        visited = visited + ['BatchListOutgoingTypedLinksResponse']
        {
          typed_link_specifiers: TypedLinkSpecifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListOutgoingTypedLinksResponse.new
        data = {}
        data['TypedLinkSpecifiers'] = Stubs::TypedLinkSpecifierList.stub(stub[:typed_link_specifiers]) unless stub[:typed_link_specifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # Structure Stubber for BatchListIndexResponse
    class BatchListIndexResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListIndexResponse')
        visited = visited + ['BatchListIndexResponse']
        {
          index_attachments: IndexAttachmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListIndexResponse.new
        data = {}
        data['IndexAttachments'] = Stubs::IndexAttachmentList.stub(stub[:index_attachments]) unless stub[:index_attachments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for IndexAttachmentList
    class IndexAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('IndexAttachmentList')
        visited = visited + ['IndexAttachmentList']
        [
          IndexAttachment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IndexAttachment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IndexAttachment
    class IndexAttachment
      def self.default(visited=[])
        return nil if visited.include?('IndexAttachment')
        visited = visited + ['IndexAttachment']
        {
          indexed_attributes: AttributeKeyAndValueList.default(visited),
          object_identifier: 'object_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::IndexAttachment.new
        data = {}
        data['IndexedAttributes'] = Stubs::AttributeKeyAndValueList.stub(stub[:indexed_attributes]) unless stub[:indexed_attributes].nil?
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        data
      end
    end

    # Structure Stubber for BatchLookupPolicyResponse
    class BatchLookupPolicyResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchLookupPolicyResponse')
        visited = visited + ['BatchLookupPolicyResponse']
        {
          policy_to_path_list: PolicyToPathList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchLookupPolicyResponse.new
        data = {}
        data['PolicyToPathList'] = Stubs::PolicyToPathList.stub(stub[:policy_to_path_list]) unless stub[:policy_to_path_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for PolicyToPathList
    class PolicyToPathList
      def self.default(visited=[])
        return nil if visited.include?('PolicyToPathList')
        visited = visited + ['PolicyToPathList']
        [
          PolicyToPath.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PolicyToPath.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PolicyToPath
    class PolicyToPath
      def self.default(visited=[])
        return nil if visited.include?('PolicyToPath')
        visited = visited + ['PolicyToPath']
        {
          path: 'path',
          policies: PolicyAttachmentList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyToPath.new
        data = {}
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Policies'] = Stubs::PolicyAttachmentList.stub(stub[:policies]) unless stub[:policies].nil?
        data
      end
    end

    # List Stubber for PolicyAttachmentList
    class PolicyAttachmentList
      def self.default(visited=[])
        return nil if visited.include?('PolicyAttachmentList')
        visited = visited + ['PolicyAttachmentList']
        [
          PolicyAttachment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PolicyAttachment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PolicyAttachment
    class PolicyAttachment
      def self.default(visited=[])
        return nil if visited.include?('PolicyAttachment')
        visited = visited + ['PolicyAttachment']
        {
          policy_id: 'policy_id',
          object_identifier: 'object_identifier',
          policy_type: 'policy_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyAttachment.new
        data = {}
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        data['PolicyType'] = stub[:policy_type] unless stub[:policy_type].nil?
        data
      end
    end

    # Structure Stubber for BatchListPolicyAttachmentsResponse
    class BatchListPolicyAttachmentsResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListPolicyAttachmentsResponse')
        visited = visited + ['BatchListPolicyAttachmentsResponse']
        {
          object_identifiers: ObjectIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListPolicyAttachmentsResponse.new
        data = {}
        data['ObjectIdentifiers'] = Stubs::ObjectIdentifierList.stub(stub[:object_identifiers]) unless stub[:object_identifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ObjectIdentifierList
    class ObjectIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('ObjectIdentifierList')
        visited = visited + ['ObjectIdentifierList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchListObjectPoliciesResponse
    class BatchListObjectPoliciesResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListObjectPoliciesResponse')
        visited = visited + ['BatchListObjectPoliciesResponse']
        {
          attached_policy_ids: ObjectIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListObjectPoliciesResponse.new
        data = {}
        data['AttachedPolicyIds'] = Stubs::ObjectIdentifierList.stub(stub[:attached_policy_ids]) unless stub[:attached_policy_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # Structure Stubber for BatchListObjectParentPathsResponse
    class BatchListObjectParentPathsResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListObjectParentPathsResponse')
        visited = visited + ['BatchListObjectParentPathsResponse']
        {
          path_to_object_identifiers_list: PathToObjectIdentifiersList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListObjectParentPathsResponse.new
        data = {}
        data['PathToObjectIdentifiersList'] = Stubs::PathToObjectIdentifiersList.stub(stub[:path_to_object_identifiers_list]) unless stub[:path_to_object_identifiers_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for PathToObjectIdentifiersList
    class PathToObjectIdentifiersList
      def self.default(visited=[])
        return nil if visited.include?('PathToObjectIdentifiersList')
        visited = visited + ['PathToObjectIdentifiersList']
        [
          PathToObjectIdentifiers.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PathToObjectIdentifiers.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PathToObjectIdentifiers
    class PathToObjectIdentifiers
      def self.default(visited=[])
        return nil if visited.include?('PathToObjectIdentifiers')
        visited = visited + ['PathToObjectIdentifiers']
        {
          path: 'path',
          object_identifiers: ObjectIdentifierList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PathToObjectIdentifiers.new
        data = {}
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['ObjectIdentifiers'] = Stubs::ObjectIdentifierList.stub(stub[:object_identifiers]) unless stub[:object_identifiers].nil?
        data
      end
    end

    # Structure Stubber for BatchListAttachedIndicesResponse
    class BatchListAttachedIndicesResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListAttachedIndicesResponse')
        visited = visited + ['BatchListAttachedIndicesResponse']
        {
          index_attachments: IndexAttachmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListAttachedIndicesResponse.new
        data = {}
        data['IndexAttachments'] = Stubs::IndexAttachmentList.stub(stub[:index_attachments]) unless stub[:index_attachments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # Structure Stubber for BatchGetObjectAttributesResponse
    class BatchGetObjectAttributesResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchGetObjectAttributesResponse')
        visited = visited + ['BatchGetObjectAttributesResponse']
        {
          attributes: AttributeKeyAndValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetObjectAttributesResponse.new
        data = {}
        data['Attributes'] = Stubs::AttributeKeyAndValueList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Structure Stubber for BatchGetObjectInformationResponse
    class BatchGetObjectInformationResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchGetObjectInformationResponse')
        visited = visited + ['BatchGetObjectInformationResponse']
        {
          schema_facets: SchemaFacetList.default(visited),
          object_identifier: 'object_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetObjectInformationResponse.new
        data = {}
        data['SchemaFacets'] = Stubs::SchemaFacetList.stub(stub[:schema_facets]) unless stub[:schema_facets].nil?
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        data
      end
    end

    # List Stubber for SchemaFacetList
    class SchemaFacetList
      def self.default(visited=[])
        return nil if visited.include?('SchemaFacetList')
        visited = visited + ['SchemaFacetList']
        [
          SchemaFacet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SchemaFacet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaFacet
    class SchemaFacet
      def self.default(visited=[])
        return nil if visited.include?('SchemaFacet')
        visited = visited + ['SchemaFacet']
        {
          schema_arn: 'schema_arn',
          facet_name: 'facet_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaFacet.new
        data = {}
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['FacetName'] = stub[:facet_name] unless stub[:facet_name].nil?
        data
      end
    end

    # Structure Stubber for BatchListObjectChildrenResponse
    class BatchListObjectChildrenResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListObjectChildrenResponse')
        visited = visited + ['BatchListObjectChildrenResponse']
        {
          children: LinkNameToObjectIdentifierMap.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListObjectChildrenResponse.new
        data = {}
        data['Children'] = Stubs::LinkNameToObjectIdentifierMap.stub(stub[:children]) unless stub[:children].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # Map Stubber for LinkNameToObjectIdentifierMap
    class LinkNameToObjectIdentifierMap
      def self.default(visited=[])
        return nil if visited.include?('LinkNameToObjectIdentifierMap')
        visited = visited + ['LinkNameToObjectIdentifierMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchListObjectAttributesResponse
    class BatchListObjectAttributesResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchListObjectAttributesResponse')
        visited = visited + ['BatchListObjectAttributesResponse']
        {
          attributes: AttributeKeyAndValueList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchListObjectAttributesResponse.new
        data = {}
        data['Attributes'] = Stubs::AttributeKeyAndValueList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # Operation Stubber for BatchWrite
    class BatchWrite
      def self.default(visited=[])
        {
          responses: BatchWriteOperationResponseList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Responses'] = Stubs::BatchWriteOperationResponseList.stub(stub[:responses]) unless stub[:responses].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchWriteOperationResponseList
    class BatchWriteOperationResponseList
      def self.default(visited=[])
        return nil if visited.include?('BatchWriteOperationResponseList')
        visited = visited + ['BatchWriteOperationResponseList']
        [
          BatchWriteOperationResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchWriteOperationResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchWriteOperationResponse
    class BatchWriteOperationResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchWriteOperationResponse')
        visited = visited + ['BatchWriteOperationResponse']
        {
          create_object: BatchCreateObjectResponse.default(visited),
          attach_object: BatchAttachObjectResponse.default(visited),
          detach_object: BatchDetachObjectResponse.default(visited),
          update_object_attributes: BatchUpdateObjectAttributesResponse.default(visited),
          delete_object: BatchDeleteObjectResponse.default(visited),
          add_facet_to_object: BatchAddFacetToObjectResponse.default(visited),
          remove_facet_from_object: BatchRemoveFacetFromObjectResponse.default(visited),
          attach_policy: BatchAttachPolicyResponse.default(visited),
          detach_policy: BatchDetachPolicyResponse.default(visited),
          create_index: BatchCreateIndexResponse.default(visited),
          attach_to_index: BatchAttachToIndexResponse.default(visited),
          detach_from_index: BatchDetachFromIndexResponse.default(visited),
          attach_typed_link: BatchAttachTypedLinkResponse.default(visited),
          detach_typed_link: BatchDetachTypedLinkResponse.default(visited),
          update_link_attributes: BatchUpdateLinkAttributesResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchWriteOperationResponse.new
        data = {}
        data['CreateObject'] = Stubs::BatchCreateObjectResponse.stub(stub[:create_object]) unless stub[:create_object].nil?
        data['AttachObject'] = Stubs::BatchAttachObjectResponse.stub(stub[:attach_object]) unless stub[:attach_object].nil?
        data['DetachObject'] = Stubs::BatchDetachObjectResponse.stub(stub[:detach_object]) unless stub[:detach_object].nil?
        data['UpdateObjectAttributes'] = Stubs::BatchUpdateObjectAttributesResponse.stub(stub[:update_object_attributes]) unless stub[:update_object_attributes].nil?
        data['DeleteObject'] = Stubs::BatchDeleteObjectResponse.stub(stub[:delete_object]) unless stub[:delete_object].nil?
        data['AddFacetToObject'] = Stubs::BatchAddFacetToObjectResponse.stub(stub[:add_facet_to_object]) unless stub[:add_facet_to_object].nil?
        data['RemoveFacetFromObject'] = Stubs::BatchRemoveFacetFromObjectResponse.stub(stub[:remove_facet_from_object]) unless stub[:remove_facet_from_object].nil?
        data['AttachPolicy'] = Stubs::BatchAttachPolicyResponse.stub(stub[:attach_policy]) unless stub[:attach_policy].nil?
        data['DetachPolicy'] = Stubs::BatchDetachPolicyResponse.stub(stub[:detach_policy]) unless stub[:detach_policy].nil?
        data['CreateIndex'] = Stubs::BatchCreateIndexResponse.stub(stub[:create_index]) unless stub[:create_index].nil?
        data['AttachToIndex'] = Stubs::BatchAttachToIndexResponse.stub(stub[:attach_to_index]) unless stub[:attach_to_index].nil?
        data['DetachFromIndex'] = Stubs::BatchDetachFromIndexResponse.stub(stub[:detach_from_index]) unless stub[:detach_from_index].nil?
        data['AttachTypedLink'] = Stubs::BatchAttachTypedLinkResponse.stub(stub[:attach_typed_link]) unless stub[:attach_typed_link].nil?
        data['DetachTypedLink'] = Stubs::BatchDetachTypedLinkResponse.stub(stub[:detach_typed_link]) unless stub[:detach_typed_link].nil?
        data['UpdateLinkAttributes'] = Stubs::BatchUpdateLinkAttributesResponse.stub(stub[:update_link_attributes]) unless stub[:update_link_attributes].nil?
        data
      end
    end

    # Structure Stubber for BatchUpdateLinkAttributesResponse
    class BatchUpdateLinkAttributesResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdateLinkAttributesResponse')
        visited = visited + ['BatchUpdateLinkAttributesResponse']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchUpdateLinkAttributesResponse.new
        data = {}
        data
      end
    end

    # Structure Stubber for BatchDetachTypedLinkResponse
    class BatchDetachTypedLinkResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchDetachTypedLinkResponse')
        visited = visited + ['BatchDetachTypedLinkResponse']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDetachTypedLinkResponse.new
        data = {}
        data
      end
    end

    # Structure Stubber for BatchAttachTypedLinkResponse
    class BatchAttachTypedLinkResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchAttachTypedLinkResponse')
        visited = visited + ['BatchAttachTypedLinkResponse']
        {
          typed_link_specifier: TypedLinkSpecifier.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchAttachTypedLinkResponse.new
        data = {}
        data['TypedLinkSpecifier'] = Stubs::TypedLinkSpecifier.stub(stub[:typed_link_specifier]) unless stub[:typed_link_specifier].nil?
        data
      end
    end

    # Structure Stubber for BatchDetachFromIndexResponse
    class BatchDetachFromIndexResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchDetachFromIndexResponse')
        visited = visited + ['BatchDetachFromIndexResponse']
        {
          detached_object_identifier: 'detached_object_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDetachFromIndexResponse.new
        data = {}
        data['DetachedObjectIdentifier'] = stub[:detached_object_identifier] unless stub[:detached_object_identifier].nil?
        data
      end
    end

    # Structure Stubber for BatchAttachToIndexResponse
    class BatchAttachToIndexResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchAttachToIndexResponse')
        visited = visited + ['BatchAttachToIndexResponse']
        {
          attached_object_identifier: 'attached_object_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchAttachToIndexResponse.new
        data = {}
        data['AttachedObjectIdentifier'] = stub[:attached_object_identifier] unless stub[:attached_object_identifier].nil?
        data
      end
    end

    # Structure Stubber for BatchCreateIndexResponse
    class BatchCreateIndexResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateIndexResponse')
        visited = visited + ['BatchCreateIndexResponse']
        {
          object_identifier: 'object_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchCreateIndexResponse.new
        data = {}
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        data
      end
    end

    # Structure Stubber for BatchDetachPolicyResponse
    class BatchDetachPolicyResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchDetachPolicyResponse')
        visited = visited + ['BatchDetachPolicyResponse']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDetachPolicyResponse.new
        data = {}
        data
      end
    end

    # Structure Stubber for BatchAttachPolicyResponse
    class BatchAttachPolicyResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchAttachPolicyResponse')
        visited = visited + ['BatchAttachPolicyResponse']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchAttachPolicyResponse.new
        data = {}
        data
      end
    end

    # Structure Stubber for BatchRemoveFacetFromObjectResponse
    class BatchRemoveFacetFromObjectResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchRemoveFacetFromObjectResponse')
        visited = visited + ['BatchRemoveFacetFromObjectResponse']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchRemoveFacetFromObjectResponse.new
        data = {}
        data
      end
    end

    # Structure Stubber for BatchAddFacetToObjectResponse
    class BatchAddFacetToObjectResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchAddFacetToObjectResponse')
        visited = visited + ['BatchAddFacetToObjectResponse']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchAddFacetToObjectResponse.new
        data = {}
        data
      end
    end

    # Structure Stubber for BatchDeleteObjectResponse
    class BatchDeleteObjectResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteObjectResponse')
        visited = visited + ['BatchDeleteObjectResponse']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDeleteObjectResponse.new
        data = {}
        data
      end
    end

    # Structure Stubber for BatchUpdateObjectAttributesResponse
    class BatchUpdateObjectAttributesResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdateObjectAttributesResponse')
        visited = visited + ['BatchUpdateObjectAttributesResponse']
        {
          object_identifier: 'object_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchUpdateObjectAttributesResponse.new
        data = {}
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        data
      end
    end

    # Structure Stubber for BatchDetachObjectResponse
    class BatchDetachObjectResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchDetachObjectResponse')
        visited = visited + ['BatchDetachObjectResponse']
        {
          detached_object_identifier: 'detached_object_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDetachObjectResponse.new
        data = {}
        data['detachedObjectIdentifier'] = stub[:detached_object_identifier] unless stub[:detached_object_identifier].nil?
        data
      end
    end

    # Structure Stubber for BatchAttachObjectResponse
    class BatchAttachObjectResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchAttachObjectResponse')
        visited = visited + ['BatchAttachObjectResponse']
        {
          attached_object_identifier: 'attached_object_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchAttachObjectResponse.new
        data = {}
        data['attachedObjectIdentifier'] = stub[:attached_object_identifier] unless stub[:attached_object_identifier].nil?
        data
      end
    end

    # Structure Stubber for BatchCreateObjectResponse
    class BatchCreateObjectResponse
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateObjectResponse')
        visited = visited + ['BatchCreateObjectResponse']
        {
          object_identifier: 'object_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchCreateObjectResponse.new
        data = {}
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        data
      end
    end

    # Operation Stubber for CreateDirectory
    class CreateDirectory
      def self.default(visited=[])
        {
          directory_arn: 'directory_arn',
          name: 'name',
          object_identifier: 'object_identifier',
          applied_schema_arn: 'applied_schema_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DirectoryArn'] = stub[:directory_arn] unless stub[:directory_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        data['AppliedSchemaArn'] = stub[:applied_schema_arn] unless stub[:applied_schema_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFacet
    class CreateFacet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateIndex
    class CreateIndex
      def self.default(visited=[])
        {
          object_identifier: 'object_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateObject
    class CreateObject
      def self.default(visited=[])
        {
          object_identifier: 'object_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSchema
    class CreateSchema
      def self.default(visited=[])
        {
          schema_arn: 'schema_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTypedLinkFacet
    class CreateTypedLinkFacet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDirectory
    class DeleteDirectory
      def self.default(visited=[])
        {
          directory_arn: 'directory_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DirectoryArn'] = stub[:directory_arn] unless stub[:directory_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteFacet
    class DeleteFacet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteObject
    class DeleteObject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSchema
    class DeleteSchema
      def self.default(visited=[])
        {
          schema_arn: 'schema_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteTypedLinkFacet
    class DeleteTypedLinkFacet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachFromIndex
    class DetachFromIndex
      def self.default(visited=[])
        {
          detached_object_identifier: 'detached_object_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DetachedObjectIdentifier'] = stub[:detached_object_identifier] unless stub[:detached_object_identifier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DetachObject
    class DetachObject
      def self.default(visited=[])
        {
          detached_object_identifier: 'detached_object_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DetachedObjectIdentifier'] = stub[:detached_object_identifier] unless stub[:detached_object_identifier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DetachPolicy
    class DetachPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachTypedLink
    class DetachTypedLink
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableDirectory
    class DisableDirectory
      def self.default(visited=[])
        {
          directory_arn: 'directory_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DirectoryArn'] = stub[:directory_arn] unless stub[:directory_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for EnableDirectory
    class EnableDirectory
      def self.default(visited=[])
        {
          directory_arn: 'directory_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DirectoryArn'] = stub[:directory_arn] unless stub[:directory_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAppliedSchemaVersion
    class GetAppliedSchemaVersion
      def self.default(visited=[])
        {
          applied_schema_arn: 'applied_schema_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppliedSchemaArn'] = stub[:applied_schema_arn] unless stub[:applied_schema_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDirectory
    class GetDirectory
      def self.default(visited=[])
        {
          directory: Directory.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Directory'] = Stubs::Directory.stub(stub[:directory]) unless stub[:directory].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Directory
    class Directory
      def self.default(visited=[])
        return nil if visited.include?('Directory')
        visited = visited + ['Directory']
        {
          name: 'name',
          directory_arn: 'directory_arn',
          state: 'state',
          creation_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Directory.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DirectoryArn'] = stub[:directory_arn] unless stub[:directory_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data
      end
    end

    # Operation Stubber for GetFacet
    class GetFacet
      def self.default(visited=[])
        {
          facet: Facet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Facet'] = Stubs::Facet.stub(stub[:facet]) unless stub[:facet].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Facet
    class Facet
      def self.default(visited=[])
        return nil if visited.include?('Facet')
        visited = visited + ['Facet']
        {
          name: 'name',
          object_type: 'object_type',
          facet_style: 'facet_style',
        }
      end

      def self.stub(stub)
        stub ||= Types::Facet.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ObjectType'] = stub[:object_type] unless stub[:object_type].nil?
        data['FacetStyle'] = stub[:facet_style] unless stub[:facet_style].nil?
        data
      end
    end

    # Operation Stubber for GetLinkAttributes
    class GetLinkAttributes
      def self.default(visited=[])
        {
          attributes: AttributeKeyAndValueList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attributes'] = Stubs::AttributeKeyAndValueList.stub(stub[:attributes]) unless stub[:attributes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetObjectAttributes
    class GetObjectAttributes
      def self.default(visited=[])
        {
          attributes: AttributeKeyAndValueList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attributes'] = Stubs::AttributeKeyAndValueList.stub(stub[:attributes]) unless stub[:attributes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetObjectInformation
    class GetObjectInformation
      def self.default(visited=[])
        {
          schema_facets: SchemaFacetList.default(visited),
          object_identifier: 'object_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SchemaFacets'] = Stubs::SchemaFacetList.stub(stub[:schema_facets]) unless stub[:schema_facets].nil?
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSchemaAsJson
    class GetSchemaAsJson
      def self.default(visited=[])
        {
          name: 'name',
          document: 'document',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Document'] = stub[:document] unless stub[:document].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetTypedLinkFacetInformation
    class GetTypedLinkFacetInformation
      def self.default(visited=[])
        {
          identity_attribute_order: AttributeNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityAttributeOrder'] = Stubs::AttributeNameList.stub(stub[:identity_attribute_order]) unless stub[:identity_attribute_order].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AttributeNameList
    class AttributeNameList
      def self.default(visited=[])
        return nil if visited.include?('AttributeNameList')
        visited = visited + ['AttributeNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListAppliedSchemaArns
    class ListAppliedSchemaArns
      def self.default(visited=[])
        {
          schema_arns: Arns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SchemaArns'] = Stubs::Arns.stub(stub[:schema_arns]) unless stub[:schema_arns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Arns
    class Arns
      def self.default(visited=[])
        return nil if visited.include?('Arns')
        visited = visited + ['Arns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListAttachedIndices
    class ListAttachedIndices
      def self.default(visited=[])
        {
          index_attachments: IndexAttachmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IndexAttachments'] = Stubs::IndexAttachmentList.stub(stub[:index_attachments]) unless stub[:index_attachments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDevelopmentSchemaArns
    class ListDevelopmentSchemaArns
      def self.default(visited=[])
        {
          schema_arns: Arns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SchemaArns'] = Stubs::Arns.stub(stub[:schema_arns]) unless stub[:schema_arns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDirectories
    class ListDirectories
      def self.default(visited=[])
        {
          directories: DirectoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Directories'] = Stubs::DirectoryList.stub(stub[:directories]) unless stub[:directories].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DirectoryList
    class DirectoryList
      def self.default(visited=[])
        return nil if visited.include?('DirectoryList')
        visited = visited + ['DirectoryList']
        [
          Directory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Directory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFacetAttributes
    class ListFacetAttributes
      def self.default(visited=[])
        {
          attributes: FacetAttributeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attributes'] = Stubs::FacetAttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FacetAttributeList
    class FacetAttributeList
      def self.default(visited=[])
        return nil if visited.include?('FacetAttributeList')
        visited = visited + ['FacetAttributeList']
        [
          FacetAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FacetAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FacetAttribute
    class FacetAttribute
      def self.default(visited=[])
        return nil if visited.include?('FacetAttribute')
        visited = visited + ['FacetAttribute']
        {
          name: 'name',
          attribute_definition: FacetAttributeDefinition.default(visited),
          attribute_reference: FacetAttributeReference.default(visited),
          required_behavior: 'required_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::FacetAttribute.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['AttributeDefinition'] = Stubs::FacetAttributeDefinition.stub(stub[:attribute_definition]) unless stub[:attribute_definition].nil?
        data['AttributeReference'] = Stubs::FacetAttributeReference.stub(stub[:attribute_reference]) unless stub[:attribute_reference].nil?
        data['RequiredBehavior'] = stub[:required_behavior] unless stub[:required_behavior].nil?
        data
      end
    end

    # Structure Stubber for FacetAttributeReference
    class FacetAttributeReference
      def self.default(visited=[])
        return nil if visited.include?('FacetAttributeReference')
        visited = visited + ['FacetAttributeReference']
        {
          target_facet_name: 'target_facet_name',
          target_attribute_name: 'target_attribute_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::FacetAttributeReference.new
        data = {}
        data['TargetFacetName'] = stub[:target_facet_name] unless stub[:target_facet_name].nil?
        data['TargetAttributeName'] = stub[:target_attribute_name] unless stub[:target_attribute_name].nil?
        data
      end
    end

    # Structure Stubber for FacetAttributeDefinition
    class FacetAttributeDefinition
      def self.default(visited=[])
        return nil if visited.include?('FacetAttributeDefinition')
        visited = visited + ['FacetAttributeDefinition']
        {
          type: 'type',
          default_value: TypedAttributeValue.default(visited),
          is_immutable: false,
          rules: RuleMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FacetAttributeDefinition.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DefaultValue'] = Stubs::TypedAttributeValue.stub(stub[:default_value]) unless stub[:default_value].nil?
        data['IsImmutable'] = stub[:is_immutable] unless stub[:is_immutable].nil?
        data['Rules'] = Stubs::RuleMap.stub(stub[:rules]) unless stub[:rules].nil?
        data
      end
    end

    # Map Stubber for RuleMap
    class RuleMap
      def self.default(visited=[])
        return nil if visited.include?('RuleMap')
        visited = visited + ['RuleMap']
        {
          test_key: Rule.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::Rule.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          type: 'type',
          parameters: RuleParameterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Rule.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Parameters'] = Stubs::RuleParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Map Stubber for RuleParameterMap
    class RuleParameterMap
      def self.default(visited=[])
        return nil if visited.include?('RuleParameterMap')
        visited = visited + ['RuleParameterMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFacetNames
    class ListFacetNames
      def self.default(visited=[])
        {
          facet_names: FacetNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FacetNames'] = Stubs::FacetNameList.stub(stub[:facet_names]) unless stub[:facet_names].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FacetNameList
    class FacetNameList
      def self.default(visited=[])
        return nil if visited.include?('FacetNameList')
        visited = visited + ['FacetNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListIncomingTypedLinks
    class ListIncomingTypedLinks
      def self.default(visited=[])
        {
          link_specifiers: TypedLinkSpecifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LinkSpecifiers'] = Stubs::TypedLinkSpecifierList.stub(stub[:link_specifiers]) unless stub[:link_specifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListIndex
    class ListIndex
      def self.default(visited=[])
        {
          index_attachments: IndexAttachmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IndexAttachments'] = Stubs::IndexAttachmentList.stub(stub[:index_attachments]) unless stub[:index_attachments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListManagedSchemaArns
    class ListManagedSchemaArns
      def self.default(visited=[])
        {
          schema_arns: Arns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SchemaArns'] = Stubs::Arns.stub(stub[:schema_arns]) unless stub[:schema_arns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListObjectAttributes
    class ListObjectAttributes
      def self.default(visited=[])
        {
          attributes: AttributeKeyAndValueList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attributes'] = Stubs::AttributeKeyAndValueList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListObjectChildren
    class ListObjectChildren
      def self.default(visited=[])
        {
          children: LinkNameToObjectIdentifierMap.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Children'] = Stubs::LinkNameToObjectIdentifierMap.stub(stub[:children]) unless stub[:children].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListObjectParentPaths
    class ListObjectParentPaths
      def self.default(visited=[])
        {
          path_to_object_identifiers_list: PathToObjectIdentifiersList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PathToObjectIdentifiersList'] = Stubs::PathToObjectIdentifiersList.stub(stub[:path_to_object_identifiers_list]) unless stub[:path_to_object_identifiers_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListObjectParents
    class ListObjectParents
      def self.default(visited=[])
        {
          parents: ObjectIdentifierToLinkNameMap.default(visited),
          next_token: 'next_token',
          parent_links: ObjectIdentifierAndLinkNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Parents'] = Stubs::ObjectIdentifierToLinkNameMap.stub(stub[:parents]) unless stub[:parents].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ParentLinks'] = Stubs::ObjectIdentifierAndLinkNameList.stub(stub[:parent_links]) unless stub[:parent_links].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for ObjectIdentifierToLinkNameMap
    class ObjectIdentifierToLinkNameMap
      def self.default(visited=[])
        return nil if visited.include?('ObjectIdentifierToLinkNameMap')
        visited = visited + ['ObjectIdentifierToLinkNameMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListObjectPolicies
    class ListObjectPolicies
      def self.default(visited=[])
        {
          attached_policy_ids: ObjectIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AttachedPolicyIds'] = Stubs::ObjectIdentifierList.stub(stub[:attached_policy_ids]) unless stub[:attached_policy_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListOutgoingTypedLinks
    class ListOutgoingTypedLinks
      def self.default(visited=[])
        {
          typed_link_specifiers: TypedLinkSpecifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TypedLinkSpecifiers'] = Stubs::TypedLinkSpecifierList.stub(stub[:typed_link_specifiers]) unless stub[:typed_link_specifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListPolicyAttachments
    class ListPolicyAttachments
      def self.default(visited=[])
        {
          object_identifiers: ObjectIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ObjectIdentifiers'] = Stubs::ObjectIdentifierList.stub(stub[:object_identifiers]) unless stub[:object_identifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListPublishedSchemaArns
    class ListPublishedSchemaArns
      def self.default(visited=[])
        {
          schema_arns: Arns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SchemaArns'] = Stubs::Arns.stub(stub[:schema_arns]) unless stub[:schema_arns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListTypedLinkFacetAttributes
    class ListTypedLinkFacetAttributes
      def self.default(visited=[])
        {
          attributes: TypedLinkAttributeDefinitionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attributes'] = Stubs::TypedLinkAttributeDefinitionList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TypedLinkAttributeDefinitionList
    class TypedLinkAttributeDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('TypedLinkAttributeDefinitionList')
        visited = visited + ['TypedLinkAttributeDefinitionList']
        [
          TypedLinkAttributeDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TypedLinkAttributeDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TypedLinkAttributeDefinition
    class TypedLinkAttributeDefinition
      def self.default(visited=[])
        return nil if visited.include?('TypedLinkAttributeDefinition')
        visited = visited + ['TypedLinkAttributeDefinition']
        {
          name: 'name',
          type: 'type',
          default_value: TypedAttributeValue.default(visited),
          is_immutable: false,
          rules: RuleMap.default(visited),
          required_behavior: 'required_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::TypedLinkAttributeDefinition.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DefaultValue'] = Stubs::TypedAttributeValue.stub(stub[:default_value]) unless stub[:default_value].nil?
        data['IsImmutable'] = stub[:is_immutable] unless stub[:is_immutable].nil?
        data['Rules'] = Stubs::RuleMap.stub(stub[:rules]) unless stub[:rules].nil?
        data['RequiredBehavior'] = stub[:required_behavior] unless stub[:required_behavior].nil?
        data
      end
    end

    # Operation Stubber for ListTypedLinkFacetNames
    class ListTypedLinkFacetNames
      def self.default(visited=[])
        {
          facet_names: TypedLinkNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FacetNames'] = Stubs::TypedLinkNameList.stub(stub[:facet_names]) unless stub[:facet_names].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TypedLinkNameList
    class TypedLinkNameList
      def self.default(visited=[])
        return nil if visited.include?('TypedLinkNameList')
        visited = visited + ['TypedLinkNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for LookupPolicy
    class LookupPolicy
      def self.default(visited=[])
        {
          policy_to_path_list: PolicyToPathList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PolicyToPathList'] = Stubs::PolicyToPathList.stub(stub[:policy_to_path_list]) unless stub[:policy_to_path_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PublishSchema
    class PublishSchema
      def self.default(visited=[])
        {
          published_schema_arn: 'published_schema_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PublishedSchemaArn'] = stub[:published_schema_arn] unless stub[:published_schema_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutSchemaFromJson
    class PutSchemaFromJson
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveFacetFromObject
    class RemoveFacetFromObject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFacet
    class UpdateFacet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLinkAttributes
    class UpdateLinkAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateObjectAttributes
    class UpdateObjectAttributes
      def self.default(visited=[])
        {
          object_identifier: 'object_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSchema
    class UpdateSchema
      def self.default(visited=[])
        {
          schema_arn: 'schema_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SchemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTypedLinkFacet
    class UpdateTypedLinkFacet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpgradeAppliedSchema
    class UpgradeAppliedSchema
      def self.default(visited=[])
        {
          upgraded_schema_arn: 'upgraded_schema_arn',
          directory_arn: 'directory_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UpgradedSchemaArn'] = stub[:upgraded_schema_arn] unless stub[:upgraded_schema_arn].nil?
        data['DirectoryArn'] = stub[:directory_arn] unless stub[:directory_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpgradePublishedSchema
    class UpgradePublishedSchema
      def self.default(visited=[])
        {
          upgraded_schema_arn: 'upgraded_schema_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UpgradedSchemaArn'] = stub[:upgraded_schema_arn] unless stub[:upgraded_schema_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
