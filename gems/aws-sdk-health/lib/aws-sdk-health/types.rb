# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Health
  module Types

    # <p>Information about an entity that is affected by a Health event.</p>
    #
    # @!attribute entity_arn
    #   <p>The unique identifier for the entity. Format: <code>arn:aws:health:<i>entity-region</i>:<i>aws-account</i>:entity/<i>entity-id</i>
    #               </code>. Example: <code>arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute event_arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute entity_value
    #   <p>The ID of the affected entity.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_url
    #   <p>The URL of the affected entity.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The 12-digit Amazon Web Services account number that contains the affected entity.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>The most recent time that the entity was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_code
    #   <p>The most recent status of the entity affected by the event. The possible values are
    #               <code>IMPAIRED</code>, <code>UNIMPAIRED</code>, and <code>UNKNOWN</code>.</p>
    #
    #   Enum, one of: ["IMPAIRED", "UNIMPAIRED", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map of entity tags attached to the affected entity.</p>
    #            <note>
    #               <p>Currently, the <code>tags</code> property isn't supported.</p>
    #            </note>
    #
    #   @return [Hash<String, String>]
    #
    AffectedEntity = ::Struct.new(
      :entity_arn,
      :event_arn,
      :entity_value,
      :entity_url,
      :aws_account_id,
      :last_updated_time,
      :status_code,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html">EnableHealthServiceAccessForOrganization</a> is already in progress. Wait for the
    #          action to complete before trying again. To get the current status, use the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeHealthServiceStatusForOrganization.html">DescribeHealthServiceStatusForOrganization</a> operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A range of dates and times that is used by the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html">EventFilter</a> and <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html">EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set:
    #          match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or
    #             <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code>
    #          inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where
    #          the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set
    #          and <code>to</code> is set: match items where the timestamp value is equal to or before
    #             <code>to</code>.</p>
    #
    # @!attribute from
    #   <p>The starting date and time of a time range.</p>
    #
    #   @return [Time]
    #
    # @!attribute to
    #   <p>The ending date and time of a time range.</p>
    #
    #   @return [Time]
    #
    DateTimeRange = ::Struct.new(
      :from,
      :to,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    DescribeAffectedAccountsForOrganizationInput = ::Struct.new(
      :event_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute affected_accounts
    #   <p>A JSON set of elements of the affected accounts.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_scope_code
    #   <p>This parameter specifies if the Health event is a public Amazon Web Services service event or an account-specific event.</p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>eventScopeCode</code> value is <code>PUBLIC</code>, then the
    #                     <code>affectedAccounts</code> value is always empty.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>eventScopeCode</code> value is <code>ACCOUNT_SPECIFIC</code>, then
    #                  the <code>affectedAccounts</code> value lists the affected Amazon Web Services accounts in your
    #                  organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you
    #                  have Amazon Web Services accounts that use that service, those account IDs appear in the
    #                  response.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>eventScopeCode</code> value is <code>NONE</code>, then the
    #                     <code>eventArn</code> that you specified in the request is invalid or doesn't
    #                  exist.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    DescribeAffectedAccountsForOrganizationOutput = ::Struct.new(
      :affected_accounts,
      :event_scope_code,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_entity_filters
    #   <p>A JSON set of elements including the <code>awsAccountId</code> and the
    #               <code>eventArn</code>.</p>
    #
    #   @return [Array<EventAccountFilter>]
    #
    # @!attribute locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    DescribeAffectedEntitiesForOrganizationInput = ::Struct.new(
      :organization_entity_filters,
      :locale,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entities
    #   <p>A JSON set of elements including the <code>awsAccountId</code> and its
    #               <code>entityArn</code>, <code>entityValue</code> and its <code>entityArn</code>,
    #               <code>lastUpdatedTime</code>, and <code>statusCode</code>.</p>
    #
    #   @return [Array<AffectedEntity>]
    #
    # @!attribute failed_set
    #   <p>A JSON set of elements of the failed response, including the <code>awsAccountId</code>,
    #               <code>errorMessage</code>, <code>errorName</code>, and <code>eventArn</code>.</p>
    #
    #   @return [Array<OrganizationAffectedEntitiesErrorItem>]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    DescribeAffectedEntitiesForOrganizationOutput = ::Struct.new(
      :entities,
      :failed_set,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Values to narrow the results returned. At least one event ARN is required.</p>
    #
    #   @return [EntityFilter]
    #
    # @!attribute locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    DescribeAffectedEntitiesInput = ::Struct.new(
      :filter,
      :locale,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entities
    #   <p>The entities that match the filter criteria.</p>
    #
    #   @return [Array<AffectedEntity>]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    DescribeAffectedEntitiesOutput = ::Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_arns
    #   <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    DescribeEntityAggregatesInput = ::Struct.new(
      :event_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_aggregates
    #   <p>The number of entities that are affected by each of the specified events.</p>
    #
    #   @return [Array<EntityAggregate>]
    #
    DescribeEntityAggregatesOutput = ::Struct.new(
      :entity_aggregates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Values to narrow the results returned.</p>
    #
    #   @return [EventFilter]
    #
    # @!attribute aggregate_field
    #   <p>The only currently supported value is <code>eventTypeCategory</code>.</p>
    #
    #   Enum, one of: ["eventTypeCategory"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    DescribeEventAggregatesInput = ::Struct.new(
      :filter,
      :aggregate_field,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_aggregates
    #   <p>The number of events in each category that meet the optional filter criteria.</p>
    #
    #   @return [Array<EventAggregate>]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    DescribeEventAggregatesOutput = ::Struct.new(
      :event_aggregates,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_event_detail_filters
    #   <p>A set of JSON elements that includes the <code>awsAccountId</code> and the
    #               <code>eventArn</code>.</p>
    #
    #   @return [Array<EventAccountFilter>]
    #
    # @!attribute locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    #   @return [String]
    #
    DescribeEventDetailsForOrganizationInput = ::Struct.new(
      :organization_event_detail_filters,
      :locale,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successful_set
    #   <p>Information about the events that could be retrieved.</p>
    #
    #   @return [Array<OrganizationEventDetails>]
    #
    # @!attribute failed_set
    #   <p>Error messages for any events that could not be retrieved.</p>
    #
    #   @return [Array<OrganizationEventDetailsErrorItem>]
    #
    DescribeEventDetailsForOrganizationOutput = ::Struct.new(
      :successful_set,
      :failed_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_arns
    #   <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    #   @return [String]
    #
    DescribeEventDetailsInput = ::Struct.new(
      :event_arns,
      :locale,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successful_set
    #   <p>Information about the events that could be retrieved.</p>
    #
    #   @return [Array<EventDetails>]
    #
    # @!attribute failed_set
    #   <p>Error messages for any events that could not be retrieved.</p>
    #
    #   @return [Array<EventDetailsErrorItem>]
    #
    DescribeEventDetailsOutput = ::Struct.new(
      :successful_set,
      :failed_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Values to narrow the results returned.</p>
    #
    #   @return [EventTypeFilter]
    #
    # @!attribute locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    DescribeEventTypesInput = ::Struct.new(
      :filter,
      :locale,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_types
    #   <p>A list of event types that match the filter criteria. Event types have a category
    #               (<code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>),
    #            a service (for example, <code>EC2</code>, <code>RDS</code>, <code>DATAPIPELINE</code>,
    #               <code>BILLING</code>), and a code (in the format
    #                  <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i>
    #               </code>; for
    #            example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>
    #
    #   @return [Array<EventType>]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    DescribeEventTypesOutput = ::Struct.new(
      :event_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Values to narrow the results returned.</p>
    #
    #   @return [OrganizationEventFilter]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    #   @return [String]
    #
    DescribeEventsForOrganizationInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      :locale,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events
    #   <p>The events that match the specified filter criteria.</p>
    #
    #   @return [Array<OrganizationEvent>]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    DescribeEventsForOrganizationOutput = ::Struct.new(
      :events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Values to narrow the results returned.</p>
    #
    #   @return [EventFilter]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    #   @return [String]
    #
    DescribeEventsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      :locale,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events
    #   <p>The events that match the specified filter criteria.</p>
    #
    #   @return [Array<Event>]
    #
    # @!attribute next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    #   @return [String]
    #
    DescribeEventsOutput = ::Struct.new(
      :events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeHealthServiceStatusForOrganizationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute health_service_access_status_for_organization
    #   <p>Information about the status of enabling or disabling the Health organizational
    #            view feature in your organization.</p>
    #            <p>Valid values are <code>ENABLED | DISABLED | PENDING</code>. </p>
    #
    #   @return [String]
    #
    DescribeHealthServiceStatusForOrganizationOutput = ::Struct.new(
      :health_service_access_status_for_organization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableHealthServiceAccessForOrganizationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableHealthServiceAccessForOrganizationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableHealthServiceAccessForOrganizationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableHealthServiceAccessForOrganizationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of entities that are affected by one or more events. Returned by the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEntityAggregates.html">DescribeEntityAggregates</a> operation.</p>
    #
    # @!attribute event_arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>The number of entities that match the criteria for the specified events.</p>
    #
    #   @return [Integer]
    #
    EntityAggregate = ::Struct.new(
      :event_arn,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.count ||= 0
      end

    end

    # <p>The values to use to filter results from the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html">DescribeAffectedEntities</a> operation.</p>
    #
    # @!attribute event_arns
    #   <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute entity_arns
    #   <p>A list of entity ARNs (unique identifiers).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute entity_values
    #   <p>A list of IDs for affected entities.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute last_updated_times
    #   <p>A list of the most recent dates and times that the entity was updated.</p>
    #
    #   @return [Array<DateTimeRange>]
    #
    # @!attribute tags
    #   <p>A map of entity tags attached to the affected entity.</p>
    #            <note>
    #               <p>Currently, the <code>tags</code> property isn't supported.</p>
    #            </note>
    #
    #   @return [Array<Hash<String, String>>]
    #
    # @!attribute status_codes
    #   <p>A list of entity status codes (<code>IMPAIRED</code>, <code>UNIMPAIRED</code>, or
    #               <code>UNKNOWN</code>).</p>
    #
    #   @return [Array<String>]
    #
    EntityFilter = ::Struct.new(
      :event_arns,
      :entity_arns,
      :entity_values,
      :last_updated_times,
      :tags,
      :status_codes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about an Health event.</p>
    #          <p>Health events can be public or account-specific:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <i>Public events</i> might be service events that are not specific
    #                to an Amazon Web Services account. For example, if there is an issue with an Amazon Web Services Region,
    #                Health provides information about the event, even if you don't use services or
    #                resources in that Region.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>Account-specific</i> events are specific to either your
    #                Amazon Web Services account or an account in your organization. For example, if there's an issue
    #                with Amazon Elastic Compute Cloud in a Region that you use, Health provides information about the
    #                event and the affected resources in the account.</p>
    #             </li>
    #          </ul>
    #          <p>You can determine if an event is public or account-specific by using the
    #             <code>eventScopeCode</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode">eventScopeCode</a>.</p>
    #
    # @!attribute arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>The Amazon Web Services service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_code
    #   <p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i>
    #               </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_category
    #   <p>A list of event type category codes. Possible values are
    #   <code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>. Currently,
    #   the <code>investigation</code> value isn't supported at this time.</p>
    #
    #   Enum, one of: ["issue", "accountNotification", "scheduledChange", "investigation"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region name of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Amazon Web Services Availability Zone of the event. For example, us-east-1a.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time that the event began.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time that the event ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The most recent date and time that the event was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_code
    #   <p>The most recent status of the event. Possible values are <code>open</code>,
    #               <code>closed</code>, and <code>upcoming</code>.</p>
    #
    #   Enum, one of: ["open", "closed", "upcoming"]
    #
    #   @return [String]
    #
    # @!attribute event_scope_code
    #   <p>This parameter specifies if the Health event is a public Amazon Web Services service event or an account-specific event.</p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>eventScopeCode</code> value is <code>PUBLIC</code>, then the
    #                     <code>affectedAccounts</code> value is always empty.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>eventScopeCode</code> value is <code>ACCOUNT_SPECIFIC</code>, then
    #                  the <code>affectedAccounts</code> value lists the affected Amazon Web Services accounts in your
    #                  organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you
    #                  have Amazon Web Services accounts that use that service, those account IDs appear in the
    #                  response.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>eventScopeCode</code> value is <code>NONE</code>, then the
    #                     <code>eventArn</code> that you specified in the request is invalid or doesn't
    #                  exist.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #
    #   @return [String]
    #
    Event = ::Struct.new(
      :arn,
      :service,
      :event_type_code,
      :event_type_category,
      :region,
      :availability_zone,
      :start_time,
      :end_time,
      :last_updated_time,
      :status_code,
      :event_scope_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The values used to filter results from the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html">DescribeEventDetailsForOrganization</a> and <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html">DescribeAffectedEntitiesForOrganization</a> operations.</p>
    #
    # @!attribute event_arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The 12-digit Amazon Web Services account numbers that contains the affected entities.</p>
    #
    #   @return [String]
    #
    EventAccountFilter = ::Struct.new(
      :event_arn,
      :aws_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of events of each issue type. Returned by the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html">DescribeEventAggregates</a> operation.</p>
    #
    # @!attribute aggregate_value
    #   <p>The issue type for the associated count.</p>
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>The number of events of the associated issue type.</p>
    #
    #   @return [Integer]
    #
    EventAggregate = ::Struct.new(
      :aggregate_value,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.count ||= 0
      end

    end

    # <p>The detailed description of the event. Included in the information returned by the
    #             <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html">DescribeEventDetails</a> operation.</p>
    #
    # @!attribute latest_description
    #   <p>The most recent description of the event.</p>
    #
    #   @return [String]
    #
    EventDescription = ::Struct.new(
      :latest_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about an event. A combination of an <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a> object, an <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html">EventDescription</a> object, and additional metadata about the event. Returned by
    #          the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html">DescribeEventDetails</a> operation.</p>
    #
    # @!attribute event
    #   <p>Summary information about the event.</p>
    #
    #   @return [Event]
    #
    # @!attribute event_description
    #   <p>The most recent description of the event.</p>
    #
    #   @return [EventDescription]
    #
    # @!attribute event_metadata
    #   <p>Additional metadata about the event.</p>
    #
    #   @return [Hash<String, String>]
    #
    EventDetails = ::Struct.new(
      :event,
      :event_description,
      :event_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error information returned when a <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html">DescribeEventDetails</a> operation can't find a specified event.</p>
    #
    # @!attribute event_arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute error_name
    #   <p>The name of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A message that describes the error.</p>
    #
    #   @return [String]
    #
    EventDetailsErrorItem = ::Struct.new(
      :event_arn,
      :error_name,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The values to use to filter results from the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html">DescribeEvents</a> and
    #             <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html">DescribeEventAggregates</a> operations.</p>
    #
    # @!attribute event_arns
    #   <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_type_codes
    #   <p>A list of unique identifiers for event types. For example, <code>"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute services
    #   <p>The Amazon Web Services services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute regions
    #   <p>A list of Amazon Web Services Regions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute availability_zones
    #   <p>A list of Amazon Web Services Availability Zones.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_times
    #   <p>A list of dates and times that the event began.</p>
    #
    #   @return [Array<DateTimeRange>]
    #
    # @!attribute end_times
    #   <p>A list of dates and times that the event ended.</p>
    #
    #   @return [Array<DateTimeRange>]
    #
    # @!attribute last_updated_times
    #   <p>A list of dates and times that the event was last updated.</p>
    #
    #   @return [Array<DateTimeRange>]
    #
    # @!attribute entity_arns
    #   <p>A list of entity ARNs (unique identifiers).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute entity_values
    #   <p>A list of entity identifiers, such as EC2 instance IDs (<code>i-34ab692e</code>) or EBS
    #            volumes (<code>vol-426ab23e</code>).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_type_categories
    #   <p>A list of event type category codes. Possible values are
    #   <code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>. Currently,
    #   the <code>investigation</code> value isn't supported at this time.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>A map of entity tags attached to the affected entity.</p>
    #            <note>
    #               <p>Currently, the <code>tags</code> property isn't supported.</p>
    #            </note>
    #
    #   @return [Array<Hash<String, String>>]
    #
    # @!attribute event_status_codes
    #   <p>A list of event status codes.</p>
    #
    #   @return [Array<String>]
    #
    EventFilter = ::Struct.new(
      :event_arns,
      :event_type_codes,
      :services,
      :regions,
      :availability_zones,
      :start_times,
      :end_times,
      :last_updated_times,
      :entity_arns,
      :entity_values,
      :event_type_categories,
      :tags,
      :event_status_codes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the metadata about a type of event that is reported by Health. The
    #             <code>EventType</code> shows the category, service, and the event type code of the
    #          event. For example, an <code>issue</code> might be the category, <code>EC2</code> the
    #          service, and <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code> the event type code.</p>
    #          <p>You can use the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html">DescribeEventTypes</a> API operation to return this information
    #          about an event.</p>
    #          <p>You can also use the Amazon CloudWatch Events console to create a rule so that you can get notified or
    #          take action when Health delivers a specific event to your Amazon Web Services account. For more
    #          information, see <a href="https://docs.aws.amazon.com/health/latest/ug/cloudwatch-events-health.html">Monitor for Health events with Amazon CloudWatch Events</a> in the
    #             <i>Health User Guide</i>.</p>
    #
    # @!attribute service
    #   <p>The Amazon Web Services service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i>
    #               </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>A list of event type category codes. Possible values are
    #   <code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>. Currently,
    #   the <code>investigation</code> value isn't supported at this time.</p>
    #
    #   Enum, one of: ["issue", "accountNotification", "scheduledChange", "investigation"]
    #
    #   @return [String]
    #
    EventType = ::Struct.new(
      :service,
      :code,
      :category,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The values to use to filter results from the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html">DescribeEventTypes</a>
    #          operation.</p>
    #
    # @!attribute event_type_codes
    #   <p>A list of event type codes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute services
    #   <p>The Amazon Web Services services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_type_categories
    #   <p>A list of event type category codes. Possible values are
    #   <code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>. Currently,
    #   the <code>investigation</code> value isn't supported at this time.</p>
    #
    #   @return [Array<String>]
    #
    EventTypeFilter = ::Struct.new(
      :event_type_codes,
      :services,
      :event_type_categories,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified pagination token (<code>nextToken</code>) is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPaginationToken = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error information returned when a <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html">DescribeAffectedEntitiesForOrganization</a> operation can't find or process a
    #          specific entity.</p>
    #
    # @!attribute aws_account_id
    #   <p>The 12-digit Amazon Web Services account numbers that contains the affected entities.</p>
    #
    #   @return [String]
    #
    # @!attribute event_arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute error_name
    #   <p>The name of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The unique identifier for the event type. The format is
    #               <code>AWS_SERVICE_DESCRIPTION</code>. For example,
    #               <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>
    #
    #   @return [String]
    #
    OrganizationAffectedEntitiesErrorItem = ::Struct.new(
      :aws_account_id,
      :event_arn,
      :error_name,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about an event, returned by the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html">DescribeEventsForOrganization</a> operation.</p>
    #
    # @!attribute arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>The Amazon Web Services service that is affected by the event, such as EC2 and RDS.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_code
    #   <p>The unique identifier for the event type. The format is
    #               <code>AWS_SERVICE_DESCRIPTION</code>. For example,
    #               <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_category
    #   <p>A list of event type category codes. Possible values are
    #   <code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>. Currently,
    #   the <code>investigation</code> value isn't supported at this time.</p>
    #
    #   Enum, one of: ["issue", "accountNotification", "scheduledChange", "investigation"]
    #
    #   @return [String]
    #
    # @!attribute event_scope_code
    #   <p>This parameter specifies if the Health event is a public Amazon Web Services service event or an account-specific event.</p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>eventScopeCode</code> value is <code>PUBLIC</code>, then the
    #                     <code>affectedAccounts</code> value is always empty.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>eventScopeCode</code> value is <code>ACCOUNT_SPECIFIC</code>, then
    #                  the <code>affectedAccounts</code> value lists the affected Amazon Web Services accounts in your
    #                  organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you
    #                  have Amazon Web Services accounts that use that service, those account IDs appear in the
    #                  response.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>eventScopeCode</code> value is <code>NONE</code>, then the
    #                     <code>eventArn</code> that you specified in the request is invalid or doesn't
    #                  exist.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region name of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time that the event began.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time that the event ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The most recent date and time that the event was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_code
    #   <p>The most recent status of the event. Possible values are <code>open</code>,
    #               <code>closed</code>, and <code>upcoming</code>.</p>
    #
    #   Enum, one of: ["open", "closed", "upcoming"]
    #
    #   @return [String]
    #
    OrganizationEvent = ::Struct.new(
      :arn,
      :service,
      :event_type_code,
      :event_type_category,
      :event_scope_code,
      :region,
      :start_time,
      :end_time,
      :last_updated_time,
      :status_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about an event. A combination of an <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a> object, an <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html">EventDescription</a> object, and additional metadata about the event. Returned by
    #          the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html">DescribeEventDetailsForOrganization</a> operation.</p>
    #
    # @!attribute aws_account_id
    #   <p>The 12-digit Amazon Web Services account numbers that contains the affected entities.</p>
    #
    #   @return [String]
    #
    # @!attribute event
    #   <p>Summary information about an Health event.</p>
    #            <p>Health events can be public or account-specific:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>Public events</i> might be service events that are not specific
    #                  to an Amazon Web Services account. For example, if there is an issue with an Amazon Web Services Region,
    #                  Health provides information about the event, even if you don't use services or
    #                  resources in that Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>Account-specific</i> events are specific to either your
    #                  Amazon Web Services account or an account in your organization. For example, if there's an issue
    #                  with Amazon Elastic Compute Cloud in a Region that you use, Health provides information about the
    #                  event and the affected resources in the account.</p>
    #               </li>
    #            </ul>
    #            <p>You can determine if an event is public or account-specific by using the
    #               <code>eventScopeCode</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html AWSHealth-Type-Event-eventScopeCode">eventScopeCode</a>.</p>
    #
    #   @return [Event]
    #
    # @!attribute event_description
    #   <p>The detailed description of the event. Included in the information returned by the
    #               <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html">DescribeEventDetails</a> operation.</p>
    #
    #   @return [EventDescription]
    #
    # @!attribute event_metadata
    #   <p>Additional metadata about the event.</p>
    #
    #   @return [Hash<String, String>]
    #
    OrganizationEventDetails = ::Struct.new(
      :aws_account_id,
      :event,
      :event_description,
      :event_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error information returned when a <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html">DescribeEventDetailsForOrganization</a> operation can't find a specified
    #          event.</p>
    #
    # @!attribute aws_account_id
    #   <p>Error information returned when a <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html">DescribeEventDetailsForOrganization</a> operation can't find a specified
    #            event.</p>
    #
    #   @return [String]
    #
    # @!attribute event_arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute error_name
    #   <p>The name of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A message that describes the error.</p>
    #            <p>If you call the <code>DescribeEventDetailsForOrganization</code> operation and receive one of the following errors, follow the recommendations in the message:</p>
    #            <ul>
    #               <li>
    #                  <p>We couldn't find a public event that matches your request. To find an event that is account specific, you must enter an Amazon Web Services account ID in the request.</p>
    #               </li>
    #               <li>
    #                  <p>We couldn't find an account specific event for the specified Amazon Web Services account. To find an event that is public, you must enter a null value for the Amazon Web Services account ID in the request.</p>
    #               </li>
    #               <li>
    #                  <p>Your Amazon Web Services account doesn't include the Amazon Web Services Support plan required to use the
    #   Health API. You must have either a Business, Enterprise On-Ramp, or Enterprise Support plan.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    OrganizationEventDetailsErrorItem = ::Struct.new(
      :aws_account_id,
      :event_arn,
      :error_name,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The values to filter results from the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html">DescribeEventsForOrganization</a> operation.</p>
    #
    # @!attribute event_type_codes
    #   <p>A list of unique identifiers for event types. For example, <code>"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute aws_account_ids
    #   <p>A list of 12-digit Amazon Web Services account numbers that contains the affected entities.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute services
    #   <p>The Amazon Web Services services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute regions
    #   <p>A list of Amazon Web Services Regions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_time
    #   <p>A range of dates and times that is used by the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html">EventFilter</a> and <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html">EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set:
    #            match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or
    #               <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code>
    #            inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where
    #            the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set
    #            and <code>to</code> is set: match items where the timestamp value is equal to or before
    #               <code>to</code>.</p>
    #
    #   @return [DateTimeRange]
    #
    # @!attribute end_time
    #   <p>A range of dates and times that is used by the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html">EventFilter</a> and <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html">EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set:
    #            match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or
    #               <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code>
    #            inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where
    #            the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set
    #            and <code>to</code> is set: match items where the timestamp value is equal to or before
    #               <code>to</code>.</p>
    #
    #   @return [DateTimeRange]
    #
    # @!attribute last_updated_time
    #   <p>A range of dates and times that is used by the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html">EventFilter</a> and <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html">EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set:
    #            match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or
    #               <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code>
    #            inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where
    #            the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set
    #            and <code>to</code> is set: match items where the timestamp value is equal to or before
    #               <code>to</code>.</p>
    #
    #   @return [DateTimeRange]
    #
    # @!attribute entity_arns
    #   <p>A list of entity ARNs (unique identifiers).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute entity_values
    #   <p>A list of entity identifiers, such as EC2 instance IDs (i-34ab692e) or EBS volumes (vol-426ab23e).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_type_categories
    #   <p>A list of event type category codes. Possible values are
    #   <code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>. Currently,
    #   the <code>investigation</code> value isn't supported at this time.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_status_codes
    #   <p>A list of event status codes.</p>
    #
    #   @return [Array<String>]
    #
    OrganizationEventFilter = ::Struct.new(
      :event_type_codes,
      :aws_account_ids,
      :services,
      :regions,
      :start_time,
      :end_time,
      :last_updated_time,
      :entity_arns,
      :entity_values,
      :event_type_categories,
      :event_status_codes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified locale is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedLocale = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EntityStatusCode
    #
    module EntityStatusCode
      # No documentation available.
      #
      IMPAIRED = "IMPAIRED"

      # No documentation available.
      #
      UNIMPAIRED = "UNIMPAIRED"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # Includes enum constants for EventAggregateField
    #
    module EventAggregateField
      # No documentation available.
      #
      EventTypeCategory = "eventTypeCategory"
    end

    # Includes enum constants for EventScopeCode
    #
    module EventScopeCode
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      ACCOUNT_SPECIFIC = "ACCOUNT_SPECIFIC"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for EventStatusCode
    #
    module EventStatusCode
      # No documentation available.
      #
      OPEN = "open"

      # No documentation available.
      #
      CLOSED = "closed"

      # No documentation available.
      #
      UPCOMING = "upcoming"
    end

    # Includes enum constants for EventTypeCategory
    #
    module EventTypeCategory
      # No documentation available.
      #
      ISSUE = "issue"

      # No documentation available.
      #
      ACCOUNT_NOTIFICATION = "accountNotification"

      # No documentation available.
      #
      SCHEDULED_CHANGE = "scheduledChange"

      # No documentation available.
      #
      INVESTIGATION = "investigation"
    end

  end
end
