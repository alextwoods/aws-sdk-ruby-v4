# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudTrail
  module Types

    # <p>Specifies the tags to add to a trail or event data store.</p>
    #
    # @!attribute resource_id
    #   <p>Specifies the ARN of the trail or event data store to which one or more tags will be added. The format of a trail ARN is:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tags_list
    #   <p>Contains a list of tags, up to a limit of 50</p>
    #
    #   @return [Array<Tag>]
    #
    AddTagsInput = ::Struct.new(
      :resource_id,
      :tags_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data if successful. Otherwise, returns an error.</p>
    #
    AddTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Advanced event selectors let you create fine-grained selectors for the following CloudTrail
    #          event record ﬁelds. They help you control costs by logging only those events
    #          that are important to you. For more information about advanced event selectors, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging data events for trails</a> in the <i>CloudTrail User Guide</i>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>readOnly</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>eventSource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>eventName</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>eventCategory</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>resources.type</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>resources.ARN</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>You cannot apply both event selectors and advanced event selectors to a trail.</p>
    #
    # @!attribute name
    #   <p>An optional, descriptive name for an advanced event selector, such as "Log data events
    #            for only two S3 buckets".</p>
    #
    #   @return [String]
    #
    # @!attribute field_selectors
    #   <p>Contains all selector statements in an advanced event selector.</p>
    #
    #   @return [Array<AdvancedFieldSelector>]
    #
    AdvancedEventSelector = ::Struct.new(
      :name,
      :field_selectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single selector statement in an advanced event selector.</p>
    #
    # @!attribute field
    #   <p>
    #            A field in an event record on which to filter events to be logged. Supported fields include <code>readOnly</code>, <code>eventCategory</code>,
    #            <code>eventSource</code> (for management events), <code>eventName</code>, <code>resources.type</code>, and <code>resources.ARN</code>.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>readOnly</code>
    #                     </b> - Optional. Can be set to <code>Equals</code> a value of <code>true</code>
    #               or <code>false</code>. If you do not add this field, CloudTrail logs both both <code>read</code> and
    #               <code>write</code> events. A value of <code>true</code> logs only <code>read</code> events. A value of <code>false</code>
    #               logs only <code>write</code> events.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>eventSource</code>
    #                     </b> - For filtering management events only.
    #               This can be set only to <code>NotEquals</code>
    #                     <code>kms.amazonaws.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>eventName</code>
    #                     </b> - Can use any operator. You can use it to ﬁlter in
    #               or ﬁlter out any data event logged to CloudTrail, such as <code>PutBucket</code> or <code>GetSnapshotBlock</code>. You can have multiple values
    #               for this ﬁeld, separated by commas.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>eventCategory</code>
    #                     </b> - This is required. It must be set to <code>Equals</code>, and
    #               the value must be <code>Management</code> or <code>Data</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>resources.type</code>
    #                     </b> - This ﬁeld is required.
    #                     <code>resources.type</code> can only use the <code>Equals</code> operator, and the
    #               value can be one of the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>AWS::S3::Object</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::Lambda::Function</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::DynamoDB::Table</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::S3Outposts::Object</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::ManagedBlockchain::Node</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::S3ObjectLambda::AccessPoint</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EC2::Snapshot</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::S3::AccessPoint</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::DynamoDB::Stream</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::Glue::Table</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>
    #                  You can have only one <code>resources.type</code> ﬁeld per selector. To log data
    #                  events on more than one resource type, add another selector.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>resources.ARN</code>
    #                     </b> - You can use any operator with
    #                  <code>resources.ARN</code>, but if you use <code>Equals</code> or <code>NotEquals</code>, the
    #                  value must exactly match the ARN of a valid resource of the type you've speciﬁed in
    #                  the template as the value of resources.type. For example, if resources.type equals
    #                     <code>AWS::S3::Object</code>, the ARN must be in one of the following formats. To
    #                  log all data events for all objects in a specific S3 bucket, use the
    #                     <code>StartsWith</code> operator, and include only the bucket ARN as the matching value.</p>
    #                  <p>The trailing slash is intentional; do not exclude it. Replace the text between
    #                  less than and greater than symbols (<>) with resource-specific information. </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:s3:::<bucket_name>/</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:s3:::<bucket_name>/<object_path>/</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>When <code>resources.type</code> equals <code>AWS::S3::AccessPoint</code>, and the
    #                  operator is set to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in
    #                  one of the following formats. To log events on all objects in an S3 access point, we
    #                  recommend that you use only the access point ARN, don’t include the object path, and
    #                  use the <code>StartsWith</code> or <code>NotStartsWith</code> operators.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:s3:<region>:<account_ID>:accesspoint/<access_point_name></code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:s3:<region>:<account_ID>:accesspoint/<access_point_name>/object/<object_path></code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>When resources.type equals <code>AWS::Lambda::Function</code>, and the operator is set
    #               to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:lambda:<region>:<account_ID>:function:<function_name></code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>When resources.type equals <code>AWS::DynamoDB::Table</code>, and the operator is
    #                  set to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the
    #                  following format:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:dynamodb:<region>:<account_ID>:table/<table_name></code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>When <code>resources.type</code> equals <code>AWS::S3Outposts::Object</code>, and the operator
    #                  is set to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:s3-outposts:<region>:<account_ID>:<object_path></code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>When <code>resources.type</code> equals <code>AWS::ManagedBlockchain::Node</code>,
    #                  and the operator is set to <code>Equals</code> or <code>NotEquals</code>, the ARN
    #                  must be in the following format:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:managedblockchain:<region>:<account_ID>:nodes/<node_ID></code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>When <code>resources.type</code> equals
    #                     <code>AWS::S3ObjectLambda::AccessPoint</code>, and the operator is set to
    #                     <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following
    #                  format:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:s3-object-lambda:<region>:<account_ID>:accesspoint/<access_point_name></code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>When <code>resources.type</code> equals <code>AWS::EC2::Snapshot</code>, and the
    #                  operator is set to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in
    #                  the following format:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:ec2:<region>::snapshot/<snapshot_ID></code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>When <code>resources.type</code> equals <code>AWS::DynamoDB::Stream</code>, and the operator is set to
    #                  <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:dynamodb:<region>:<account_ID>:table/<table_name>/stream/<date_time></code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>When <code>resources.type</code> equals <code>AWS::Glue::Table</code>, and the operator is set to
    #                  <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>arn:<partition>:glue:<region>:<account_ID>:table/<database_name>/<table_name></code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute equals
    #   <p> An operator that includes events that match the exact value of the event record field
    #            specified as the value of <code>Field</code>. This is the only valid operator that you can
    #            use with the <code>readOnly</code>, <code>eventCategory</code>, and
    #               <code>resources.type</code> fields.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute starts_with
    #   <p>An operator that includes events that match the first few characters of the event record
    #            field specified as the value of <code>Field</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ends_with
    #   <p>An operator that includes events that match the last few characters of the event record
    #            field specified as the value of <code>Field</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_equals
    #   <p>
    #            An operator that excludes events that match the exact value of the event record field specified as the value of <code>Field</code>.
    #         </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_starts_with
    #   <p>
    #            An operator that excludes events that match the first few characters of the event record field specified as the value of <code>Field</code>.
    #         </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_ends_with
    #   <p>
    #            An operator that excludes events that match the last few characters of the event record field specified as the value of <code>Field</code>.
    #         </p>
    #
    #   @return [Array<String>]
    #
    AdvancedFieldSelector = ::Struct.new(
      :field,
      :equals,
      :starts_with,
      :ends_with,
      :not_equals,
      :not_starts_with,
      :not_ends_with,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified query is running.</p>
    #
    #   @return [String]
    #
    # @!attribute query_id
    #   <p>The ID of the query that you want to cancel. The <code>QueryId</code> comes from the response of a <code>StartQuery</code>
    #         operation.</p>
    #
    #   @return [String]
    #
    CancelQueryInput = ::Struct.new(
      :event_data_store,
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the canceled query.</p>
    #
    #   @return [String]
    #
    # @!attribute query_status
    #   <p>Shows the status of a query after a <code>CancelQuery</code> request. Typically, the values shown are either
    #            <code>RUNNING</code> or <code>CANCELLED</code>.</p>
    #
    #   Enum, one of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    CancelQueryOutput = ::Struct.new(
      :query_id,
      :query_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when an operation is called with a trail ARN that is not valid. The following is the format of a trail ARN.</p>
    #          <p>
    #             <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #          </p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    CloudTrailARNInvalidException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when trusted access has not been enabled between CloudTrail and Organizations. For more information,
    #          see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Enabling Trusted Access with Other Amazon Web Services Services</a>
    #          and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html">Prepare For Creating a Trail For Your Organization</a>. </p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    CloudTrailAccessNotEnabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when a call results in the <code>InvalidClientTokenId</code> error code.
    #          This can occur when you are creating or updating a trail to send notifications to an Amazon SNS topic that
    #          is in a suspended Amazon Web Services account.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    CloudTrailInvalidClientTokenIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot set a CloudWatch Logs delivery for this region.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    CloudWatchLogsDeliveryUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the specified resource is not ready for an operation.
    #          This can occur when you try to run an operation on a resource before CloudTrail has time to fully load the resource.
    #          If this exception occurs, wait a few minutes, and then try the operation again.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
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
    #   <p>The name of the event data store.</p>
    #
    #   @return [String]
    #
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event
    #            selectors, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html creating-data-event-selectors-advanced">Log events by using advanced event selectors</a> in the CloudTrail
    #            User Guide.</p>
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    # @!attribute multi_region_enabled
    #   <p>Specifies whether the event data store includes events from all regions, or only from the region in which the event data store
    #            is created.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute organization_enabled
    #   <p>Specifies whether an event data store collects events logged for an organization in Organizations.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retention_period
    #   <p>The retention period of the event data store, in days. You can set a retention period of up to 2555 days,
    #         the equivalent of seven years.</p>
    #
    #   @return [Integer]
    #
    # @!attribute termination_protection_enabled
    #   <p>Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you
    #         cannot delete the event data store until termination protection is disabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateEventDataStoreInput = ::Struct.new(
      :name,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :tags_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The ARN of the event data store.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of event data store creation.</p>
    #
    #   Enum, one of: ["CREATED", "ENABLED", "PENDING_DELETION"]
    #
    #   @return [String]
    #
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors that were used to select the events for the data store.</p>
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    # @!attribute multi_region_enabled
    #   <p>Indicates whether the event data store collects events from all regions, or only from the region in which it was created.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute organization_enabled
    #   <p>Indicates whether an event data store is collecting logged events for an organization in Organizations.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retention_period
    #   <p>The retention period of an event data store, in days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute termination_protection_enabled
    #   <p>Indicates whether termination protection is enabled for the event data store.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute created_timestamp
    #   <p>The timestamp that shows when the event data store was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The timestamp that shows when an event data store was updated, if applicable.
    #            <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>
    #
    #   @return [Time]
    #
    CreateEventDataStoreOutput = ::Struct.new(
      :event_data_store_arn,
      :name,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :tags_list,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for each trail.</p>
    #
    # @!attribute name
    #   <p>Specifies the name of the trail. The name must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #               and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
    #            for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_name
    #   <p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail is created in the current region or in all regions. The default is false, which creates a trail only in the region where you are signed in. As a best practice, consider
    #         creating trails that log events in all regions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_log_file_validation
    #   <p>Specifies whether log file integrity validation is enabled. The default is false.</p>
    #            <note>
    #               <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail does
    #               not create digest files for log files that were delivered during a period in which log file integrity validation was disabled.
    #               For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable
    #               it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on
    #               January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group
    #            to which CloudTrail logs will be delivered. Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The
    #            value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully
    #            specified ARN to a key, or a globally unique identifier.</p>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more information about multi-Region keys,
    #            see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #               <li>
    #                  <p>12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is created for all accounts in an organization in Organizations, or only for the current Amazon Web Services account.
    #            The default is false, and cannot be true unless the call is made on behalf of an Amazon Web Services account that is the management account for an organization in
    #            Organizations.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateTrailInput = ::Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :include_global_service_events,
      :is_multi_region_trail,
      :enable_log_file_validation,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail,
      :tags_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    # @!attribute name
    #   <p>Specifies the name of the trail.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
    #            for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_name
    #   <p>This field is no longer in use. Use SnsTopicARN.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p>
    #            <p>
    #               <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail exists in one region or in all regions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute trail_arn
    #   <p>Specifies the ARN of the trail that was created. The format of a trail ARN
    #            is:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute log_file_validation_enabled
    #   <p>Specifies whether log file integrity validation is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail.
    #            The value is a fully specified ARN to a KMS key in the following format.</p>
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is an organization trail.</p>
    #
    #   @return [Boolean]
    #
    CreateTrailOutput = ::Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :sns_topic_arn,
      :include_global_service_events,
      :is_multi_region_trail,
      :trail_arn,
      :log_file_validation_enabled,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon S3 buckets, Lambda functions, or Amazon DynamoDB tables that you specify
    #          in your event selectors for your trail to log data events. Data events provide information
    #          about the resource operations performed on or within a resource itself. These are also
    #          known as data plane operations. You can specify up to 250 data resources for a
    #          trail.</p>
    #          <note>
    #             <p>The total number of allowed data resources is 250. This number can be distributed between 1 and 5 event selectors,
    #       but the total cannot exceed 250 across all selectors.</p>
    #             <p>If you are using advanced event selectors, the maximum total number of values for
    #             all conditions, across all advanced event selectors for the trail, is 500.</p>
    #          </note>
    #          <p>The following example demonstrates how logging works when you configure logging of all data events
    #          for an S3 bucket named <code>bucket-1</code>. In this example, the CloudTrail user specified an empty prefix,
    #       and the option to log both <code>Read</code> and <code>Write</code> data events.</p>
    #          <ol>
    #             <li>
    #                <p>A user uploads an image file to <code>bucket-1</code>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>PutObject</code> API operation is an Amazon S3 object-level API.
    #             It is recorded as a data event in CloudTrail. Because the CloudTrail user specified an S3 bucket
    #             with an empty prefix, events that occur on any object in that bucket are logged. The trail processes and logs the
    #                event.</p>
    #             </li>
    #             <li>
    #                <p>A user uploads an object to an Amazon S3 bucket named
    #                   <code>arn:aws:s3:::bucket-2</code>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>PutObject</code> API operation occurred for an object in an S3 bucket that the CloudTrail
    #             user didn't specify for the trail. The trail doesn’t log the event.</p>
    #             </li>
    #          </ol>
    #          <p>The following example demonstrates how logging works when you configure logging of Lambda data events for a
    #          Lambda function named <i>MyLambdaFunction</i>, but not for all Lambda functions.</p>
    #          <ol>
    #             <li>
    #                <p>A user runs a script that includes a call to the <i>MyLambdaFunction</i> function and the
    #                <i>MyOtherLambdaFunction</i> function.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Invoke</code> API operation on <i>MyLambdaFunction</i> is an Lambda API.
    #                It is recorded as a data event in CloudTrail. Because the CloudTrail user specified logging data events for
    #                <i>MyLambdaFunction</i>, any invocations of that function are logged. The trail processes and logs the event.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Invoke</code> API operation on <i>MyOtherLambdaFunction</i> is an Lambda API.
    #                Because the CloudTrail user did not specify logging data events for all Lambda functions,
    #                the <code>Invoke</code> operation for <i>MyOtherLambdaFunction</i> does not match the function specified for the trail.
    #                The trail doesn’t log the event. </p>
    #             </li>
    #          </ol>
    #
    # @!attribute type
    #   <p>The resource type in which you want to log data events. You can specify
    #            the following <i>basic</i> event selector resource types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS::S3::Object</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::Lambda::Function</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::DynamoDB::Table</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The following resource types are also availble through <i>advanced</i> event selectors.
    #            Basic event selector resource types are valid in advanced event selectors, but
    #            advanced event selector resource types are not valid in basic event selectors.
    #            For more information, see <a>AdvancedFieldSelector$Field</a>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS::S3Outposts::Object</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::ManagedBlockchain::Node</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::S3ObjectLambda::AccessPoint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::EC2::Snapshot</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::S3::AccessPoint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::DynamoDB::Stream</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::Glue::Table</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.</p>
    #            <ul>
    #               <li>
    #                  <p>To log data events for all objects in all S3 buckets in your Amazon Web Services account, specify the
    #            prefix as <code>arn:aws:s3:::</code>.</p>
    #                  <note>
    #                     <p>This also enables logging of data event activity performed by any user or role in your Amazon Web Services account,
    #            even if that activity is performed on a bucket that belongs to another Amazon Web Services account.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>To log data events for all objects in an S3 bucket, specify the bucket and an empty
    #            object prefix such as <code>arn:aws:s3:::bucket-1/</code>. The trail logs data events for
    #            all objects in this S3 bucket.</p>
    #               </li>
    #               <li>
    #                  <p>To log data events for specific objects, specify the S3 bucket and object prefix such
    #            as <code>arn:aws:s3:::bucket-1/example-images</code>. The trail logs data events for
    #            objects in this S3 bucket that match the prefix.</p>
    #               </li>
    #               <li>
    #                  <p>To log data events for all Lambda functions in your Amazon Web Services account, specify the prefix as
    #                     <code>arn:aws:lambda</code>.</p>
    #                  <note>
    #                     <p>This also enables logging of <code>Invoke</code> activity performed by any user or role in your Amazon Web Services account,
    #            even if that activity is performed on a function that belongs to another Amazon Web Services account. </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>To log data events for a specific Lambda function, specify the function ARN.</p>
    #                  <note>
    #                     <p>Lambda function ARNs are exact. For example, if you specify a
    #               function ARN <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>, data events will
    #               only be logged for <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>. They will
    #               not be logged for <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld2</i>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>To log data events for all DynamoDB tables in your Amazon Web Services account, specify the prefix
    #                  as <code>arn:aws:dynamodb</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    DataResource = ::Struct.new(
      :type,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store to delete.</p>
    #
    #   @return [String]
    #
    DeleteEventDataStoreInput = ::Struct.new(
      :event_data_store,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEventDataStoreOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request that specifies the name of a trail to delete.</p>
    #
    # @!attribute name
    #   <p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The following is the format of a
    #            trail ARN.
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    DeleteTrailInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    DeleteTrailOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified query was run.</p>
    #
    #   @return [String]
    #
    # @!attribute query_id
    #   <p>The query ID.</p>
    #
    #   @return [String]
    #
    DescribeQueryInput = ::Struct.new(
      :event_data_store,
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the query.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>The SQL code of a query.</p>
    #
    #   @return [String]
    #
    # @!attribute query_status
    #   <p>The status of a query. Values for <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>,
    #            <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>CANCELLED</code>
    #            </p>
    #
    #   Enum, one of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute query_statistics
    #   <p>Metadata about a query, including the number of events that were matched, the total number of events scanned, the query run time
    #            in milliseconds, and the query's creation time.</p>
    #
    #   @return [QueryStatisticsForDescribeQuery]
    #
    # @!attribute error_message
    #   <p>The error message returned if a query failed.</p>
    #
    #   @return [String]
    #
    DescribeQueryOutput = ::Struct.new(
      :query_id,
      :query_string,
      :query_status,
      :query_statistics,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about the trail.</p>
    #
    # @!attribute trail_name_list
    #   <p>Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #            <p>If an empty list is specified, information for the trail in the current region is returned.</p>
    #            <ul>
    #               <li>
    #                  <p>If an empty list is specified and <code>IncludeShadowTrails</code> is false, then
    #               information for all trails in the current region is returned.</p>
    #               </li>
    #               <li>
    #                  <p>If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If one or more trail names are specified, information is returned only if the names match the names of trails belonging only to the current region. To return information about a trail in another region, you must specify its trail ARN.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute include_shadow_trails
    #   <p>Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region,
    #            or in the case of an organization trail, the replication of an organization trail in member accounts. If you do not include shadow trails, organization trails in a member account
    #            and region replication trails will not be returned. The default is true.</p>
    #
    #   @return [Boolean]
    #
    DescribeTrailsInput = ::Struct.new(
      :trail_name_list,
      :include_shadow_trails,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    # @!attribute trail_list
    #   <p>The list of trail objects. Trail objects with string values are only returned if values for the objects exist in a trail's configuration.
    #            For example, <code>SNSTopicName</code> and <code>SNSTopicARN</code> are only returned in results if a trail is configured to send SNS notifications. Similarly,
    #            <code>KMSKeyId</code> only appears in results if a trail's log files are encrypted with KMS customer managed keys.</p>
    #
    #   @return [Array<Trail>]
    #
    DescribeTrailsOutput = ::Struct.new(
      :trail_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.</p>
    #
    # @!attribute event_id
    #   <p>The CloudTrail ID of the event returned.</p>
    #
    #   @return [String]
    #
    # @!attribute event_name
    #   <p>The name of the event returned.</p>
    #
    #   @return [String]
    #
    # @!attribute read_only
    #   <p>Information about whether the event is a write event or a read event. </p>
    #
    #   @return [String]
    #
    # @!attribute access_key_id
    #   <p>The Amazon Web Services access key ID that was used to sign the request. If the request was made
    #            with temporary security credentials, this is the access key ID of the temporary credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p>The date and time of the event returned.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_source
    #   <p>The Amazon Web Services service to which the request was made.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>A user name or role name of the requester that called the API in the event returned.</p>
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p>A list of resources referenced by the event returned.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute cloud_trail_event
    #   <p>A JSON string that contains a representation of the event returned.</p>
    #
    #   @return [String]
    #
    Event = ::Struct.new(
      :event_id,
      :event_name,
      :read_only,
      :access_key_id,
      :event_time,
      :event_source,
      :username,
      :resources,
      :cloud_trail_event,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventCategory
    #
    module EventCategory
      # No documentation available.
      #
      Insight = "insight"
    end

    # <p>A storage lake of event data against which you can run complex SQL-based queries. An event data store can include events
    #          that you have logged on your account from the last 90 to 2555 days
    #          (about three months to up to seven years). To select events for an event data store,
    #          use <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced">advanced event selectors</a>.</p>
    #
    # @!attribute event_data_store_arn
    #   <p>The ARN of the event data store.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #
    #   @return [String]
    #
    # @!attribute termination_protection_enabled
    #   <p>This field is being deprecated. Indicates whether the event data store is protected from termination.</p>
    #
    #   @deprecated
    #     TerminationProtectionEnabled is no longer returned by ListEventDataStores
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>This field is being deprecated. The status of an event data store. Values are <code>ENABLED</code> and <code>PENDING_DELETION</code>.</p>
    #
    #   Enum, one of: ["CREATED", "ENABLED", "PENDING_DELETION"]
    #
    #   @deprecated
    #     Status is no longer returned by ListEventDataStores
    #
    #   @return [String]
    #
    # @!attribute advanced_event_selectors
    #   <p>This field is being deprecated. The advanced event selectors that were used to select events for the data store.</p>
    #
    #   @deprecated
    #     AdvancedEventSelectors is no longer returned by ListEventDataStores
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    # @!attribute multi_region_enabled
    #   <p>This field is being deprecated. Indicates whether the event data store includes events from all regions, or only from the region in which it was created.</p>
    #
    #   @deprecated
    #     MultiRegionEnabled is no longer returned by ListEventDataStores
    #
    #   @return [Boolean]
    #
    # @!attribute organization_enabled
    #   <p>This field is being deprecated. Indicates that an event data store is collecting logged events for an organization.</p>
    #
    #   @deprecated
    #     OrganizationEnabled is no longer returned by ListEventDataStores
    #
    #   @return [Boolean]
    #
    # @!attribute retention_period
    #   <p>This field is being deprecated. The retention period, in days.</p>
    #
    #   @deprecated
    #     RetentionPeriod is no longer returned by ListEventDataStores
    #
    #   @return [Integer]
    #
    # @!attribute created_timestamp
    #   <p>This field is being deprecated. The timestamp of the event data store's creation.</p>
    #
    #   @deprecated
    #     CreatedTimestamp is no longer returned by ListEventDataStores
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>This field is being deprecated. The timestamp showing when an event data store was updated, if applicable. <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>
    #
    #   @deprecated
    #     UpdatedTimestamp is no longer returned by ListEventDataStores
    #
    #   @return [Time]
    #
    EventDataStore = ::Struct.new(
      :event_data_store_arn,
      :name,
      :termination_protection_enabled,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified event data store ARN is not valid or does not map to an event data store in your account.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    EventDataStoreARNInvalidException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An event data store with that name already exists.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    EventDataStoreAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your account has used the maximum number of event data stores.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    EventDataStoreMaxLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified event data store was not found.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    EventDataStoreNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventDataStoreStatus
    #
    module EventDataStoreStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      PENDING_DELETION = "PENDING_DELETION"
    end

    # <p>The event data store cannot be deleted because termination protection is enabled for it.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    EventDataStoreTerminationProtectedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Use event selectors to further specify the management and data event settings for your trail. By
    #          default, trails created without specific event selectors will be configured to log all read and
    #          write management events, and no data events. When an event occurs in your account, CloudTrail evaluates the event selector
    #          for all trails. For each trail, if the event matches any event selector, the trail
    #          processes and logs the event. If the event doesn't match any event selector, the trail
    #          doesn't log the event.</p>
    #          <p>You can configure up to five event selectors for a trail.</p>
    #          <p>You cannot apply both event selectors and advanced event selectors to a trail.</p>
    #
    # @!attribute read_write_type
    #   <p>Specify if you want your trail to log read-only events, write-only events, or all. For example,
    #            the EC2 <code>GetConsoleOutput</code> is a read-only API operation and
    #               <code>RunInstances</code> is a write-only API operation.</p>
    #            <p> By default, the value is <code>All</code>.</p>
    #
    #   Enum, one of: ["ReadOnly", "WriteOnly", "All"]
    #
    #   @return [String]
    #
    # @!attribute include_management_events
    #   <p>Specify if you want your event selector to include management events for your trail.</p>
    #            <p>
    #            For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html logging-management-events">Management Events</a> in the <i>CloudTrail User Guide</i>.</p>
    #
    #            <p>By default, the value is <code>true</code>.</p>
    #            <p>The first copy of management events is free. You are charged for additional copies of management
    #            events that you are logging on any subsequent trail in the same region. For more information about
    #            CloudTrail pricing, see <a href="http://aws.amazon.com/cloudtrail/pricing/">CloudTrail Pricing</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_resources
    #   <p>CloudTrail supports data event logging for Amazon S3 objects, Lambda functions,
    #            and Amazon DynamoDB tables
    #            with basic event selectors. You can specify up to 250 resources for an individual event
    #            selector, but the total number of data resources cannot exceed 250 across all event
    #            selectors in a trail. This limit does not apply if you configure resource logging for all
    #            data events.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html logging-data-events">Data Events</a> and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html">Limits in CloudTrail</a>
    #            in the <i>CloudTrail User Guide</i>.</p>
    #
    #   @return [Array<DataResource>]
    #
    # @!attribute exclude_management_event_sources
    #   <p>An optional list of service event sources from which you do not want management events to be logged on your trail. In this release, the list can be empty (disables the filter),
    #            or it can filter out Key Management Service or Amazon RDS Data API events by
    #            containing <code>kms.amazonaws.com</code> or <code>rdsdata.amazonaws.com</code>. By default, <code>ExcludeManagementEventSources</code> is empty, and KMS and
    #            Amazon RDS Data API events are logged to your trail. You can exclude management event sources only in regions that support the event source.</p>
    #
    #   @return [Array<String>]
    #
    EventSelector = ::Struct.new(
      :read_write_type,
      :include_management_events,
      :data_resources,
      :exclude_management_event_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store about which you want information.</p>
    #
    #   @return [String]
    #
    GetEventDataStoreInput = ::Struct.new(
      :event_data_store,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The event data store Amazon Resource Number (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of an event data store. Values can be <code>ENABLED</code> and <code>PENDING_DELETION</code>.</p>
    #
    #   Enum, one of: ["CREATED", "ENABLED", "PENDING_DELETION"]
    #
    #   @return [String]
    #
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors used to select events for the data store.</p>
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    # @!attribute multi_region_enabled
    #   <p>Indicates whether the event data store includes events from all regions, or only from the region in which it was created.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute organization_enabled
    #   <p>Indicates whether an event data store is collecting logged events for an organization in Organizations.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retention_period
    #   <p>The retention period of the event data store, in days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute termination_protection_enabled
    #   <p>Indicates that termination protection is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_timestamp
    #   <p>The timestamp of the event data store's creation.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>Shows the time that an event data store was updated, if applicable. <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>
    #
    #   @return [Time]
    #
    GetEventDataStoreOutput = ::Struct.new(
      :event_data_store_arn,
      :name,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #                     and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the format:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    GetEventSelectorsInput = ::Struct.new(
      :trail_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trail_arn
    #   <p>The specified trail ARN that has the event selectors.</p>
    #
    #   @return [String]
    #
    # @!attribute event_selectors
    #   <p>The event selectors that are configured for the trail.</p>
    #
    #   @return [Array<EventSelector>]
    #
    # @!attribute advanced_event_selectors
    #   <p>
    #            The advanced event selectors that are configured for the trail.
    #         </p>
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    GetEventSelectorsOutput = ::Struct.new(
      :trail_arn,
      :event_selectors,
      :advanced_event_selectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #                  and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the format:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    GetInsightSelectorsInput = ::Struct.new(
      :trail_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trail_arn
    #   <p>The Amazon Resource Name (ARN) of a trail for which you want to get Insights selectors.</p>
    #
    #   @return [String]
    #
    # @!attribute insight_selectors
    #   <p>A JSON string that contains the insight types you want to log on a trail. In this release, <code>ApiErrorRateInsight</code> and
    #            <code>ApiCallRateInsight</code> are supported as insight types.</p>
    #
    #   @return [Array<InsightSelector>]
    #
    GetInsightSelectorsOutput = ::Struct.new(
      :trail_arn,
      :insight_selectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store against which the query was run.</p>
    #
    #   @return [String]
    #
    # @!attribute query_id
    #   <p>The ID of the query for which you want to get results.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token you can use to get the next page of query results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_query_results
    #   <p>The maximum number of query results to display on a single page.</p>
    #
    #   @return [Integer]
    #
    GetQueryResultsInput = ::Struct.new(
      :event_data_store,
      :query_id,
      :next_token,
      :max_query_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_status
    #   <p>The status of the query. Values include <code>QUEUED</code>, <code>RUNNING</code>, <code>FINISHED</code>, <code>FAILED</code>,
    #            <code>TIMED_OUT</code>, or <code>CANCELLED</code>.</p>
    #
    #   Enum, one of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute query_statistics
    #   <p>Shows the count of query results.</p>
    #
    #   @return [QueryStatistics]
    #
    # @!attribute query_result_rows
    #   <p>Contains the individual event results of the query.</p>
    #
    #   @return [Array<Array<Hash<String, String>>>]
    #
    # @!attribute next_token
    #   <p>A token you can use to get the next page of query results.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message returned if a query failed.</p>
    #
    #   @return [String]
    #
    GetQueryResultsOutput = ::Struct.new(
      :query_status,
      :query_statistics,
      :query_result_rows,
      :next_token,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name or the Amazon Resource Name (ARN) of the trail for which you want to retrieve settings information.</p>
    #
    #   @return [String]
    #
    GetTrailInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trail
    #   <p>The settings for a trail.</p>
    #
    #   @return [Trail]
    #
    GetTrailOutput = ::Struct.new(
      :trail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name of a trail about which you want the current status.</p>
    #
    # @!attribute name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a
    #            shadow trail (a replication of the trail in another region), you must specify its ARN. The following is the format of a trail ARN.</p>
    #             <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    GetTrailStatusInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    # @!attribute is_logging
    #   <p>Whether the CloudTrail trail is currently logging Amazon Web Services API calls.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute latest_delivery_error
    #   <p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files
    #            to the designated bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error
    #               Responses</a> in the Amazon S3 API Reference. </p>
    #            <note>
    #               <p>This error occurs only when there is a problem with the destination S3 bucket, and does
    #            not occur for requests that time out. To resolve the issue, create a new bucket, and then call
    #               <code>UpdateTrail</code> to specify the new bucket; or fix the existing objects so that
    #            CloudTrail can again write to the bucket.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute latest_notification_error
    #   <p>Displays any Amazon SNS error that CloudTrail encountered when attempting to send a
    #            notification. For more information about Amazon SNS errors, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/welcome.html">Amazon SNS Developer Guide</a>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute latest_delivery_time
    #   <p>Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_notification_time
    #   <p>Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_logging_time
    #   <p>Specifies the most recent date and time when CloudTrail started recording API calls for an Amazon Web Services account.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_logging_time
    #   <p>Specifies the most recent date and time when CloudTrail stopped recording API calls for an Amazon Web Services account.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_cloud_watch_logs_delivery_error
    #   <p>Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_cloud_watch_logs_delivery_time
    #   <p>Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_digest_delivery_time
    #   <p>Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_digest_delivery_error
    #   <p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest
    #            file to the designated bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error
    #               Responses</a> in the Amazon S3 API Reference. </p>
    #            <note>
    #               <p>This error occurs only when there is a problem with the destination S3 bucket, and does
    #            not occur for requests that time out. To resolve the issue, create a new bucket, and then call
    #               <code>UpdateTrail</code> to specify the new bucket; or fix the existing objects so that
    #               CloudTrail can again write to the bucket.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute latest_delivery_attempt_time
    #   <p>This field is no longer in use.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_notification_attempt_time
    #   <p>This field is no longer in use.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_notification_attempt_succeeded
    #   <p>This field is no longer in use.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_delivery_attempt_succeeded
    #   <p>This field is no longer in use.</p>
    #
    #   @return [String]
    #
    # @!attribute time_logging_started
    #   <p>This field is no longer in use.</p>
    #
    #   @return [String]
    #
    # @!attribute time_logging_stopped
    #   <p>This field is no longer in use.</p>
    #
    #   @return [String]
    #
    GetTrailStatusOutput = ::Struct.new(
      :is_logging,
      :latest_delivery_error,
      :latest_notification_error,
      :latest_delivery_time,
      :latest_notification_time,
      :start_logging_time,
      :stop_logging_time,
      :latest_cloud_watch_logs_delivery_error,
      :latest_cloud_watch_logs_delivery_time,
      :latest_digest_delivery_time,
      :latest_digest_delivery_error,
      :latest_delivery_attempt_time,
      :latest_notification_attempt_time,
      :latest_notification_attempt_succeeded,
      :latest_delivery_attempt_succeeded,
      :time_logging_started,
      :time_logging_stopped,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event data store is inactive.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InactiveEventDataStoreException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified query cannot be canceled because it is in the <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or
    #          <code>CANCELLED</code> state.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InactiveQueryException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If you run <code>GetInsightSelectors</code> on a trail that does not have Insights events enabled, the operation throws the exception <code>InsightNotEnabledException</code>.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InsightNotEnabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A JSON string that contains a list of insight types that are logged on a trail.</p>
    #
    # @!attribute insight_type
    #   <p>The type of insights to log on a trail. <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code> are valid insight types.</p>
    #
    #   Enum, one of: ["ApiCallRateInsight", "ApiErrorRateInsight"]
    #
    #   @return [String]
    #
    InsightSelector = ::Struct.new(
      :insight_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InsightType
    #
    module InsightType
      # No documentation available.
      #
      ApiCallRateInsight = "ApiCallRateInsight"

      # No documentation available.
      #
      ApiErrorRateInsight = "ApiErrorRateInsight"
    end

    # <p>This exception is thrown when the IAM user or role that is used to create
    #          the organization resource lacks one or more required permissions for
    #          creating an organization resource in a required service.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InsufficientDependencyServiceAccessPermissionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the policy on the S3 bucket or KMS key is not sufficient.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InsufficientEncryptionPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the policy on the S3 bucket is not sufficient.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InsufficientS3BucketPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the policy on the Amazon SNS topic is not sufficient.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InsufficientSnsTopicPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the provided CloudWatch Logs log group is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidCloudWatchLogsLogGroupArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the provided role is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidCloudWatchLogsRoleArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A date range for the query was specified that is not valid. Be sure that the start time is chronologically
    #          before the end time. For more information
    #          about writing a query, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html">Create
    #             or edit a query</a> in the <i>CloudTrail User Guide</i>.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidDateRangeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Occurs if an event category that is not valid is specified as a value of <code>EventCategory</code>.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidEventCategoryException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event data store is not in a status that supports the operation.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidEventDataStoreStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the <code>PutEventSelectors</code> operation is called with a number of event
    #          selectors, advanced event selectors, or data resources that is not valid. The combination of event selectors or advanced event selectors and
    #          data resources is not valid. A trail can have up to 5 event selectors. If a trail uses advanced event selectors, a maximum
    #          of 500 total values for all conditions in all advanced event selectors is allowed. A trail is limited to 250 data resources. These data resources can be distributed across event selectors, but the overall total cannot exceed 250.</p>
    #          <p>You can:</p>
    #          <ul>
    #             <li>
    #                <p>Specify a valid number of event selectors (1 to 5) for a trail.</p>
    #             </li>
    #             <li>
    #                <p>Specify a valid number of data resources (1 to 250) for an event selector.
    #                The limit of number of resources on an individual event selector is configurable up to 250.
    #                However, this upper limit is allowed only if the total number of data resources does not
    #                exceed 250 across all event selectors for a trail.</p>
    #             </li>
    #             <li>
    #                <p>Specify up to 500 values for all conditions in all advanced event selectors for a trail.</p>
    #             </li>
    #             <li>
    #                <p>Specify a valid value for a parameter. For example, specifying the <code>ReadWriteType</code>
    #                parameter with a value of <code>read-only</code> is not valid.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidEventSelectorsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when an operation is called on a trail from a region other than the region in which the trail was created.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidHomeRegionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The formatting or syntax of the <code>InsightSelectors</code> JSON statement in your <code>PutInsightSelectors</code> or <code>GetInsightSelectors</code> request
    #          is not valid, or the specified insight type in the <code>InsightSelectors</code> statement is not a valid insight type.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidInsightSelectorsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the KMS key ARN is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidKmsKeyIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Occurs when a lookup attribute is specified that is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidLookupAttributesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown if the limit specified is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidMaxResultsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A token that is not valid, or a token that was previously used in a request with different parameters. This exception is thrown if the token is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the combination of parameters provided is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidParameterCombinationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request includes a parameter that is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The query that was submitted has validation errors, or uses incorrect syntax or unsupported keywords. For more information
    #          about writing a query, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html">Create
    #             or edit a query</a> in the <i>CloudTrail User Guide</i>.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidQueryStatementException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The query status is not valid for the operation.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidQueryStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the provided S3 bucket name is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidS3BucketNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the provided S3 prefix is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidS3PrefixException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the provided SNS topic name is not valid.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidSnsTopicNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the specified tag key or values are not valid.
    #          It can also occur if there are duplicate tags or too many tags on the resource.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidTagParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Occurs if the timestamp values are not valid. Either the start time occurs after the end time, or the time range is outside the range of possible values.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidTimeRangeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reserved for future use.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the provided trail name is not valid. Trail names must meet the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #             </li>
    #             <li>
    #                <p>Start with a letter or number, and end with a letter or number</p>
    #             </li>
    #             <li>
    #                <p>Be between 3 and 128 characters</p>
    #             </li>
    #             <li>
    #                <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #             and <code>my--namespace</code> are not valid.</p>
    #             </li>
    #             <li>
    #                <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    InvalidTrailNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when there is an issue with the specified KMS key and the trail can’t be updated.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    KmsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is no longer in use.</p>
    #
    # @deprecated
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    KmsKeyDisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the KMS key does not exist, when the S3 bucket and the
    #          KMS key are not in the same region, or when the KMS key associated with the Amazon SNS
    #          topic either does not exist or is not in the same region.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    KmsKeyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token you can use to get the next page of event data store results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of event data stores to display on a single page.</p>
    #
    #   @return [Integer]
    #
    ListEventDataStoresInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_stores
    #   <p>Contains information about event data stores in the account, in the current region.</p>
    #
    #   @return [Array<EventDataStore>]
    #
    # @!attribute next_token
    #   <p>A token you can use to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListEventDataStoresOutput = ::Struct.new(
      :event_data_stores,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Requests the public keys for a specified time range.</p>
    #
    # @!attribute start_time
    #   <p>Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files.
    #            If not specified, the current time is used, and the current public key is returned.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not
    #            specified, the current time is used.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    ListPublicKeysInput = ::Struct.new(
      :start_time,
      :end_time,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    # @!attribute public_key_list
    #   <p>Contains an array of PublicKey objects.</p>
    #            <note>
    #               <p>The returned public keys may have validity time ranges that overlap.</p>
    #            </note>
    #
    #   @return [Array<PublicKey>]
    #
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    ListPublicKeysOutput = ::Struct.new(
      :public_key_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which queries were run.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token you can use to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of queries to show on a page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_time
    #   <p>Use with <code>EndTime</code> to bound a <code>ListQueries</code> request, and limit its results to only those queries run
    #            within a specified time period.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>Use with <code>StartTime</code> to bound a <code>ListQueries</code> request, and limit its results to only those queries run
    #         within a specified time period.</p>
    #
    #   @return [Time]
    #
    # @!attribute query_status
    #   <p>The status of queries that you want to return in results. Valid values for <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>,
    #            <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>CANCELLED</code>.</p>
    #
    #   Enum, one of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    ListQueriesInput = ::Struct.new(
      :event_data_store,
      :next_token,
      :max_results,
      :start_time,
      :end_time,
      :query_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute queries
    #   <p>Lists matching query results, and shows query ID, status, and creation time of each query.</p>
    #
    #   @return [Array<Query>]
    #
    # @!attribute next_token
    #   <p>A token you can use to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListQueriesOutput = ::Struct.new(
      :queries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a list of tags to return.</p>
    #
    # @!attribute resource_id_list
    #   <p>Specifies a list of trail and event data store ARNs whose tags will be listed. The list
    #            has a limit of 20 ARNs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    ListTagsInput = ::Struct.new(
      :resource_id_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    # @!attribute resource_tag_list
    #   <p>A list of resource tags.</p>
    #
    #   @return [Array<ResourceTag>]
    #
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    ListTagsOutput = ::Struct.new(
      :resource_tag_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token must be passed
    #            in with the same parameters that were specified in the the original call. For example, if the original
    #            call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should
    #            include those same parameters.</p>
    #
    #   @return [String]
    #
    ListTrailsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trails
    #   <p>Returns the name, ARN, and home region of trails in the current account.</p>
    #
    #   @return [Array<TrailInfo>]
    #
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. If the token does not appear,
    #            there are no more results to return. The token must be passed in with the same parameters as the previous call.
    #            For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with
    #            NextToken should include those same parameters.</p>
    #
    #   @return [String]
    #
    ListTrailsOutput = ::Struct.new(
      :trails,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an attribute and value that filter the events returned.</p>
    #
    # @!attribute attribute_key
    #   <p>Specifies an attribute on which to filter the events returned.</p>
    #
    #   Enum, one of: ["EventId", "EventName", "ReadOnly", "Username", "ResourceType", "ResourceName", "EventSource", "AccessKeyId"]
    #
    #   @return [String]
    #
    # @!attribute attribute_value
    #   <p>Specifies a value for the specified AttributeKey.</p>
    #
    #   @return [String]
    #
    LookupAttribute = ::Struct.new(
      :attribute_key,
      :attribute_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LookupAttributeKey
    #
    module LookupAttributeKey
      # No documentation available.
      #
      EVENT_ID = "EventId"

      # No documentation available.
      #
      EVENT_NAME = "EventName"

      # No documentation available.
      #
      READ_ONLY = "ReadOnly"

      # No documentation available.
      #
      USERNAME = "Username"

      # No documentation available.
      #
      RESOURCE_TYPE = "ResourceType"

      # No documentation available.
      #
      RESOURCE_NAME = "ResourceName"

      # No documentation available.
      #
      EVENT_SOURCE = "EventSource"

      # No documentation available.
      #
      ACCESS_KEY_ID = "AccessKeyId"
    end

    # <p>Contains a request for LookupEvents.</p>
    #
    # @!attribute lookup_attributes
    #   <p>Contains a list of lookup attributes. Currently the list can contain only one item.</p>
    #
    #   @return [Array<LookupAttribute>]
    #
    # @!attribute start_time
    #   <p>Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_category
    #   <p>Specifies the event category. If you do not specify an event category, events of the category are not returned in the response. For example,
    #            if you do not specify <code>insight</code> as the value of <code>EventCategory</code>, no Insights events are returned.</p>
    #
    #   Enum, one of: ["insight"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of events to return. Possible values are 1 through 50. The default is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call.
    #            For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>
    #
    #   @return [String]
    #
    LookupEventsInput = ::Struct.new(
      :lookup_attributes,
      :start_time,
      :end_time,
      :event_category,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a response to a LookupEvents action.</p>
    #
    # @!attribute events
    #   <p>A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed first.</p>
    #
    #   @return [Array<Event>]
    #
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. If the token does not appear,
    #            there are no more results to return. The token must be passed in with the same parameters as the previous call.
    #            For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with
    #            NextToken should include those same parameters.</p>
    #
    #   @return [String]
    #
    LookupEventsOutput = ::Struct.new(
      :events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You are already running the maximum number of concurrent queries. Wait a minute for some queries to finish, and then
    #          run the query again.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    MaxConcurrentQueriesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the maximum number of trails is reached.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    MaximumNumberOfTrailsExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the Amazon Web Services account making the request to create
    #          or update an organization trail or event data store is not the management account for an
    #          organization in Organizations. For more information, see
    #          <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html">Prepare For Creating a Trail For Your Organization</a> or <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store.html">Create an event data store</a>.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    NotOrganizationMasterAccountException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the requested operation is not permitted.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    OperationNotPermittedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when Organizations is not configured to support all
    #          features. All features must be enabled in Organizations to support
    #          creating an organization trail or event data store.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    OrganizationNotInAllFeaturesModeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the request is made from an Amazon Web Services account that is not a member of an organization.
    #          To make this request, sign in using the credentials of an account that belongs to an organization.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    OrganizationsNotInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a returned public key.</p>
    #
    # @!attribute value
    #   <p>The DER encoded public key value in PKCS 1 format.</p>
    #
    #   @return [String]
    #
    # @!attribute validity_start_time
    #   <p>The starting time of validity of the public key.</p>
    #
    #   @return [Time]
    #
    # @!attribute validity_end_time
    #   <p>The ending time of validity of the public key.</p>
    #
    #   @return [Time]
    #
    # @!attribute fingerprint
    #   <p>The fingerprint of the public key.</p>
    #
    #   @return [String]
    #
    PublicKey = ::Struct.new(
      :value,
      :validity_start_time,
      :validity_end_time,
      :fingerprint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #                  and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the following format.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute event_selectors
    #   <p>Specifies the settings for your event selectors. You can configure up to five event selectors for a trail.
    #            You can use either <code>EventSelectors</code> or <code>AdvancedEventSelectors</code> in a <code>PutEventSelectors</code> request, but not both.
    #            If you apply <code>EventSelectors</code> to a trail, any existing <code>AdvancedEventSelectors</code> are overwritten.</p>
    #
    #   @return [Array<EventSelector>]
    #
    # @!attribute advanced_event_selectors
    #   <p>
    #            Specifies the settings for advanced event selectors. You can add advanced event selectors, and conditions for your advanced
    #            event selectors, up to a maximum of 500 values for all conditions and selectors on a trail.
    #            You can use either <code>AdvancedEventSelectors</code> or <code>EventSelectors</code>, but not both. If you apply <code>AdvancedEventSelectors</code>
    #            to a trail, any existing <code>EventSelectors</code> are overwritten. For more information about
    #            advanced event selectors, see
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging
    #               data events for trails</a> in the <i>CloudTrail User Guide</i>.
    #         </p>
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    PutEventSelectorsInput = ::Struct.new(
      :trail_name,
      :event_selectors,
      :advanced_event_selectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trail_arn
    #   <p>Specifies the ARN of the trail that was updated with event selectors. The following is the format of a trail ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute event_selectors
    #   <p>Specifies the event selectors configured for your trail.</p>
    #
    #   @return [Array<EventSelector>]
    #
    # @!attribute advanced_event_selectors
    #   <p>Specifies the advanced event selectors configured for your trail.</p>
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    PutEventSelectorsOutput = ::Struct.new(
      :trail_arn,
      :event_selectors,
      :advanced_event_selectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trail_name
    #   <p>The name of the CloudTrail trail for which you want to change or add Insights selectors.</p>
    #
    #   @return [String]
    #
    # @!attribute insight_selectors
    #   <p>A JSON string that contains the insight types you want to log on a trail. <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code> are valid insight types.</p>
    #
    #   @return [Array<InsightSelector>]
    #
    PutInsightSelectorsInput = ::Struct.new(
      :trail_name,
      :insight_selectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trail_arn
    #   <p>The Amazon Resource Name (ARN) of a trail for which you want to change or add Insights selectors.</p>
    #
    #   @return [String]
    #
    # @!attribute insight_selectors
    #   <p>A JSON string that contains the Insights event types that you want to log on a trail. The valid Insights types in this release are
    #            <code>ApiErrorRateInsight</code> and <code>ApiCallRateInsight</code>.</p>
    #
    #   @return [Array<InsightSelector>]
    #
    PutInsightSelectorsOutput = ::Struct.new(
      :trail_arn,
      :insight_selectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A SQL string of criteria about events that you want to collect in an event data store.</p>
    #
    # @!attribute query_id
    #   <p>The ID of a query.</p>
    #
    #   @return [String]
    #
    # @!attribute query_status
    #   <p>The status of the query. This can be <code>QUEUED</code>, <code>RUNNING</code>, <code>FINISHED</code>, <code>FAILED</code>,
    #            <code>TIMED_OUT</code>, or <code>CANCELLED</code>.</p>
    #
    #   Enum, one of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The creation time of a query.</p>
    #
    #   @return [Time]
    #
    Query = ::Struct.new(
      :query_id,
      :query_status,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The query ID does not exist or does not map to a query.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    QueryIdNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata about a query, such as the number of results.</p>
    #
    # @!attribute results_count
    #   <p>The number of results returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_results_count
    #   <p>The total number of results returned by a query.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_scanned
    #   <p>The total bytes that the query scanned in the event data store. This value matches the number of
    #            bytes for which your account is billed for the query, unless the query is still running.</p>
    #
    #   @return [Integer]
    #
    QueryStatistics = ::Struct.new(
      :results_count,
      :total_results_count,
      :bytes_scanned,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Gets metadata about a query, including the number of events that were matched, the total number of events scanned, the query run time
    #          in milliseconds, and the query's creation time.</p>
    #
    # @!attribute events_matched
    #   <p>The number of events that matched a query.</p>
    #
    #   @return [Integer]
    #
    # @!attribute events_scanned
    #   <p>The number of events that the query scanned in the event data store.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_scanned
    #   <p>The total bytes that the query scanned in the event data store. This value matches the number of
    #         bytes for which your account is billed for the query, unless the query is still running.</p>
    #
    #   @return [Integer]
    #
    # @!attribute execution_time_in_millis
    #   <p>The query's run time, in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>The creation time of the query.</p>
    #
    #   @return [Time]
    #
    QueryStatisticsForDescribeQuery = ::Struct.new(
      :events_matched,
      :events_scanned,
      :bytes_scanned,
      :execution_time_in_millis,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QueryStatus
    #
    module QueryStatus
      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      FINISHED = "FINISHED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"
    end

    # Includes enum constants for ReadWriteType
    #
    module ReadWriteType
      # No documentation available.
      #
      ReadOnly = "ReadOnly"

      # No documentation available.
      #
      WriteOnly = "WriteOnly"

      # No documentation available.
      #
      All = "All"
    end

    # <p>Specifies the tags to remove from a trail or event data store.</p>
    #
    # @!attribute resource_id
    #   <p>Specifies the ARN of the trail or event data store from which tags should be removed.</p>
    #            <p>
    #            Example trail ARN format: <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>Example event data store ARN format: <code>arn:aws:cloudtrail:us-east-2:12345678910:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tags_list
    #   <p>Specifies a list of tags to be removed.</p>
    #
    #   @return [Array<Tag>]
    #
    RemoveTagsInput = ::Struct.new(
      :resource_id,
      :tags_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    RemoveTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the type and name of a resource referenced by an event.</p>
    #
    # @!attribute resource_type
    #   <p>The type of a resource referenced by the event returned. When the resource type cannot be
    #            determined, null is returned. Some examples of resource types are: <b>Instance</b> for EC2,
    #            <b>Trail</b> for CloudTrail, <b>DBInstance</b> for Amazon RDS, and <b>AccessKey</b> for IAM.
    #            To learn more about how to look up and filter events by the resource types supported for a service, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events-console.html filtering-cloudtrail-events">Filtering CloudTrail Events</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the resource referenced by the event returned. These are user-created names whose values will depend on the environment. For example, the resource name might be "auto-scaling-test-group" for an Auto Scaling Group or "i-1234567" for an EC2 Instance.</p>
    #
    #   @return [String]
    #
    Resource = ::Struct.new(
      :resource_type,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the specified resource is not found.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource tag.</p>
    #
    # @!attribute resource_id
    #   <p>Specifies the ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #
    #   @return [Array<Tag>]
    #
    ResourceTag = ::Struct.new(
      :resource_id,
      :tags_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the specified resource type is not supported by CloudTrail.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    ResourceTypeNotSupportedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store that you want to restore.</p>
    #
    #   @return [String]
    #
    RestoreEventDataStoreInput = ::Struct.new(
      :event_data_store,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The event data store ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the event data store.</p>
    #
    #   Enum, one of: ["CREATED", "ENABLED", "PENDING_DELETION"]
    #
    #   @return [String]
    #
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors that were used to select events.</p>
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    # @!attribute multi_region_enabled
    #   <p>Indicates whether the event data store is collecting events from all regions, or only from the region in which the event data
    #         store was created.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute organization_enabled
    #   <p>Indicates whether an event data store is collecting logged events for an organization in Organizations.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retention_period
    #   <p>The retention period, in days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute termination_protection_enabled
    #   <p>Indicates that termination protection is enabled and the event data store cannot be automatically deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_timestamp
    #   <p>The timestamp of an event data store's creation.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The timestamp that shows when an event data store was updated, if applicable.
    #            <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>
    #
    #   @return [Time]
    #
    RestoreEventDataStoreOutput = ::Struct.new(
      :event_data_store_arn,
      :name,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the specified S3 bucket does not exist.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    S3BucketDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to CloudTrail to start logging Amazon Web Services API calls for an account.</p>
    #
    # @!attribute name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs Amazon Web Services API calls.
    #            The following is the format of a trail ARN.</p>
    #               <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    StartLoggingInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    StartLoggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_statement
    #   <p>The SQL code of your query.</p>
    #
    #   @return [String]
    #
    StartQueryInput = ::Struct.new(
      :query_statement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the started query.</p>
    #
    #   @return [String]
    #
    StartQueryOutput = ::Struct.new(
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Passes the request to CloudTrail to stop logging Amazon Web Services API calls for the specified account.</p>
    #
    # @!attribute name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging Amazon Web Services
    #            API calls. The following is the format of a trail ARN.</p>
    #               <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    StopLoggingInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    StopLoggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom key-value pair associated with a resource such as a CloudTrail trail.</p>
    #
    # @!attribute key
    #   <p>The key in a key-value pair. The key must be must be no longer than 128 Unicode characters.
    #            The key must be unique for the resource to which it applies.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value in a key-value pair of a tag. The value must be no longer than 256 Unicode characters.</p>
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

    # <p>The number of tags per trail has exceeded the permitted amount. Currently, the limit is 50.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    TagsLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The settings for a trail.</p>
    #
    # @!attribute name
    #   <p>Name of the trail set by calling <a>CreateTrail</a>. The maximum length is 128
    #            characters.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>Name of the Amazon S3 bucket into which CloudTrail delivers your trail files. See <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
    #            for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>.
    #            The maximum length is 200 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_name
    #   <p>This field is no longer in use. Use SnsTopicARN.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications
    #            when log files are delivered. The following is the format of a topic ARN.</p>
    #            <p>
    #               <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute include_global_service_events
    #   <p>Set to <b>True</b> to include Amazon Web Services API calls from Amazon Web Services global services such as IAM.
    #            Otherwise, <b>False</b>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail exists only in one region or exists in all regions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute home_region
    #   <p>The region in which the trail was created.</p>
    #
    #   @return [String]
    #
    # @!attribute trail_arn
    #   <p>Specifies the ARN of the trail. The following is the format of a trail ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute log_file_validation_enabled
    #   <p>Specifies whether log file validation is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail.
    #            The value is a fully specified ARN to a KMS key in the following format.</p>
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute has_custom_event_selectors
    #   <p>Specifies if the trail has custom event selectors.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_insight_selectors
    #   <p>Specifies whether a trail has insight types specified in an <code>InsightSelector</code> list.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is an organization trail.</p>
    #
    #   @return [Boolean]
    #
    Trail = ::Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :sns_topic_arn,
      :include_global_service_events,
      :is_multi_region_trail,
      :home_region,
      :trail_arn,
      :log_file_validation_enabled,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :has_custom_event_selectors,
      :has_insight_selectors,
      :is_organization_trail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the specified trail already exists.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    TrailAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a CloudTrail trail, including the trail's name, home region, and Amazon Resource Name (ARN).</p>
    #
    # @!attribute trail_arn
    #   <p>The ARN of a trail.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a trail.</p>
    #
    #   @return [String]
    #
    # @!attribute home_region
    #   <p>The Amazon Web Services Region in which a trail was created.</p>
    #
    #   @return [String]
    #
    TrailInfo = ::Struct.new(
      :trail_arn,
      :name,
      :home_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the trail with the given name is not found.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    TrailNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is no longer in use.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    TrailNotProvidedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the requested operation is not supported.</p>
    #
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #
    #   @return [String]
    #
    UnsupportedOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The event data store name.</p>
    #
    #   @return [String]
    #
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors used to select events for the event data store.</p>
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    # @!attribute multi_region_enabled
    #   <p>Specifies whether an event data store collects events from all regions, or only from the region in which it was created.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute organization_enabled
    #   <p>Specifies whether an event data store collects events logged for an organization in Organizations.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retention_period
    #   <p>The retention period, in days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute termination_protection_enabled
    #   <p>Indicates that termination protection is enabled and the event data store cannot be automatically deleted.</p>
    #
    #   @return [Boolean]
    #
    UpdateEventDataStoreInput = ::Struct.new(
      :event_data_store,
      :name,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The ARN of the event data store.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of an event data store. Values can be <code>ENABLED</code> and <code>PENDING_DELETION</code>.</p>
    #
    #   Enum, one of: ["CREATED", "ENABLED", "PENDING_DELETION"]
    #
    #   @return [String]
    #
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors that are applied to the event data store.</p>
    #
    #   @return [Array<AdvancedEventSelector>]
    #
    # @!attribute multi_region_enabled
    #   <p>Indicates whether the event data store includes events from all regions, or only from the region in which it was created.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute organization_enabled
    #   <p>Indicates whether an event data store is collecting logged events for an organization in Organizations.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retention_period
    #   <p>The retention period, in days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute termination_protection_enabled
    #   <p>Indicates whether termination protection is enabled for the event data store.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_timestamp
    #   <p>The timestamp that shows when an event data store was first created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The timestamp that shows when the event data store was last updated. <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>
    #
    #   @return [Time]
    #
    UpdateEventDataStoreOutput = ::Struct.new(
      :event_data_store_arn,
      :name,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies settings to update for the trail.</p>
    #
    # @!attribute name
    #   <p>Specifies the name of the trail or trail ARN. If <code>Name</code> is a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #               and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If <code>Name</code> is a trail ARN, it must be in the following format.</p>
    #               <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
    #            for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_name
    #   <p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true,
    #            shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region
    #            where it was created, and its shadow trails in other regions will be deleted. As a best practice, consider
    #            using trails that log events in all regions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_log_file_validation
    #   <p>Specifies whether log file validation is enabled. The default is false.</p>
    #            <note>
    #               <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail
    #               does not create digest files for log files that were delivered during a period in which log file integrity validation
    #               was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on
    #               January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon
    #               on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs are delivered. Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The
    #            value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully
    #            specified ARN to a key, or a globally unique identifier.</p>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more information about multi-Region keys,
    #            see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #               <li>
    #                  <p>12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is applied to all accounts in an organization in Organizations, or only for the current Amazon Web Services account.
    #            The default is false, and cannot be true unless the call is made on behalf of an Amazon Web Services account that is the management account for an organization in
    #            Organizations. If the trail is not an organization trail and this is set to <code>true</code>, the trail will be created in all Amazon Web Services accounts that belong
    #            to the organization. If the trail is an organization trail and this is set to <code>false</code>, the trail will remain in the current Amazon Web Services account but be
    #            deleted from all member accounts in the organization.</p>
    #
    #   @return [Boolean]
    #
    UpdateTrailInput = ::Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :include_global_service_events,
      :is_multi_region_trail,
      :enable_log_file_validation,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
    #
    # @!attribute name
    #   <p>Specifies the name of the trail.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
    #            for log file delivery.
    #            For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your IAM Log Files</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_name
    #   <p>This field is no longer in use. Use <a>UpdateTrailResponse$SnsTopicARN</a>.</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications
    #            when log files are delivered. The following is the format of a topic ARN.</p>
    #            <p>
    #               <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail exists in one region or in all regions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute trail_arn
    #   <p>Specifies the ARN of the trail that was updated. The following is the format of a trail ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute log_file_validation_enabled
    #   <p>Specifies whether log file integrity validation is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs are delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the following format.</p>
    #
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is an organization trail.</p>
    #
    #   @return [Boolean]
    #
    UpdateTrailOutput = ::Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :sns_topic_arn,
      :include_global_service_events,
      :is_multi_region_trail,
      :trail_arn,
      :log_file_validation_enabled,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
