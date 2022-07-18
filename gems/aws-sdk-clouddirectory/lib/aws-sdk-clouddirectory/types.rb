# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudDirectory
  module Types

    # <p>Access denied or directory not found. Either you don't have permissions for this directory or the directory does not exist. Try calling <a>ListDirectories</a> and check your permissions.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_facet
    #   <p>Identifiers for the facet that you are adding to the object. See <a>SchemaFacet</a> for details.</p>
    #
    #   @return [SchemaFacet]
    #
    # @!attribute object_attribute_list
    #   <p>Attributes on the facet that you are adding to the object.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    # @!attribute object_reference
    #   <p>A reference to the object you are adding the specified facet to.</p>
    #
    #   @return [ObjectReference]
    #
    AddFacetToObjectInput = ::Struct.new(
      :directory_arn,
      :schema_facet,
      :object_attribute_list,
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AddFacetToObjectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute published_schema_arn
    #   <p>Published schema Amazon Resource Name (ARN) that needs to be copied. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         into which the schema is copied. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    ApplySchemaInput = ::Struct.new(
      :published_schema_arn,
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute applied_schema_arn
    #   <p>The applied schema ARN that is associated with the copied schema in the <a>Directory</a>. You can use this ARN to describe the schema information applied on
    #         this directory. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_arn
    #   <p>The ARN that is associated with the <a>Directory</a>. For more information,
    #         see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    ApplySchemaOutput = ::Struct.new(
      :applied_schema_arn,
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_reference
    #   <p>The parent object reference.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute child_reference
    #   <p>The child object reference to be attached to the object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute link_name
    #   <p>The link name with which the child object is attached to the parent.</p>
    #
    #   @return [String]
    #
    AttachObjectInput = ::Struct.new(
      :directory_arn,
      :parent_reference,
      :child_reference,
      :link_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attached_object_identifier
    #   <p>The attached <code>ObjectIdentifier</code>, which is the child
    #           <code>ObjectIdentifier</code>.</p>
    #
    #   @return [String]
    #
    AttachObjectOutput = ::Struct.new(
      :attached_object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_reference
    #   <p>The reference that is associated with the policy object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object to which the policy will be
    #         attached.</p>
    #
    #   @return [ObjectReference]
    #
    AttachPolicyInput = ::Struct.new(
      :directory_arn,
      :policy_reference,
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AttachPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where the object and index
    #         exist.</p>
    #
    #   @return [String]
    #
    # @!attribute index_reference
    #   <p>A reference to the index that you are attaching the object to.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute target_reference
    #   <p>A reference to the object that you are attaching to the index.</p>
    #
    #   @return [ObjectReference]
    #
    AttachToIndexInput = ::Struct.new(
      :directory_arn,
      :index_reference,
      :target_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>
    #
    #   @return [String]
    #
    AttachToIndexOutput = ::Struct.new(
      :attached_object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to attach the typed
    #         link.</p>
    #
    #   @return [String]
    #
    # @!attribute source_object_reference
    #   <p>Identifies the source object that the typed link will attach to.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute target_object_reference
    #   <p>Identifies the target object that the typed link will attach to.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute typed_link_facet
    #   <p>Identifies the typed link facet that is associated with the typed link.</p>
    #
    #   @return [TypedLinkSchemaAndFacetName]
    #
    # @!attribute attributes
    #   <p>A set of attributes that are associated with the typed link.</p>
    #
    #   @return [Array<AttributeNameAndValue>]
    #
    AttachTypedLinkInput = ::Struct.new(
      :directory_arn,
      :source_object_reference,
      :target_object_reference,
      :typed_link_facet,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute typed_link_specifier
    #   <p>Returns a typed link specifier as output.</p>
    #
    #   @return [TypedLinkSpecifier]
    #
    AttachTypedLinkOutput = ::Struct.new(
      :typed_link_specifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A unique identifier for an attribute.</p>
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema that contains the facet and
    #         attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute facet_name
    #   <p>The name of the facet that the attribute exists within.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the attribute.</p>
    #
    #   @return [String]
    #
    AttributeKey = ::Struct.new(
      :schema_arn,
      :facet_name,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The combination of an attribute key and an attribute value.</p>
    #
    # @!attribute key
    #   <p>The key of the attribute.</p>
    #
    #   @return [AttributeKey]
    #
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #
    #   @return [TypedAttributeValue]
    #
    AttributeKeyAndValue = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies the attribute name and value for a typed link.</p>
    #
    # @!attribute attribute_name
    #   <p>The attribute name of the typed link.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the typed link.</p>
    #
    #   @return [TypedAttributeValue]
    #
    AttributeNameAndValue = ::Struct.new(
      :attribute_name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a batch add facet to object operation.</p>
    #
    # @!attribute schema_facet
    #   <p>Represents the facet being added to the object.</p>
    #
    #   @return [SchemaFacet]
    #
    # @!attribute object_attribute_list
    #   <p>The attributes to set on the object.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    # @!attribute object_reference
    #   <p>A reference to the object being mutated.</p>
    #
    #   @return [ObjectReference]
    #
    BatchAddFacetToObject = ::Struct.new(
      :schema_facet,
      :object_attribute_list,
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a batch add facet to object operation.</p>
    #
    BatchAddFacetToObjectResponse = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of an <a>AttachObject</a> operation.</p>
    #
    # @!attribute parent_reference
    #   <p>The parent object reference.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute child_reference
    #   <p>The child object reference that is to be attached to the object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute link_name
    #   <p>The name of the link.</p>
    #
    #   @return [String]
    #
    BatchAttachObject = ::Struct.new(
      :parent_reference,
      :child_reference,
      :link_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output batch <a>AttachObject</a> response operation.</p>
    #
    # @!attribute attached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that has been attached.</p>
    #
    #   @return [String]
    #
    BatchAttachObjectResponse = ::Struct.new(
      :attached_object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Attaches a policy object to a regular object inside a <a>BatchRead</a> operation. For more information, see <a>AttachPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute policy_reference
    #   <p>The reference that is associated with the policy object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object to which the policy will be
    #          attached.</p>
    #
    #   @return [ObjectReference]
    #
    BatchAttachPolicy = ::Struct.new(
      :policy_reference,
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of an <a>AttachPolicy</a> response
    #       operation.</p>
    #
    BatchAttachPolicyResponse = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Attaches the specified object to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>AttachToIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute index_reference
    #   <p>A reference to the index that you are attaching the object to.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute target_reference
    #   <p>A reference to the object that you are attaching to the index.</p>
    #
    #   @return [ObjectReference]
    #
    BatchAttachToIndex = ::Struct.new(
      :index_reference,
      :target_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>AttachToIndex</a> response operation.</p>
    #
    # @!attribute attached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>
    #
    #   @return [String]
    #
    BatchAttachToIndexResponse = ::Struct.new(
      :attached_object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Attaches a typed link to a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>AttachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute source_object_reference
    #   <p>Identifies the source object that the typed link will attach to.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute target_object_reference
    #   <p>Identifies the target object that the typed link will attach to.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute typed_link_facet
    #   <p>Identifies the typed link facet that is associated with the typed link.</p>
    #
    #   @return [TypedLinkSchemaAndFacetName]
    #
    # @!attribute attributes
    #   <p>A set of attributes that are associated with the typed link.</p>
    #
    #   @return [Array<AttributeNameAndValue>]
    #
    BatchAttachTypedLink = ::Struct.new(
      :source_object_reference,
      :target_object_reference,
      :typed_link_facet,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>AttachTypedLink</a> response operation.</p>
    #
    # @!attribute typed_link_specifier
    #   <p>Returns a typed link specifier as output.</p>
    #
    #   @return [TypedLinkSpecifier]
    #
    BatchAttachTypedLinkResponse = ::Struct.new(
      :typed_link_specifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates an index object inside of a <a>BatchRead</a> operation. For more information, see <a>CreateIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute ordered_indexed_attribute_list
    #   <p>Specifies the attributes that should be indexed on. Currently only a single attribute
    #          is supported.</p>
    #
    #   @return [Array<AttributeKey>]
    #
    # @!attribute is_unique
    #   <p>Indicates whether the attribute that is being indexed has unique values or
    #          not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parent_reference
    #   <p>A reference to the parent object that contains the index object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute link_name
    #   <p>The name of the link between the parent object and the index object.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_reference_name
    #   <p>The batch reference name. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html">Transaction Support</a> for more information.</p>
    #
    #   @return [String]
    #
    BatchCreateIndex = ::Struct.new(
      :ordered_indexed_attribute_list,
      :is_unique,
      :parent_reference,
      :link_name,
      :batch_reference_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_unique ||= false
      end
    end

    # <p>Represents the output of a <a>CreateIndex</a> response operation.</p>
    #
    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>
    #
    #   @return [String]
    #
    BatchCreateIndexResponse = ::Struct.new(
      :object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>CreateObject</a> operation.</p>
    #
    # @!attribute schema_facet
    #   <p>A list of <code>FacetArns</code> that will be associated with the object. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [Array<SchemaFacet>]
    #
    # @!attribute object_attribute_list
    #   <p>An attribute map, which contains an attribute ARN as the key and attribute value as
    #         the map value.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    # @!attribute parent_reference
    #   <p>If specified, the parent reference to which this object will be attached.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute link_name
    #   <p>The name of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_reference_name
    #   <p>The batch reference name. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html">Transaction Support</a> for more information.</p>
    #
    #   @return [String]
    #
    BatchCreateObject = ::Struct.new(
      :schema_facet,
      :object_attribute_list,
      :parent_reference,
      :link_name,
      :batch_reference_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>CreateObject</a> response operation.</p>
    #
    # @!attribute object_identifier
    #   <p>The ID that is associated with the object.</p>
    #
    #   @return [String]
    #
    BatchCreateObjectResponse = ::Struct.new(
      :object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>DeleteObject</a> operation.</p>
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object.</p>
    #
    #   @return [ObjectReference]
    #
    BatchDeleteObject = ::Struct.new(
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>DeleteObject</a> response operation.</p>
    #
    BatchDeleteObjectResponse = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detaches the specified object from the specified index inside a <a>BatchRead</a> operation. For more information, see <a>DetachFromIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute index_reference
    #   <p>A reference to the index object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute target_reference
    #   <p>A reference to the object being detached from the index.</p>
    #
    #   @return [ObjectReference]
    #
    BatchDetachFromIndex = ::Struct.new(
      :index_reference,
      :target_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>DetachFromIndex</a> response operation.</p>
    #
    # @!attribute detached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>
    #
    #   @return [String]
    #
    BatchDetachFromIndexResponse = ::Struct.new(
      :detached_object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>DetachObject</a> operation.</p>
    #
    # @!attribute parent_reference
    #   <p>Parent reference from which the object with the specified link name is
    #         detached.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute link_name
    #   <p>The name of the link.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_reference_name
    #   <p>The batch reference name. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html">Transaction Support</a> for more information.</p>
    #
    #   @return [String]
    #
    BatchDetachObject = ::Struct.new(
      :parent_reference,
      :link_name,
      :batch_reference_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>DetachObject</a> response operation.</p>
    #
    # @!attribute detached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the detached object.</p>
    #
    #   @return [String]
    #
    BatchDetachObjectResponse = ::Struct.new(
      :detached_object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detaches the specified policy from the specified directory inside a <a>BatchWrite</a> operation. For more information, see <a>DetachPolicy</a> and <a>BatchWriteRequest$Operations</a>.</p>
    #
    # @!attribute policy_reference
    #   <p>Reference that identifies the policy object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose policy object will be detached.</p>
    #
    #   @return [ObjectReference]
    #
    BatchDetachPolicy = ::Struct.new(
      :policy_reference,
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>DetachPolicy</a> response operation.</p>
    #
    BatchDetachPolicyResponse = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detaches a typed link from a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>DetachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute typed_link_specifier
    #   <p>Used to accept a typed link specifier as input.</p>
    #
    #   @return [TypedLinkSpecifier]
    #
    BatchDetachTypedLink = ::Struct.new(
      :typed_link_specifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>DetachTypedLink</a> response operation.</p>
    #
    BatchDetachTypedLinkResponse = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Retrieves attributes that are associated with a typed link inside a <a>BatchRead</a> operation. For more information, see <a>GetLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #
    #   @return [TypedLinkSpecifier]
    #
    # @!attribute attribute_names
    #   <p>A list of attribute names whose values will be retrieved.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetLinkAttributes = ::Struct.new(
      :typed_link_specifier,
      :attribute_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>GetLinkAttributes</a> response operation.</p>
    #
    # @!attribute attributes
    #   <p>The attributes that are associated with the typed link.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    BatchGetLinkAttributesResponse = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Retrieves attributes within a facet that are associated with an object inside an <a>BatchRead</a> operation. For more information, see <a>GetObjectAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose attributes will be retrieved.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute schema_facet
    #   <p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>
    #
    #   @return [SchemaFacet]
    #
    # @!attribute attribute_names
    #   <p>List of attribute names whose values will be retrieved.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetObjectAttributes = ::Struct.new(
      :object_reference,
      :schema_facet,
      :attribute_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>GetObjectAttributes</a> response operation.</p>
    #
    # @!attribute attributes
    #   <p>The attribute values that are associated with an object.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    BatchGetObjectAttributesResponse = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Retrieves metadata about an object inside a <a>BatchRead</a> operation. For more information, see <a>GetObjectInformation</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute object_reference
    #   <p>A reference to the object.</p>
    #
    #   @return [ObjectReference]
    #
    BatchGetObjectInformation = ::Struct.new(
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>GetObjectInformation</a> response operation.</p>
    #
    # @!attribute schema_facets
    #   <p>The facets attached to the specified object.</p>
    #
    #   @return [Array<SchemaFacet>]
    #
    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the specified object.</p>
    #
    #   @return [String]
    #
    BatchGetObjectInformationResponse = ::Struct.new(
      :schema_facets,
      :object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lists indices attached to an object inside a <a>BatchRead</a> operation. For more information, see <a>ListAttachedIndices</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute target_reference
    #   <p>A reference to the object that has indices attached.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    BatchListAttachedIndices = ::Struct.new(
      :target_reference,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListAttachedIndices</a> response operation.</p>
    #
    # @!attribute index_attachments
    #   <p>The indices attached to the specified object.</p>
    #
    #   @return [Array<IndexAttachment>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListAttachedIndicesResponse = ::Struct.new(
      :index_attachments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListIncomingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #          selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #          range specified are presumed to match the entire range.</p>
    #
    #   @return [Array<TypedLinkAttributeRange>]
    #
    # @!attribute filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes on the typed link facet, not the
    #          order in which they are supplied to any API calls.</p>
    #
    #   @return [TypedLinkSchemaAndFacetName]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    BatchListIncomingTypedLinks = ::Struct.new(
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListIncomingTypedLinks</a> response operation.</p>
    #
    # @!attribute link_specifiers
    #   <p>Returns one or more typed link specifiers as output.</p>
    #
    #   @return [Array<TypedLinkSpecifier>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListIncomingTypedLinksResponse = ::Struct.new(
      :link_specifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lists objects attached to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>ListIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute ranges_on_indexed_values
    #   <p>Specifies the ranges of indexed values that you want to query.</p>
    #
    #   @return [Array<ObjectAttributeRange>]
    #
    # @!attribute index_reference
    #   <p>The reference to the index to list.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListIndex = ::Struct.new(
      :ranges_on_indexed_values,
      :index_reference,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListIndex</a> response operation.</p>
    #
    # @!attribute index_attachments
    #   <p>The objects and indexed values attached to the index.</p>
    #
    #   @return [Array<IndexAttachment>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListIndexResponse = ::Struct.new(
      :index_attachments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListObjectAttributes</a> operation.</p>
    #
    # @!attribute object_reference
    #   <p>Reference of the object whose attributes need to be listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute facet_filter
    #   <p>Used to filter the list of object attributes that are associated with a certain
    #         facet.</p>
    #
    #   @return [SchemaFacet]
    #
    BatchListObjectAttributes = ::Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      :facet_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListObjectAttributes</a> response operation.</p>
    #
    # @!attribute attributes
    #   <p>The attributes map that is associated with the object. <code>AttributeArn</code> is the
    #         key; attribute value is the value.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListObjectAttributesResponse = ::Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListObjectChildren</a> operation.</p>
    #
    # @!attribute object_reference
    #   <p>Reference of the object for which child objects are being listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of items to be retrieved in a single call. This is an approximate
    #          number.</p>
    #
    #   @return [Integer]
    #
    BatchListObjectChildren = ::Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListObjectChildren</a> response operation.</p>
    #
    # @!attribute children
    #   <p>The children structure, which is a map with the key as the <code>LinkName</code> and
    #           <code>ObjectIdentifier</code> as the value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListObjectChildrenResponse = ::Struct.new(
      :children,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectParentPaths</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    BatchListObjectParentPaths = ::Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListObjectParentPaths</a> response operation.</p>
    #
    # @!attribute path_to_object_identifiers_list
    #   <p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the
    #          directory.</p>
    #
    #   @return [Array<PathToObjectIdentifiers>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListObjectParentPathsResponse = ::Struct.new(
      :path_to_object_identifiers_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lists parent objects that are associated with a given object in pagination
    #       fashion.</p>
    #
    # @!attribute object_reference
    #   <p>The reference that identifies an object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    #   @return [Integer]
    #
    BatchListObjectParents = ::Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListObjectParents</a> response operation.</p>
    #
    # @!attribute parent_links
    #   <p>Returns a list of parent reference and LinkName Tuples.</p>
    #
    #   @return [Array<ObjectIdentifierAndLinkNameTuple>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListObjectParentsResponse = ::Struct.new(
      :parent_links,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns policies attached to an object in pagination fashion inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectPolicies</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    BatchListObjectPolicies = ::Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListObjectPolicies</a> response operation.</p>
    #
    # @!attribute attached_policy_ids
    #   <p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the
    #          object.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListObjectPoliciesResponse = ::Struct.new(
      :attached_policy_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListOutgoingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #          selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #          range specified are presumed to match the entire range.</p>
    #
    #   @return [Array<TypedLinkAttributeRange>]
    #
    # @!attribute filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes defined on the typed link facet,
    #          not the order they are supplied to any API calls.</p>
    #
    #   @return [TypedLinkSchemaAndFacetName]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    BatchListOutgoingTypedLinks = ::Struct.new(
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListOutgoingTypedLinks</a> response operation.</p>
    #
    # @!attribute typed_link_specifiers
    #   <p>Returns a typed link specifier as output.</p>
    #
    #   @return [Array<TypedLinkSpecifier>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListOutgoingTypedLinksResponse = ::Struct.new(
      :typed_link_specifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached inside a <a>BatchRead</a> operation. For more information, see <a>ListPolicyAttachments</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute policy_reference
    #   <p>The reference that identifies the policy object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    BatchListPolicyAttachments = ::Struct.new(
      :policy_reference,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>ListPolicyAttachments</a> response operation.</p>
    #
    # @!attribute object_identifiers
    #   <p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchListPolicyAttachmentsResponse = ::Struct.new(
      :object_identifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lists all policies from the root of the Directory to the object specified inside a <a>BatchRead</a> operation. For more information, see <a>LookupPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose policies will be looked up.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    BatchLookupPolicy = ::Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>LookupPolicy</a> response operation.</p>
    #
    # @!attribute policy_to_path_list
    #   <p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and
    #          <code>PolicyType</code>. For more
    #          information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html key_concepts_policies">Policies</a>.</p>
    #
    #   @return [Array<PolicyToPath>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    BatchLookupPolicyResponse = ::Struct.new(
      :policy_to_path_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The batch read exception structure, which contains the exception type and
    #       message.</p>
    #
    # @!attribute type
    #   <p>A type of exception, such as <code>InvalidArnException</code>.</p>
    #
    #   Enum, one of: ["ValidationException", "InvalidArnException", "ResourceNotFoundException", "InvalidNextTokenException", "AccessDeniedException", "NotNodeException", "FacetValidationException", "CannotListParentOfRootException", "NotIndexException", "NotPolicyException", "DirectoryNotEnabledException", "LimitExceededException", "InternalServiceException"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An exception message that is associated with the failure.</p>
    #
    #   @return [String]
    #
    BatchReadException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BatchReadExceptionType
    #
    module BatchReadExceptionType
      # No documentation available.
      #
      ValidationException = "ValidationException"

      # No documentation available.
      #
      InvalidArnException = "InvalidArnException"

      # No documentation available.
      #
      ResourceNotFoundException = "ResourceNotFoundException"

      # No documentation available.
      #
      InvalidNextTokenException = "InvalidNextTokenException"

      # No documentation available.
      #
      AccessDeniedException = "AccessDeniedException"

      # No documentation available.
      #
      NotNodeException = "NotNodeException"

      # No documentation available.
      #
      FacetValidationException = "FacetValidationException"

      # No documentation available.
      #
      CannotListParentOfRootException = "CannotListParentOfRootException"

      # No documentation available.
      #
      NotIndexException = "NotIndexException"

      # No documentation available.
      #
      NotPolicyException = "NotPolicyException"

      # No documentation available.
      #
      DirectoryNotEnabledException = "DirectoryNotEnabledException"

      # No documentation available.
      #
      LimitExceededException = "LimitExceededException"

      # No documentation available.
      #
      InternalServiceException = "InternalServiceException"
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute operations
    #   <p>A list of operations that are part of the batch.</p>
    #
    #   @return [Array<BatchReadOperation>]
    #
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    BatchReadInput = ::Struct.new(
      :directory_arn,
      :operations,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>BatchRead</code> operation.</p>
    #
    # @!attribute list_object_attributes
    #   <p>Lists all attributes that are associated with an object.</p>
    #
    #   @return [BatchListObjectAttributes]
    #
    # @!attribute list_object_children
    #   <p>Returns a paginated list of child objects that are associated with a given
    #         object.</p>
    #
    #   @return [BatchListObjectChildren]
    #
    # @!attribute list_attached_indices
    #   <p>Lists indices attached to an object.</p>
    #
    #   @return [BatchListAttachedIndices]
    #
    # @!attribute list_object_parent_paths
    #   <p>Retrieves all available parent paths for any object type such as node, leaf node,
    #          policy node, and index node objects. For more information about objects, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html">Directory Structure</a>.</p>
    #
    #   @return [BatchListObjectParentPaths]
    #
    # @!attribute get_object_information
    #   <p>Retrieves metadata about an object.</p>
    #
    #   @return [BatchGetObjectInformation]
    #
    # @!attribute get_object_attributes
    #   <p>Retrieves attributes within a facet that are associated with an object.</p>
    #
    #   @return [BatchGetObjectAttributes]
    #
    # @!attribute list_object_parents
    #   <p>Lists parent objects that are associated with a given object in pagination
    #         fashion.</p>
    #
    #   @return [BatchListObjectParents]
    #
    # @!attribute list_object_policies
    #   <p>Returns policies attached to an object in pagination fashion.</p>
    #
    #   @return [BatchListObjectPolicies]
    #
    # @!attribute list_policy_attachments
    #   <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>
    #
    #   @return [BatchListPolicyAttachments]
    #
    # @!attribute lookup_policy
    #   <p>Lists all policies from the root of the <a>Directory</a> to the object
    #          specified. If there are no policies present, an empty list is returned. If policies are
    #          present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>
    #          for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and
    #          <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more
    #          information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html key_concepts_policies">Policies</a>.</p>
    #
    #   @return [BatchLookupPolicy]
    #
    # @!attribute list_index
    #   <p>Lists objects attached to the specified index.</p>
    #
    #   @return [BatchListIndex]
    #
    # @!attribute list_outgoing_typed_links
    #   <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>
    #          information for an object. It also supports filtering by typed link facet and identity
    #          attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [BatchListOutgoingTypedLinks]
    #
    # @!attribute list_incoming_typed_links
    #   <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>
    #          information for an object. It also supports filtering by typed link facet and identity
    #          attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [BatchListIncomingTypedLinks]
    #
    # @!attribute get_link_attributes
    #   <p>Retrieves attributes that are associated with a typed link.</p>
    #
    #   @return [BatchGetLinkAttributes]
    #
    BatchReadOperation = ::Struct.new(
      :list_object_attributes,
      :list_object_children,
      :list_attached_indices,
      :list_object_parent_paths,
      :get_object_information,
      :get_object_attributes,
      :list_object_parents,
      :list_object_policies,
      :list_policy_attachments,
      :lookup_policy,
      :list_index,
      :list_outgoing_typed_links,
      :list_incoming_typed_links,
      :get_link_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>BatchRead</code> response operation.</p>
    #
    # @!attribute successful_response
    #   <p>Identifies which operation in a batch has succeeded.</p>
    #
    #   @return [BatchReadSuccessfulResponse]
    #
    # @!attribute exception_response
    #   <p>Identifies which operation in a batch has failed.</p>
    #
    #   @return [BatchReadException]
    #
    BatchReadOperationResponse = ::Struct.new(
      :successful_response,
      :exception_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute responses
    #   <p>A list of all the responses for each batch read.</p>
    #
    #   @return [Array<BatchReadOperationResponse>]
    #
    BatchReadOutput = ::Struct.new(
      :responses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>BatchRead</code> success response operation.</p>
    #
    # @!attribute list_object_attributes
    #   <p>Lists all attributes that are associated with an object.</p>
    #
    #   @return [BatchListObjectAttributesResponse]
    #
    # @!attribute list_object_children
    #   <p>Returns a paginated list of child objects that are associated with a given
    #         object.</p>
    #
    #   @return [BatchListObjectChildrenResponse]
    #
    # @!attribute get_object_information
    #   <p>Retrieves metadata about an object.</p>
    #
    #   @return [BatchGetObjectInformationResponse]
    #
    # @!attribute get_object_attributes
    #   <p>Retrieves attributes within a facet that are associated with an object.</p>
    #
    #   @return [BatchGetObjectAttributesResponse]
    #
    # @!attribute list_attached_indices
    #   <p>Lists indices attached to an object.</p>
    #
    #   @return [BatchListAttachedIndicesResponse]
    #
    # @!attribute list_object_parent_paths
    #   <p>Retrieves all available parent paths for any object type such as node, leaf node,
    #          policy node, and index node objects. For more information about objects, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html">Directory Structure</a>.</p>
    #
    #   @return [BatchListObjectParentPathsResponse]
    #
    # @!attribute list_object_policies
    #   <p>Returns policies attached to an object in pagination fashion.</p>
    #
    #   @return [BatchListObjectPoliciesResponse]
    #
    # @!attribute list_policy_attachments
    #   <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>
    #
    #   @return [BatchListPolicyAttachmentsResponse]
    #
    # @!attribute lookup_policy
    #   <p>Lists all policies from the root of the <a>Directory</a> to the object
    #          specified. If there are no policies present, an empty list is returned. If policies are
    #          present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>
    #          for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and
    #          <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more
    #          information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html key_concepts_policies">Policies</a>.</p>
    #
    #   @return [BatchLookupPolicyResponse]
    #
    # @!attribute list_index
    #   <p>Lists objects attached to the specified index.</p>
    #
    #   @return [BatchListIndexResponse]
    #
    # @!attribute list_outgoing_typed_links
    #   <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>
    #          information for an object. It also supports filtering by typed link facet and identity
    #          attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [BatchListOutgoingTypedLinksResponse]
    #
    # @!attribute list_incoming_typed_links
    #   <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>
    #          information for an object. It also supports filtering by typed link facet and identity
    #          attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [BatchListIncomingTypedLinksResponse]
    #
    # @!attribute get_link_attributes
    #   <p>The list of attributes to retrieve from the typed link.</p>
    #
    #   @return [BatchGetLinkAttributesResponse]
    #
    # @!attribute list_object_parents
    #   <p>The list of parent objects to retrieve.</p>
    #
    #   @return [BatchListObjectParentsResponse]
    #
    BatchReadSuccessfulResponse = ::Struct.new(
      :list_object_attributes,
      :list_object_children,
      :get_object_information,
      :get_object_attributes,
      :list_attached_indices,
      :list_object_parent_paths,
      :list_object_policies,
      :list_policy_attachments,
      :lookup_policy,
      :list_index,
      :list_outgoing_typed_links,
      :list_incoming_typed_links,
      :get_link_attributes,
      :list_object_parents,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A batch operation to remove a facet from an object.</p>
    #
    # @!attribute schema_facet
    #   <p>The facet to remove from the object.</p>
    #
    #   @return [SchemaFacet]
    #
    # @!attribute object_reference
    #   <p>A reference to the object whose facet will be removed.</p>
    #
    #   @return [ObjectReference]
    #
    BatchRemoveFacetFromObject = ::Struct.new(
      :schema_facet,
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty result that represents success.</p>
    #
    BatchRemoveFacetFromObjectResponse = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates a given typed link’s attributes inside a <a>BatchRead</a> operation. Attributes to be updated must not contribute to the typed link’s identity, as defined by its <code>IdentityAttributeOrder</code>. For more information, see <a>UpdateLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>
    #
    # @!attribute typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #
    #   @return [TypedLinkSpecifier]
    #
    # @!attribute attribute_updates
    #   <p>The attributes update structure.</p>
    #
    #   @return [Array<LinkAttributeUpdate>]
    #
    BatchUpdateLinkAttributes = ::Struct.new(
      :typed_link_specifier,
      :attribute_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <a>UpdateLinkAttributes</a> response operation.</p>
    #
    BatchUpdateLinkAttributesResponse = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>BatchUpdate</code> operation. </p>
    #
    # @!attribute object_reference
    #   <p>Reference that identifies the object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute attribute_updates
    #   <p>Attributes update structure.</p>
    #
    #   @return [Array<ObjectAttributeUpdate>]
    #
    BatchUpdateObjectAttributes = ::Struct.new(
      :object_reference,
      :attribute_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>BatchUpdate</code> response operation.</p>
    #
    # @!attribute object_identifier
    #   <p>ID that is associated with the object.</p>
    #
    #   @return [String]
    #
    BatchUpdateObjectAttributesResponse = ::Struct.new(
      :object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>BatchWrite</code> exception has occurred.</p>
    #
    # @!attribute index
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   Enum, one of: ["InternalServiceException", "ValidationException", "InvalidArnException", "LinkNameAlreadyInUseException", "StillContainsLinksException", "FacetValidationException", "ObjectNotDetachedException", "ResourceNotFoundException", "AccessDeniedException", "InvalidAttachmentException", "NotIndexException", "NotNodeException", "IndexedAttributeMissingException", "ObjectAlreadyDetachedException", "NotPolicyException", "DirectoryNotEnabledException", "LimitExceededException", "UnsupportedIndexTypeException"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BatchWriteException = ::Struct.new(
      :index,
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.index ||= 0
      end
    end

    # Includes enum constants for BatchWriteExceptionType
    #
    module BatchWriteExceptionType
      # No documentation available.
      #
      InternalServiceException = "InternalServiceException"

      # No documentation available.
      #
      ValidationException = "ValidationException"

      # No documentation available.
      #
      InvalidArnException = "InvalidArnException"

      # No documentation available.
      #
      LinkNameAlreadyInUseException = "LinkNameAlreadyInUseException"

      # No documentation available.
      #
      StillContainsLinksException = "StillContainsLinksException"

      # No documentation available.
      #
      FacetValidationException = "FacetValidationException"

      # No documentation available.
      #
      ObjectNotDetachedException = "ObjectNotDetachedException"

      # No documentation available.
      #
      ResourceNotFoundException = "ResourceNotFoundException"

      # No documentation available.
      #
      AccessDeniedException = "AccessDeniedException"

      # No documentation available.
      #
      InvalidAttachmentException = "InvalidAttachmentException"

      # No documentation available.
      #
      NotIndexException = "NotIndexException"

      # No documentation available.
      #
      NotNodeException = "NotNodeException"

      # No documentation available.
      #
      IndexedAttributeMissingException = "IndexedAttributeMissingException"

      # No documentation available.
      #
      ObjectAlreadyDetachedException = "ObjectAlreadyDetachedException"

      # No documentation available.
      #
      NotPolicyException = "NotPolicyException"

      # No documentation available.
      #
      DirectoryNotEnabledException = "DirectoryNotEnabledException"

      # No documentation available.
      #
      LimitExceededException = "LimitExceededException"

      # No documentation available.
      #
      UnsupportedIndexTypeException = "UnsupportedIndexTypeException"
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute operations
    #   <p>A list of operations that are part of the batch.</p>
    #
    #   @return [Array<BatchWriteOperation>]
    #
    BatchWriteInput = ::Struct.new(
      :directory_arn,
      :operations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>BatchWrite</code> operation. </p>
    #
    # @!attribute create_object
    #   <p>Creates an object.</p>
    #
    #   @return [BatchCreateObject]
    #
    # @!attribute attach_object
    #   <p>Attaches an object to a <a>Directory</a>.</p>
    #
    #   @return [BatchAttachObject]
    #
    # @!attribute detach_object
    #   <p>Detaches an object from a <a>Directory</a>.</p>
    #
    #   @return [BatchDetachObject]
    #
    # @!attribute update_object_attributes
    #   <p>Updates a given object's attributes.</p>
    #
    #   @return [BatchUpdateObjectAttributes]
    #
    # @!attribute delete_object
    #   <p>Deletes an object in a <a>Directory</a>.</p>
    #
    #   @return [BatchDeleteObject]
    #
    # @!attribute add_facet_to_object
    #   <p>A batch operation that adds a facet to an object.</p>
    #
    #   @return [BatchAddFacetToObject]
    #
    # @!attribute remove_facet_from_object
    #   <p>A batch operation that removes a facet from an object.</p>
    #
    #   @return [BatchRemoveFacetFromObject]
    #
    # @!attribute attach_policy
    #   <p>Attaches a policy object to a regular object. An object can have a limited number of attached
    #          policies.</p>
    #
    #   @return [BatchAttachPolicy]
    #
    # @!attribute detach_policy
    #   <p>Detaches a policy from a <a>Directory</a>.</p>
    #
    #   @return [BatchDetachPolicy]
    #
    # @!attribute create_index
    #   <p>Creates an index object. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm">Indexing and search</a> for more information.</p>
    #
    #   @return [BatchCreateIndex]
    #
    # @!attribute attach_to_index
    #   <p>Attaches the specified object to the specified index.</p>
    #
    #   @return [BatchAttachToIndex]
    #
    # @!attribute detach_from_index
    #   <p>Detaches the specified object from the specified index.</p>
    #
    #   @return [BatchDetachFromIndex]
    #
    # @!attribute attach_typed_link
    #   <p>Attaches a typed link to a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [BatchAttachTypedLink]
    #
    # @!attribute detach_typed_link
    #   <p>Detaches a typed link from a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [BatchDetachTypedLink]
    #
    # @!attribute update_link_attributes
    #   <p>Updates a given object's attributes.</p>
    #
    #   @return [BatchUpdateLinkAttributes]
    #
    BatchWriteOperation = ::Struct.new(
      :create_object,
      :attach_object,
      :detach_object,
      :update_object_attributes,
      :delete_object,
      :add_facet_to_object,
      :remove_facet_from_object,
      :attach_policy,
      :detach_policy,
      :create_index,
      :attach_to_index,
      :detach_from_index,
      :attach_typed_link,
      :detach_typed_link,
      :update_link_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>BatchWrite</code> response operation.</p>
    #
    # @!attribute create_object
    #   <p>Creates an object in a <a>Directory</a>.</p>
    #
    #   @return [BatchCreateObjectResponse]
    #
    # @!attribute attach_object
    #   <p>Attaches an object to a <a>Directory</a>.</p>
    #
    #   @return [BatchAttachObjectResponse]
    #
    # @!attribute detach_object
    #   <p>Detaches an object from a <a>Directory</a>.</p>
    #
    #   @return [BatchDetachObjectResponse]
    #
    # @!attribute update_object_attributes
    #   <p>Updates a given object’s attributes.</p>
    #
    #   @return [BatchUpdateObjectAttributesResponse]
    #
    # @!attribute delete_object
    #   <p>Deletes an object in a <a>Directory</a>.</p>
    #
    #   @return [BatchDeleteObjectResponse]
    #
    # @!attribute add_facet_to_object
    #   <p>The result of an add facet to object batch operation.</p>
    #
    #   @return [BatchAddFacetToObjectResponse]
    #
    # @!attribute remove_facet_from_object
    #   <p>The result of a batch remove facet from object operation.</p>
    #
    #   @return [BatchRemoveFacetFromObjectResponse]
    #
    # @!attribute attach_policy
    #   <p>Attaches a policy object to a regular object. An object can have a limited number of attached
    #          policies.</p>
    #
    #   @return [BatchAttachPolicyResponse]
    #
    # @!attribute detach_policy
    #   <p>Detaches a policy from a <a>Directory</a>.</p>
    #
    #   @return [BatchDetachPolicyResponse]
    #
    # @!attribute create_index
    #   <p>Creates an index object. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm">Indexing and search</a> for more information.</p>
    #
    #   @return [BatchCreateIndexResponse]
    #
    # @!attribute attach_to_index
    #   <p>Attaches the specified object to the specified index.</p>
    #
    #   @return [BatchAttachToIndexResponse]
    #
    # @!attribute detach_from_index
    #   <p>Detaches the specified object from the specified index.</p>
    #
    #   @return [BatchDetachFromIndexResponse]
    #
    # @!attribute attach_typed_link
    #   <p>Attaches a typed link to a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [BatchAttachTypedLinkResponse]
    #
    # @!attribute detach_typed_link
    #   <p>Detaches a typed link from a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [BatchDetachTypedLinkResponse]
    #
    # @!attribute update_link_attributes
    #   <p>Represents the output of a <code>BatchWrite</code> response operation.</p>
    #
    #   @return [BatchUpdateLinkAttributesResponse]
    #
    BatchWriteOperationResponse = ::Struct.new(
      :create_object,
      :attach_object,
      :detach_object,
      :update_object_attributes,
      :delete_object,
      :add_facet_to_object,
      :remove_facet_from_object,
      :attach_policy,
      :detach_policy,
      :create_index,
      :attach_to_index,
      :detach_from_index,
      :attach_typed_link,
      :detach_typed_link,
      :update_link_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute responses
    #   <p>A list of all the responses for each batch write.</p>
    #
    #   @return [Array<BatchWriteOperationResponse>]
    #
    BatchWriteOutput = ::Struct.new(
      :responses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot list the parents of a <a>Directory</a> root.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CannotListParentOfRootException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConsistencyLevel
    #
    module ConsistencyLevel
      # No documentation available.
      #
      SERIALIZABLE = "SERIALIZABLE"

      # No documentation available.
      #
      EVENTUAL = "EVENTUAL"
    end

    # @!attribute name
    #   <p>The name of the <a>Directory</a>. Should be unique per account, per
    #         region.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the published schema that will be copied into the
    #         data <a>Directory</a>. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    CreateDirectoryInput = ::Struct.new(
      :name,
      :schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN that is associated with the <a>Directory</a>. For more information,
    #         see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <a>Directory</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_identifier
    #   <p>The root object node of the created directory.</p>
    #
    #   @return [String]
    #
    # @!attribute applied_schema_arn
    #   <p>The ARN of the published schema in the <a>Directory</a>. Once a published
    #         schema is copied into the directory, it has its own ARN, which is referred to applied schema
    #         ARN. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    CreateDirectoryOutput = ::Struct.new(
      :directory_arn,
      :name,
      :object_identifier,
      :applied_schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The schema ARN in which the new <a>Facet</a> will be created. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <a>Facet</a>, which is unique for a given schema.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attributes that are associated with the <a>Facet</a>.</p>
    #
    #   @return [Array<FacetAttribute>]
    #
    # @!attribute object_type
    #   <p>Specifies whether a given object created from this facet is of type node, leaf node,
    #         policy or index.</p>
    #            <ul>
    #               <li>
    #                  <p>Node: Can have multiple children but one parent.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Leaf node: Cannot have children but can have multiple parents.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Policy: Allows you to store a policy document and policy type. For more
    #           information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html key_concepts_policies">Policies</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Index: Can be created with the Index API.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NODE", "LEAF_NODE", "POLICY", "INDEX"]
    #
    #   @return [String]
    #
    # @!attribute facet_style
    #   <p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>
    #
    #   Enum, one of: ["STATIC", "DYNAMIC"]
    #
    #   @return [String]
    #
    CreateFacetInput = ::Struct.new(
      :schema_arn,
      :name,
      :attributes,
      :object_type,
      :facet_style,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateFacetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory where the index should be created.</p>
    #
    #   @return [String]
    #
    # @!attribute ordered_indexed_attribute_list
    #   <p>Specifies the attributes that should be indexed on. Currently only a single attribute
    #         is supported.</p>
    #
    #   @return [Array<AttributeKey>]
    #
    # @!attribute is_unique
    #   <p>Indicates whether the attribute that is being indexed has unique values or
    #         not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parent_reference
    #   <p>A reference to the parent object that contains the index object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute link_name
    #   <p>The name of the link between the parent object and the index object.</p>
    #
    #   @return [String]
    #
    CreateIndexInput = ::Struct.new(
      :directory_arn,
      :ordered_indexed_attribute_list,
      :is_unique,
      :parent_reference,
      :link_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_unique ||= false
      end
    end

    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>
    #
    #   @return [String]
    #
    CreateIndexOutput = ::Struct.new(
      :object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         in which the object will be created. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_facets
    #   <p>A list of schema facets to be associated with the object. Do not provide minor version components. See <a>SchemaFacet</a> for details.</p>
    #
    #   @return [Array<SchemaFacet>]
    #
    # @!attribute object_attribute_list
    #   <p>The attribute map whose attribute ARN contains the key and attribute value as the map
    #         value.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    # @!attribute parent_reference
    #   <p>If specified, the parent reference to which this object will be attached.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute link_name
    #   <p>The name of link that is used to attach this object to a parent.</p>
    #
    #   @return [String]
    #
    CreateObjectInput = ::Struct.new(
      :directory_arn,
      :schema_facets,
      :object_attribute_list,
      :parent_reference,
      :link_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute object_identifier
    #   <p>The identifier that is associated with the object.</p>
    #
    #   @return [String]
    #
    CreateObjectOutput = ::Struct.new(
      :object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name that is associated with the schema. This is unique to each account and in each
    #         region.</p>
    #
    #   @return [String]
    #
    CreateSchemaInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    CreateSchemaOutput = ::Struct.new(
      :schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute facet
    #   <p>
    #               <a>Facet</a> structure that is associated with the typed link
    #         facet.</p>
    #
    #   @return [TypedLinkFacet]
    #
    CreateTypedLinkFacetInput = ::Struct.new(
      :schema_arn,
      :facet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateTypedLinkFacetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory to delete.</p>
    #
    #   @return [String]
    #
    DeleteDirectoryInput = ::Struct.new(
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the deleted directory.</p>
    #
    #   @return [String]
    #
    DeleteDirectoryOutput = ::Struct.new(
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the facet to delete.</p>
    #
    #   @return [String]
    #
    DeleteFacetInput = ::Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFacetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>A reference that identifies the object.</p>
    #
    #   @return [ObjectReference]
    #
    DeleteObjectInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteObjectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the development schema. For more information, see
    #           <a>arns</a>.</p>
    #
    #   @return [String]
    #
    DeleteSchemaInput = ::Struct.new(
      :schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The input ARN that is returned as part of the response. For more information, see
    #           <a>arns</a>.</p>
    #
    #   @return [String]
    #
    DeleteSchemaOutput = ::Struct.new(
      :schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #
    #   @return [String]
    #
    DeleteTypedLinkFacetInput = ::Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTypedLinkFacetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory the index and object exist
    #         in.</p>
    #
    #   @return [String]
    #
    # @!attribute index_reference
    #   <p>A reference to the index object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute target_reference
    #   <p>A reference to the object being detached from the index.</p>
    #
    #   @return [ObjectReference]
    #
    DetachFromIndexInput = ::Struct.new(
      :directory_arn,
      :index_reference,
      :target_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>
    #
    #   @return [String]
    #
    DetachFromIndexOutput = ::Struct.new(
      :detached_object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_reference
    #   <p>The parent reference from which the object with the specified link name is
    #         detached.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute link_name
    #   <p>The link name associated with the object that needs to be detached.</p>
    #
    #   @return [String]
    #
    DetachObjectInput = ::Struct.new(
      :directory_arn,
      :parent_reference,
      :link_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> that was detached from the object.</p>
    #
    #   @return [String]
    #
    DetachObjectOutput = ::Struct.new(
      :detached_object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_reference
    #   <p>Reference that identifies the policy object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose policy object will be detached.</p>
    #
    #   @return [ObjectReference]
    #
    DetachPolicyInput = ::Struct.new(
      :directory_arn,
      :policy_reference,
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DetachPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to detach the typed
    #         link.</p>
    #
    #   @return [String]
    #
    # @!attribute typed_link_specifier
    #   <p>Used to accept a typed link specifier as input.</p>
    #
    #   @return [TypedLinkSpecifier]
    #
    DetachTypedLinkInput = ::Struct.new(
      :directory_arn,
      :typed_link_specifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DetachTypedLinkOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Directory structure that includes the directory name and directory ARN.</p>
    #
    # @!attribute name
    #   <p>The name of the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the directory. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the directory. Can be either <code>Enabled</code>, <code>Disabled</code>, or <code>Deleted</code>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the directory was created.</p>
    #
    #   @return [Time]
    #
    Directory = ::Struct.new(
      :name,
      :directory_arn,
      :state,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a <a>Directory</a> could not be created due to a naming
    #       conflict. Choose a different name and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DirectoryAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A directory that has been deleted and to which access has been attempted. Note: The
    #       requested resource will eventually cease to exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DirectoryDeletedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An operation can only operate on a disabled directory.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DirectoryNotDisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Operations are only permitted on enabled directories.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DirectoryNotEnabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DirectoryState
    #
    module DirectoryState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory to disable.</p>
    #
    #   @return [String]
    #
    DisableDirectoryInput = ::Struct.new(
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory that has been disabled.</p>
    #
    #   @return [String]
    #
    DisableDirectoryOutput = ::Struct.new(
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory to enable.</p>
    #
    #   @return [String]
    #
    EnableDirectoryInput = ::Struct.new(
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the enabled directory.</p>
    #
    #   @return [String]
    #
    EnableDirectoryOutput = ::Struct.new(
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains <code>Name</code>, <code>ARN</code>, <code>Attributes</code>, <code>
    #                <a>Rule</a>s</code>, and
    #       <code>ObjectTypes</code>. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_whatarefacets.html">Facets</a> for more information.</p>
    #
    # @!attribute name
    #   <p>The name of the <a>Facet</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_type
    #   <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
    #
    #   Enum, one of: ["NODE", "LEAF_NODE", "POLICY", "INDEX"]
    #
    #   @return [String]
    #
    # @!attribute facet_style
    #   <p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>
    #
    #   Enum, one of: ["STATIC", "DYNAMIC"]
    #
    #   @return [String]
    #
    Facet = ::Struct.new(
      :name,
      :object_type,
      :facet_style,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A facet with the same name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FacetAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An attribute that is associated with the <a>Facet</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the facet attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_definition
    #   <p>A facet attribute consists of either a definition or a reference. This structure
    #         contains the attribute definition. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    #
    #   @return [FacetAttributeDefinition]
    #
    # @!attribute attribute_reference
    #   <p>An attribute reference that is associated with the attribute. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    #
    #   @return [FacetAttributeReference]
    #
    # @!attribute required_behavior
    #   <p>The required behavior of the <code>FacetAttribute</code>.</p>
    #
    #   Enum, one of: ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #
    #   @return [String]
    #
    FacetAttribute = ::Struct.new(
      :name,
      :attribute_definition,
      :attribute_reference,
      :required_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A facet attribute definition. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    #
    # @!attribute type
    #   <p>The type of the attribute.</p>
    #
    #   Enum, one of: ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"]
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value of the attribute (if configured).</p>
    #
    #   @return [TypedAttributeValue]
    #
    # @!attribute is_immutable
    #   <p>Whether the attribute is mutable or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rules
    #   <p>Validation rules attached to the attribute definition.</p>
    #
    #   @return [Hash<String, Rule>]
    #
    FacetAttributeDefinition = ::Struct.new(
      :type,
      :default_value,
      :is_immutable,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_immutable ||= false
      end
    end

    # <p>The facet attribute reference that specifies the attribute definition that contains the
    #       attribute facet name and attribute name.</p>
    #
    # @!attribute target_facet_name
    #   <p>The target facet name that is associated with the facet reference. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    #
    #   @return [String]
    #
    # @!attribute target_attribute_name
    #   <p>The target attribute name that is associated with the facet reference. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    #
    #   @return [String]
    #
    FacetAttributeReference = ::Struct.new(
      :target_facet_name,
      :target_attribute_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FacetAttributeType
    #
    module FacetAttributeType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      BINARY = "BINARY"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      NUMBER = "NUMBER"

      # No documentation available.
      #
      DATETIME = "DATETIME"

      # No documentation available.
      #
      VARIANT = "VARIANT"
    end

    # <p>A structure that contains information used to update an attribute.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to update.</p>
    #
    #   @return [FacetAttribute]
    #
    # @!attribute action
    #   <p>The action to perform when updating the attribute.</p>
    #
    #   Enum, one of: ["CREATE_OR_UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    FacetAttributeUpdate = ::Struct.new(
      :attribute,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Occurs when deleting a facet that contains an attribute that is a target to an
    #       attribute reference in a different facet.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FacetInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified <a>Facet</a> could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FacetNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FacetStyle
    #
    module FacetStyle
      # No documentation available.
      #
      STATIC = "STATIC"

      # No documentation available.
      #
      DYNAMIC = "DYNAMIC"
    end

    # <p>The <a>Facet</a> that you provided was not well formed or could not be
    #       validated with the schema.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FacetValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN of the applied schema.</p>
    #
    #   @return [String]
    #
    GetAppliedSchemaVersionInput = ::Struct.new(
      :schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute applied_schema_arn
    #   <p>Current applied schema ARN, including the minor version in use if one was provided.</p>
    #
    #   @return [String]
    #
    GetAppliedSchemaVersionOutput = ::Struct.new(
      :applied_schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory.</p>
    #
    #   @return [String]
    #
    GetDirectoryInput = ::Struct.new(
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory
    #   <p>Metadata about the directory.</p>
    #
    #   @return [Directory]
    #
    GetDirectoryOutput = ::Struct.new(
      :directory,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the facet to retrieve.</p>
    #
    #   @return [String]
    #
    GetFacetInput = ::Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute facet
    #   <p>The <a>Facet</a> structure that is associated with the facet.</p>
    #
    #   @return [Facet]
    #
    GetFacetOutput = ::Struct.new(
      :facet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #
    #   @return [TypedLinkSpecifier]
    #
    # @!attribute attribute_names
    #   <p>A list of attribute names whose values will be retrieved.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute consistency_level
    #   <p>The consistency level at which to retrieve the attributes on a typed link.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    GetLinkAttributesInput = ::Struct.new(
      :directory_arn,
      :typed_link_specifier,
      :attribute_names,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>The attributes that are associated with the typed link.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    GetLinkAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose attributes will be retrieved.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute consistency_level
    #   <p>The consistency level at which to retrieve the attributes on an object.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    # @!attribute schema_facet
    #   <p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>
    #
    #   @return [SchemaFacet]
    #
    # @!attribute attribute_names
    #   <p>List of attribute names whose values will be retrieved.</p>
    #
    #   @return [Array<String>]
    #
    GetObjectAttributesInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :consistency_level,
      :schema_facet,
      :attribute_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>The attributes that are associated with the object.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    GetObjectAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory being retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>A reference to the object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute consistency_level
    #   <p>The consistency level at which to retrieve the object information.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    GetObjectInformationInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_facets
    #   <p>The facets attached to the specified object. Although the response does not include minor version information, the most recently applied minor version of each Facet is in effect. See <a>GetAppliedSchemaVersion</a> for details.</p>
    #
    #   @return [Array<SchemaFacet>]
    #
    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the specified object.</p>
    #
    #   @return [String]
    #
    GetObjectInformationOutput = ::Struct.new(
      :schema_facets,
      :object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN of the schema to retrieve.</p>
    #
    #   @return [String]
    #
    GetSchemaAsJsonInput = ::Struct.new(
      :schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the retrieved schema.</p>
    #
    #   @return [String]
    #
    # @!attribute document
    #   <p>The JSON representation of the schema document.</p>
    #
    #   @return [String]
    #
    GetSchemaAsJsonOutput = ::Struct.new(
      :name,
      :document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #
    #   @return [String]
    #
    GetTypedLinkFacetInformationInput = ::Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_attribute_order
    #   <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed
    #         links considers the order that the attributes are defined on the typed link facet. When
    #         providing ranges to typed link selection, any inexact ranges must be specified at the end. Any
    #         attributes that do not have a range specified are presumed to match the entire range. Filters
    #         are interpreted in the order of the attributes on the typed link facet, not the order in which
    #         they are supplied to any API calls. For more information about identity attributes, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [Array<String>]
    #
    GetTypedLinkFacetInformationOutput = ::Struct.new(
      :identity_attribute_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates a failure occurred while performing a check for backward compatibility between the specified schema and the schema that is currently applied to the directory.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IncompatibleSchemaException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an index and an attached object.</p>
    #
    # @!attribute indexed_attributes
    #   <p>The indexed attribute values.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    # @!attribute object_identifier
    #   <p>In response to <a>ListIndex</a>, the <code>ObjectIdentifier</code> of the object attached to the index. In response to <a>ListAttachedIndices</a>, the <code>ObjectIdentifier</code> of the index attached to the object. This field will always contain the <code>ObjectIdentifier</code> of the object on the opposite side of the attachment specified in the query.</p>
    #
    #   @return [String]
    #
    IndexAttachment = ::Struct.new(
      :indexed_attributes,
      :object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object has been attempted to be attached to an object that does not have the appropriate attribute value.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IndexedAttributeMissingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates a problem that must be resolved by Amazon Web Services. This might be a transient error in which case you can retry your request until it succeeds. Otherwise, go to the <a href="http://status.aws.amazon.com/">AWS Service Health Dashboard</a> site to see if there are any operational issues with the service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the provided ARN value is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that an attempt to make an attachment was invalid. For example, attaching two nodes
    #       with a link type that is not applicable to the nodes or attempting to apply a schema to a directory a second time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidAttachmentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An attempt to modify a <a>Facet</a> resulted in an invalid schema
    #       exception.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidFacetUpdateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the <code>NextToken</code> value is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Occurs when any of the rule parameter keys or values are invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRuleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the provided <code>SchemaDoc</code> value is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSchemaDocException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Can occur for multiple reasons such as when you tag a resource that doesn’t exist or if you specify a higher number of tags for a resource than the allowed limit. Allowed limit is 50 tags per resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTaggingRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that limits are exceeded. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Limits</a> for more information.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action to take on a typed link attribute value. Updates are only supported for attributes which don’t contribute to link identity.</p>
    #
    # @!attribute attribute_action_type
    #   <p>A type that can be either <code>UPDATE_OR_CREATE</code> or <code>DELETE</code>.</p>
    #
    #   Enum, one of: ["CREATE_OR_UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute attribute_update_value
    #   <p>The value that you want to update to.</p>
    #
    #   @return [TypedAttributeValue]
    #
    LinkAttributeAction = ::Struct.new(
      :attribute_action_type,
      :attribute_update_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure that contains attribute update information.</p>
    #
    # @!attribute attribute_key
    #   <p>The key of the attribute being updated.</p>
    #
    #   @return [AttributeKey]
    #
    # @!attribute attribute_action
    #   <p>The action to perform as part of the attribute update.</p>
    #
    #   @return [LinkAttributeAction]
    #
    LinkAttributeUpdate = ::Struct.new(
      :attribute_key,
      :attribute_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a link could not be created due to a naming conflict. Choose a different
    #       name and then try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LinkNameAlreadyInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory you are listing.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_arn
    #   <p>The response for <code>ListAppliedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListAppliedSchemaArnsInput = ::Struct.new(
      :directory_arn,
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arns
    #   <p>The ARNs of schemas that are applied to the directory.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListAppliedSchemaArnsOutput = ::Struct.new(
      :schema_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute target_reference
    #   <p>A reference to the object that has indices attached.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute consistency_level
    #   <p>The consistency level to use for this operation.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    ListAttachedIndicesInput = ::Struct.new(
      :directory_arn,
      :target_reference,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_attachments
    #   <p>The indices attached to the specified object.</p>
    #
    #   @return [Array<IndexAttachment>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListAttachedIndicesOutput = ::Struct.new(
      :index_attachments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListDevelopmentSchemaArnsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arns
    #   <p>The ARNs of retrieved development schemas.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListDevelopmentSchemaArnsOutput = ::Struct.new(
      :schema_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the directories in the list. Can be either Enabled, Disabled, or
    #         Deleted.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "DELETED"]
    #
    #   @return [String]
    #
    ListDirectoriesInput = ::Struct.new(
      :next_token,
      :max_results,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directories
    #   <p>Lists all directories that are associated with your account in pagination
    #         fashion.</p>
    #
    #   @return [Array<Directory>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListDirectoriesOutput = ::Struct.new(
      :directories,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN of the schema where the facet resides.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the facet whose attributes will be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListFacetAttributesInput = ::Struct.new(
      :schema_arn,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>The attributes attached to the facet.</p>
    #
    #   @return [Array<FacetAttribute>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListFacetAttributesOutput = ::Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) to retrieve facet names from.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListFacetNamesInput = ::Struct.new(
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute facet_names
    #   <p>The names of facets that exist within the schema.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListFacetNamesOutput = ::Struct.new(
      :facet_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
    #         links.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose attributes will be listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #         selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #         range specified are presumed to match the entire range.</p>
    #
    #   @return [Array<TypedLinkAttributeRange>]
    #
    # @!attribute filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes on the typed link facet, not the
    #         order in which they are supplied to any API calls.</p>
    #
    #   @return [TypedLinkSchemaAndFacetName]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute consistency_level
    #   <p>The consistency level to execute the request at.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    ListIncomingTypedLinksInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute link_specifiers
    #   <p>Returns one or more typed link specifiers as output.</p>
    #
    #   @return [Array<TypedLinkSpecifier>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListIncomingTypedLinksOutput = ::Struct.new(
      :link_specifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory that the index exists in.</p>
    #
    #   @return [String]
    #
    # @!attribute ranges_on_indexed_values
    #   <p>Specifies the ranges of indexed values that you want to query.</p>
    #
    #   @return [Array<ObjectAttributeRange>]
    #
    # @!attribute index_reference
    #   <p>The reference to the index to list.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <a href="http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Amazon Cloud Directory Limits</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute consistency_level
    #   <p>The consistency level to execute the request at.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    ListIndexInput = ::Struct.new(
      :directory_arn,
      :ranges_on_indexed_values,
      :index_reference,
      :max_results,
      :next_token,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_attachments
    #   <p>The objects and indexed values attached to the index.</p>
    #
    #   @return [Array<IndexAttachment>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListIndexOutput = ::Struct.new(
      :index_attachments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListManagedSchemaArnsInput = ::Struct.new(
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arns
    #   <p>The ARNs for all AWS managed schemas.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListManagedSchemaArnsOutput = ::Struct.new(
      :schema_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    # @!attribute facet_filter
    #   <p>Used to filter the list of object attributes that are associated with a certain
    #         facet.</p>
    #
    #   @return [SchemaFacet]
    #
    ListObjectAttributesInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level,
      :facet_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>Attributes map that is associated with the object. <code>AttributeArn</code> is the
    #         key, and attribute value is the value.</p>
    #
    #   @return [Array<AttributeKeyAndValue>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListObjectAttributesOutput = ::Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object for which child objects are being
    #         listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    ListObjectChildrenInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute children
    #   <p>Children structure, which is a map with key as the <code>LinkName</code> and
    #           <code>ObjectIdentifier</code> as the value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListObjectChildrenOutput = ::Struct.new(
      :children,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory to which the parent path applies.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose parent paths are listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    #   @return [Integer]
    #
    ListObjectParentPathsInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute path_to_object_identifiers_list
    #   <p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the
    #         directory.</p>
    #
    #   @return [Array<PathToObjectIdentifiers>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListObjectParentPathsOutput = ::Struct.new(
      :path_to_object_identifiers_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object for which parent objects are being
    #         listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    # @!attribute include_all_links_to_each_parent
    #   <p>When set to True, returns all <a>ListObjectParentsResponse$ParentLinks</a>. There could be multiple links between a parent-child pair.</p>
    #
    #   @return [Boolean]
    #
    ListObjectParentsInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level,
      :include_all_links_to_each_parent,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_all_links_to_each_parent ||= false
      end
    end

    # @!attribute parents
    #   <p>The parent structure, which is a map with key as the <code>ObjectIdentifier</code> and
    #         LinkName as the value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_links
    #   <p>Returns a list of parent reference and LinkName Tuples.</p>
    #
    #   @return [Array<ObjectIdentifierAndLinkNameTuple>]
    #
    ListObjectParentsOutput = ::Struct.new(
      :parents,
      :next_token,
      :parent_links,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>Reference that identifies the object for which policies will be listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    ListObjectPoliciesInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attached_policy_ids
    #   <p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the
    #         object.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListObjectPoliciesOutput = ::Struct.new(
      :attached_policy_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
    #         links.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>A reference that identifies the object whose attributes will be listed.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #         selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #         range specified are presumed to match the entire range.</p>
    #
    #   @return [Array<TypedLinkAttributeRange>]
    #
    # @!attribute filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes defined on the typed link facet,
    #         not the order they are supplied to any API calls.</p>
    #
    #   @return [TypedLinkSchemaAndFacetName]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute consistency_level
    #   <p>The consistency level to execute the request at.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    ListOutgoingTypedLinksInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute typed_link_specifiers
    #   <p>Returns a typed link specifier as output.</p>
    #
    #   @return [Array<TypedLinkSpecifier>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListOutgoingTypedLinksOutput = ::Struct.new(
      :typed_link_specifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_reference
    #   <p>The reference that identifies the policy object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    #   Enum, one of: ["SERIALIZABLE", "EVENTUAL"]
    #
    #   @return [String]
    #
    ListPolicyAttachmentsInput = ::Struct.new(
      :directory_arn,
      :policy_reference,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute object_identifiers
    #   <p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListPolicyAttachmentsOutput = ::Struct.new(
      :object_identifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The response for <code>ListPublishedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListPublishedSchemaArnsInput = ::Struct.new(
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arns
    #   <p>The ARNs of published schemas.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListPublishedSchemaArnsOutput = ::Struct.new(
      :schema_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token. This is for future use. Currently pagination is not supported for
    #         tagging.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The <code>MaxResults</code> parameter sets the maximum number of results returned in a
    #         single page. This is for future use and is not supported currently.</p>
    #
    #   @return [Integer]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key value pairs that are associated with the response.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListTypedLinkFacetAttributesInput = ::Struct.new(
      :schema_arn,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>An ordered set of attributes associate with the typed link.</p>
    #
    #   @return [Array<TypedLinkAttributeDefinition>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListTypedLinkFacetAttributesOutput = ::Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListTypedLinkFacetNamesInput = ::Struct.new(
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute facet_names
    #   <p>The names of typed link facets that exist within the schema.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    ListTypedLinkFacetNamesOutput = ::Struct.new(
      :facet_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose policies will be looked up.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    #   @return [Integer]
    #
    LookupPolicyInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_to_path_list
    #   <p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and
    #         <code>PolicyType</code>. For more
    #         information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html key_concepts_policies">Policies</a>.</p>
    #
    #   @return [Array<PolicyToPath>]
    #
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    LookupPolicyOutput = ::Struct.new(
      :policy_to_path_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the requested operation can only operate on index objects.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotIndexException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Occurs when any invalid operations are performed on an object that is not a node, such
    #       as calling <code>ListObjectChildren</code> for a leaf node object.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotNodeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the requested operation can only operate on policy objects.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the object is not attached to the index.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ObjectAlreadyDetachedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action to take on the object attribute.</p>
    #
    # @!attribute object_attribute_action_type
    #   <p>A type that can be either <code>Update</code> or <code>Delete</code>.</p>
    #
    #   Enum, one of: ["CREATE_OR_UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute object_attribute_update_value
    #   <p>The value that you want to update to.</p>
    #
    #   @return [TypedAttributeValue]
    #
    ObjectAttributeAction = ::Struct.new(
      :object_attribute_action_type,
      :object_attribute_update_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A range of attributes.</p>
    #
    # @!attribute attribute_key
    #   <p>The key of the attribute that the attribute range covers.</p>
    #
    #   @return [AttributeKey]
    #
    # @!attribute range
    #   <p>The range of attribute values being selected.</p>
    #
    #   @return [TypedAttributeValueRange]
    #
    ObjectAttributeRange = ::Struct.new(
      :attribute_key,
      :range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure that contains attribute update information.</p>
    #
    # @!attribute object_attribute_key
    #   <p>The key of the attribute being updated.</p>
    #
    #   @return [AttributeKey]
    #
    # @!attribute object_attribute_action
    #   <p>The action to perform as part of the attribute update.</p>
    #
    #   @return [ObjectAttributeAction]
    #
    ObjectAttributeUpdate = ::Struct.new(
      :object_attribute_key,
      :object_attribute_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A pair of ObjectIdentifier and LinkName.</p>
    #
    # @!attribute object_identifier
    #   <p>The ID that is associated with the object.</p>
    #
    #   @return [String]
    #
    # @!attribute link_name
    #   <p>The name of the link between the parent and the child object.</p>
    #
    #   @return [String]
    #
    ObjectIdentifierAndLinkNameTuple = ::Struct.new(
      :object_identifier,
      :link_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the requested operation cannot be completed because the object has not
    #       been detached from the tree.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ObjectNotDetachedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The reference that identifies an object.</p>
    #
    # @!attribute selector
    #   <p>A path selector supports easy selection of an object by the parent/child links leading to it from the directory root. Use the link names from each parent/child link to construct the path. Path selectors start with a slash (/) and link names are separated by slashes. For more information about paths, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_access_objects.html">Access Objects</a>. You can identify an object in one of the following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>$ObjectIdentifier</i> - An object identifier is an opaque string provided by Amazon Cloud Directory. When creating objects, the system will provide you with the identifier of the created object. An object’s identifier is immutable and no two objects will ever share the same object identifier. To identify an object with ObjectIdentifier, the ObjectIdentifier must be wrapped in double quotes. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>/some/path</i> - Identifies the object based on path</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i> SomeBatchReference</i> - Identifies the object in a batch call</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ObjectReference = ::Struct.new(
      :selector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectType
    #
    module ObjectType
      # No documentation available.
      #
      NODE = "NODE"

      # No documentation available.
      #
      LEAF_NODE = "LEAF_NODE"

      # No documentation available.
      #
      POLICY = "POLICY"

      # No documentation available.
      #
      INDEX = "INDEX"
    end

    # <p>Returns the path to the <code>ObjectIdentifiers</code> that is associated with the
    #       directory.</p>
    #
    # @!attribute path
    #   <p>The path that is used to identify the object starting from directory root.</p>
    #
    #   @return [String]
    #
    # @!attribute object_identifiers
    #   <p>Lists <code>ObjectIdentifiers</code> starting from directory root to the object in the
    #         request.</p>
    #
    #   @return [Array<String>]
    #
    PathToObjectIdentifiers = ::Struct.new(
      :path,
      :object_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the <code>PolicyType</code>, <code>PolicyId</code>, and the <code>ObjectIdentifier</code> to which it is
    #       attached. For more
    #       information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    #
    # @!attribute policy_id
    #   <p>The ID of <code>PolicyAttachment</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> that is associated with
    #         <code>PolicyAttachment</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_type
    #   <p>The type of policy that can be associated with <code>PolicyAttachment</code>.</p>
    #
    #   @return [String]
    #
    PolicyAttachment = ::Struct.new(
      :policy_id,
      :object_identifier,
      :policy_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used when a regular object exists in a <a>Directory</a> and you want to find
    #       all of the policies that are associated with that object and the parent to that
    #       object.</p>
    #
    # @!attribute path
    #   <p>The path that is referenced from the root.</p>
    #
    #   @return [String]
    #
    # @!attribute policies
    #   <p>List of policy objects.</p>
    #
    #   @return [Array<PolicyAttachment>]
    #
    PolicyToPath = ::Struct.new(
      :path,
      :policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute development_schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the development schema. For
    #         more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The major version under which the schema will be published. Schemas have both a major and minor version associated with them.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name under which the schema will be published. If this is not provided, the
    #         development schema is considered.</p>
    #
    #   @return [String]
    #
    PublishSchemaInput = ::Struct.new(
      :development_schema_arn,
      :version,
      :minor_version,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute published_schema_arn
    #   <p>The ARN that is associated with the published schema. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    PublishSchemaOutput = ::Struct.new(
      :published_schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN of the schema to update.</p>
    #
    #   @return [String]
    #
    # @!attribute document
    #   <p>The replacement JSON schema.</p>
    #
    #   @return [String]
    #
    PutSchemaFromJsonInput = ::Struct.new(
      :schema_arn,
      :document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the schema to update.</p>
    #
    #   @return [String]
    #
    PutSchemaFromJsonOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RangeMode
    #
    module RangeMode
      # No documentation available.
      #
      FIRST = "FIRST"

      # No documentation available.
      #
      LAST = "LAST"

      # No documentation available.
      #
      LAST_BEFORE_MISSING_VALUES = "LAST_BEFORE_MISSING_VALUES"

      # No documentation available.
      #
      INCLUSIVE = "INCLUSIVE"

      # No documentation available.
      #
      EXCLUSIVE = "EXCLUSIVE"
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory in which the object resides.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_facet
    #   <p>The facet to remove. See <a>SchemaFacet</a> for details.</p>
    #
    #   @return [SchemaFacet]
    #
    # @!attribute object_reference
    #   <p>A reference to the object to remove the facet from.</p>
    #
    #   @return [ObjectReference]
    #
    RemoveFacetFromObjectInput = ::Struct.new(
      :directory_arn,
      :schema_facet,
      :object_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveFacetFromObjectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RequiredAttributeBehavior
    #
    module RequiredAttributeBehavior
      # No documentation available.
      #
      REQUIRED_ALWAYS = "REQUIRED_ALWAYS"

      # No documentation available.
      #
      NOT_REQUIRED = "NOT_REQUIRED"
    end

    # <p>The specified resource could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Occurs when a conflict with a previous successful write is detected. For example, if a write operation occurs on an object and then an attempt is made to read the object using “SERIALIZABLE” consistency, this exception may result. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RetryableConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an Amazon Resource Name (ARN) and parameters that are associated with the
    #       rule.</p>
    #
    # @!attribute type
    #   <p>The type of attribute validation rule.</p>
    #
    #   Enum, one of: ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"]
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The minimum and maximum parameters that are associated with the rule.</p>
    #
    #   @return [Hash<String, String>]
    #
    Rule = ::Struct.new(
      :type,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RuleType
    #
    module RuleType
      # No documentation available.
      #
      BINARY_LENGTH = "BINARY_LENGTH"

      # No documentation available.
      #
      NUMBER_COMPARISON = "NUMBER_COMPARISON"

      # No documentation available.
      #
      STRING_FROM_SET = "STRING_FROM_SET"

      # No documentation available.
      #
      STRING_LENGTH = "STRING_LENGTH"
    end

    # <p>Indicates that a schema could not be created due to a naming conflict. Please select a
    #       different name and then try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SchemaAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a schema is already published.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SchemaAlreadyPublishedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A facet.</p>
    #
    # @!attribute schema_arn
    #   <p>The ARN of the schema that contains the facet with no minor component. See <a>arns</a> and <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_inplaceschemaupgrade.html">In-Place Schema Upgrade</a> for a description of when to provide minor versions.
    #        If this value is set, FacetName must also be set.</p>
    #
    #   @return [String]
    #
    # @!attribute facet_name
    #   <p>The name of the facet. If this value is set, SchemaArn must also be set.</p>
    #
    #   @return [String]
    #
    SchemaFacet = ::Struct.new(
      :schema_arn,
      :facet_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object could not be deleted because links still exist. Remove the links and then
    #       try the operation again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StillContainsLinksException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tag structure that contains a tag key and value.</p>
    #
    # @!attribute key
    #   <p>The key that is associated with the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value that is associated with the tag.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the data for a typed attribute. You can set one, and only one, of the
    #       elements. Each attribute in an item is a name-value pair. Attributes have a single
    #       value.</p>
    #
    class TypedAttributeValue < Hearth::Union
      # <p>A string data value.</p>
      #
      class StringValue < TypedAttributeValue
        def to_h
          { string_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::CloudDirectory::Types::StringValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A binary data value.</p>
      #
      class BinaryValue < TypedAttributeValue
        def to_h
          { binary_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::CloudDirectory::Types::BinaryValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A Boolean data value.</p>
      #
      class BooleanValue < TypedAttributeValue
        def to_h
          { boolean_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::CloudDirectory::Types::BooleanValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A number data value.</p>
      #
      class NumberValue < TypedAttributeValue
        def to_h
          { number_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::CloudDirectory::Types::NumberValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A date and time value.</p>
      #
      class DatetimeValue < TypedAttributeValue
        def to_h
          { datetime_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::CloudDirectory::Types::DatetimeValue #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < TypedAttributeValue
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::CloudDirectory::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>A range of attribute values. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_range_filters.html">Range Filters</a>.</p>
    #
    # @!attribute start_mode
    #   <p>The inclusive or exclusive range start.</p>
    #
    #   Enum, one of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #
    #   @return [String]
    #
    # @!attribute start_value
    #   <p>The value to start the range at.</p>
    #
    #   @return [TypedAttributeValue]
    #
    # @!attribute end_mode
    #   <p>The inclusive or exclusive range end.</p>
    #
    #   Enum, one of: ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #
    #   @return [String]
    #
    # @!attribute end_value
    #   <p>The attribute value to terminate the range at.</p>
    #
    #   @return [TypedAttributeValue]
    #
    TypedAttributeValueRange = ::Struct.new(
      :start_mode,
      :start_value,
      :end_mode,
      :end_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A typed link attribute definition.</p>
    #
    # @!attribute name
    #   <p>The unique name of the typed link attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the attribute.</p>
    #
    #   Enum, one of: ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"]
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value of the attribute (if configured).</p>
    #
    #   @return [TypedAttributeValue]
    #
    # @!attribute is_immutable
    #   <p>Whether the attribute is mutable or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rules
    #   <p>Validation rules that are attached to the attribute definition.</p>
    #
    #   @return [Hash<String, Rule>]
    #
    # @!attribute required_behavior
    #   <p>The required behavior of the <code>TypedLinkAttributeDefinition</code>.</p>
    #
    #   Enum, one of: ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #
    #   @return [String]
    #
    TypedLinkAttributeDefinition = ::Struct.new(
      :name,
      :type,
      :default_value,
      :is_immutable,
      :rules,
      :required_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_immutable ||= false
      end
    end

    # <p>Identifies the range of attributes that are used by a specified filter.</p>
    #
    # @!attribute attribute_name
    #   <p>The unique name of the typed link attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute range
    #   <p>The range of attribute values that are being selected.</p>
    #
    #   @return [TypedAttributeValueRange]
    #
    TypedLinkAttributeRange = ::Struct.new(
      :attribute_name,
      :range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the typed links structure and its attributes. To create a typed link facet, use
    #       the <a>CreateTypedLinkFacet</a> API.</p>
    #
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A set of key-value pairs associated with the typed link. Typed link attributes are used when you have data values that are related to the link itself, and not to one of the two objects being linked. Identity attributes also serve to distinguish the link from others of the same type between the same objects.</p>
    #
    #   @return [Array<TypedLinkAttributeDefinition>]
    #
    # @!attribute identity_attribute_order
    #   <p>The set of attributes that distinguish links made from this facet from each other, in the order of significance. Listing typed links can filter on the values of these attributes. See <a>ListOutgoingTypedLinks</a> and <a>ListIncomingTypedLinks</a> for details.</p>
    #
    #   @return [Array<String>]
    #
    TypedLinkFacet = ::Struct.new(
      :name,
      :attributes,
      :identity_attribute_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A typed link facet attribute update.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to update.</p>
    #
    #   @return [TypedLinkAttributeDefinition]
    #
    # @!attribute action
    #   <p>The action to perform when updating the attribute.</p>
    #
    #   Enum, one of: ["CREATE_OR_UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    TypedLinkFacetAttributeUpdate = ::Struct.new(
      :attribute,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies the schema Amazon Resource Name (ARN) and facet name for the typed
    #       link.</p>
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute typed_link_name
    #   <p>The unique name of the typed link facet.</p>
    #
    #   @return [String]
    #
    TypedLinkSchemaAndFacetName = ::Struct.new(
      :schema_arn,
      :typed_link_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains all the information that is used to uniquely identify a typed link. The
    #       parameters discussed in this topic are used to uniquely specify the typed link being operated
    #       on. The <a>AttachTypedLink</a> API returns a typed link specifier while the <a>DetachTypedLink</a> API accepts one as input. Similarly, the <a>ListIncomingTypedLinks</a> and <a>ListOutgoingTypedLinks</a> API
    #       operations provide typed link specifiers as output. You can also construct a typed link
    #       specifier from scratch.</p>
    #
    # @!attribute typed_link_facet
    #   <p>Identifies the typed link facet that is associated with the typed link.</p>
    #
    #   @return [TypedLinkSchemaAndFacetName]
    #
    # @!attribute source_object_reference
    #   <p>Identifies the source object that the typed link will attach to.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute target_object_reference
    #   <p>Identifies the target object that the typed link will attach to.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute identity_attribute_values
    #   <p>Identifies the attribute value to update.</p>
    #
    #   @return [Array<AttributeNameAndValue>]
    #
    TypedLinkSpecifier = ::Struct.new(
      :typed_link_facet,
      :source_object_reference,
      :target_object_reference,
      :identity_attribute_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the requested index type is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedIndexTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Keys of the tag that need to be removed from the resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpdateActionType
    #
    module UpdateActionType
      # No documentation available.
      #
      CREATE_OR_UPDATE = "CREATE_OR_UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the facet.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_updates
    #   <p>List of attributes that need to be updated in a given schema <a>Facet</a>.
    #         Each attribute is followed by <code>AttributeAction</code>, which specifies the type of update
    #         operation to perform. </p>
    #
    #   @return [Array<FacetAttributeUpdate>]
    #
    # @!attribute object_type
    #   <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
    #
    #   Enum, one of: ["NODE", "LEAF_NODE", "POLICY", "INDEX"]
    #
    #   @return [String]
    #
    UpdateFacetInput = ::Struct.new(
      :schema_arn,
      :name,
      :attribute_updates,
      :object_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateFacetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #
    #   @return [TypedLinkSpecifier]
    #
    # @!attribute attribute_updates
    #   <p>The attributes update structure.</p>
    #
    #   @return [Array<LinkAttributeUpdate>]
    #
    UpdateLinkAttributesInput = ::Struct.new(
      :directory_arn,
      :typed_link_specifier,
      :attribute_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLinkAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_reference
    #   <p>The reference that identifies the object.</p>
    #
    #   @return [ObjectReference]
    #
    # @!attribute attribute_updates
    #   <p>The attributes update structure.</p>
    #
    #   @return [Array<ObjectAttributeUpdate>]
    #
    UpdateObjectAttributesInput = ::Struct.new(
      :directory_arn,
      :object_reference,
      :attribute_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the updated object.</p>
    #
    #   @return [String]
    #
    UpdateObjectAttributesOutput = ::Struct.new(
      :object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the development schema. For more information, see
    #           <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    UpdateSchemaInput = ::Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN that is associated with the updated schema. For more information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    UpdateSchemaOutput = ::Struct.new(
      :schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_updates
    #   <p>Attributes update structure.</p>
    #
    #   @return [Array<TypedLinkFacetAttributeUpdate>]
    #
    # @!attribute identity_attribute_order
    #   <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed
    #         links considers the order that the attributes are defined on the typed link facet.  When
    #         providing ranges to a typed link selection, any inexact ranges must be specified at the end.
    #         Any attributes that do not have a range specified are presumed to match the entire range.
    #         Filters are interpreted in the order of the attributes on the typed link facet, not the order
    #         in which they are supplied to any API calls. For more information about identity attributes, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    #   @return [Array<String>]
    #
    UpdateTypedLinkFacetInput = ::Struct.new(
      :schema_arn,
      :name,
      :attribute_updates,
      :identity_attribute_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateTypedLinkFacetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute published_schema_arn
    #   <p>The revision of the published schema to upgrade the directory to.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_arn
    #   <p>The ARN for the directory to which the upgraded schema will be applied.</p>
    #
    #   @return [String]
    #
    # @!attribute dry_run
    #   <p>Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.</p>
    #
    #   @return [Boolean]
    #
    UpgradeAppliedSchemaInput = ::Struct.new(
      :published_schema_arn,
      :directory_arn,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dry_run ||= false
      end
    end

    # @!attribute upgraded_schema_arn
    #   <p>The ARN of the upgraded schema that is returned as part of the response.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_arn
    #   <p>The ARN of the directory that is returned as part of the response.</p>
    #
    #   @return [String]
    #
    UpgradeAppliedSchemaOutput = ::Struct.new(
      :upgraded_schema_arn,
      :directory_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute development_schema_arn
    #   <p>The ARN of the development schema with the changes used for the upgrade.</p>
    #
    #   @return [String]
    #
    # @!attribute published_schema_arn
    #   <p>The ARN of the published schema to be upgraded.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>Identifies the minor version of the published schema that will be created. This parameter is NOT optional.</p>
    #
    #   @return [String]
    #
    # @!attribute dry_run
    #   <p>Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false.</p>
    #
    #   @return [Boolean]
    #
    UpgradePublishedSchemaInput = ::Struct.new(
      :development_schema_arn,
      :published_schema_arn,
      :minor_version,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dry_run ||= false
      end
    end

    # @!attribute upgraded_schema_arn
    #   <p>The ARN of the upgraded schema that is returned as part of the response.</p>
    #
    #   @return [String]
    #
    UpgradePublishedSchemaOutput = ::Struct.new(
      :upgraded_schema_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that your request is malformed in some manner. See the exception
    #       message.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
