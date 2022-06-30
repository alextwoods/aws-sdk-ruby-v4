# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Keyspaces
  module Types

    # <p>You do not have sufficient access to perform this action. </p>
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

    # <p>Amazon Keyspaces has two read/write capacity modes for processing reads and writes on your tables: </p>
    #          <p>• On-demand (default)</p>
    #          <p>• Provisioned</p>
    #          <p> The read/write capacity mode that you choose controls how you are charged for read and
    #          write throughput and how table throughput capacity is managed.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
    #
    # @!attribute throughput_mode
    #   <p>The read/write throughput capacity mode for a table. The options are:</p>
    #            <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
    #            <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
    #                  <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
    #            <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   Enum, one of: ["PAY_PER_REQUEST", "PROVISIONED"]
    #
    #   @return [String]
    #
    # @!attribute read_capacity_units
    #   <p>The throughput capacity specified for <code>read</code> operations defined in <code>read capacity units</code>
    #               <code>(RCUs)</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute write_capacity_units
    #   <p>The throughput capacity specified for <code>write</code> operations defined in <code>write capacity units</code>
    #               <code>(WCUs)</code>.</p>
    #
    #   @return [Integer]
    #
    CapacitySpecification = ::Struct.new(
      :throughput_mode,
      :read_capacity_units,
      :write_capacity_units,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The read/write throughput capacity mode for a table. The options are:</p>
    #          <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
    #          <p>• <code>throughputMode:PROVISIONED</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
    #
    # @!attribute throughput_mode
    #   <p>The read/write throughput capacity mode for a table. The options are:</p>
    #            <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
    #            <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
    #                  <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input. </p>
    #            <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   Enum, one of: ["PAY_PER_REQUEST", "PROVISIONED"]
    #
    #   @return [String]
    #
    # @!attribute read_capacity_units
    #   <p>The throughput capacity specified for <code>read</code> operations defined in <code>read capacity units</code>
    #               <code>(RCUs)</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute write_capacity_units
    #   <p>The throughput capacity specified for <code>write</code> operations defined in <code>write capacity units</code>
    #               <code>(WCUs)</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_update_to_pay_per_request_timestamp
    #   <p>The timestamp of the last operation that changed the provisioned throughput capacity of a table.</p>
    #
    #   @return [Time]
    #
    CapacitySpecificationSummary = ::Struct.new(
      :throughput_mode,
      :read_capacity_units,
      :write_capacity_units,
      :last_update_to_pay_per_request_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The optional clustering column portion of your primary key determines how the data is clustered and sorted within each partition.</p>
    #
    # @!attribute name
    #   <p>The name(s) of the clustering column(s).</p>
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>Sets the ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    ClusteringKey = ::Struct.new(
      :name,
      :order_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The names and data types of regular columns.</p>
    #
    # @!attribute name
    #   <p>The name of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The data type of the column. For a list of available data types, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [String]
    #
    ColumnDefinition = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An optional comment that describes the table.</p>
    #
    # @!attribute message
    #   <p>An optional description of the table.</p>
    #
    #   @return [String]
    #
    Comment = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Keyspaces could not complete the requested action. This error may occur if you try to
    #          perform an action and the same or a different action is already
    #          in progress, or if you try to create a resource that already exists. </p>
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

    # @!attribute keyspace_name
    #   <p>The name of the keyspace to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pair tags to be attached to the keyspace.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateKeyspaceInput = ::Struct.new(
      :keyspace_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    CreateKeyspaceOutput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace that the table is going to be created in.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_definition
    #   <p>The <code>schemaDefinition</code> consists of the
    #            following parameters.</p>
    #            <p>For each column to be created:</p>
    #            <p>• <code>name</code>  -  The name
    #                              of the column.</p>
    #            <p>• <code>type</code>  -  An Amazon Keyspaces
    #                              data type. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer
    #                                    Guide</i>.</p>
    #            <p>The primary key of the table consists of the
    #                        following columns:</p>
    #            <p>• <code>partitionKeys</code> - The partition key can be a single column, or it can be a
    #                              compound value composed of two or more columns. The partition
    #                              key portion of the primary key is required and determines how
    #                              Amazon Keyspaces stores your data.</p>
    #            <p>• <code>name</code> - The name of each partition key column.</p>
    #            <p>• <code>clusteringKeys</code> - The optional clustering column portion of your primary key
    #                              determines how the data is clustered and sorted within each
    #                              partition.</p>
    #            <p>• <code>name</code> - The name of the clustering column. </p>
    #            <p>• <code>orderBy</code> - Sets the
    #                                    ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p>
    #            <p>To define a column as static use <code>staticColumns</code>  -
    #            Static columns store values that are shared by all rows in the same partition:</p>
    #            <p>• <code>name</code>  -  The name
    #                  of the column.</p>
    #            <p>• <code>type</code>  -  An Amazon Keyspaces
    #                  data type.</p>
    #
    #   @return [SchemaDefinition]
    #
    # @!attribute comment
    #   <p>This parameter allows to enter a description of the table.</p>
    #
    #   @return [Comment]
    #
    # @!attribute capacity_specification
    #   <p>Specifies the read/write throughput capacity mode for the table. The options are:</p>
    #            <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
    #            <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
    #                     <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
    #            <p>The default is
    #            <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [CapacitySpecification]
    #
    # @!attribute encryption_specification
    #   <p>Specifies how the encryption key for encryption at rest is managed for the table.
    #            You can choose one of the following KMS key (KMS key):</p>
    #            <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
    #            <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you.
    #                  This option
    #                  requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input.</p>
    #            <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [EncryptionSpecification]
    #
    # @!attribute point_in_time_recovery
    #   <p>Specifies if <code>pointInTimeRecovery</code> is enabled or disabled for the
    #               table. The options are:</p>
    #            <p>• <code>ENABLED</code>
    #            </p>
    #            <p>• <code>DISABLED</code>
    #            </p>
    #            <p>If it's not specified, the
    #                  default is <code>DISABLED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [PointInTimeRecovery]
    #
    # @!attribute ttl
    #   <p>Enables Time to Live custom settings for the
    #               table. The options are:</p>
    #            <p>• <code>status:enabled</code>
    #            </p>
    #            <p>• <code>status:disabled</code>
    #            </p>
    #            <p>The default is <code>status:disabled</code>. After
    #               <code>ttl</code> is enabled, you can't disable it
    #               for the table.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [TimeToLive]
    #
    # @!attribute default_time_to_live
    #   <p>The default Time to Live setting in seconds for the
    #            table.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html ttl-howitworks_default_ttl">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>A list of key-value pair tags to be
    #            attached to the resource. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateTableInput = ::Struct.new(
      :keyspace_name,
      :table_name,
      :schema_definition,
      :comment,
      :capacity_specification,
      :encryption_specification,
      :point_in_time_recovery,
      :ttl,
      :default_time_to_live,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier of the table in the format of an Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    CreateTableOutput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteKeyspaceInput = ::Struct.new(
      :keyspace_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteKeyspaceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace of the to be deleted table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteTableInput = ::Struct.new(
      :keyspace_name,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTableOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Keyspaces encrypts and decrypts the table data at rest transparently and integrates with Key Management Service for storing and managing the encryption key.
    #          You can choose one of the following KMS keys (KMS keys):</p>
    #          <p>• Amazon Web Services owned key - This is the default encryption type. The key is owned by Amazon Keyspaces (no additional charge). </p>
    #          <p>• Customer managed key - This key is stored in your account and is created, owned, and managed by you. You have full control over the customer
    #                managed key (KMS charges apply).</p>
    #          <p>For more information about encryption at rest in Amazon Keyspaces, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
    #          <p>For more information about KMS, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">KMS management service concepts</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #
    # @!attribute type
    #   <p>The encryption option specified for the table. You can choose one of the following KMS keys (KMS keys):</p>
    #            <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
    #            <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you.
    #                  This option
    #                  requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p>
    #            <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_identifier
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key, for example <code>kms_key_identifier:ARN</code>.</p>
    #
    #   @return [String]
    #
    EncryptionSpecification = ::Struct.new(
      :type,
      :kms_key_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionType
    #
    module EncryptionType
      # No documentation available.
      #
      CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY"

      # No documentation available.
      #
      AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY"
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #
    #   @return [String]
    #
    GetKeyspaceInput = ::Struct.new(
      :keyspace_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the keyspace.</p>
    #
    #   @return [String]
    #
    GetKeyspaceOutput = ::Struct.new(
      :keyspace_name,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace that the table is stored in.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    GetTableInput = ::Struct.new(
      :keyspace_name,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace that the specified table is stored in.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the specified table.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the specified table.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The creation timestamp of the specified table.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the specified table.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "DELETED", "RESTORING", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #
    #   @return [String]
    #
    # @!attribute schema_definition
    #   <p>The schema definition of the specified table.</p>
    #
    #   @return [SchemaDefinition]
    #
    # @!attribute capacity_specification
    #   <p>The read/write throughput capacity mode for a table. The options are:</p>
    #            <p>• <code>throughputMode:PAY_PER_REQUEST</code>
    #            </p>
    #            <p>• <code>throughputMode:PROVISIONED</code>
    #            </p>
    #
    #   @return [CapacitySpecificationSummary]
    #
    # @!attribute encryption_specification
    #   <p>The encryption settings of the specified table.</p>
    #
    #   @return [EncryptionSpecification]
    #
    # @!attribute point_in_time_recovery
    #   <p>The point-in-time recovery status of the specified table.</p>
    #
    #   @return [PointInTimeRecoverySummary]
    #
    # @!attribute ttl
    #   <p>The custom Time to Live settings of the specified table.</p>
    #
    #   @return [TimeToLive]
    #
    # @!attribute default_time_to_live
    #   <p>The default Time to Live settings of the specified table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute comment
    #   <p>The the description of the specified table.</p>
    #
    #   @return [Comment]
    #
    GetTableOutput = ::Struct.new(
      :keyspace_name,
      :table_name,
      :resource_arn,
      :creation_timestamp,
      :status,
      :schema_definition,
      :capacity_specification,
      :encryption_specification,
      :point_in_time_recovery,
      :ttl,
      :default_time_to_live,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Keyspaces was unable to fully process this request because of an internal server error.</p>
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

    # <p>Represents the properties of a keyspace.</p>
    #
    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    KeyspaceSummary = ::Struct.new(
      :keyspace_name,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of keyspaces to return in the output. If the total number of keyspaces available
    #            is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination,
    #            provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #
    #   @return [Integer]
    #
    ListKeyspacesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>
    #
    #   @return [String]
    #
    # @!attribute keyspaces
    #   <p>A list of keyspaces.</p>
    #
    #   @return [Array<KeyspaceSummary>]
    #
    ListKeyspacesOutput = ::Struct.new(
      :next_token,
      :keyspaces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of tables to return in the output. If the total number of tables available
    #            is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination,
    #            provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #
    #   @return [String]
    #
    ListTablesInput = ::Struct.new(
      :next_token,
      :max_results,
      :keyspace_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>
    #
    #   @return [String]
    #
    # @!attribute tables
    #   <p>A list of tables.</p>
    #
    #   @return [Array<TableSummary>]
    #
    ListTablesOutput = ::Struct.new(
      :next_token,
      :tables,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of tags to return in the output. If the total number of tags available
    #            is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination,
    #            provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
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

    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :next_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The partition key portion of the primary key is required
    #          and determines how Amazon Keyspaces stores the data.
    #          The partition key can be a single column, or it can be a compound value composed of two or more columns.</p>
    #
    # @!attribute name
    #   <p>The name(s) of the partition key column(s).</p>
    #
    #   @return [String]
    #
    PartitionKey = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Point-in-time recovery (PITR) helps protect your Amazon Keyspaces tables from accidental write or delete operations by providing you continuous backups of your table data.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
    #
    # @!attribute status
    #   <p>The options are:</p>
    #            <p>• <code>ENABLED</code>
    #            </p>
    #            <p>• <code>DISABLED</code>
    #            </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    PointInTimeRecovery = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PointInTimeRecoveryStatus
    #
    module PointInTimeRecoveryStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>The point-in-time recovery status of the specified table.</p>
    #
    # @!attribute status
    #   <p>Shows if point-in-time recovery is enabled or disabled for the specified table.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute earliest_restorable_timestamp
    #   <p>Specifies the earliest possible restore point of the table in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    PointInTimeRecoverySummary = ::Struct.new(
      :status,
      :earliest_restorable_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation tried to access a keyspace or table that doesn't exist. The resource might not be specified correctly, or its status might not be <code>ACTIVE</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The unique identifier in the format of Amazon Resource Name (ARN), for the resource not found.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_keyspace_name
    #   <p>The keyspace name of the source table.</p>
    #
    #   @return [String]
    #
    # @!attribute source_table_name
    #   <p>The name of the source table.</p>
    #
    #   @return [String]
    #
    # @!attribute target_keyspace_name
    #   <p>The name of the target keyspace.</p>
    #
    #   @return [String]
    #
    # @!attribute target_table_name
    #   <p>The name of the target table.</p>
    #
    #   @return [String]
    #
    # @!attribute restore_timestamp
    #   <p>The restore timestamp in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute capacity_specification_override
    #   <p>Specifies the read/write throughput capacity mode for the target table. The options are:</p>
    #            <p>• <code>throughputMode:PAY_PER_REQUEST</code>
    #            </p>
    #            <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
    #               <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
    #            <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [CapacitySpecification]
    #
    # @!attribute encryption_specification_override
    #   <p>Specifies the encryption settings for the target table. You can choose one of the following KMS key (KMS key):</p>
    #            <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
    #            <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you.
    #                  This option
    #                  requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p>
    #            <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [EncryptionSpecification]
    #
    # @!attribute point_in_time_recovery_override
    #   <p>Specifies the <code>pointInTimeRecovery</code> settings for the target
    #               table. The options are:</p>
    #            <p>• <code>ENABLED</code>
    #            </p>
    #            <p>• <code>DISABLED</code>
    #            </p>
    #            <p>If it's not specified, the default is <code>DISABLED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
    #                  Guide</i>.</p>
    #
    #   @return [PointInTimeRecovery]
    #
    # @!attribute tags_override
    #   <p>A list of key-value pair tags to be
    #            attached to the restored table. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [Array<Tag>]
    #
    RestoreTableInput = ::Struct.new(
      :source_keyspace_name,
      :source_table_name,
      :target_keyspace_name,
      :target_table_name,
      :restore_timestamp,
      :capacity_specification_override,
      :encryption_specification_override,
      :point_in_time_recovery_override,
      :tags_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute restored_table_arn
    #   <p>The Amazon Resource Name (ARN) of the restored table.</p>
    #
    #   @return [String]
    #
    RestoreTableOutput = ::Struct.new(
      :restored_table_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the schema of the table.</p>
    #
    # @!attribute all_columns
    #   <p>The regular columns of the table.</p>
    #
    #   @return [Array<ColumnDefinition>]
    #
    # @!attribute partition_keys
    #   <p>The columns that are part of the partition key of the table .</p>
    #
    #   @return [Array<PartitionKey>]
    #
    # @!attribute clustering_keys
    #   <p>The columns that are part of the clustering key of the table.</p>
    #
    #   @return [Array<ClusteringKey>]
    #
    # @!attribute static_columns
    #   <p>The columns that have been defined as <code>STATIC</code>. Static columns store values that are shared by all rows in the same partition.</p>
    #
    #   @return [Array<StaticColumn>]
    #
    SchemaDefinition = ::Struct.new(
      :all_columns,
      :partition_keys,
      :clustering_keys,
      :static_columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation exceeded the service quota for this resource.  For more information on service quotas, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/quotas.html">Quotas</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
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

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

    # <p>The static columns of the table. Static columns store values that are shared by all rows in the same partition.</p>
    #
    # @!attribute name
    #   <p>The name of the static column.</p>
    #
    #   @return [String]
    #
    StaticColumn = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TableStatus
    #
    module TableStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      RESTORING = "RESTORING"

      # No documentation available.
      #
      INACCESSIBLE_ENCRYPTION_CREDENTIALS = "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
    end

    # <p>Returns the name of the specified table, the keyspace it is stored in, and the unique identifier in the format of an Amazon Resource Name (ARN).</p>
    #
    # @!attribute keyspace_name
    #   <p>The name of the keyspace that the table is stored in.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The unique identifier of the table in the format of an Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    TableSummary = ::Struct.new(
      :keyspace_name,
      :table_name,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a tag. A tag is a key-value pair. You can add up to 50 tags to a single Amazon Keyspaces resource.</p>
    #          <p>Amazon Web Services-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign.
    #          Amazon Web Services-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the
    #          prefix <code>user:</code> in the Cost Allocation Report. You cannot backdate the application of a tag.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
    #
    # @!attribute key
    #   <p>The key of the tag. Tag keys are case sensitive. Each Amazon Keyspaces resource can only have up to one tag with the same key. If you try to add an
    #            existing tag (same key), the existing tag value will be updated to the new value.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag. Tag values are case-sensitive and can be null.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource to which to add tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the Amazon Keyspaces resource.</p>
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

    # Includes enum constants for ThroughputMode
    #
    module ThroughputMode
      # No documentation available.
      #
      PAY_PER_REQUEST = "PAY_PER_REQUEST"

      # No documentation available.
      #
      PROVISIONED = "PROVISIONED"
    end

    # <p>Enable custom Time to Live (TTL) settings for rows and columns without setting a TTL default for the specified table.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_enabling">Enabling TTL on tables</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
    #
    # @!attribute status
    #   <p>Shows how to enable custom Time to Live (TTL) settings for the specified table.</p>
    #
    #   Enum, one of: ["ENABLED"]
    #
    #   @return [String]
    #
    TimeToLive = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TimeToLiveStatus
    #
    module TimeToLiveStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Keyspaces resource that the tags will be removed from. This value is an Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of existing tags to be removed from the Amazon Keyspaces resource.</p>
    #
    #   @return [Array<Tag>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
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

    # @!attribute keyspace_name
    #   <p>The name of the keyspace the specified table is stored in.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute add_columns
    #   <p>For each column to be added to the specified table:</p>
    #            <p>• <code>name</code>  -  The name
    #                  of the column.</p>
    #            <p>• <code>type</code>  -  An Amazon Keyspaces
    #                  data type. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer
    #                        Guide</i>.</p>
    #
    #   @return [Array<ColumnDefinition>]
    #
    # @!attribute capacity_specification
    #   <p>Modifies the read/write throughput capacity mode for the table. The options are:</p>
    #            <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
    #            <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
    #                  <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
    #            <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [CapacitySpecification]
    #
    # @!attribute encryption_specification
    #   <p>Modifies the encryption settings of the table. You can choose one of the following KMS key (KMS key):</p>
    #            <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
    #            <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you.
    #                  This option
    #                  requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p>
    #            <p>The default is <code>AWS_OWNED_KMS_KEY</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [EncryptionSpecification]
    #
    # @!attribute point_in_time_recovery
    #   <p>Modifies the <code>pointInTimeRecovery</code> settings of the table. The options are:</p>
    #            <p>• <code>ENABLED</code>
    #            </p>
    #            <p>• <code>DISABLED</code>
    #            </p>
    #            <p>If it's not specified, the default is <code>DISABLED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [PointInTimeRecovery]
    #
    # @!attribute ttl
    #   <p>Modifies Time to Live custom settings for the table. The options are:</p>
    #            <p>• <code>status:enabled</code>
    #            </p>
    #            <p>• <code>status:disabled</code>
    #            </p>
    #            <p>The default is <code>status:disabled</code>. After
    #            <code>ttl</code> is enabled, you can't disable it
    #            for the table.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [TimeToLive]
    #
    # @!attribute default_time_to_live
    #   <p>The default Time to Live setting in seconds for the table.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html ttl-howitworks_default_ttl">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    #   @return [Integer]
    #
    UpdateTableInput = ::Struct.new(
      :keyspace_name,
      :table_name,
      :add_columns,
      :capacity_specification,
      :encryption_specification,
      :point_in_time_recovery,
      :ttl,
      :default_time_to_live,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the modified table.</p>
    #
    #   @return [String]
    #
    UpdateTableOutput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed due to an invalid or malformed request.</p>
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
