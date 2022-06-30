# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceCatalogAppRegistry
  module Types

    # <p>Represents a Amazon Web Services Service Catalog AppRegistry application that is the top-level node in a hierarchy of related
    #        cloud resource abstractions.</p>
    #
    # @!attribute id
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the application across services.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p> The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>Key-value pairs you can use to associate with the application.</p>
    #
    #   @return [Hash<String, String>]
    #
    Application = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of a Amazon Web Services Service Catalog AppRegistry application.</p>
    #
    # @!attribute id
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the application across services.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p> The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>
    #
    #   @return [Time]
    #
    ApplicationSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    #   @return [String]
    #
    AssociateAttributeGroupInput = ::Struct.new(
      :application,
      :attribute_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) of the application that was augmented with attributes.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_group_arn
    #   <p>The Amazon resource name (ARN) of the attribute group that contains the application's new attributes.</p>
    #
    #   @return [String]
    #
    AssociateAttributeGroupOutput = ::Struct.new(
      :application_arn,
      :attribute_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource of which the application will be associated.</p>
    #
    #   Enum, one of: ["CFN_STACK"]
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The name or ID of the resource of which the application will be associated.</p>
    #
    #   @return [String]
    #
    AssociateResourceInput = ::Struct.new(
      :application,
      :resource_type,
      :resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) of the application that was augmented with attributes.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #
    #   @return [String]
    #
    AssociateResourceOutput = ::Struct.new(
      :application_arn,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a Amazon Web Services Service Catalog AppRegistry attribute group that is rich metadata which describes an application and its components.</p>
    #
    # @!attribute id
    #   <p>The globally unique attribute group identifier of the attribute group.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the attribute group across services.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the attribute group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was last updated. This time is the same as the creationTime for a newly created attribute group.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>Key-value pairs you can use to associate with the attribute group.</p>
    #
    #   @return [Hash<String, String>]
    #
    AttributeGroup = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of a Amazon Web Services Service Catalog AppRegistry attribute group.</p>
    #
    # @!attribute id
    #   <p>The globally unique attribute group identifier of the attribute group.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the attribute group across services.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the attribute group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was last updated. This time is the same as the creationTime for a newly created attribute group.</p>
    #
    #   @return [Time]
    #
    AttributeGroupSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was a conflict when processing the request (for example, a resource with the given name already
    #       exists within the account).</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs you can use to associate with the application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique identifier that you provide to ensure idempotency. If you retry a request that
    #         completed successfully using the same client token and the same parameters, the retry succeeds
    #         without performing any further actions. If you retry a successful request using the same
    #         client token, but one or more of the parameters are different, the retry fails.</p>
    #
    #   @return [String]
    #
    CreateApplicationInput = ::Struct.new(
      :name,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>Information about the application.</p>
    #
    #   @return [Application]
    #
    CreateApplicationOutput = ::Struct.new(
      :application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the attribute group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs you can use to associate with the attribute group.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique identifier that you provide to ensure idempotency. If you retry a request that
    #         completed successfully using the same client token and the same parameters, the retry succeeds
    #         without performing any further actions. If you retry a successful request using the same
    #         client token, but one or more of the parameters are different, the retry fails.</p>
    #
    #   @return [String]
    #
    CreateAttributeGroupInput = ::Struct.new(
      :name,
      :description,
      :attributes,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_group
    #   <p>Information about the attribute group.</p>
    #
    #   @return [AttributeGroup]
    #
    CreateAttributeGroupOutput = ::Struct.new(
      :attribute_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #
    #   @return [String]
    #
    DeleteApplicationInput = ::Struct.new(
      :application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>Information about the deleted application.</p>
    #
    #   @return [ApplicationSummary]
    #
    DeleteApplicationOutput = ::Struct.new(
      :application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    #   @return [String]
    #
    DeleteAttributeGroupInput = ::Struct.new(
      :attribute_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_group
    #   <p>Information about the deleted attribute group.</p>
    #
    #   @return [AttributeGroupSummary]
    #
    DeleteAttributeGroupOutput = ::Struct.new(
      :attribute_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    #   @return [String]
    #
    DisassociateAttributeGroupInput = ::Struct.new(
      :application,
      :attribute_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) that specifies the application.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_group_arn
    #   <p>The Amazon resource name (ARN) that specifies the attribute group.</p>
    #
    #   @return [String]
    #
    DisassociateAttributeGroupOutput = ::Struct.new(
      :application_arn,
      :attribute_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that is being disassociated.</p>
    #
    #   Enum, one of: ["CFN_STACK"]
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The name or ID of the resource.</p>
    #
    #   @return [String]
    #
    DisassociateResourceInput = ::Struct.new(
      :application,
      :resource_type,
      :resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) that specifies the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #
    #   @return [String]
    #
    DisassociateResourceOutput = ::Struct.new(
      :application_arn,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #
    #   @return [String]
    #
    GetApplicationInput = ::Struct.new(
      :application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the application across services.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute associated_resource_count
    #   <p>The number of top-level resources that were registered as part of this application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>Key-value pairs associated with the application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute integrations
    #   <p>The information about the integration of the application with other services, such as Resource Groups.</p>
    #
    #   @return [Integrations]
    #
    GetApplicationOutput = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_time,
      :last_update_time,
      :associated_resource_count,
      :tags,
      :integrations,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.associated_resource_count ||= 0
      end

    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource associated with the application.</p>
    #
    #   Enum, one of: ["CFN_STACK"]
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The name or ID of the resource associated with the application.</p>
    #
    #   @return [String]
    #
    GetAssociatedResourceInput = ::Struct.new(
      :application,
      :resource_type,
      :resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource
    #   <p>The resource associated with the application.</p>
    #
    #   @return [Resource]
    #
    GetAssociatedResourceOutput = ::Struct.new(
      :resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    #   @return [String]
    #
    GetAttributeGroupInput = ::Struct.new(
      :attribute_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the attribute group.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the attribute group across services.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the attribute group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The ISO-8601 formatted timestamp of the moment the attribute group was last updated. This time is the same as the creationTime for a newly created attribute group.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>Key-value pairs associated with the attribute group.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetAttributeGroupOutput = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :attributes,
      :creation_time,
      :last_update_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The information about the service integration.</p>
    #
    # @!attribute resource_group
    #   <p> The information about the resource group integration.</p>
    #
    #   @return [ResourceGroup]
    #
    Integrations = ::Struct.new(
      :resource_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is experiencing internal problems.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #
    #   @return [Integer]
    #
    ListApplicationsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute applications
    #   <p>This list of applications.</p>
    #
    #   @return [Array<ApplicationSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    #   @return [String]
    #
    ListApplicationsOutput = ::Struct.new(
      :applications,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #
    #   @return [Integer]
    #
    ListAssociatedAttributeGroupsInput = ::Struct.new(
      :application,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_groups
    #   <p>A list of attribute group IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    #   @return [String]
    #
    ListAssociatedAttributeGroupsOutput = ::Struct.new(
      :attribute_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The name or ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #
    #   @return [Integer]
    #
    ListAssociatedResourcesInput = ::Struct.new(
      :application,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resources
    #   <p>Information about the resources.</p>
    #
    #   @return [Array<ResourceInfo>]
    #
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    #   @return [String]
    #
    ListAssociatedResourcesOutput = ::Struct.new(
      :resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #
    #   @return [Integer]
    #
    ListAttributeGroupsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_groups
    #   <p>This list of attribute groups.</p>
    #
    #   @return [Array<AttributeGroupSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    #   @return [String]
    #
    ListAttributeGroupsOutput = ::Struct.new(
      :attribute_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags on the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The information about the resource.</p>
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute association_time
    #   <p>The time the resource was associated with the application.</p>
    #
    #   @return [Time]
    #
    # @!attribute integrations
    #   <p>The service integration information about the resource.
    #        </p>
    #
    #   @return [ResourceIntegrations]
    #
    Resource = ::Struct.new(
      :name,
      :arn,
      :association_time,
      :integrations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information about the resource group integration.</p>
    #
    # @!attribute state
    #   <p>The state of the propagation process for the resource group. The states includes:</p>
    #            <p>
    #               <code>CREATING </code>if the resource group is in the process of being created.</p>
    #            <p>
    #               <code>CREATE_COMPLETE</code> if the resource group was created successfully.</p>
    #            <p>
    #               <code>CREATE_FAILED</code> if the resource group failed to be created.</p>
    #            <p>
    #               <code>UPDATING</code> if the resource group is in the process of being updated.</p>
    #            <p>
    #               <code>UPDATE_COMPLETE</code> if the resource group updated successfully.</p>
    #            <p>
    #               <code>UPDATE_FAILED</code> if the resource group could not update successfully.</p>
    #
    #   Enum, one of: ["CREATING", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message that generates when the propagation process for the resource group fails.</p>
    #
    #   @return [String]
    #
    ResourceGroup = ::Struct.new(
      :state,
      :arn,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceGroupState
    #
    module ResourceGroupState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATE_COMPLETE = "CREATE_COMPLETE"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      UPDATE_COMPLETE = "UPDATE_COMPLETE"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # <p>The information about the resource.</p>
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon resource name (ARN) that specifies the resource across services.</p>
    #
    #   @return [String]
    #
    ResourceInfo = ::Struct.new(
      :name,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service integration information about the resource.</p>
    #
    # @!attribute resource_group
    #   <p>The information about the integration of Resource Groups.</p>
    #
    #   @return [ResourceGroup]
    #
    ResourceIntegrations = ::Struct.new(
      :resource_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource does not exist.</p>
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

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      CFN_STACK = "CFN_STACK"
    end

    # <p>The maximum number of resources per account has been reached.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SyncAction
    #
    module SyncAction
      # No documentation available.
      #
      START_SYNC = "START_SYNC"

      # No documentation available.
      #
      NO_ACTION = "NO_ACTION"
    end

    # @!attribute resource_type
    #   <p>The type of resource of which the application will be associated.</p>
    #
    #   Enum, one of: ["CFN_STACK"]
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>An entity you can work with and specify with a name or ID. Examples include an Amazon EC2 instance, an Amazon Web Services CloudFormation stack, or an Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    SyncResourceInput = ::Struct.new(
      :resource_type,
      :resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon resource name (ARN) that specifies the application.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute action_taken
    #   <p>The results of the output if an application is associated with an ARN value, which could be <code>syncStarted</code> or None.</p>
    #
    #   Enum, one of: ["START_SYNC", "NO_ACTION"]
    #
    #   @return [String]
    #
    SyncResourceOutput = ::Struct.new(
      :application_arn,
      :resource_arn,
      :action_taken,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The new or modified tags for the resource.</p>
    #
    #   @return [Hash<String, String>]
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

    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of the tag keys to remove from the specified resource.</p>
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

    # @!attribute application
    #   <p>The name or ID of the application that will be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name of the application. The name must be unique in the region in which you are updating the application.</p>
    #
    #   @deprecated
    #     Name update for application is deprecated.
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description of the application.</p>
    #
    #   @return [String]
    #
    UpdateApplicationInput = ::Struct.new(
      :application,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The updated information of the application.</p>
    #
    #   @return [Application]
    #
    UpdateApplicationOutput = ::Struct.new(
      :application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name of the attribute group. The name must be unique in the region in which you are
    #          updating the attribute group.</p>
    #
    #   @deprecated
    #     Name update for attribute group is deprecated.
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the attribute group that the user provides.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    #
    #   @return [String]
    #
    UpdateAttributeGroupInput = ::Struct.new(
      :attribute_group,
      :name,
      :description,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_group
    #   <p>The updated information of the attribute group.</p>
    #
    #   @return [AttributeGroup]
    #
    UpdateAttributeGroupOutput = ::Struct.new(
      :attribute_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request has invalid or missing parameters.</p>
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
