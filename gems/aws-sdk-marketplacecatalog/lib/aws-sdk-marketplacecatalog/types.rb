# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceCatalog
  module Types

    # <p>Access is denied.</p>
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

    # @!attribute catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_id
    #   <p>Required. The unique identifier of the <code>StartChangeSet</code> request that you
    #               want to cancel.</p>
    #
    #   @return [String]
    #
    CancelChangeSetInput = ::Struct.new(
      :catalog,
      :change_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_set_id
    #   <p>The unique identifier for the change set referenced in this request.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_arn
    #   <p>The ARN associated with the change set referenced in this request.</p>
    #
    #   @return [String]
    #
    CancelChangeSetOutput = ::Struct.new(
      :change_set_id,
      :change_set_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the <code>ChangeType</code>, <code>Details</code>, and
    #                 <code>Entity</code>.</p>
    #
    # @!attribute change_type
    #   <p>Change types are single string values that describe your intention for the change.
    #               Each change type is unique for each <code>EntityType</code> provided in the change's
    #               scope.</p>
    #
    #   @return [String]
    #
    # @!attribute entity
    #   <p>The entity to be changed.</p>
    #
    #   @return [Entity]
    #
    # @!attribute details
    #   <p>This object contains details specific to the change type of the requested
    #               change.</p>
    #
    #   @return [String]
    #
    # @!attribute change_name
    #   <p>Optional name for the change.</p>
    #
    #   @return [String]
    #
    Change = ::Struct.new(
      :change_type,
      :entity,
      :details,
      :change_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of a change set returned in a list of change sets when the
    #                 <code>ListChangeSets</code> action is called.</p>
    #
    # @!attribute change_set_id
    #   <p>The unique identifier for a change set.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_arn
    #   <p>The ARN associated with the unique identifier for the change set referenced in this
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_name
    #   <p>The non-unique name for the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change set was
    #               started.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change set was
    #               finished.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the change set.</p>
    #
    #   Enum, one of: ["PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute entity_id_list
    #   <p>This object is a list of entity IDs (string) that are a part of a change set. The
    #               entity ID list is a maximum of 20 entities. It must contain at least one entity.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute failure_code
    #   <p>Returned if the change set is in <code>FAILED</code> status. Can be either
    #               <code>CLIENT_ERROR</code>, which means that there are issues with the request (see the
    #               <code>ErrorDetailList</code> of <code>DescribeChangeSet</code>), or <code>SERVER_FAULT</code>,
    #           which means that there is a problem in the system, and you should retry your request.</p>
    #
    #   Enum, one of: ["CLIENT_ERROR", "SERVER_FAULT"]
    #
    #   @return [String]
    #
    ChangeSetSummaryListItem = ::Struct.new(
      :change_set_id,
      :change_set_arn,
      :change_set_name,
      :start_time,
      :end_time,
      :status,
      :entity_id_list,
      :failure_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeStatus
    #
    module ChangeStatus
      # No documentation available.
      #
      PREPARING = "PREPARING"

      # No documentation available.
      #
      APPLYING = "APPLYING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>This object is a container for common summary information about the change. The
    #             summary doesn't contain the whole change structure.</p>
    #
    # @!attribute change_type
    #   <p>The type of the change.</p>
    #
    #   @return [String]
    #
    # @!attribute entity
    #   <p>The entity to be changed.</p>
    #
    #   @return [Entity]
    #
    # @!attribute details
    #   <p>This object contains details specific to the change type of the requested
    #               change.</p>
    #
    #   @return [String]
    #
    # @!attribute error_detail_list
    #   <p>An array of <code>ErrorDetail</code> objects associated with the change.</p>
    #
    #   @return [Array<ErrorDetail>]
    #
    # @!attribute change_name
    #   <p>Optional name for the change.</p>
    #
    #   @return [String]
    #
    ChangeSummary = ::Struct.new(
      :change_type,
      :entity,
      :details,
      :error_detail_list,
      :change_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute change_set_id
    #   <p>Required. The unique identifier for the <code>StartChangeSet</code> request that you
    #               want to describe the details for.</p>
    #
    #   @return [String]
    #
    DescribeChangeSetInput = ::Struct.new(
      :catalog,
      :change_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_set_id
    #   <p>Required. The unique identifier for the change set referenced in this request.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_arn
    #   <p>The ARN associated with the unique identifier for the change set referenced in this
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_name
    #   <p>The optional name provided in the <code>StartChangeSet</code> request. If you do not
    #               provide a name, one is set by default.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the request started.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the request transitioned
    #               to a terminal state. The change cannot transition to a different state. Null if the
    #               request is not in a terminal state. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the change request.</p>
    #
    #   Enum, one of: ["PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>Returned if the change set is in <code>FAILED</code> status. Can be either
    #               <code>CLIENT_ERROR</code>, which means that there are issues with the request (see the
    #               <code>ErrorDetailList</code>), or <code>SERVER_FAULT</code>, which means that there is a
    #               problem in the system, and you should retry your request.</p>
    #
    #   Enum, one of: ["CLIENT_ERROR", "SERVER_FAULT"]
    #
    #   @return [String]
    #
    # @!attribute failure_description
    #   <p>Returned if there is a failure on the change set, but that failure is not related to
    #               any of the changes in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set
    #   <p>An array of <code>ChangeSummary</code> objects.</p>
    #
    #   @return [Array<ChangeSummary>]
    #
    DescribeChangeSetOutput = ::Struct.new(
      :change_set_id,
      :change_set_arn,
      :change_set_name,
      :start_time,
      :end_time,
      :status,
      :failure_code,
      :failure_description,
      :change_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>Required. The unique ID of the entity to describe.</p>
    #
    #   @return [String]
    #
    DescribeEntityInput = ::Struct.new(
      :catalog,
      :entity_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_type
    #   <p>The named type of the entity, in the format of <code>EntityType@Version</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_identifier
    #   <p>The identifier of the entity, in the format of
    #               <code>EntityId@RevisionId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_arn
    #   <p>The ARN associated to the unique identifier for the change set referenced in this
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The last modified date of the entity, in ISO 8601 format
    #               (2018-02-27T13:45:22Z).</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>This stringified JSON object includes the details of the entity.</p>
    #
    #   @return [String]
    #
    DescribeEntityOutput = ::Struct.new(
      :entity_type,
      :entity_identifier,
      :entity_arn,
      :last_modified_date,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An entity contains data that describes your product, its supported features,
    #             and how it can be used or launched by your customer. </p>
    #
    # @!attribute type
    #   <p>The type of entity.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The identifier for the entity.</p>
    #
    #   @return [String]
    #
    Entity = ::Struct.new(
      :type,
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This object is a container for common summary information about the entity. The
    #             summary doesn't contain the whole entity structure, but it does contain information
    #             common across all entities.</p>
    #
    # @!attribute name
    #   <p>The name for the entity. This value is not unique. It is defined by the
    #               seller.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_type
    #   <p>The type of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The unique identifier for the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_arn
    #   <p>The ARN associated with the unique identifier for the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The last time the entity was published, using ISO 8601 format
    #               (2018-02-27T13:45:22Z).</p>
    #
    #   @return [String]
    #
    # @!attribute visibility
    #   <p>The visibility status of the entity to
    #               buyers.
    #               This value can be <code>Public</code> (everyone can view the entity),
    #                   <code>Limited</code> (the entity is visible to limited accounts only), or
    #                   <code>Restricted</code> (the entity was published and then unpublished and only
    #               existing
    #               buyers
    #               can view it). </p>
    #
    #   @return [String]
    #
    EntitySummary = ::Struct.new(
      :name,
      :entity_type,
      :entity_id,
      :entity_arn,
      :last_modified_date,
      :visibility,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the error.</p>
    #
    # @!attribute error_code
    #   <p>The error code that identifies the type of error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The message for the error.</p>
    #
    #   @return [String]
    #
    ErrorDetail = ::Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FailureCode
    #
    module FailureCode
      # No documentation available.
      #
      ClientError = "CLIENT_ERROR"

      # No documentation available.
      #
      ServerFault = "SERVER_FAULT"
    end

    # <p>A filter object, used to optionally filter results from calls to the
    #                 <code>ListEntities</code> and <code>ListChangeSets</code> actions.</p>
    #
    # @!attribute name
    #   <p>For <code>ListEntities</code>, the supported value for this is an
    #                   <code>EntityId</code>.</p>
    #           <p>For <code>ListChangeSets</code>, the supported values are as follows:</p>
    #
    #   @return [String]
    #
    # @!attribute value_list
    #   <p>
    #               <code>ListEntities</code> - This is a list of unique <code>EntityId</code>s.</p>
    #
    #           <p>
    #               <code>ListChangeSets</code> - The supported filter names and associated
    #                   <code>ValueList</code>s is as follows:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ChangeSetName</code> - The supported <code>ValueList</code> is a list of
    #                       non-unique <code>ChangeSetName</code>s. These are defined when you call the
    #                           <code>StartChangeSet</code> action.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Status</code> - The supported <code>ValueList</code> is a list of
    #                       statuses for all change set requests.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EntityId</code> - The supported <code>ValueList</code> is a list of
    #                       unique <code>EntityId</code>s.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BeforeStartTime</code> - The supported <code>ValueList</code> is a list
    #                       of all change sets that started before the filter value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AfterStartTime</code> - The supported <code>ValueList</code> is a list
    #                       of all change sets that started after the filter value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BeforeEndTime</code> - The supported <code>ValueList</code> is a list of
    #                       all change sets that ended before the filter value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AfterEndTime</code> - The supported <code>ValueList</code> is a list of
    #                       all change sets that ended after the filter value.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :value_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was an internal service exception.</p>
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

    # @!attribute catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute filter_list
    #   <p>An array of filter objects.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort
    #   <p>An object that contains two attributes, <code>SortBy</code> and
    #               <code>SortOrder</code>.</p>
    #
    #   @return [Sort]
    #
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call. This value must be provided
    #               in the next call to retrieve the next set of results. By default, this value is
    #               20.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #               results.</p>
    #
    #   @return [String]
    #
    ListChangeSetsInput = ::Struct.new(
      :catalog,
      :filter_list,
      :sort,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_set_summary_list
    #   <p> Array of <code>ChangeSetSummaryListItem</code> objects.</p>
    #
    #   @return [Array<ChangeSetSummaryListItem>]
    #
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. Null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListChangeSetsOutput = ::Struct.new(
      :change_set_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute entity_type
    #   <p>The type of entities to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_list
    #   <p>An array of filter objects. Each filter object contains two attributes,
    #                   <code>filterName</code> and <code>filterValues</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort
    #   <p>An object that contains two attributes, <code>SortBy</code> and
    #               <code>SortOrder</code>.</p>
    #
    #   @return [Sort]
    #
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. Null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the upper limit of the elements on a single page. If a value isn't provided,
    #               the default value is 20.</p>
    #
    #   @return [Integer]
    #
    ListEntitiesInput = ::Struct.new(
      :catalog,
      :entity_type,
      :filter_list,
      :sort,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_summary_list
    #   <p> Array of <code>EntitySummary</code> object.</p>
    #
    #   @return [Array<EntitySummary>]
    #
    # @!attribute next_token
    #   <p>The value of the next token if it exists. Null if there is no more result.</p>
    #
    #   @return [String]
    #
    ListEntitiesOutput = ::Struct.new(
      :entity_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource is currently in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource wasn't found.</p>
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

    # <p>Currently, the specified resource is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotSupportedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of open requests per account has been exceeded.</p>
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

    # <p>An object that contains two attributes, <code>SortBy</code> and
    #             <code>SortOrder</code>.</p>
    #
    # @!attribute sort_by
    #   <p>For <code>ListEntities</code>, supported attributes include
    #                   <code>LastModifiedDate</code> (default), <code>Visibility</code>,
    #                   <code>EntityId</code>, and <code>Name</code>.</p>
    #
    #           <p>For <code>ListChangeSets</code>, supported attributes include <code>StartTime</code>
    #               and <code>EndTime</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The sorting order. Can be <code>ASCENDING</code> or <code>DESCENDING</code>. The
    #               default value is <code>DESCENDING</code>.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    Sort = ::Struct.new(
      :sort_by,
      :sort_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # @!attribute catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute change_set
    #   <p>Array of <code>change</code> object.</p>
    #
    #   @return [Array<Change>]
    #
    # @!attribute change_set_name
    #   <p>Optional case sensitive string of up to 100 ASCII characters. The change set name can
    #               be used to filter the list of change sets. </p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique token to identify the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    StartChangeSetInput = ::Struct.new(
      :catalog,
      :change_set,
      :change_set_name,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_set_id
    #   <p>Unique identifier generated for the request.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_arn
    #   <p>The ARN associated to the unique identifier generated for the request.</p>
    #
    #   @return [String]
    #
    StartChangeSetOutput = ::Struct.new(
      :change_set_id,
      :change_set_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Too many requests.</p>
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

    # <p>An error occurred during validation.</p>
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
