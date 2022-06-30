# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppIntegrations
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
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

    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key
    #   <p>The KMS key for the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute source_uri
    #   <p>The URI of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_config
    #   <p>The name of the data and how often it should be pulled from the source.</p>
    #
    #   @return [ScheduleConfiguration]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    CreateDataIntegrationInput = ::Struct.new(
      :name,
      :description,
      :kms_key,
      :source_uri,
      :schedule_config,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN)</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key
    #   <p>The KMS key for the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute source_uri
    #   <p>The URI of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_configuration
    #   <p>The name of the data and how often it should be pulled from the source.</p>
    #
    #   @return [ScheduleConfiguration]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    CreateDataIntegrationOutput = ::Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :kms_key,
      :source_uri,
      :schedule_configuration,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute event_filter
    #   <p>The event filter.</p>
    #
    #   @return [EventFilter]
    #
    # @!attribute event_bridge_bus
    #   <p>The EventBridge bus.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateEventIntegrationInput = ::Struct.new(
      :name,
      :description,
      :event_filter,
      :event_bridge_bus,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the event integration. </p>
    #
    #   @return [String]
    #
    CreateEventIntegrationOutput = ::Struct.new(
      :event_integration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about the DataIntegration association.</p>
    #
    # @!attribute data_integration_association_arn
    #   <p>The Amazon Resource Name (ARN) of the DataIntegration association.</p>
    #
    #   @return [String]
    #
    # @!attribute data_integration_arn
    #   <p>The Amazon Resource Name (ARN)of the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The identifier for teh client that is associated with the DataIntegration
    #         association.</p>
    #
    #   @return [String]
    #
    DataIntegrationAssociationSummary = ::Struct.new(
      :data_integration_association_arn,
      :data_integration_arn,
      :client_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about the DataIntegration.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute source_uri
    #   <p>The URI of the data source.</p>
    #
    #   @return [String]
    #
    DataIntegrationSummary = ::Struct.new(
      :arn,
      :name,
      :source_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #
    #   @return [String]
    #
    DeleteDataIntegrationInput = ::Struct.new(
      :data_integration_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDataIntegrationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration.</p>
    #
    #   @return [String]
    #
    DeleteEventIntegrationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEventIntegrationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource with the specified name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateResourceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event filter.</p>
    #
    # @!attribute source
    #   <p>The source of the events.</p>
    #
    #   @return [String]
    #
    EventFilter = ::Struct.new(
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event integration.</p>
    #
    # @!attribute event_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The event integration description.</p>
    #
    #   @return [String]
    #
    # @!attribute event_filter
    #   <p>The event integration filter.</p>
    #
    #   @return [EventFilter]
    #
    # @!attribute event_bridge_bus
    #   <p>The Amazon EventBridge bus for the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    EventIntegration = ::Struct.new(
      :event_integration_arn,
      :name,
      :description,
      :event_filter,
      :event_bridge_bus,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event integration association.</p>
    #
    # @!attribute event_integration_association_arn
    #   <p>The Amazon Resource Name (ARN) for the event integration association.</p>
    #
    #   @return [String]
    #
    # @!attribute event_integration_association_id
    #   <p>The identifier for the event integration association.</p>
    #
    #   @return [String]
    #
    # @!attribute event_integration_name
    #   <p>The name of the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The identifier for the client that is associated with the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bridge_rule_name
    #   <p>The name of the EventBridge rule.</p>
    #
    #   @return [String]
    #
    # @!attribute client_association_metadata
    #   <p>The metadata associated with the client.</p>
    #
    #   @return [Hash<String, String>]
    #
    EventIntegrationAssociation = ::Struct.new(
      :event_integration_association_arn,
      :event_integration_association_id,
      :event_integration_name,
      :client_id,
      :event_bridge_rule_name,
      :client_association_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>A unique identifier.</p>
    #
    #   @return [String]
    #
    GetDataIntegrationInput = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The KMS key for the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key
    #   <p>The KMS key for the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute source_uri
    #   <p>The URI of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_configuration
    #   <p>The name of the data and how often it should be pulled from the source.</p>
    #
    #   @return [ScheduleConfiguration]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetDataIntegrationOutput = ::Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :kms_key,
      :source_uri,
      :schedule_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration. </p>
    #
    #   @return [String]
    #
    GetEventIntegrationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute event_integration_arn
    #   <p>The Amazon Resource Name (ARN) for the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute event_bridge_bus
    #   <p>The EventBridge bus.</p>
    #
    #   @return [String]
    #
    # @!attribute event_filter
    #   <p>The event filter.</p>
    #
    #   @return [EventFilter]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetEventIntegrationOutput = ::Struct.new(
      :name,
      :description,
      :event_integration_arn,
      :event_bridge_bus,
      :event_filter,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request processing failed due to an error or failure with the service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceError = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is not valid. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListDataIntegrationAssociationsInput = ::Struct.new(
      :data_integration_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_integration_associations
    #   <p>The Amazon Resource Name (ARN) and unique ID of the DataIntegration association.</p>
    #
    #   @return [Array<DataIntegrationAssociationSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListDataIntegrationAssociationsOutput = ::Struct.new(
      :data_integration_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListDataIntegrationsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_integrations
    #   <p>The DataIntegrations associated with this account.</p>
    #
    #   @return [Array<DataIntegrationSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListDataIntegrationsOutput = ::Struct.new(
      :data_integrations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_integration_name
    #   <p>The name of the event integration. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListEventIntegrationAssociationsInput = ::Struct.new(
      :event_integration_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_integration_associations
    #   <p>The event integration associations.</p>
    #
    #   @return [Array<EventIntegrationAssociation>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListEventIntegrationAssociationsOutput = ::Struct.new(
      :event_integration_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListEventIntegrationsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_integrations
    #   <p>The event integrations.</p>
    #
    #   @return [Array<EventIntegration>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListEventIntegrationsOutput = ::Struct.new(
      :event_integrations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
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
    #   <p>Information about the tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource was not found.</p>
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

    # <p>The allowed quota for the resource has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name of the data and how often it should be pulled from the source.</p>
    #
    # @!attribute first_execution_from
    #   <p>The start date for objects to import in the first flow run.</p>
    #
    #   @return [String]
    #
    # @!attribute object
    #   <p>The name of the object to pull from the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_expression
    #   <p>How often the data should be pulled from data source.</p>
    #
    #   @return [String]
    #
    ScheduleConfiguration = ::Struct.new(
      :first_execution_from,
      :object,
      :schedule_expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags. </p>
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

    # <p>The throttling limit has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
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

    # @!attribute identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the DataIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the DataIntegration.</p>
    #
    #   @return [String]
    #
    UpdateDataIntegrationInput = ::Struct.new(
      :identifier,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDataIntegrationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event integration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the event inegration.</p>
    #
    #   @return [String]
    #
    UpdateEventIntegrationInput = ::Struct.new(
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateEventIntegrationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
