# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kendra
  module Types

    # <p>Access Control List files for the documents in a data source. For
    #             the format of the file, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html">Access control for S3 data
    #                 sources</a>.</p>
    #
    # @!attribute key_path
    #   <p>Path to the Amazon Web Services S3 bucket that contains the ACL files.</p>
    #
    #   @return [String]
    #
    AccessControlListConfiguration = ::Struct.new(
      :key_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # <p>Provides information about the column that should be used for
    #             filtering the query response by groups.</p>
    #
    # @!attribute allowed_groups_column_name
    #   <p>A list of groups, separated by semi-colons, that filters a query
    #               response based on user context. The document is only returned to
    #               users that are in one of the groups specified in the
    #                   <code>UserContext</code> field of the <code>Query</code>
    #               API.</p>
    #
    #   @return [String]
    #
    AclConfiguration = ::Struct.new(
      :allowed_groups_column_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An attribute returned from an index query.</p>
    #
    # @!attribute key
    #   <p>The key that identifies the attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute value_type
    #   <p>The data type of the <code>Value</code> property.</p>
    #
    #   Enum, one of: ["TEXT_WITH_HIGHLIGHTS_VALUE"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>An object that contains the attribute value.</p>
    #
    #   @return [AdditionalResultAttributeValue]
    #
    AdditionalResultAttribute = ::Struct.new(
      :key,
      :value_type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An attribute returned with a document from a search.</p>
    #
    # @!attribute text_with_highlights_value
    #   <p>The text associated with the attribute and information about the
    #               highlight to apply to the text.</p>
    #
    #   @return [TextWithHighlights]
    #
    AdditionalResultAttributeValue = ::Struct.new(
      :text_with_highlights_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AdditionalResultAttributeValueType
    #
    module AdditionalResultAttributeValueType
      # No documentation available.
      #
      TEXT_WITH_HIGHLIGHTS_VALUE = "TEXT_WITH_HIGHLIGHTS_VALUE"
    end

    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_list
    #   <p>Lists users or groups in your Amazon Web Services SSO identity source.</p>
    #
    #   @return [Array<EntityConfiguration>]
    #
    AssociateEntitiesToExperienceInput = ::Struct.new(
      :id,
      :index_id,
      :entity_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_entity_list
    #   <p>Lists the users or groups in your Amazon Web Services SSO identity source that
    #               failed to properly configure with your Amazon Kendra experience.</p>
    #
    #   @return [Array<FailedEntity>]
    #
    AssociateEntitiesToExperienceOutput = ::Struct.new(
      :failed_entity_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute personas
    #   <p>The personas that define the specific permissions of users or groups in
    #               your Amazon Web Services SSO identity source. The available personas or access
    #               roles are <code>Owner</code> and <code>Viewer</code>. For more information
    #               on these personas, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html access-search-experience">Providing
    #                   access to your search page</a>.</p>
    #
    #   @return [Array<EntityPersonaConfiguration>]
    #
    AssociatePersonasToEntitiesInput = ::Struct.new(
      :id,
      :index_id,
      :personas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_entity_list
    #   <p>Lists the users or groups in your Amazon Web Services SSO identity source that
    #               failed to properly configure with your Amazon Kendra experience.</p>
    #
    #   @return [Array<FailedEntity>]
    #
    AssociatePersonasToEntitiesOutput = ::Struct.new(
      :failed_entity_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides filtering the query results based on document
    #          attributes.</p>
    #          <p>When you use the <code>AndAllFilters</code> or
    #             <code>OrAllFilters</code>, filters you can use 2 layers under the
    #          first attribute filter. For example, you can use:</p>
    #          <p>
    #             <code><AndAllFilters></code>
    #          </p>
    #          <ol>
    #             <li>
    #                <p>
    #                   <code> <OrAllFilters></code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code> <EqualsTo></code>
    #                </p>
    #             </li>
    #          </ol>
    #          <p>If you use more than 2 layers, you receive a
    #             <code>ValidationException</code> exception with the message
    #             "<code>AttributeFilter</code> cannot have a depth of more
    #          than 2."</p>
    #          <p>If you use more than 10 attribute filters in a given list for
    #          <code>AndAllFilters</code> or <code>OrAllFilters</code>, you receive
    #          a <code>ValidationException</code> with the message
    #          "<code>AttributeFilter</code> cannot have a length of more than 10".</p>
    #
    # @!attribute and_all_filters
    #   <p>Performs a logical <code>AND</code> operation on all supplied
    #            filters.</p>
    #
    #   @return [Array<AttributeFilter>]
    #
    # @!attribute or_all_filters
    #   <p>Performs a logical <code>OR</code> operation on all supplied
    #            filters.</p>
    #
    #   @return [Array<AttributeFilter>]
    #
    # @!attribute not_filter
    #   <p>Performs a logical <code>NOT</code> operation on all supplied
    #            filters.</p>
    #
    #   @return [AttributeFilter]
    #
    # @!attribute equals_to
    #   <p>Performs an equals operation on two document attributes.</p>
    #
    #   @return [DocumentAttribute]
    #
    # @!attribute contains_all
    #   <p>Returns true when a document contains all of the specified document
    #            attributes. This filter is only applicable to
    #               <code>StringListValue</code> metadata.</p>
    #
    #   @return [DocumentAttribute]
    #
    # @!attribute contains_any
    #   <p>Returns true when a document contains any of the specified document
    #            attributes. This filter is only applicable to
    #               <code>StringListValue</code> metadata.</p>
    #
    #   @return [DocumentAttribute]
    #
    # @!attribute greater_than
    #   <p>Performs a greater than operation on two document attributes. Use
    #            with a document attribute of type <code>Date</code> or
    #               <code>Long</code>.</p>
    #
    #   @return [DocumentAttribute]
    #
    # @!attribute greater_than_or_equals
    #   <p>Performs a greater or equals than operation on two document
    #            attributes. Use with a document attribute of type <code>Date</code>
    #            or <code>Long</code>.</p>
    #
    #   @return [DocumentAttribute]
    #
    # @!attribute less_than
    #   <p>Performs a less than operation on two document attributes. Use with
    #            a document attribute of type <code>Date</code> or
    #            <code>Long</code>.</p>
    #
    #   @return [DocumentAttribute]
    #
    # @!attribute less_than_or_equals
    #   <p>Performs a less than or equals operation on two document attributes.
    #            Use with a document attribute of type <code>Date</code> or
    #               <code>Long</code>.</p>
    #
    #   @return [DocumentAttribute]
    #
    AttributeFilter = ::Struct.new(
      :and_all_filters,
      :or_all_filters,
      :not_filter,
      :equals_to,
      :contains_all,
      :contains_any,
      :greater_than,
      :greater_than_or_equals,
      :less_than,
      :less_than_or_equals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to websites that require
    #             user authentication.</p>
    #
    # @!attribute basic_authentication
    #   <p>The list of configuration information that's required to connect to and
    #               crawl a website host using basic authentication credentials.</p>
    #           <p>The list includes the name and port number of the website host.</p>
    #
    #   @return [Array<BasicAuthenticationConfiguration>]
    #
    AuthenticationConfiguration = ::Struct.new(
      :basic_authentication,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to websites that require
    #             basic user authentication.</p>
    #
    # @!attribute host
    #   <p>The name of the website host you want to connect to using
    #               authentication credentials.</p>
    #           <p>For example, the host name of https://a.example.com/page1.html is
    #               "a.example.com".</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number of the website host you want to connect to using
    #               authentication credentials.</p>
    #           <p>For example, the port for https://a.example.com/page1.html is 443,
    #               the standard port for HTTPS.</p>
    #
    #   @return [Integer]
    #
    # @!attribute credentials
    #   <p>Your secret ARN, which you can create in <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html">Secrets Manager</a>
    #            </p>
    #           <p>You use a secret if basic authentication credentials are required to connect
    #               to a website. The secret stores your credentials of user name and password.</p>
    #
    #   @return [String]
    #
    BasicAuthenticationConfiguration = ::Struct.new(
      :host,
      :port,
      :credentials,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index that contains the documents to
    #         delete.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id_list
    #   <p>One or more identifiers for documents to delete from the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute data_source_sync_job_metric_target
    #   <p>Maps a particular data source sync job to a particular data
    #               source.</p>
    #
    #   @return [DataSourceSyncJobMetricTarget]
    #
    BatchDeleteDocumentInput = ::Struct.new(
      :index_id,
      :document_id_list,
      :data_source_sync_job_metric_target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_documents
    #   <p>A list of documents that could not be removed from the index. Each
    #         entry contains an error message that indicates why the document couldn't
    #         be removed from the index.</p>
    #
    #   @return [Array<BatchDeleteDocumentResponseFailedDocument>]
    #
    BatchDeleteDocumentOutput = ::Struct.new(
      :failed_documents,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about documents that could not be removed
    #             from an index by the <code>BatchDeleteDocument</code>
    #             API.</p>
    #
    # @!attribute id
    #   <p>The identifier of the document that couldn't be removed from the
    #               index.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code for why the document couldn't be removed from the
    #               index.</p>
    #
    #   Enum, one of: ["InternalError", "InvalidRequest"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An explanation for why the document couldn't be removed from the
    #               index.</p>
    #
    #   @return [String]
    #
    BatchDeleteDocumentResponseFailedDocument = ::Struct.new(
      :id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index to add documents to. The index ID is
    #               returned by the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_CreateIndex.html">CreateIndex
    #               </a> API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_info_list
    #   <p>A list of <code>DocumentInfo</code> objects that identify the
    #               documents for which to get the status. You identify the documents by
    #               their document ID and optional attributes.</p>
    #
    #   @return [Array<DocumentInfo>]
    #
    BatchGetDocumentStatusInput = ::Struct.new(
      :index_id,
      :document_info_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>A list of documents that Amazon Kendra couldn't get the status for. The
    #               list includes the ID of the document and the reason that the status
    #               couldn't be found.</p>
    #
    #   @return [Array<BatchGetDocumentStatusResponseError>]
    #
    # @!attribute document_status_list
    #   <p>The status of documents. The status indicates if the document is
    #               waiting to be indexed, is in the process of indexing, has completed
    #               indexing, or failed indexing. If a document failed indexing, the
    #               status provides the reason why.</p>
    #
    #   @return [Array<Status>]
    #
    BatchGetDocumentStatusOutput = ::Struct.new(
      :errors,
      :document_status_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a response when the status of a document could not be retrieved.</p>
    #
    # @!attribute document_id
    #   <p>The unique identifier of the document whose status could not be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>Indicates the source of the error.</p>
    #
    #   Enum, one of: ["InternalError", "InvalidRequest"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>States that the API could not get the status of a document. This could be
    #               because the request is not valid or there is a system error.</p>
    #
    #   @return [String]
    #
    BatchGetDocumentStatusResponseError = ::Struct.new(
      :document_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index to add the documents to. You need to
    #         create the index first using the <code>CreateIndex</code>
    #         API.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role that is allowed to run the
    #           <code>BatchPutDocument</code> API. For more information, see
    #           <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
    #             Roles for Amazon Kendra</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute documents
    #   <p>One or more documents to add to the index.</p>
    #            <p>Documents have the following file size limits.</p>
    #            <ul>
    #               <li>
    #                  <p>5 MB total size for inline documents</p>
    #               </li>
    #               <li>
    #                  <p>50 MB total size for files from an S3 bucket</p>
    #               </li>
    #               <li>
    #                  <p>5 MB extracted text for any file</p>
    #               </li>
    #            </ul>
    #            <p>For more information about file size and transaction per second
    #         quotas, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas</a>.</p>
    #
    #   @return [Array<Document>]
    #
    # @!attribute custom_document_enrichment_configuration
    #   <p>Configuration information for altering your document metadata and content during
    #               the document ingestion process when you use the <code>BatchPutDocument</code>
    #               API.</p>
    #           <p>For more information on how to create, modify and delete document metadata,
    #               or make other content alterations when you ingest documents into Amazon Kendra, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing
    #                   document metadata during the ingestion process</a>.</p>
    #
    #   @return [CustomDocumentEnrichmentConfiguration]
    #
    BatchPutDocumentInput = ::Struct.new(
      :index_id,
      :role_arn,
      :documents,
      :custom_document_enrichment_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_documents
    #   <p>A list of documents that were not added to the index because the
    #         document failed a validation check. Each document contains an error
    #         message that indicates why the document couldn't be added to the
    #         index.</p>
    #            <p>If there was an error adding a document to an index the error is
    #         reported in your Amazon Web Services CloudWatch log. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/cloudwatch-logs.html">Monitoring
    #           Amazon Kendra with Amazon CloudWatch Logs</a>
    #            </p>
    #
    #   @return [Array<BatchPutDocumentResponseFailedDocument>]
    #
    BatchPutDocumentOutput = ::Struct.new(
      :failed_documents,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a document that could not be
    #             indexed.</p>
    #
    # @!attribute id
    #   <p>The unique identifier of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The type of error that caused the document to fail to be
    #               indexed.</p>
    #
    #   Enum, one of: ["InternalError", "InvalidRequest"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A description of the reason why the document could not be
    #               indexed.</p>
    #
    #   @return [String]
    #
    BatchPutDocumentResponseFailedDocument = ::Struct.new(
      :id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to Box as
    #             your data source.</p>
    #
    # @!attribute enterprise_id
    #   <p>The identifier of the Box Enterprise platform. You can find the enterprise
    #               ID in the Box Developer Console settings or when you create an app in Box and
    #               download your authentication credentials. For example, <i>801234567</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of an Secrets Manager secret that contains
    #               the key-value pairs required to connect to your Box platform. The secret must
    #               contain a JSON structure with the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>clientID—The identifier of the client OAuth 2.0 authentication
    #                       application created in Box.</p>
    #               </li>
    #               <li>
    #                   <p>clientSecret—A set of characters known only to the OAuth 2.0
    #                       authentication application created in Box.</p>
    #               </li>
    #               <li>
    #                   <p>publicKeyId—The identifier of the public key contained within an
    #                       identity certificate.</p>
    #               </li>
    #               <li>
    #                   <p>privateKey—A set of characters that make up an encryption key.</p>
    #               </li>
    #               <li>
    #                   <p>passphrase—A set of characters that act like a password.</p>
    #               </li>
    #            </ul>
    #           <p>You create an application in Box to generate the keys or credentials required
    #               for the secret. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-box.html box-authentication">Authentication
    #                   for a Box data source</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute use_change_log
    #   <p>
    #               <code>TRUE</code> to use the Slack change log to determine which documents require
    #               updating in the index. Depending on the data source change log's size, it may take
    #               longer for Amazon Kendra to use the change log than to scan all of your
    #               documents.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_comments
    #   <p>
    #               <code>TRUE</code> to index comments.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_tasks
    #   <p>
    #               <code>TRUE</code> to index the contents of tasks.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_web_links
    #   <p>
    #               <code>TRUE</code> to index web links.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute file_field_mappings
    #   <p>A
    #               list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes or
    #               field names of Box files to Amazon Kendra index field names. To create custom
    #               fields, use the <code>UpdateIndex</code> API before you map to Box fields. For more
    #               information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Box field names must exist in your Box custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute task_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of Box tasks to Amazon Kendra index field names. To create
    #               custom fields, use the <code>UpdateIndex</code> API before you map to Box fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Box field names must exist in your Box custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute comment_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of Box comments to Amazon Kendra index field names. To create
    #               custom fields, use the <code>UpdateIndex</code> API before you map to Box fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Box field names must exist in your Box custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute web_link_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of Box web links to Amazon Kendra index field names. To create
    #               custom fields, use the <code>UpdateIndex</code> API before you map to Box fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Box field names must exist in your Box custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain files and folders in your
    #               Box platform. Files and folders that match the patterns are included in the index.
    #               Files and folders that don't match the patterns are excluded from the index. If a
    #               file or folder matches both an inclusion and exclusion pattern, the exclusion pattern
    #               takes precedence and the file or folder isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain files and folders from
    #               your Box platform. Files and folders that match the patterns are excluded from the
    #               index.Files and folders that don't match the patterns are included in the index.
    #               If a file or folder matches both an inclusion and exclusion pattern, the exclusion
    #               pattern takes precedence and the file or folder isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_configuration
    #   <p>Configuration information for an Amazon VPC to connect to your Box. For
    #               more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html">Configuring a VPC</a>.</p>
    #
    #   @return [DataSourceVpcConfiguration]
    #
    BoxConfiguration = ::Struct.new(
      :enterprise_id,
      :secret_arn,
      :use_change_log,
      :crawl_comments,
      :crawl_tasks,
      :crawl_web_links,
      :file_field_mappings,
      :task_field_mappings,
      :comment_field_mappings,
      :web_link_field_mappings,
      :inclusion_patterns,
      :exclusion_patterns,
      :vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.use_change_log ||= false
        self.crawl_comments ||= false
        self.crawl_tasks ||= false
        self.crawl_web_links ||= false
      end

    end

    # <p>Specifies additional capacity units configured for your
    #             Enterprise Edition index. You can add and remove capacity units
    #             to fit your usage requirements.</p>
    #
    # @!attribute storage_capacity_units
    #   <p>The amount of extra storage capacity for an index.
    #               A single capacity unit provides 30 GB of storage space or 100,000 documents,
    #               whichever is reached first.</p>
    #
    #   @return [Integer]
    #
    # @!attribute query_capacity_units
    #   <p>The amount of extra query capacity for an index and
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_GetQuerySuggestions.html">GetQuerySuggestions</a>
    #               capacity.</p>
    #           <p>A single extra capacity unit for an index provides 0.1 queries per second or approximately
    #               8,000 queries per day.</p>
    #           <p>
    #               <code>GetQuerySuggestions</code> capacity is five times the
    #               provisioned query capacity for an index, or the base capacity of 2.5 calls per second,
    #               whichever is higher. For example, the base capacity for an index is 0.1 queries per
    #               second, and <code>GetQuerySuggestions</code> capacity has a base of 2.5 calls per second.
    #               If you add another 0.1 queries per second to total 0.2 queries per second for an index, the
    #               <code>GetQuerySuggestions</code> capacity is 2.5 calls per second
    #               (higher than five times 0.2 queries per second).</p>
    #
    #   @return [Integer]
    #
    CapacityUnitsConfiguration = ::Struct.new(
      :storage_capacity_units,
      :query_capacity_units,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index you want to clear query suggestions from.</p>
    #
    #   @return [String]
    #
    ClearQuerySuggestionsInput = ::Struct.new(
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ClearQuerySuggestionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Gathers information about when a particular result was clicked by
    #             a user. Your application uses the <code>SubmitFeedback</code>
    #             API to provide click information.</p>
    #
    # @!attribute result_id
    #   <p>The unique identifier of the search result that was
    #               clicked.</p>
    #
    #   @return [String]
    #
    # @!attribute click_time
    #   <p>The Unix timestamp of the date and time that the result was
    #               clicked.</p>
    #
    #   @return [Time]
    #
    ClickFeedback = ::Struct.new(
      :result_id,
      :click_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about how Amazon Kendra should use the columns of
    #             a database in an index.</p>
    #
    # @!attribute document_id_column_name
    #   <p>The column that provides the document's unique identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute document_data_column_name
    #   <p>The column that contains the contents of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute document_title_column_name
    #   <p>The column that contains the title of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute field_mappings
    #   <p>An array of objects that map database column names to the
    #               corresponding fields in an index. You must first create the fields
    #               in the index using the <code>UpdateIndex</code> API.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute change_detecting_columns
    #   <p>One to five columns that indicate when a document in the database
    #               has changed.</p>
    #
    #   @return [Array<String>]
    #
    ColumnConfiguration = ::Struct.new(
      :document_id_column_name,
      :document_data_column_name,
      :document_title_column_name,
      :field_mappings,
      :change_detecting_columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConditionOperator
    #
    module ConditionOperator
      # No documentation available.
      #
      GreaterThan = "GreaterThan"

      # No documentation available.
      #
      GreaterThanOrEquals = "GreaterThanOrEquals"

      # No documentation available.
      #
      LessThan = "LessThan"

      # No documentation available.
      #
      LessThanOrEquals = "LessThanOrEquals"

      # No documentation available.
      #
      Equals = "Equals"

      # No documentation available.
      #
      NotEquals = "NotEquals"

      # No documentation available.
      #
      Contains = "Contains"

      # No documentation available.
      #
      NotContains = "NotContains"

      # No documentation available.
      #
      Exists = "Exists"

      # No documentation available.
      #
      NotExists = "NotExists"

      # No documentation available.
      #
      BeginsWith = "BeginsWith"
    end

    # <p></p>
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

    # <p>Configuration of attachment settings for the Confluence data source.
    #             Attachment settings are optional, if you don't specify settings
    #             attachments, Amazon Kendra won't index them.</p>
    #
    # @!attribute crawl_attachments
    #   <p>Indicates whether Amazon Kendra indexes attachments to the pages and blogs
    #               in the Confluence data source. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute attachment_field_mappings
    #   <p>Maps attributes or field names of Confluence attachments to Amazon Kendra index field
    #               names. To create custom fields, use the <code>UpdateIndex</code> API before
    #               you map to Confluence fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Confluence data source field names must exist in your Confluence custom metadata.</p>
    #           <p>If you specify the <code>AttachentFieldMappings</code> parameter, you must specify
    #               at least one field mapping.</p>
    #
    #   @return [Array<ConfluenceAttachmentToIndexFieldMapping>]
    #
    ConfluenceAttachmentConfiguration = ::Struct.new(
      :crawl_attachments,
      :attachment_field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_attachments ||= false
      end

    end

    # Includes enum constants for ConfluenceAttachmentFieldName
    #
    module ConfluenceAttachmentFieldName
      # No documentation available.
      #
      AUTHOR = "AUTHOR"

      # No documentation available.
      #
      CONTENT_TYPE = "CONTENT_TYPE"

      # No documentation available.
      #
      CREATED_DATE = "CREATED_DATE"

      # No documentation available.
      #
      DISPLAY_URL = "DISPLAY_URL"

      # No documentation available.
      #
      FILE_SIZE = "FILE_SIZE"

      # No documentation available.
      #
      ITEM_TYPE = "ITEM_TYPE"

      # No documentation available.
      #
      PARENT_ID = "PARENT_ID"

      # No documentation available.
      #
      SPACE_KEY = "SPACE_KEY"

      # No documentation available.
      #
      SPACE_NAME = "SPACE_NAME"

      # No documentation available.
      #
      URL = "URL"

      # No documentation available.
      #
      VERSION = "VERSION"
    end

    # <p>Maps attributes or field names of Confluence attachments to Amazon Kendra index field
    #             names. To create custom fields, use the <code>UpdateIndex</code> API before
    #             you map to Confluence fields.
    #             For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #             The Confuence data source field names must exist in your Confluence custom metadata.</p>
    #
    # @!attribute data_source_field_name
    #   <p>The name of the field in the data source. </p>
    #           <p>You must first create the index field using the
    #                   <code>UpdateIndex</code> API. </p>
    #
    #   Enum, one of: ["AUTHOR", "CONTENT_TYPE", "CREATED_DATE", "DISPLAY_URL", "FILE_SIZE", "ITEM_TYPE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #
    #   @return [String]
    #
    # @!attribute date_field_format
    #   <p>The format for date fields in the data source. If the field
    #               specified in <code>DataSourceFieldName</code> is a date field you
    #               must specify the date format. If the field is not a date field, an
    #               exception is thrown.</p>
    #
    #   @return [String]
    #
    # @!attribute index_field_name
    #   <p>The name of the index field to map to the Confluence data source
    #               field. The index field type must match the Confluence field
    #               type.</p>
    #
    #   @return [String]
    #
    ConfluenceAttachmentToIndexFieldMapping = ::Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration of blog settings for the Confluence data source. Blogs
    #             are always indexed unless filtered from the index by the
    #                 <code>ExclusionPatterns</code> or <code>InclusionPatterns</code>
    #             fields in the <code>ConfluenceConfiguration</code> object.</p>
    #
    # @!attribute blog_field_mappings
    #   <p>Maps attributes or field names of Confluence blogs to Amazon Kendra index field
    #               names. To create custom fields, use the <code>UpdateIndex</code> API before
    #               you map to Confluence fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Confluence data source field names must exist in your Confluence custom metadata.</p>
    #           <p>If you specify the <code>BlogFieldMappings</code> parameter, you
    #               must specify at least one field mapping.</p>
    #
    #   @return [Array<ConfluenceBlogToIndexFieldMapping>]
    #
    ConfluenceBlogConfiguration = ::Struct.new(
      :blog_field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfluenceBlogFieldName
    #
    module ConfluenceBlogFieldName
      # No documentation available.
      #
      AUTHOR = "AUTHOR"

      # No documentation available.
      #
      DISPLAY_URL = "DISPLAY_URL"

      # No documentation available.
      #
      ITEM_TYPE = "ITEM_TYPE"

      # No documentation available.
      #
      LABELS = "LABELS"

      # No documentation available.
      #
      PUBLISH_DATE = "PUBLISH_DATE"

      # No documentation available.
      #
      SPACE_KEY = "SPACE_KEY"

      # No documentation available.
      #
      SPACE_NAME = "SPACE_NAME"

      # No documentation available.
      #
      URL = "URL"

      # No documentation available.
      #
      VERSION = "VERSION"
    end

    # <p>Maps attributes or field names of Confluence blog to Amazon Kendra index field
    #             names. To create custom fields, use the <code>UpdateIndex</code> API before
    #             you map to Confluence fields.
    #             For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #             The Confluence data source field names must exist in your Confluence custom metadata.</p>
    #
    # @!attribute data_source_field_name
    #   <p>The name of the field in the data source. </p>
    #
    #   Enum, one of: ["AUTHOR", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "PUBLISH_DATE", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #
    #   @return [String]
    #
    # @!attribute date_field_format
    #   <p>The format for date fields in the data source. If the field
    #               specified in <code>DataSourceFieldName</code> is a date field you
    #               must specify the date format. If the field is not a date field, an
    #               exception is thrown.</p>
    #
    #   @return [String]
    #
    # @!attribute index_field_name
    #   <p>The name of the index field to map to the Confluence data source
    #               field. The index field type must match the Confluence field
    #               type.</p>
    #
    #   @return [String]
    #
    ConfluenceBlogToIndexFieldMapping = ::Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to Confluence
    #             as your data source.</p>
    #
    # @!attribute server_url
    #   <p>The URL of your Confluence instance. Use the full URL of the
    #               server. For example, <i>https://server.example.com:port/</i>.
    #               You can also use an IP address, for example,
    #                   <i>https://192.168.1.113/</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of an Secrets Manager secret
    #               that contains the key-value pairs required to connect to your
    #               Confluence server. The secret must contain a JSON structure with the
    #               following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>username—The user name or email address of a user with
    #                       administrative privileges for the Confluence server.</p>
    #               </li>
    #               <li>
    #                   <p>password—The password associated with the user logging
    #                       in to the Confluence server.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Specifies the version of the Confluence installation that you are
    #               connecting to.</p>
    #
    #   Enum, one of: ["CLOUD", "SERVER"]
    #
    #   @return [String]
    #
    # @!attribute space_configuration
    #   <p>Configuration information for indexing Confluence spaces.</p>
    #
    #   @return [ConfluenceSpaceConfiguration]
    #
    # @!attribute page_configuration
    #   <p>Configuration information for indexing Confluence pages.</p>
    #
    #   @return [ConfluencePageConfiguration]
    #
    # @!attribute blog_configuration
    #   <p>Configuration information for indexing Confluence blogs.</p>
    #
    #   @return [ConfluenceBlogConfiguration]
    #
    # @!attribute attachment_configuration
    #   <p>Configuration information for indexing attachments to
    #               Confluence blogs and pages.</p>
    #
    #   @return [ConfluenceAttachmentConfiguration]
    #
    # @!attribute vpc_configuration
    #   <p>Configuration information for an Amazon Virtual Private Cloud to connect to your Confluence.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html">Configuring a VPC</a>.</p>
    #
    #   @return [DataSourceVpcConfiguration]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain blog posts, pages,
    #               spaces, or attachments in your Confluence. Content that matches the patterns are
    #               included in the index. Content that doesn't match the patterns is excluded from
    #               the index. If content matches both an inclusion and exclusion pattern, the
    #               exclusion pattern takes precedence and the content isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>>A list of regular expression patterns to exclude certain blog posts, pages,
    #               spaces, or attachments in your Confluence. Content that matches the patterns are
    #               excluded from the index. Content that doesn't match the patterns is included in
    #               the index. If content matches both an inclusion and exclusion pattern, the
    #               exclusion pattern takes precedence and the content isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    ConfluenceConfiguration = ::Struct.new(
      :server_url,
      :secret_arn,
      :version,
      :space_configuration,
      :page_configuration,
      :blog_configuration,
      :attachment_configuration,
      :vpc_configuration,
      :inclusion_patterns,
      :exclusion_patterns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration of the page settings for the Confluence data source.</p>
    #
    # @!attribute page_field_mappings
    #   <p>>Maps attributes or field names of Confluence pages to Amazon Kendra index field
    #               names. To create custom fields, use the <code>UpdateIndex</code> API before
    #               you map to Confluence fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Confluence data source field names must exist in your Confluence custom metadata.</p>
    #           <p>If you specify the <code>PageFieldMappings</code> parameter, you
    #               must specify at least one field mapping.</p>
    #
    #   @return [Array<ConfluencePageToIndexFieldMapping>]
    #
    ConfluencePageConfiguration = ::Struct.new(
      :page_field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfluencePageFieldName
    #
    module ConfluencePageFieldName
      # No documentation available.
      #
      AUTHOR = "AUTHOR"

      # No documentation available.
      #
      CONTENT_STATUS = "CONTENT_STATUS"

      # No documentation available.
      #
      CREATED_DATE = "CREATED_DATE"

      # No documentation available.
      #
      DISPLAY_URL = "DISPLAY_URL"

      # No documentation available.
      #
      ITEM_TYPE = "ITEM_TYPE"

      # No documentation available.
      #
      LABELS = "LABELS"

      # No documentation available.
      #
      MODIFIED_DATE = "MODIFIED_DATE"

      # No documentation available.
      #
      PARENT_ID = "PARENT_ID"

      # No documentation available.
      #
      SPACE_KEY = "SPACE_KEY"

      # No documentation available.
      #
      SPACE_NAME = "SPACE_NAME"

      # No documentation available.
      #
      URL = "URL"

      # No documentation available.
      #
      VERSION = "VERSION"
    end

    # <p>>Maps attributes or field names of Confluence pages to Amazon Kendra index field
    #             names. To create custom fields, use the <code>UpdateIndex</code> API before
    #             you map to Confluence fields.
    #             For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #             The Confluence data source field names must exist in your Confluence custom metadata.</p>
    #
    # @!attribute data_source_field_name
    #   <p>The name of the field in the data source.</p>
    #
    #   Enum, one of: ["AUTHOR", "CONTENT_STATUS", "CREATED_DATE", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "MODIFIED_DATE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #
    #   @return [String]
    #
    # @!attribute date_field_format
    #   <p>The format for date fields in the data source. If the field
    #               specified in <code>DataSourceFieldName</code> is a date field you
    #               must specify the date format. If the field is not a date field, an
    #               exception is thrown.</p>
    #
    #   @return [String]
    #
    # @!attribute index_field_name
    #   <p>The name of the index field to map to the Confluence data source
    #               field. The index field type must match the Confluence field
    #               type.</p>
    #
    #   @return [String]
    #
    ConfluencePageToIndexFieldMapping = ::Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for indexing Confluence spaces.</p>
    #
    # @!attribute crawl_personal_spaces
    #   <p>Specifies whether Amazon Kendra should index personal spaces. Users can
    #               add restrictions to items in personal spaces. If personal spaces are
    #               indexed, queries without user context information may return
    #               restricted items from a personal space in their results. For more
    #               information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html">Filtering on
    #                   user context</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_archived_spaces
    #   <p>Specifies whether Amazon Kendra should index archived spaces.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_spaces
    #   <p>A list of space keys for Confluence spaces. If you include a key,
    #               the blogs, documents, and attachments in the space are indexed.
    #               Spaces that aren't in the list aren't indexed. A space in the list
    #               must exist. Otherwise, Amazon Kendra logs an error when the data source is
    #               synchronized. If a space is in both the <code>IncludeSpaces</code>
    #               and the <code>ExcludeSpaces</code> list, the space is
    #               excluded.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclude_spaces
    #   <p>A list of space keys of Confluence spaces. If you include a key,
    #               the blogs, documents, and attachments in the space are not indexed.
    #               If a space is in both the <code>ExcludeSpaces</code> and the
    #                   <code>IncludeSpaces</code> list, the space is excluded.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute space_field_mappings
    #   <p>Maps attributes or field names of Confluence spaces to Amazon Kendra index field
    #               names. To create custom fields, use the <code>UpdateIndex</code> API before
    #               you map to Confluence fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Confluence data source field names must exist in your Confluence custom metadata.</p>
    #           <p>If you specify the <code>SpaceFieldMappings</code> parameter, you
    #               must specify at least one field mapping.</p>
    #
    #   @return [Array<ConfluenceSpaceToIndexFieldMapping>]
    #
    ConfluenceSpaceConfiguration = ::Struct.new(
      :crawl_personal_spaces,
      :crawl_archived_spaces,
      :include_spaces,
      :exclude_spaces,
      :space_field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_personal_spaces ||= false
        self.crawl_archived_spaces ||= false
      end

    end

    # Includes enum constants for ConfluenceSpaceFieldName
    #
    module ConfluenceSpaceFieldName
      # No documentation available.
      #
      DISPLAY_URL = "DISPLAY_URL"

      # No documentation available.
      #
      ITEM_TYPE = "ITEM_TYPE"

      # No documentation available.
      #
      SPACE_KEY = "SPACE_KEY"

      # No documentation available.
      #
      URL = "URL"
    end

    # <p>>Maps attributes or field names of Confluence spaces to Amazon Kendra index field
    #             names. To create custom fields, use the <code>UpdateIndex</code> API before
    #             you map to Confluence fields.
    #             For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #             The Confluence data source field names must exist in your Confluence custom metadata.</p>
    #
    # @!attribute data_source_field_name
    #   <p>The name of the field in the data source. </p>
    #
    #   Enum, one of: ["DISPLAY_URL", "ITEM_TYPE", "SPACE_KEY", "URL"]
    #
    #   @return [String]
    #
    # @!attribute date_field_format
    #   <p>The format for date fields in the data source. If the field
    #               specified in <code>DataSourceFieldName</code> is a date field you
    #               must specify the date format. If the field is not a date field, an
    #               exception is thrown.</p>
    #
    #   @return [String]
    #
    # @!attribute index_field_name
    #   <p>The name of the index field to map to the Confluence data source
    #               field. The index field type must match the Confluence field
    #               type.</p>
    #
    #   @return [String]
    #
    ConfluenceSpaceToIndexFieldMapping = ::Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfluenceVersion
    #
    module ConfluenceVersion
      # No documentation available.
      #
      CLOUD = "CLOUD"

      # No documentation available.
      #
      SERVER = "SERVER"
    end

    # <p>Provides the configuration information that's required to connect to a
    #             database.</p>
    #
    # @!attribute database_host
    #   <p>The name of the host for the database. Can be either a string
    #               (host.subdomain.domain.tld) or an IPv4 or IPv6 address.</p>
    #
    #   @return [String]
    #
    # @!attribute database_port
    #   <p>The port that the database uses for connections.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database_name
    #   <p>The name of the database containing the document data.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table that contains the document data.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of credentials stored in Secrets Manager.
    #               The credentials should be a user/password pair. For
    #               more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html">Using a
    #                   Database Data Source</a>. For more information about
    #               Secrets Manager, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html"> What Is
    #                   Secrets Manager</a> in the <i> Secrets Manager
    #                   </i> user guide.</p>
    #
    #   @return [String]
    #
    ConnectionConfiguration = ::Struct.new(
      :database_host,
      :database_port,
      :database_name,
      :table_name,
      :secret_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for your content sources, such as data sources,
    #             FAQs, and content indexed directly via <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html">BatchPutDocument</a>.</p>
    #
    # @!attribute data_source_ids
    #   <p>The identifier of the data sources you want to use for your Amazon Kendra experience.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute faq_ids
    #   <p>The identifier of the FAQs that you want to use for your Amazon Kendra experience.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute direct_put_content
    #   <p>
    #               <code>TRUE</code> to use documents you indexed directly using the
    #                   <code>BatchPutDocument</code> API.</p>
    #
    #   @return [Boolean]
    #
    ContentSourceConfiguration = ::Struct.new(
      :data_source_ids,
      :faq_ids,
      :direct_put_content,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.direct_put_content ||= false
      end

    end

    # Includes enum constants for ContentType
    #
    module ContentType
      # No documentation available.
      #
      PDF = "PDF"

      # No documentation available.
      #
      HTML = "HTML"

      # No documentation available.
      #
      MS_WORD = "MS_WORD"

      # No documentation available.
      #
      PLAIN_TEXT = "PLAIN_TEXT"

      # No documentation available.
      #
      PPT = "PPT"
    end

    # <p>A corrected misspelled word in a query.</p>
    #
    # @!attribute begin_offset
    #   <p>The zero-based location in the response string or text where
    #               the corrected word starts.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset
    #   <p>The zero-based location in the response string or text where
    #               the corrected word ends.</p>
    #
    #   @return [Integer]
    #
    # @!attribute term
    #   <p>The string or text of a misspelled word in a query.</p>
    #
    #   @return [String]
    #
    # @!attribute corrected_term
    #   <p>The string or text of a corrected misspelled word in a query.</p>
    #
    #   @return [String]
    #
    Correction = ::Struct.new(
      :begin_offset,
      :end_offset,
      :term,
      :corrected_term,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A unique name for the data source. A data source name can't be changed
    #         without deleting and recreating the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index that should be associated with this data
    #         source.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of repository that contains the data source.</p>
    #
    #   Enum, one of: ["S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB"]
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>Configuration information that is required to access the data source
    #         repository.</p>
    #            <p>You can't specify the <code>Configuration</code> parameter when the
    #           <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
    #         you receive a <code>ValidationException</code> exception.</p>
    #            <p>The <code>Configuration</code> parameter is required for all other
    #         data sources.</p>
    #
    #   @return [DataSourceConfiguration]
    #
    # @!attribute description
    #   <p>A description for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>Sets the frequency for Amazon Kendra to check the documents in your
    #         repository and update the index. If you don't set a schedule Amazon Kendra
    #         will not periodically update the index. You can call the
    #           <code>StartDataSourceSyncJob</code> API to update the
    #         index.</p>
    #            <p>You can't specify the <code>Schedule</code> parameter when the
    #           <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
    #         you receive a <code>ValidationException</code> exception.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the
    #         data source. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM Roles for
    #           Amazon Kendra</a>.</p>
    #            <p>You can't specify the <code>RoleArn</code> parameter when the
    #           <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
    #         you receive a <code>ValidationException</code> exception.</p>
    #            <p>The <code>RoleArn</code> parameter is required for all other data
    #         sources.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that identify the data source. You can use
    #         the tags to identify and organize your resources and to control access to
    #         resources.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create a data
    #         source. Multiple calls to the <code>CreateDataSource</code> API with
    #         the same client token will create only one data source.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for a language. This allows you to support a language for all
    #               documents when creating the data source. English is supported
    #               by default. For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_document_enrichment_configuration
    #   <p>Configuration information for altering document metadata and content during the
    #               document ingestion process when you create a data source.</p>
    #           <p>For more information on how to create, modify and delete document metadata, or make
    #               other content alterations when you ingest documents into Amazon Kendra, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing
    #                   document metadata during the ingestion process</a>.</p>
    #
    #   @return [CustomDocumentEnrichmentConfiguration]
    #
    CreateDataSourceInput = ::Struct.new(
      :name,
      :index_id,
      :type,
      :configuration,
      :description,
      :schedule,
      :role_arn,
      :tags,
      :client_token,
      :language_code,
      :custom_document_enrichment_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>A unique identifier for the data source.</p>
    #
    #   @return [String]
    #
    CreateDataSourceOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A name for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access <code>Query</code>
    #               API, <code>QuerySuggestions</code> API, <code>SubmitFeedback</code>
    #               API, and Amazon Web Services SSO that stores your user and group information.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM roles for Amazon Kendra</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>Configuration information for your Amazon Kendra experience. This includes
    #               <code>ContentSourceConfiguration</code>, which specifies the data source IDs
    #               and/or FAQ IDs, and <code>UserIdentityConfiguration</code>, which specifies the
    #               user or group information to grant access to your Amazon Kendra experience.</p>
    #
    #   @return [ExperienceConfiguration]
    #
    # @!attribute description
    #   <p>A description for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create your Amazon Kendra experience.
    #               Multiple calls to the <code>CreateExperience</code> API with the same client
    #               token creates only one Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    CreateExperienceInput = ::Struct.new(
      :name,
      :index_id,
      :role_arn,
      :configuration,
      :description,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier for your created Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    CreateExperienceOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index that contains the FAQ.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name that should be associated with the FAQ.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the FAQ.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_path
    #   <p>The S3 location of the FAQ input data.</p>
    #
    #   @return [S3Path]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that
    #               contains the FAQs. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM Roles for Amazon Kendra</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that identify the FAQ. You can use the tags to identify and
    #               organize your resources and to control access to resources.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute file_format
    #   <p>The format of the input file. You can choose between a basic CSV format, a CSV format
    #               that includes customs attributes in a header, and a JSON format that includes custom
    #               attributes.</p>
    #           <p>The format must match the format of the file stored in the S3 bucket identified in the
    #                   <code>S3Path</code> parameter.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html">Adding questions and
    #               answers</a>.</p>
    #
    #   Enum, one of: ["CSV", "CSV_WITH_HEADER", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create a FAQ. Multiple calls to
    #               the <code>CreateFaqRequest</code> API with the same client token will create only
    #               one FAQ. </p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for a language. This allows you to support a language
    #               for the FAQ document. English is supported by default.
    #               For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    #   @return [String]
    #
    CreateFaqInput = ::Struct.new(
      :index_id,
      :name,
      :description,
      :s3_path,
      :role_arn,
      :tags,
      :file_format,
      :client_token,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the FAQ.</p>
    #
    #   @return [String]
    #
    CreateFaqOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name for the new index.</p>
    #
    #   @return [String]
    #
    # @!attribute edition
    #   <p>The Amazon Kendra edition to use for the index. Choose
    #           <code>DEVELOPER_EDITION</code> for indexes intended for development,
    #         testing, or proof of concept. Use <code>ENTERPRISE_EDITION</code> for your
    #         production databases. Once you set the edition for an index, it can't be
    #         changed.</p>
    #            <p>The <code>Edition</code> parameter is optional. If you don't supply a
    #         value, the default is <code>ENTERPRISE_EDITION</code>.</p>
    #            <p>For more information on quota limits for enterprise and developer editions,
    #         see <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas</a>.</p>
    #
    #   Enum, one of: ["DEVELOPER_EDITION", "ENTERPRISE_EDITION"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>An Identity and Access Management (IAM) role that gives
    #         Amazon Kendra permissions to access your Amazon CloudWatch logs and
    #         metrics. This is also the role you use when you call the
    #           <code>BatchPutDocument</code> API to index documents from an
    #         Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The identifier of the KMS customer managed key (CMK) that's
    #         used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
    #         asymmetric CMKs.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    # @!attribute description
    #   <p>A description for the index.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create an index.
    #         Multiple calls to the <code>CreateIndex</code> API with the same
    #         client token will create only one index.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that identify the index. You can use the
    #         tags to identify and organize your resources and to control access to
    #         resources.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute user_token_configurations
    #   <p>The user token configuration.</p>
    #
    #   @return [Array<UserTokenConfiguration>]
    #
    # @!attribute user_context_policy
    #   <p>The user context policy.</p>
    #            <dl>
    #               <dt>ATTRIBUTE_FILTER</dt>
    #               <dd>
    #                  <p>All indexed content is searchable and displayable
    #                     for all users. If you want to filter search results on
    #                     user context, you can use the attribute filters of
    #                     <code>_user_id</code> and <code>_group_ids</code> or
    #                     you can provide user and group information in <code>UserContext</code>.
    #                  </p>
    #               </dd>
    #               <dt>USER_TOKEN</dt>
    #               <dd>
    #                  <p>Enables token-based user access control to filter
    #                     search results on user context. All documents with no
    #                     access control and all documents accessible to the user
    #                     will be searchable and displayable.
    #                  </p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["ATTRIBUTE_FILTER", "USER_TOKEN"]
    #
    #   @return [String]
    #
    # @!attribute user_group_resolution_configuration
    #   <p>Enables fetching access levels of groups and users from an Amazon Web Services Single Sign On
    #            identity source. To configure this, see
    #            <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html">UserGroupResolutionConfiguration</a>.</p>
    #
    #   @return [UserGroupResolutionConfiguration]
    #
    CreateIndexInput = ::Struct.new(
      :name,
      :edition,
      :role_arn,
      :server_side_encryption_configuration,
      :description,
      :client_token,
      :tags,
      :user_token_configurations,
      :user_context_policy,
      :user_group_resolution_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the index. Use this identifier when you query
    #         an index, set up a data source, or index a document.</p>
    #
    #   @return [String]
    #
    CreateIndexOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index you want to create a query suggestions block list for.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A user friendly name for the block list.</p>
    #           <p>For example, the block list named 'offensive-words' includes all
    #               offensive words that could appear in user queries and need to be
    #               blocked from suggestions.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A user-friendly description for the block list.</p>
    #           <p>For example, the description "List of all offensive words that can
    #               appear in user queries and need to be blocked from suggestions."</p>
    #
    #   @return [String]
    #
    # @!attribute source_s3_path
    #   <p>The S3 path to your block list text file in your S3 bucket.</p>
    #           <p>Each block word or phrase should be on a separate line in a text file.</p>
    #               <p>For information on the current quota limits for block lists, see
    #                   <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    #                       for Amazon Kendra</a>.</p>
    #
    #   @return [S3Path]
    #
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create a
    #               query suggestions block list.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The IAM (Identity and Access Management) role used by Amazon Kendra to
    #               access the block list text file in your S3 bucket.</p>
    #           <p>You need permissions to the role ARN (Amazon Web Services Resource Name).
    #               The role needs S3 read permissions to your file in S3 and needs
    #               to give STS (Security Token Service) assume role permissions
    #               to Amazon Kendra.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A tag that you can assign to a block list that categorizes
    #               the block list.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateQuerySuggestionsBlockListInput = ::Struct.new(
      :index_id,
      :name,
      :description,
      :source_s3_path,
      :client_token,
      :role_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the created block list.</p>
    #
    #   @return [String]
    #
    CreateQuerySuggestionsBlockListOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The unique identifier of the index for the new thesaurus.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the new thesaurus.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the new thesaurus.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>An IAM role that gives Amazon Kendra permissions
    #            to access thesaurus file specified in <code>SourceS3Path</code>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that identify the thesaurus. You can use
    #            the tags to identify and organize your resources and to control
    #            access to resources.
    #         </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute source_s3_path
    #   <p>The thesaurus file Amazon S3 source path.
    #         </p>
    #
    #   @return [S3Path]
    #
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create a
    #            thesaurus. Multiple calls to the <code>CreateThesaurus</code> API
    #            with the same client token will create only one thesaurus.
    #         </p>
    #
    #   @return [String]
    #
    CreateThesaurusInput = ::Struct.new(
      :index_id,
      :name,
      :description,
      :role_arn,
      :tags,
      :source_s3_path,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the thesaurus.
    #         </p>
    #
    #   @return [String]
    #
    CreateThesaurusOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for altering document metadata and content
    #             during the document ingestion process.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing document metadata
    #                 during the ingestion process</a>.</p>
    #
    # @!attribute inline_configurations
    #   <p>Configuration information to alter document attributes or metadata fields and
    #               content when ingesting documents into Amazon Kendra.</p>
    #
    #   @return [Array<InlineCustomDocumentEnrichmentConfiguration>]
    #
    # @!attribute pre_extraction_hook_configuration
    #   <p>Configuration information for invoking a Lambda function in Lambda
    #               on the original or raw documents before extracting their metadata and text. You can
    #               use a Lambda function to apply advanced logic for creating, modifying, or deleting
    #               document metadata and content. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html advanced-data-manipulation">Advanced
    #                   data manipulation</a>.</p>
    #
    #   @return [HookConfiguration]
    #
    # @!attribute post_extraction_hook_configuration
    #   <p>Configuration information for invoking a Lambda function in Lambda
    #               on the structured documents with their metadata and text extracted. You can use a
    #               Lambda function to apply advanced logic for creating, modifying, or deleting document
    #               metadata and content. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html advanced-data-manipulation">Advanced
    #                   data manipulation</a>.</p>
    #
    #   @return [HookConfiguration]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to run
    #               <code>PreExtractionHookConfiguration</code> and
    #               <code>PostExtractionHookConfiguration</code> for altering document metadata
    #               and content during the document ingestion process. For more information,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM roles for
    #                   Amazon Kendra</a>.</p>
    #
    #   @return [String]
    #
    CustomDocumentEnrichmentConfiguration = ::Struct.new(
      :inline_configurations,
      :pre_extraction_hook_configuration,
      :post_extraction_hook_configuration,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for an Amazon Kendra data source.</p>
    #
    # @!attribute s3_configuration
    #   <p>Provides the configuration information to connect to an Amazon S3
    #               bucket as your data source.</p>
    #
    #   @return [S3DataSourceConfiguration]
    #
    # @!attribute share_point_configuration
    #   <p>Provides the configuration information to connect to Microsoft SharePoint
    #               as your data source.</p>
    #
    #   @return [SharePointConfiguration]
    #
    # @!attribute database_configuration
    #   <p>Provides the configuration information to connect to a database as
    #               your data source.</p>
    #
    #   @return [DatabaseConfiguration]
    #
    # @!attribute salesforce_configuration
    #   <p>Provides the configuration information to connect to
    #               Salesforce as your data source.</p>
    #
    #   @return [SalesforceConfiguration]
    #
    # @!attribute one_drive_configuration
    #   <p>Provides the configuration information to connect to Microsoft
    #               OneDrive as your data source.</p>
    #
    #   @return [OneDriveConfiguration]
    #
    # @!attribute service_now_configuration
    #   <p>Provides the configuration information to connect to ServiceNow
    #               as your data source.</p>
    #
    #   @return [ServiceNowConfiguration]
    #
    # @!attribute confluence_configuration
    #   <p>Provides the configuration information to connect to Confluence
    #               as your data source.</p>
    #
    #   @return [ConfluenceConfiguration]
    #
    # @!attribute google_drive_configuration
    #   <p>Provides the configuration information to connect to Google
    #               Drive as your data source.</p>
    #
    #   @return [GoogleDriveConfiguration]
    #
    # @!attribute web_crawler_configuration
    #   <p>Provides the configuration information required for Amazon Kendra
    #               Web Crawler.</p>
    #
    #   @return [WebCrawlerConfiguration]
    #
    # @!attribute work_docs_configuration
    #   <p>Provides the configuration information to connect to Amazon WorkDocs
    #               as your data source.</p>
    #
    #   @return [WorkDocsConfiguration]
    #
    # @!attribute fsx_configuration
    #   <p>Provides the configuration information to connect to Amazon FSx as
    #               your data source.</p>
    #
    #   @return [FsxConfiguration]
    #
    # @!attribute slack_configuration
    #   <p>Provides the configuration information to connect to Slack as your
    #               data source.</p>
    #
    #   @return [SlackConfiguration]
    #
    # @!attribute box_configuration
    #   <p>Provides the configuration information to connect to Box as your data source.</p>
    #
    #   @return [BoxConfiguration]
    #
    # @!attribute quip_configuration
    #   <p>Provides the configuration information to connect to Quip as your
    #               data source.</p>
    #
    #   @return [QuipConfiguration]
    #
    # @!attribute jira_configuration
    #   <p>Provides the configuration information to connect to Jira as your
    #               data source.</p>
    #
    #   @return [JiraConfiguration]
    #
    # @!attribute git_hub_configuration
    #   <p>Provides the configuration information to connect to GitHub as
    #               your data source.</p>
    #
    #   @return [GitHubConfiguration]
    #
    DataSourceConfiguration = ::Struct.new(
      :s3_configuration,
      :share_point_configuration,
      :database_configuration,
      :salesforce_configuration,
      :one_drive_configuration,
      :service_now_configuration,
      :confluence_configuration,
      :google_drive_configuration,
      :web_crawler_configuration,
      :work_docs_configuration,
      :fsx_configuration,
      :slack_configuration,
      :box_configuration,
      :quip_configuration,
      :jira_configuration,
      :git_hub_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data source information for user context filtering.</p>
    #
    # @!attribute group_id
    #   <p>The identifier of the group you want to add to your list
    #            of groups. This is for filtering search results based on the
    #            groups' access to documents.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The identifier of the data source group you want to add
    #            to your list of data source groups. This is for filtering
    #            search results based on the groups' access to documents in
    #            that data source.</p>
    #
    #   @return [String]
    #
    DataSourceGroup = ::Struct.new(
      :group_id,
      :data_source_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSourceStatus
    #
    module DataSourceStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"
    end

    # <p>Summary information for an Amazon Kendra data source. Returned in a call
    #             to the <code>DescribeDataSource</code> API.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the data source.</p>
    #
    #   Enum, one of: ["S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The UNIX datetime that the data source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The UNIX datetime that the data source was lasted updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the data source. When the status is
    #                   <code>ACTIVE</code> the data source is ready to use.</p>
    #
    #   Enum, one of: ["CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for a language. This shows a supported language for all documents
    #               in the data source. English is supported by default.
    #               For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    #   @return [String]
    #
    DataSourceSummary = ::Struct.new(
      :name,
      :id,
      :type,
      :created_at,
      :updated_at,
      :status,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a data source synchronization job.</p>
    #
    # @!attribute execution_id
    #   <p>A unique identifier for the synchronization job.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The UNIX datetime that the synchronization job started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The UNIX datetime that the synchronization job
    #               completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The execution status of the synchronization job. When the
    #                   <code>Status</code> field is set to <code>SUCCEEDED</code>, the
    #               synchronization job is done. If the status code is set to
    #                   <code>FAILED</code>, the <code>ErrorCode</code> and
    #                   <code>ErrorMessage</code> fields give you the reason for the
    #               failure.</p>
    #
    #   Enum, one of: ["FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>If the <code>Status</code> field is set to <code>ERROR</code>, the
    #                   <code>ErrorMessage</code> field contains a description of the
    #               error that caused the synchronization to fail.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>If the <code>Status</code> field is set to <code>FAILED</code>,
    #               the <code>ErrorCode</code> field indicates the reason the
    #           synchronization failed.</p>
    #
    #   Enum, one of: ["InternalError", "InvalidRequest"]
    #
    #   @return [String]
    #
    # @!attribute data_source_error_code
    #   <p>If the reason that the synchronization failed is due to an error
    #               with the underlying data source, this field contains a code that
    #               identifies the error.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics
    #   <p>Maps a batch delete document request to a specific data source
    #               sync job. This is optional and should only be supplied when
    #               documents are deleted by a data source connector.</p>
    #
    #   @return [DataSourceSyncJobMetrics]
    #
    DataSourceSyncJob = ::Struct.new(
      :execution_id,
      :start_time,
      :end_time,
      :status,
      :error_message,
      :error_code,
      :data_source_error_code,
      :metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Maps a particular data source sync job to a particular data
    #             source.</p>
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source that is running the sync job.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_sync_job_id
    #   <p>The ID of the sync job that is running on the data source.</p>
    #           <p>If the ID of a sync job is not provided and there is a sync job
    #               running, then the ID of this sync job is used and metrics are
    #               generated for this sync job.</p>
    #           <p>If the ID of a sync job is not provided and there is no sync job
    #               running, then no metrics are generated and documents are
    #               indexed/deleted at the index level without sync job metrics included.</p>
    #
    #   @return [String]
    #
    DataSourceSyncJobMetricTarget = ::Struct.new(
      :data_source_id,
      :data_source_sync_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Maps a batch delete document request to a specific data source
    #             sync job. This is optional and should only be supplied when
    #             documents are deleted by a data source connector.</p>
    #
    # @!attribute documents_added
    #   <p>The number of documents added from the data source up to now in
    #               the data source sync.</p>
    #
    #   @return [String]
    #
    # @!attribute documents_modified
    #   <p>The number of documents modified in the data source up to now in
    #               the data source sync run.</p>
    #
    #   @return [String]
    #
    # @!attribute documents_deleted
    #   <p>The number of documents deleted from the data source up to now in
    #               the data source sync run.</p>
    #
    #   @return [String]
    #
    # @!attribute documents_failed
    #   <p>The number of documents that failed to sync from the data source
    #               up to now in the data source sync run.</p>
    #
    #   @return [String]
    #
    # @!attribute documents_scanned
    #   <p>The current number of documents crawled by the current sync job in
    #               the data source.</p>
    #
    #   @return [String]
    #
    DataSourceSyncJobMetrics = ::Struct.new(
      :documents_added,
      :documents_modified,
      :documents_deleted,
      :documents_failed,
      :documents_scanned,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSourceSyncJobStatus
    #
    module DataSourceSyncJobStatus
      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      SYNCING = "SYNCING"

      # No documentation available.
      #
      INCOMPLETE = "INCOMPLETE"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      ABORTED = "ABORTED"

      # No documentation available.
      #
      SYNCING_INDEXING = "SYNCING_INDEXING"
    end

    # <p>Maps a column or attribute in the data source to an index field.
    #             You must first create the fields in the index using the
    #                 <code>UpdateIndex</code> API.</p>
    #
    # @!attribute data_source_field_name
    #   <p>The name of the column or attribute in the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute date_field_format
    #   <p>The type of data stored in the column or attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute index_field_name
    #   <p>The name of the field in the index.</p>
    #
    #   @return [String]
    #
    DataSourceToIndexFieldMapping = ::Struct.new(
      :data_source_field_name,
      :date_field_format,
      :index_field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSourceType
    #
    module DataSourceType
      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      SHAREPOINT = "SHAREPOINT"

      # No documentation available.
      #
      DATABASE = "DATABASE"

      # No documentation available.
      #
      SALESFORCE = "SALESFORCE"

      # No documentation available.
      #
      ONEDRIVE = "ONEDRIVE"

      # No documentation available.
      #
      SERVICENOW = "SERVICENOW"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"

      # No documentation available.
      #
      CONFLUENCE = "CONFLUENCE"

      # No documentation available.
      #
      GOOGLEDRIVE = "GOOGLEDRIVE"

      # No documentation available.
      #
      WEBCRAWLER = "WEBCRAWLER"

      # No documentation available.
      #
      WORKDOCS = "WORKDOCS"

      # No documentation available.
      #
      FSX = "FSX"

      # No documentation available.
      #
      SLACK = "SLACK"

      # No documentation available.
      #
      BOX = "BOX"

      # No documentation available.
      #
      QUIP = "QUIP"

      # No documentation available.
      #
      JIRA = "JIRA"

      # No documentation available.
      #
      GITHUB = "GITHUB"
    end

    # <p>Provides the configuration information to connect to an Amazon VPC.</p>
    #
    # @!attribute subnet_ids
    #   <p>A list of identifiers for subnets within your Amazon VPC. The
    #               subnets should be able to connect to each other in the VPC, and they
    #               should have outgoing access to the Internet through a NAT
    #               device.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>A list of identifiers of security groups within your Amazon VPC.
    #               The security groups should enable Amazon Kendra to connect to the data
    #               source.</p>
    #
    #   @return [Array<String>]
    #
    DataSourceVpcConfiguration = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to a
    #             index. </p>
    #
    # @!attribute database_engine_type
    #   <p>The type of database engine that runs the database.</p>
    #
    #   Enum, one of: ["RDS_AURORA_MYSQL", "RDS_AURORA_POSTGRESQL", "RDS_MYSQL", "RDS_POSTGRESQL"]
    #
    #   @return [String]
    #
    # @!attribute connection_configuration
    #   <p>Configuration information that's required to connect to a database.</p>
    #
    #   @return [ConnectionConfiguration]
    #
    # @!attribute vpc_configuration
    #   <p>Provides the configuration information to connect to an Amazon VPC.</p>
    #
    #   @return [DataSourceVpcConfiguration]
    #
    # @!attribute column_configuration
    #   <p>Information about where the index should get the document
    #               information from the database.</p>
    #
    #   @return [ColumnConfiguration]
    #
    # @!attribute acl_configuration
    #   <p>Information about the database column that provides information
    #               for user context filtering.</p>
    #
    #   @return [AclConfiguration]
    #
    # @!attribute sql_configuration
    #   <p>Provides information about how Amazon Kendra uses quote marks around SQL
    #               identifiers when querying a database data source.</p>
    #
    #   @return [SqlConfiguration]
    #
    DatabaseConfiguration = ::Struct.new(
      :database_engine_type,
      :connection_configuration,
      :vpc_configuration,
      :column_configuration,
      :acl_configuration,
      :sql_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatabaseEngineType
    #
    module DatabaseEngineType
      # No documentation available.
      #
      RDS_AURORA_MYSQL = "RDS_AURORA_MYSQL"

      # No documentation available.
      #
      RDS_AURORA_POSTGRESQL = "RDS_AURORA_POSTGRESQL"

      # No documentation available.
      #
      RDS_MYSQL = "RDS_MYSQL"

      # No documentation available.
      #
      RDS_POSTGRESQL = "RDS_POSTGRESQL"
    end

    # @!attribute id
    #   <p>The unique identifier of the data source to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The unique identifier of the index associated with the data
    #         source.</p>
    #
    #   @return [String]
    #
    DeleteDataSourceInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDataSourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteExperienceInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteExperienceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the FAQ to remove.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The index to remove the FAQ from.</p>
    #
    #   @return [String]
    #
    DeleteFaqInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFaqOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the index to delete.</p>
    #
    #   @return [String]
    #
    DeleteIndexInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIndexOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index you want to delete a group from.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The identifier of the data source you want to delete a group from.</p>
    #           <p>This is useful if a group is tied to multiple data sources and you want
    #               to delete a group from accessing documents in a certain data source. For example,
    #               the groups "Research", "Engineering", and "Sales and Marketing" are all tied to
    #               the company's documents stored in the data sources Confluence and Salesforce.
    #               You want to delete "Research" and "Engineering" groups from Salesforce, so that
    #               these groups cannot access customer-related documents stored in Salesforce.
    #               Only "Sales and Marketing" should access documents in the Salesforce data source.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The identifier of the group you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute ordering_id
    #   <p>The timestamp identifier you specify to ensure Amazon Kendra does not
    #               override the latest <code>DELETE</code> action with previous actions.
    #               The highest number ID, which is the ordering ID, is the latest action
    #               you want to process and apply on top of other actions with lower number
    #               IDs. This prevents previous actions with lower number IDs from possibly
    #               overriding the latest action.</p>
    #           <p>The ordering ID can be the UNIX time of the last update you made to a group
    #               members list. You would then provide this list when calling
    #               <code>PutPrincipalMapping</code>. This ensures your <code>DELETE</code> action
    #               for that updated group with the latest members list doesn't get overwritten
    #               by earlier <code>DELETE</code> actions for the same group which are yet to
    #               be processed.</p>
    #           <p>The default ordering ID is the current UNIX time in milliseconds that the
    #               action was received by Amazon Kendra.
    #           </p>
    #
    #   @return [Integer]
    #
    DeletePrincipalMappingInput = ::Struct.new(
      :index_id,
      :data_source_id,
      :group_id,
      :ordering_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePrincipalMappingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the you want to delete a block list from.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier of the block list that needs to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteQuerySuggestionsBlockListInput = ::Struct.new(
      :index_id,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteQuerySuggestionsBlockListOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the thesaurus to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index associated with the thesaurus to delete.</p>
    #
    #   @return [String]
    #
    DeleteThesaurusInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteThesaurusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the data source to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    #   @return [String]
    #
    DescribeDataSourceInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name that you gave the data source when it was created.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the data source.</p>
    #
    #   Enum, one of: ["S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB"]
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>Describes how the data source is configured. The specific information in the description
    #         depends on the data source provider.</p>
    #
    #   @return [DataSourceConfiguration]
    #
    # @!attribute created_at
    #   <p>The Unix timestamp of when the data source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The Unix timestamp of when the data source was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the data source. When the status is
    #           <code>ACTIVE</code> the data source is ready to use. When the status is
    #           <code>FAILED</code>, the <code>ErrorMessage</code> field contains the
    #         reason that the data source failed.</p>
    #
    #   Enum, one of: ["CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule for Amazon Kendra to update the index.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that enables the data
    #         source to access its resources.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>When the <code>Status</code> field value is <code>FAILED</code>, the
    #           <code>ErrorMessage</code> field contains a description of the error that
    #         caused the data source to fail.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for a language. This shows a supported language for all
    #               documents in the data source. English is supported by
    #               default. For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_document_enrichment_configuration
    #   <p>Configuration information for altering document metadata and content during the
    #               document ingestion process when you describe a data source.</p>
    #           <p>For more information on how to create, modify and delete document metadata, or make
    #               other content alterations when you ingest documents into Amazon Kendra, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing
    #                   document metadata during the ingestion process</a>.</p>
    #
    #   @return [CustomDocumentEnrichmentConfiguration]
    #
    DescribeDataSourceOutput = ::Struct.new(
      :id,
      :index_id,
      :name,
      :type,
      :configuration,
      :created_at,
      :updated_at,
      :description,
      :status,
      :schedule,
      :role_arn,
      :error_message,
      :language_code,
      :custom_document_enrichment_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience you want to get information on.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience you want to get
    #               information on.</p>
    #
    #   @return [String]
    #
    DescribeExperienceInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Shows the identifier of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>Shows the identifier of the index for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Shows the name of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>Shows the endpoint URLs for your Amazon Kendra experiences. The URLs are unique and fully
    #               hosted by Amazon Web Services.</p>
    #
    #   @return [Array<ExperienceEndpoint>]
    #
    # @!attribute configuration
    #   <p>Shows the configuration information for your Amazon Kendra experience. This includes
    #                   <code>ContentSourceConfiguration</code>, which specifies the data source IDs
    #               and/or FAQ IDs, and <code>UserIdentityConfiguration</code>, which specifies the
    #               user or group information to grant access to your Amazon Kendra experience.</p>
    #
    #   @return [ExperienceConfiguration]
    #
    # @!attribute created_at
    #   <p>Shows the date-time your Amazon Kendra experience was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>Shows the date-time your Amazon Kendra experience was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>Shows the description for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current processing status of your Amazon Kendra experience. When the status
    #               is <code>ACTIVE</code>, your Amazon Kendra experience is ready to use. When the
    #               status is <code>FAILED</code>, the <code>ErrorMessage</code> field contains
    #               the reason that this failed.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>Shows the Amazon Resource Name (ARN) of a role with permission to access
    #               <code>Query</code> API, <code>QuerySuggestions</code> API,
    #               <code>SubmitFeedback</code> API, and Amazon Web Services SSO that stores
    #               your user and group information.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The reason your Amazon Kendra experience could not properly process.</p>
    #
    #   @return [String]
    #
    DescribeExperienceOutput = ::Struct.new(
      :id,
      :index_id,
      :name,
      :endpoints,
      :configuration,
      :created_at,
      :updated_at,
      :description,
      :status,
      :role_arn,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the FAQ.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index that contains the FAQ.</p>
    #
    #   @return [String]
    #
    DescribeFaqInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the FAQ.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index that contains the FAQ.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name that you gave the FAQ when it was created.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the FAQ that you provided when it was created.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the FAQ was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date and time that the FAQ was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute s3_path
    #   <p>Information required to find a specific file in an Amazon S3
    #               bucket.</p>
    #
    #   @return [S3Path]
    #
    # @!attribute status
    #   <p>The status of the FAQ. It is ready to use when the status is
    #               <code>ACTIVE</code>.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that provides access to the S3 bucket
    #               containing the input files for the FAQ.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>If the <code>Status</code> field is <code>FAILED</code>, the <code>ErrorMessage</code>
    #               field contains the reason why the FAQ failed.</p>
    #
    #   @return [String]
    #
    # @!attribute file_format
    #   <p>The file format used by the input files for the FAQ.</p>
    #
    #   Enum, one of: ["CSV", "CSV_WITH_HEADER", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for a language. This shows a supported language
    #               for the FAQ document. English is supported by default.
    #               For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    #   @return [String]
    #
    DescribeFaqOutput = ::Struct.new(
      :id,
      :index_id,
      :name,
      :description,
      :created_at,
      :updated_at,
      :s3_path,
      :status,
      :role_arn,
      :error_message,
      :file_format,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the index to describe.</p>
    #
    #   @return [String]
    #
    DescribeIndexInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the index.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the index.</p>
    #
    #   @return [String]
    #
    # @!attribute edition
    #   <p>The Amazon Kendra edition used for the index. You decide the edition
    #         when you create the index.</p>
    #
    #   Enum, one of: ["DEVELOPER_EDITION", "ENTERPRISE_EDITION"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that gives Amazon Kendra
    #         permission to write to your Amazon Cloudwatch logs.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The identifier of the KMScustomer master key (CMK)
    #         that is used to encrypt your data. Amazon Kendra doesn't support
    #         asymmetric CMKs.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    # @!attribute status
    #   <p>The current status of the index. When the value is
    #         <code>ACTIVE</code>, the index is ready for use. If the
    #           <code>Status</code> field value is <code>FAILED</code>, the
    #           <code>ErrorMessage</code> field contains a message that explains
    #         why.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the index.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix datetime that the index was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The Unix datetime that the index was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute document_metadata_configurations
    #   <p>Configuration settings for any metadata applied to the documents in
    #         the index.</p>
    #
    #   @return [Array<DocumentMetadataConfiguration>]
    #
    # @!attribute index_statistics
    #   <p>Provides information about the number of FAQ questions and answers and
    #         the number of text documents indexed.</p>
    #
    #   @return [IndexStatistics]
    #
    # @!attribute error_message
    #   <p>When the <code>Status</code> field value is <code>FAILED</code>, the
    #           <code>ErrorMessage</code> field contains a message that explains
    #         why.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity_units
    #   <p>For Enterprise Edition indexes, you can choose to use additional
    #         capacity to meet the needs of your application. This contains the capacity
    #         units used for the index. A query or document storage capacity of zero
    #         indicates that the index is using the default capacity. For more information
    #         on the default capacity for an index and adjusting this, see
    #         <a href="https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html">Adjusting
    #           capacity</a>.</p>
    #
    #   @return [CapacityUnitsConfiguration]
    #
    # @!attribute user_token_configurations
    #   <p>The user token configuration for the Amazon Kendra index.</p>
    #
    #   @return [Array<UserTokenConfiguration>]
    #
    # @!attribute user_context_policy
    #   <p>The user context policy for the Amazon Kendra index.</p>
    #
    #   Enum, one of: ["ATTRIBUTE_FILTER", "USER_TOKEN"]
    #
    #   @return [String]
    #
    # @!attribute user_group_resolution_configuration
    #   <p>Shows whether you have enabled the configuration for fetching access
    #            levels of groups and users from an Amazon Web Services Single Sign On identity source.</p>
    #
    #   @return [UserGroupResolutionConfiguration]
    #
    DescribeIndexOutput = ::Struct.new(
      :name,
      :id,
      :edition,
      :role_arn,
      :server_side_encryption_configuration,
      :status,
      :description,
      :created_at,
      :updated_at,
      :document_metadata_configurations,
      :index_statistics,
      :error_message,
      :capacity_units,
      :user_token_configurations,
      :user_context_policy,
      :user_group_resolution_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index required to check the processing of
    #               <code>PUT</code> and <code>DELETE</code> actions for mapping users
    #               to their groups.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The identifier of the data source to check the processing of
    #               <code>PUT</code> and <code>DELETE</code> actions for mapping
    #               users to their groups.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The identifier of the group required to check the processing of
    #               <code>PUT</code> and <code>DELETE</code> actions for mapping users
    #               to their groups.</p>
    #
    #   @return [String]
    #
    DescribePrincipalMappingInput = ::Struct.new(
      :index_id,
      :data_source_id,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>Shows the identifier of the index to see information on the
    #               processing of <code>PUT</code> and <code>DELETE</code> actions
    #               for mapping users to their groups.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>Shows the identifier of the data source to see information on
    #               the processing of <code>PUT</code> and <code>DELETE</code> actions
    #               for mapping users to their groups.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>Shows the identifier of the group to see information on the
    #               processing of <code>PUT</code> and <code>DELETE</code> actions
    #               for mapping users to their groups.</p>
    #
    #   @return [String]
    #
    # @!attribute group_ordering_id_summaries
    #   <p>Shows the following information on the processing of <code>PUT</code> and
    #               <code>DELETE</code> actions for mapping users to their groups:</p>
    #           <ul>
    #               <li>
    #                   <p>Status – the status can be either
    #                       <code>PROCESSING</code>, <code>SUCCEEDED</code>, <code>DELETING</code>,
    #                       <code>DELETED</code>, or <code>FAILED</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Last updated – the last date-time an action was updated.</p>
    #               </li>
    #               <li>
    #                   <p>Received – the last date-time an action was received or submitted.</p>
    #               </li>
    #               <li>
    #                   <p>Ordering ID – the latest action that should process and apply
    #                       after other actions.</p>
    #               </li>
    #               <li>
    #                   <p>Failure reason – the reason an action could not be processed.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<GroupOrderingIdSummary>]
    #
    DescribePrincipalMappingOutput = ::Struct.new(
      :index_id,
      :data_source_id,
      :group_id,
      :group_ordering_id_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index for the block list.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier of the block list.</p>
    #
    #   @return [String]
    #
    DescribeQuerySuggestionsBlockListInput = ::Struct.new(
      :index_id,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>Shows the identifier of the index for the block list.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Shows the unique identifier of the block list.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Shows the name of the block list.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Shows the description for the block list.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Shows whether the current status of the block list is
    #               <code>ACTIVE</code> or <code>INACTIVE</code>.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Shows the error message with details when there are issues in
    #               processing the block list.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Shows the date-time a block list for query suggestions was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>Shows the date-time a block list for query suggestions was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_s3_path
    #   <p>Shows the current S3 path to your block list text file in your S3 bucket.</p>
    #           <p>Each block word or phrase should be on a separate line in a text file.</p>
    #           <p>For information on the current quota limits for block lists, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    #                   for Amazon Kendra</a>.</p>
    #
    #   @return [S3Path]
    #
    # @!attribute item_count
    #   <p>Shows the current number of valid, non-empty words or phrases in
    #               the block list text file.</p>
    #
    #   @return [Integer]
    #
    # @!attribute file_size_bytes
    #   <p>Shows the current size of the block list text file in S3.</p>
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   <p>Shows the current IAM (Identity and Access Management) role used by
    #               Amazon Kendra to access the block list text file in S3.</p>
    #           <p>The role needs S3 read permissions to your file in S3 and needs to
    #               give STS (Security Token Service) assume role permissions to
    #               Amazon Kendra.</p>
    #
    #   @return [String]
    #
    DescribeQuerySuggestionsBlockListOutput = ::Struct.new(
      :index_id,
      :id,
      :name,
      :description,
      :status,
      :error_message,
      :created_at,
      :updated_at,
      :source_s3_path,
      :item_count,
      :file_size_bytes,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index you want to describe query suggestions
    #               settings for.</p>
    #
    #   @return [String]
    #
    DescribeQuerySuggestionsConfigInput = ::Struct.new(
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mode
    #   <p>Shows whether query suggestions are currently in
    #               <code>ENABLED</code> mode or <code>LEARN_ONLY</code> mode.</p>
    #           <p>By default, Amazon Kendra enables query suggestions.<code>LEARN_ONLY</code>
    #               turns off query suggestions for your users. You can change the mode using
    #               the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateQuerySuggestionsConfig.html">UpdateQuerySuggestionsConfig</a>
    #               API.</p>
    #
    #   Enum, one of: ["ENABLED", "LEARN_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Shows whether the status of query suggestions settings is currently
    #               Active or Updating.</p>
    #           <p>Active means the current settings apply and Updating means your
    #               changed settings are in the process of applying.</p>
    #
    #   Enum, one of: ["ACTIVE", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute query_log_look_back_window_in_days
    #   <p>Shows how recent your queries are in your query log time
    #               window (in days).</p>
    #
    #   @return [Integer]
    #
    # @!attribute include_queries_without_user_information
    #   <p>Shows whether Amazon Kendra uses all queries or only uses queries that
    #               include user information to generate query suggestions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute minimum_number_of_querying_users
    #   <p>Shows the minimum number of unique users who must search a query in
    #               order for the query to be eligible to suggest to your users.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minimum_query_count
    #   <p>Shows the minimum number of times a query must be searched in order for
    #               the query to be eligible to suggest to your users.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_suggestions_build_time
    #   <p>Shows the date-time query suggestions for an index was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_clear_time
    #   <p>Shows the date-time query suggestions for an index was last cleared.</p>
    #           <p>After you clear suggestions, Amazon Kendra learns new suggestions based
    #               on new queries added to the query log from the time you cleared suggestions.
    #               Amazon Kendra only considers re-occurences of a query from the time you cleared
    #               suggestions. </p>
    #
    #   @return [Time]
    #
    # @!attribute total_suggestions_count
    #   <p>Shows the current total count of query suggestions for an index.</p>
    #           <p>This count can change when you update your query suggestions settings,
    #               if you filter out certain queries from suggestions using a block list,
    #               and as the query log accumulates more queries for Amazon Kendra to learn from.</p>
    #
    #   @return [Integer]
    #
    DescribeQuerySuggestionsConfigOutput = ::Struct.new(
      :mode,
      :status,
      :query_log_look_back_window_in_days,
      :include_queries_without_user_information,
      :minimum_number_of_querying_users,
      :minimum_query_count,
      :last_suggestions_build_time,
      :last_clear_time,
      :total_suggestions_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the thesaurus to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index associated with the thesaurus to describe.</p>
    #
    #   @return [String]
    #
    DescribeThesaurusInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the thesaurus.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index associated with the thesaurus to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The thesaurus name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The thesaurus description.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the thesaurus. When the value is <code>ACTIVE</code>,
    #            queries are able to use the thesaurus. If the <code>Status</code> field value
    #            is <code>FAILED</code>, the <code>ErrorMessage</code> field provides
    #            more information.
    #         </p>
    #            <p>If the status is <code>ACTIVE_BUT_UPDATE_FAILED</code>, it means
    #            that Amazon Kendra could not ingest the new thesaurus file. The old
    #         thesaurus file is still active.
    #         </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>When the <code>Status</code> field value is <code>FAILED</code>, the
    #            <code>ErrorMessage</code> field provides more information.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix datetime that the thesaurus was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The Unix datetime that the thesaurus was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute role_arn
    #   <p>An IAM role that gives Amazon Kendra permissions
    #            to access thesaurus file specified in <code>SourceS3Path</code>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute source_s3_path
    #   <p>Information required to find a specific file in an Amazon S3
    #               bucket.</p>
    #
    #   @return [S3Path]
    #
    # @!attribute file_size_bytes
    #   <p>The size of the thesaurus file in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute term_count
    #   <p>The number of unique terms in the thesaurus file. For example, the
    #           synonyms <code>a,b,c</code> and <code>a=>d</code>, the term
    #           count would be 4.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute synonym_rule_count
    #   <p>The number of synonym rules in the thesaurus file.</p>
    #
    #   @return [Integer]
    #
    DescribeThesaurusOutput = ::Struct.new(
      :id,
      :index_id,
      :name,
      :description,
      :status,
      :error_message,
      :created_at,
      :updated_at,
      :role_arn,
      :source_s3_path,
      :file_size_bytes,
      :term_count,
      :synonym_rule_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_list
    #   <p>Lists users or groups in your Amazon Web Services SSO identity source.</p>
    #
    #   @return [Array<EntityConfiguration>]
    #
    DisassociateEntitiesFromExperienceInput = ::Struct.new(
      :id,
      :index_id,
      :entity_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_entity_list
    #   <p>Lists the users or groups in your Amazon Web Services SSO identity source that
    #               failed to properly remove access to your Amazon Kendra experience.</p>
    #
    #   @return [Array<FailedEntity>]
    #
    DisassociateEntitiesFromExperienceOutput = ::Struct.new(
      :failed_entity_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_ids
    #   <p>The identifiers of users or groups in your Amazon Web Services SSO identity
    #               source. For example, user IDs could be user emails.</p>
    #
    #   @return [Array<String>]
    #
    DisassociatePersonasFromEntitiesInput = ::Struct.new(
      :id,
      :index_id,
      :entity_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_entity_list
    #   <p>Lists the users or groups in your Amazon Web Services SSO identity source that
    #               failed to properly remove access to your Amazon Kendra experience.</p>
    #
    #   @return [Array<FailedEntity>]
    #
    DisassociatePersonasFromEntitiesOutput = ::Struct.new(
      :failed_entity_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A document in an index.</p>
    #
    # @!attribute id
    #   <p>A unique identifier of the document in the index.</p>
    #           <p>Note, each document ID must be unique per index. You cannot create a data source
    #               to index your documents with their unique IDs and then use the
    #               <code>BatchPutDocument</code> API to index the same documents, or vice versa. You
    #               can delete a data source and then use the <code>BatchPutDocument</code> API to index
    #               the same documents, or vice versa.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute blob
    #   <p>The contents of the document. </p>
    #           <p>Documents passed to the <code>Blob</code> parameter must be base64
    #               encoded. Your code might not need to encode the document file bytes
    #               if you're using an Amazon Web Services SDK to call Amazon Kendra APIs. If you are
    #               calling the Amazon Kendra endpoint directly using REST, you must base64
    #               encode the contents before sending.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_path
    #   <p>Information required to find a specific file in an Amazon S3
    #               bucket.</p>
    #
    #   @return [S3Path]
    #
    # @!attribute attributes
    #   <p>Custom attributes to apply to the document. Use the custom
    #               attributes to provide additional information for searching, to
    #               provide facets for refining searches, and to provide additional
    #               information in the query response.</p>
    #           <p>For example, 'DataSourceId' and 'DataSourceSyncJobId' are custom
    #               attributes that provide information on the synchronization
    #               of documents running on a data source. Note,
    #               'DataSourceSyncJobId' could be an optional custom attribute
    #               as Amazon Kendra will use the ID of a running sync job.</p>
    #
    #   @return [Array<DocumentAttribute>]
    #
    # @!attribute access_control_list
    #   <p>Information on user and group access rights, which is used for
    #               user context filtering.</p>
    #
    #   @return [Array<Principal>]
    #
    # @!attribute hierarchical_access_control_list
    #   <p>The list of <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html">principal</a> lists
    #               that define the hierarchy for which documents users should have access to.</p>
    #
    #   @return [Array<HierarchicalPrincipal>]
    #
    # @!attribute content_type
    #   <p>The file type of the document in the <code>Blob</code>
    #               field.</p>
    #
    #   Enum, one of: ["PDF", "HTML", "MS_WORD", "PLAIN_TEXT", "PPT"]
    #
    #   @return [String]
    #
    Document = ::Struct.new(
      :id,
      :title,
      :blob,
      :s3_path,
      :attributes,
      :access_control_list,
      :hierarchical_access_control_list,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A document attribute or metadata field. To create custom document
    #             attributes, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-attributes.html">Custom attributes</a>.</p>
    #
    # @!attribute key
    #   <p>The identifier for the attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #
    #   @return [DocumentAttributeValue]
    #
    DocumentAttribute = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The condition used for the target document attribute or metadata field when
    #             ingesting documents into Amazon Kendra. You use this with <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeTarget.html">DocumentAttributeTarget
    #                 to apply the condition</a>.</p>
    #         <p>For example, you can create the 'Department' target field and have it prefill
    #             department names associated with the documents based on information in the
    #             'Source_URI' field. Set the condition that if the 'Source_URI' field contains
    #             'financial' in its URI value, then prefill the target field 'Department' with
    #             the target value 'Finance' for the document.</p>
    #         <p>Amazon Kendra cannot create a target field if it has not already been created as an
    #             index field. After you create your index field, you can create a document metadata
    #             field using <code>DocumentAttributeTarget</code>. Amazon Kendra then will map your newly
    #             created metadata field to your index field.</p>
    #
    # @!attribute condition_document_attribute_key
    #   <p>The identifier of the document attribute used for the condition.</p>
    #           <p>For example, 'Source_URI' could be an identifier for the attribute or metadata
    #               field that contains source URIs associated with the documents.</p>
    #           <p>Amazon Kendra currently does not support <code>_document_body</code> as an attribute
    #               key used for the condition.</p>
    #
    #   @return [String]
    #
    # @!attribute operator
    #   <p>The condition operator.</p>
    #           <p>For example, you can use 'Contains' to partially match a string.</p>
    #
    #   Enum, one of: ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"]
    #
    #   @return [String]
    #
    # @!attribute condition_on_value
    #   <p>The value used by the operator.</p>
    #           <p>For example, you can specify the value 'financial' for strings in the 'Source_URI'
    #               field that partially match or contain this value.</p>
    #
    #   @return [DocumentAttributeValue]
    #
    DocumentAttributeCondition = ::Struct.new(
      :condition_document_attribute_key,
      :operator,
      :condition_on_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The target document attribute or metadata field you want to alter when ingesting
    #             documents into Amazon Kendra.</p>
    #         <p>For example, you can delete customer identification numbers associated with the
    #             documents, stored in the document metadata field called 'Customer_ID'. You set the
    #             target key as 'Customer_ID' and the deletion flag to <code>TRUE</code>. This
    #             removes all customer ID values in the field 'Customer_ID'. This would scrub
    #             personally identifiable information from each document's metadata.</p>
    #         <p>Amazon Kendra cannot create a target field if it has not already been created as an
    #             index field. After you create your index field, you can create a document metadata
    #             field using <code>DocumentAttributeTarget</code>. Amazon Kendra then will map your newly
    #             created metadata field to your index field.</p>
    #         <p>You can also use this with <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeCondition.html">DocumentAttributeCondition</a>.</p>
    #
    # @!attribute target_document_attribute_key
    #   <p>The identifier of the target document attribute or metadata field.</p>
    #           <p>For example, 'Department' could be an identifier for the target attribute or
    #               metadata field that includes the department names associated with the documents.</p>
    #
    #   @return [String]
    #
    # @!attribute target_document_attribute_value_deletion
    #   <p>
    #               <code>TRUE</code> to delete the existing target value for your specified target
    #               attribute key. You cannot create a target value and set this to <code>TRUE</code>.
    #               To create a target value (<code>TargetDocumentAttributeValue</code>), set this to
    #               <code>FALSE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute target_document_attribute_value
    #   <p>The target value you want to create for the target attribute.</p>
    #           <p>For example, 'Finance' could be the target value for the target attribute key
    #               'Department'.</p>
    #
    #   @return [DocumentAttributeValue]
    #
    DocumentAttributeTarget = ::Struct.new(
      :target_document_attribute_key,
      :target_document_attribute_value_deletion,
      :target_document_attribute_value,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.target_document_attribute_value_deletion ||= false
      end

    end

    # <p>The value of a document attribute. You can only provide one
    #             value for a document attribute.</p>
    #
    # @!attribute string_value
    #   <p>A string, such as "department".</p>
    #
    #   @return [String]
    #
    # @!attribute string_list_value
    #   <p>A list of strings. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute long_value
    #   <p>A long integer value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute date_value
    #   <p>A date expressed as an ISO 8601 string.</p>
    #           <p>It is important for the time zone to be included
    #               in the ISO 8601 date-time format. For example,
    #               2012-03-25T12:30:10+01:00 is the ISO 8601 date-time format
    #               for March 25th 2012 at 12:30PM (plus 10 seconds) in
    #               Central European Time.</p>
    #
    #   @return [Time]
    #
    DocumentAttributeValue = ::Struct.new(
      :string_value,
      :string_list_value,
      :long_value,
      :date_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the count of documents that match a particular attribute
    #             when doing a faceted search.</p>
    #
    # @!attribute document_attribute_value
    #   <p>The value of the attribute. For example, "HR".</p>
    #
    #   @return [DocumentAttributeValue]
    #
    # @!attribute count
    #   <p>The number of documents in the response that have the attribute
    #               value for the key.</p>
    #
    #   @return [Integer]
    #
    # @!attribute facet_results
    #   <p>Contains the results of a document attribute that is a nested facet.
    #               A <code>FacetResult</code> contains the counts for each facet nested
    #               within a facet.</p>
    #           <p>For example, the document attribute or facet "Department" includes a
    #               value called "Engineering". In addition, the document attribute
    #               or facet "SubDepartment" includes the values "Frontend" and "Backend"
    #               for documents assigned to "Engineering". You can display nested facets
    #               in the search results so that documents can be searched not only by
    #               department but also by a sub department within a department. The counts
    #               for documents that belong to "Frontend" and "Backend" within "Engineering"
    #               are returned for a query.</p>
    #
    #   @return [Array<FacetResult>]
    #
    DocumentAttributeValueCountPair = ::Struct.new(
      :document_attribute_value,
      :count,
      :facet_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentAttributeValueType
    #
    module DocumentAttributeValueType
      # No documentation available.
      #
      STRING_VALUE = "STRING_VALUE"

      # No documentation available.
      #
      STRING_LIST_VALUE = "STRING_LIST_VALUE"

      # No documentation available.
      #
      LONG_VALUE = "LONG_VALUE"

      # No documentation available.
      #
      DATE_VALUE = "DATE_VALUE"
    end

    # <p>Identifies a document for which to retrieve status
    #             information</p>
    #
    # @!attribute document_id
    #   <p>The unique identifier of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>Attributes that identify a specific version of a document to
    #               check.</p>
    #           <p>The only valid attributes are:</p>
    #           <ul>
    #               <li>
    #                   <p>version</p>
    #               </li>
    #               <li>
    #                   <p>datasourceId</p>
    #               </li>
    #               <li>
    #                   <p>jobExecutionId</p>
    #               </li>
    #            </ul>
    #           <p>The attributes follow these rules:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>dataSourceId</code> and <code>jobExecutionId</code>
    #                       must be used together.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>version</code> is ignored if
    #                           <code>dataSourceId</code> and
    #                           <code>jobExecutionId</code> are not provided.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>dataSourceId</code> and
    #                           <code>jobExecutionId</code> are provided, but
    #                           <code>version</code> is not, the version defaults to
    #                       "0".</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<DocumentAttribute>]
    #
    DocumentInfo = ::Struct.new(
      :document_id,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the properties of a custom index field.</p>
    #
    # @!attribute name
    #   <p>The name of the index field.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The data type of the index field. </p>
    #
    #   Enum, one of: ["STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"]
    #
    #   @return [String]
    #
    # @!attribute relevance
    #   <p>Provides manual tuning parameters to determine how the field
    #               affects the search results.</p>
    #
    #   @return [Relevance]
    #
    # @!attribute search
    #   <p>Provides information about how the field is used during a
    #               search.</p>
    #
    #   @return [Search]
    #
    DocumentMetadataConfiguration = ::Struct.new(
      :name,
      :type,
      :relevance,
      :search,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Overrides the document relevance properties of a custom index field.</p>
    #
    # @!attribute name
    #   <p>The name of the tuning configuration to override document relevance
    #            at the index level.</p>
    #
    #   @return [String]
    #
    # @!attribute relevance
    #   <p>Provides information for manually tuning the relevance of a field
    #               in a search. When a query includes terms that match the field, the
    #               results are given a boost in the response based on these tuning
    #               parameters.</p>
    #
    #   @return [Relevance]
    #
    DocumentRelevanceConfiguration = ::Struct.new(
      :name,
      :relevance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentStatus
    #
    module DocumentStatus
      # No documentation available.
      #
      NOT_FOUND = "NOT_FOUND"

      # No documentation available.
      #
      PROCESSING = "PROCESSING"

      # No documentation available.
      #
      INDEXED = "INDEXED"

      # No documentation available.
      #
      UPDATED = "UPDATED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # <p>Document metadata files that contain information such as the
    #             document access control information, source URI, document author,
    #             and custom attributes. Each metadata file contains metadata about a
    #             single document.</p>
    #
    # @!attribute s3_prefix
    #   <p>A prefix used to filter metadata configuration files in the Amazon Web Services S3
    #               bucket. The S3 bucket might contain multiple metadata files. Use
    #                   <code>S3Prefix</code> to include only the desired metadata
    #               files.</p>
    #
    #   @return [String]
    #
    DocumentsMetadataConfiguration = ::Struct.new(
      :s3_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EndpointType
    #
    module EndpointType
      # No documentation available.
      #
      HOME = "HOME"
    end

    # <p>Provides the configuration information for users or groups in
    #             your Amazon Web Services SSO identity source to grant access your Amazon Kendra
    #             experience.</p>
    #
    # @!attribute entity_id
    #   <p>The identifier of a user or group in your Amazon Web Services SSO identity
    #               source. For example, a user ID could be an email.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_type
    #   <p>Specifies whether you are configuring a <code>User</code> or a
    #               <code>Group</code>.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    EntityConfiguration = ::Struct.new(
      :entity_id,
      :entity_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the user entity.</p>
    #
    # @!attribute user_name
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute identified_user_name
    #   <p>The user name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name of the user.</p>
    #
    #   @return [String]
    #
    EntityDisplayData = ::Struct.new(
      :user_name,
      :group_name,
      :identified_user_name,
      :first_name,
      :last_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Kendra::Types::EntityDisplayData "\
          "user_name=\"[SENSITIVE]\", "\
          "group_name=\"[SENSITIVE]\", "\
          "identified_user_name=\"[SENSITIVE]\", "\
          "first_name=\"[SENSITIVE]\", "\
          "last_name=\"[SENSITIVE]\">"
      end
    end

    # <p>Provides the configuration information for users or groups in your
    #             Amazon Web Services SSO identity source for access to your Amazon Kendra experience.
    #             Specific permissions are defined for each user or group once they are
    #             granted access to your Amazon Kendra experience.</p>
    #
    # @!attribute entity_id
    #   <p>The identifier of a user or group in your Amazon Web Services SSO identity
    #               source. For example, a user ID could be an email.</p>
    #
    #   @return [String]
    #
    # @!attribute persona
    #   <p>The persona that defines the specific permissions of the user or group
    #               in your Amazon Web Services SSO identity source. The available personas or
    #               access roles are <code>Owner</code> and <code>Viewer</code>. For more
    #               information on these personas, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html access-search-experience">Providing
    #                   access to your search page</a>.</p>
    #
    #   Enum, one of: ["OWNER", "VIEWER"]
    #
    #   @return [String]
    #
    EntityPersonaConfiguration = ::Struct.new(
      :entity_id,
      :persona,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EntityType
    #
    module EntityType
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      GROUP = "GROUP"
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      INTERNAL_ERROR = "InternalError"

      # No documentation available.
      #
      INVALID_REQUEST = "InvalidRequest"
    end

    # <p>Provides the configuration information for your Amazon Kendra experience. This includes
    #             the data source IDs and/or FAQ IDs, and user or group information to grant access
    #             to your Amazon Kendra experience.</p>
    #
    # @!attribute content_source_configuration
    #   <p>The identifiers of your data sources and FAQs. Or, you can specify
    #               that you want to use documents indexed via the <code>BatchPutDocument</code>
    #               API. This is the content you want to use for your Amazon Kendra experience.</p>
    #
    #   @return [ContentSourceConfiguration]
    #
    # @!attribute user_identity_configuration
    #   <p>The Amazon Web Services SSO field name that contains the identifiers of your users,
    #               such as their emails.</p>
    #
    #   @return [UserIdentityConfiguration]
    #
    ExperienceConfiguration = ::Struct.new(
      :content_source_configuration,
      :user_identity_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for the endpoint for your Amazon Kendra
    #             experience.</p>
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint for your Amazon Kendra experience. The type currently available
    #               is <code>HOME</code>, which is a unique and fully hosted URL to the home page
    #               of your Amazon Kendra experience.</p>
    #
    #   Enum, one of: ["HOME"]
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The endpoint of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    ExperienceEndpoint = ::Struct.new(
      :endpoint_type,
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information for users or groups in your Amazon Web Services SSO identity
    #             source with granted access to your Amazon Kendra experience. You can create an Amazon Kendra
    #             experience such as a search application. For more information on creating a
    #             search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building
    #                 a search experience with no code</a>.</p>
    #
    # @!attribute entity_id
    #   <p>The identifier of a user or group in your Amazon Web Services SSO identity source.
    #               For example, a user ID could be an email.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_type
    #   <p>Shows the type as <code>User</code> or <code>Group</code>.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute display_data
    #   <p>Information about the user entity.</p>
    #
    #   @return [EntityDisplayData]
    #
    ExperienceEntitiesSummary = ::Struct.new(
      :entity_id,
      :entity_type,
      :display_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExperienceStatus
    #
    module ExperienceStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Summary information for your Amazon Kendra experience. You can create an Amazon Kendra
    #             experience such as a search application. For more information on creating
    #             a search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building
    #                 a search experience with no code</a>.</p>
    #
    # @!attribute name
    #   <p>The name of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date-time your Amazon Kendra experience was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The processing status of your Amazon Kendra experience.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>The endpoint URLs for your Amazon Kendra experiences. The URLs are unique
    #               and fully hosted by Amazon Web Services.</p>
    #
    #   @return [Array<ExperienceEndpoint>]
    #
    ExperiencesSummary = ::Struct.new(
      :name,
      :id,
      :created_at,
      :status,
      :endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a document attribute. You can use document
    #          attributes as facets.</p>
    #          <p>For example, the document attribute or facet "Department" includes
    #          the values "HR", "Engineering", and "Accounting". You can display these
    #          values in the search results so that documents can be searched by department.</p>
    #          <p>You can display up to 10 facet values per facet for a query. If you want to
    #          increase this limit, contact <a href="http://aws.amazon.com/contact-us/">Support</a>.</p>
    #
    # @!attribute document_attribute_key
    #   <p>The unique key for the document attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute facets
    #   <p>An array of document attributes that are nested facets within a facet.</p>
    #            <p>For example, the document attribute or facet "Department" includes a
    #            value called "Engineering". In addition, the document attribute or
    #            facet "SubDepartment" includes the values "Frontend" and "Backend" for documents
    #            assigned to "Engineering". You can display nested facets in the search results
    #            so that documents can be searched not only by department but also by a sub
    #            department within a department. This helps your users further narrow their
    #            search.</p>
    #            <p>You can only have one nested facet within a facet. If you want to increase
    #            this limit, contact <a href="http://aws.amazon.com/contact-us/">Support</a>.</p>
    #
    #   @return [Array<Facet>]
    #
    # @!attribute max_results
    #   <p>Maximum number of facet values per facet. The default is 10. You can use
    #            this to limit the number of facet values to less than 10. If you want to
    #            increase the default, contact <a href="http://aws.amazon.com/contact-us/">Support</a>.</p>
    #
    #   @return [Integer]
    #
    Facet = ::Struct.new(
      :document_attribute_key,
      :facets,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p>The facet values for the documents in the response.</p>
    #
    # @!attribute document_attribute_key
    #   <p>The key for the facet values. This is the same as the
    #               <code>DocumentAttributeKey</code> provided in the query.</p>
    #
    #   @return [String]
    #
    # @!attribute document_attribute_value_type
    #   <p>The data type of the facet value. This is the same as the type
    #            defined for the index field when it was created.</p>
    #
    #   Enum, one of: ["STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"]
    #
    #   @return [String]
    #
    # @!attribute document_attribute_value_count_pairs
    #   <p>An array of key/value pairs, where the key is the value of the
    #            attribute and the count is the number of documents that share the key
    #            value.</p>
    #
    #   @return [Array<DocumentAttributeValueCountPair>]
    #
    FacetResult = ::Struct.new(
      :document_attribute_key,
      :document_attribute_value_type,
      :document_attribute_value_count_pairs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information on the users or groups in your Amazon Web Services SSO identity
    #             source that failed to properly configure with your Amazon Kendra experience.</p>
    #
    # @!attribute entity_id
    #   <p>The identifier of the user or group in your Amazon Web Services SSO identity
    #               source. For example, a user ID could be an email.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The reason the user or group in your Amazon Web Services SSO identity source
    #               failed to properly configure with your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    FailedEntity = ::Struct.new(
      :entity_id,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FaqFileFormat
    #
    module FaqFileFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      CSV_WITH_HEADER = "CSV_WITH_HEADER"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # <p>Provides statistical information about the FAQ questions and
    #             answers contained in an index.</p>
    #
    # @!attribute indexed_question_answers_count
    #   <p>The total number of FAQ questions and answers contained in the
    #               index.</p>
    #
    #   @return [Integer]
    #
    FaqStatistics = ::Struct.new(
      :indexed_question_answers_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.indexed_question_answers_count ||= 0
      end

    end

    # Includes enum constants for FaqStatus
    #
    module FaqStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Provides information about a frequently asked questions and answer
    #             contained in an index.</p>
    #
    # @!attribute id
    #   <p>The unique identifier of the FAQ.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name that you assigned the FAQ when you created or updated the
    #               FAQ.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the FAQ. When the status is
    #                   <code>ACTIVE</code> the FAQ is ready for use.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The UNIX datetime that the FAQ was added to the index.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The UNIX datetime that the FAQ was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute file_format
    #   <p>The file type used to create the FAQ. </p>
    #
    #   Enum, one of: ["CSV", "CSV_WITH_HEADER", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for a language. This shows a supported language for the FAQ document
    #               as part of the summary information for FAQs. English is supported by default.
    #               For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    #   @return [String]
    #
    FaqSummary = ::Struct.new(
      :id,
      :name,
      :status,
      :created_at,
      :updated_at,
      :file_format,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to Amazon FSx as
    #             your data source.</p>
    #
    # @!attribute file_system_id
    #   <p>The identifier of the Amazon FSx file system.</p>
    #           <p>You can find your file system ID on the file system dashboard in
    #               the Amazon FSx console. For information on how to create a
    #               file system in Amazon FSx console, using Windows File Server
    #               as an example, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/getting-started-step1.html">Amazon FSx
    #                   Getting started guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_type
    #   <p>The Amazon FSx file system type. Windows is currently the only
    #               supported type.</p>
    #
    #   Enum, one of: ["WINDOWS"]
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>Configuration information for an Amazon Virtual Private Cloud to connect
    #               to your Amazon FSx. Your Amazon FSx
    #               instance must reside inside your VPC.</p>
    #
    #   @return [DataSourceVpcConfiguration]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of an Secrets Manager secret that
    #               contains the key-value pairs required to connect to your Amazon FSx
    #               file system. Windows is currently the only supported type. The secret must
    #               contain a JSON structure with the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>username—The Active Directory user name, along with the
    #                       Domain Name System (DNS) domain name. For example,
    #                       <i>user@corp.example.com</i>. The Active Directory
    #                       user account must have read and mounting access to the
    #                       Amazon FSx file system for Windows.</p>
    #               </li>
    #               <li>
    #                   <p>password—The password of the Active Directory user account with
    #                       read and mounting access to the Amazon FSx Windows file system.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain files
    #               in your Amazon FSx file system. Files that match the patterns
    #               are included in the index. Files that don't match the patterns are
    #               excluded from the index. If a file matches both an inclusion and
    #               exclusion pattern, the exclusion pattern takes precedence and the file
    #               isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain files
    #               in your Amazon FSx file system. Files that match the patterns
    #               are excluded from the index. Files that don't match the patterns are
    #               included in the index. If a file matches both an inclusion and exclusion
    #               pattern, the exclusion pattern takes precedence and the file isn't included
    #               in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that
    #               map Amazon FSx data source attributes or field names to Amazon Kendra
    #               index field names. To create custom fields, use the
    #               <code>UpdateIndex</code> API before you map to Amazon FSx fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping
    #                   data source fields</a>. The Amazon FSx data source field names
    #               must exist in your Amazon FSx custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    FsxConfiguration = ::Struct.new(
      :file_system_id,
      :file_system_type,
      :vpc_configuration,
      :secret_arn,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FsxFileSystemType
    #
    module FsxFileSystemType
      # No documentation available.
      #
      WINDOWS = "WINDOWS"
    end

    # @!attribute index_id
    #   <p>The identifier of the index you want to get query suggestions from.</p>
    #
    #   @return [String]
    #
    # @!attribute query_text
    #   <p>The text of a user's query to generate query suggestions.</p>
    #           <p>A query is suggested if the query prefix matches
    #               what a user starts to type as their query.</p>
    #           <p>Amazon Kendra does not show any suggestions if a user
    #               types fewer than two characters or more than 60 characters.
    #               A query must also have at least one search result and contain
    #               at least one word of more than four characters.</p>
    #
    #   @return [String]
    #
    # @!attribute max_suggestions_count
    #   <p>The maximum number of query suggestions you want to show
    #               to your users.</p>
    #
    #   @return [Integer]
    #
    GetQuerySuggestionsInput = ::Struct.new(
      :index_id,
      :query_text,
      :max_suggestions_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_suggestions_id
    #   <p>The unique identifier for a list of query suggestions for an index.</p>
    #
    #   @return [String]
    #
    # @!attribute suggestions
    #   <p>A list of query suggestions for an index.</p>
    #
    #   @return [Array<Suggestion>]
    #
    GetQuerySuggestionsOutput = ::Struct.new(
      :query_suggestions_id,
      :suggestions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index to get search metrics data.</p>
    #
    #   @return [String]
    #
    # @!attribute interval
    #   <p>The time interval or time window to get search metrics data.
    #               The time interval uses the time zone of your index.
    #               You can view data in the following time windows:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>THIS_WEEK</code>: The current week, starting on
    #                       the Sunday and ending on the day before the current date.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ONE_WEEK_AGO</code>: The previous week, starting on
    #                       the Sunday and ending on the following Saturday.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TWO_WEEKS_AGO</code>: The week before the previous week,
    #                       starting on the Sunday and ending on the following Saturday.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>THIS_MONTH</code>: The current month, starting on the
    #                       first day of the month and ending on the day before the current date.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ONE_MONTH_AGO</code>: The previous month, starting on the
    #                       first day of the month and ending on the last day of the month.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TWO_MONTHS_AGO</code>: The month before the previous month,
    #                       starting on the first day of the month and ending on last day of the month.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["THIS_MONTH", "THIS_WEEK", "ONE_WEEK_AGO", "TWO_WEEKS_AGO", "ONE_MONTH_AGO", "TWO_MONTHS_AGO"]
    #
    #   @return [String]
    #
    # @!attribute metric_type
    #   <p>The metric you want to retrieve. You
    #               can specify only one metric per call.</p>
    #           <p>For more information about the metrics you can view, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/search-analytics.html">Gaining
    #                   insights with search analytics</a>.</p>
    #
    #   Enum, one of: ["QUERIES_BY_COUNT", "QUERIES_BY_ZERO_CLICK_RATE", "QUERIES_BY_ZERO_RESULT_RATE", "DOCS_BY_CLICK_COUNT", "AGG_QUERY_DOC_METRICS", "TREND_QUERY_DOC_METRICS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there
    #               is more data to retrieve), Amazon Kendra returns a pagination token in
    #               the response. You can use this pagination token to
    #               retrieve the next set of search metrics data.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of returned data for the metric.</p>
    #
    #   @return [Integer]
    #
    GetSnapshotsInput = ::Struct.new(
      :index_id,
      :interval,
      :metric_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snap_shot_time_filter
    #   <p>The date-time for the beginning and end of the time window
    #               for the search metrics data.</p>
    #
    #   @return [TimeRange]
    #
    # @!attribute snapshots_data_header
    #   <p>The column headers for the search metrics data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute snapshots_data
    #   <p>The search metrics data. The data returned depends on the
    #               metric type you requested.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this
    #               token, which you can use in a later request to retrieve the
    #               next set of search metrics data.</p>
    #
    #   @return [String]
    #
    GetSnapshotsOutput = ::Struct.new(
      :snap_shot_time_filter,
      :snapshots_data_header,
      :snapshots_data,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to GitHub
    #             as your data source.</p>
    #
    # @!attribute saa_s_configuration
    #   <p>Configuration information to connect to GitHub Enterprise Cloud (SaaS).</p>
    #
    #   @return [SaaSConfiguration]
    #
    # @!attribute on_premise_configuration
    #   <p>Configuration information to connect to GitHub Enterprise Server (on premises).</p>
    #
    #   @return [OnPremiseConfiguration]
    #
    # @!attribute type
    #   <p>The type of GitHub service you want to connect to—GitHub Enterprise
    #               Cloud (SaaS) or GitHub Enterprise Server (on premises).</p>
    #
    #   Enum, one of: ["SAAS", "ON_PREMISE"]
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of an Secrets Manager secret that contains
    #               the key-value pairs required to connect to your GitHub. The secret must contain
    #               a JSON structure with the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>githubToken—The access token created in GitHub. For more information
    #                       on creating a token in GitHub, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-github.html github-authentication">Authentication
    #                           for a GitHub data source</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute use_change_log
    #   <p>
    #               <code>TRUE</code> to use the GitHub change log to determine which documents require
    #               updating in the index. Depending on the GitHub change log's size, it may take longer
    #               for Amazon Kendra to use the change log than to scan all of your documents in
    #               GitHub.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute git_hub_document_crawl_properties
    #   <p>Configuration information to include certain types of GitHub content. You can
    #               configure to index repository files only, or also include issues and pull requests,
    #               comments, and comment attachments.</p>
    #
    #   @return [GitHubDocumentCrawlProperties]
    #
    # @!attribute repository_filter
    #   <p>A list of names of the specific repositories you want to index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute inclusion_folder_name_patterns
    #   <p>A list of regular expression patterns to include certain folder names in your
    #               GitHub repository or repositories. Folder names that match the patterns are
    #               included in the index. Folder names that don't match the patterns are excluded
    #               from the index. If a folder matches both an inclusion and exclusion pattern, the
    #               exclusion pattern takes precedence and the folder isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute inclusion_file_type_patterns
    #   <p>A list of regular expression patterns to include certain file types in your
    #               GitHub repository or repositories. File types that match the patterns are
    #               included in the index. File types that don't match the patterns are excluded
    #               from the index. If a file matches both an inclusion and exclusion pattern, the
    #               exclusion pattern takes precedence and the file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute inclusion_file_name_patterns
    #   <p>A list of regular expression patterns to include certain file names in your
    #               GitHub repository or repositories. File names that match the patterns are
    #               included in the index. File names that don't match the patterns are excluded
    #               from the index. If a file matches both an inclusion and exclusion pattern, the
    #               exclusion pattern takes precedence and the file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_folder_name_patterns
    #   <p>A list of regular expression patterns to exclude certain folder names in your
    #               GitHub repository or repositories. Folder names that match the patterns are excluded
    #               from the index. Folder names that don't match the patterns are included in the index.
    #               If a folder matches both an exclusion and inclusion pattern, the exclusion pattern
    #               takes precedence and the folder isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_file_type_patterns
    #   <p>A list of regular expression patterns to exclude certain file types in your
    #               GitHub repository or repositories. File types that match the patterns are excluded
    #               from the index. File types that don't match the patterns are included in the index.
    #               If a file matches both an exclusion and inclusion pattern, the exclusion pattern
    #               takes precedence and the file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_file_name_patterns
    #   <p>A list of regular expression patterns to exclude certain file names in your
    #               GitHub repository or repositories. File names that match the patterns are excluded
    #               from the index. File names that don't match the patterns are included in the index.
    #               If a file matches both an exclusion and inclusion pattern, the exclusion pattern
    #               takes precedence and the file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_configuration
    #   <p>Configuration information of an Amazon Virtual Private Cloud to connect to your
    #               GitHub. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html">Configuring a VPC</a>.</p>
    #
    #   @return [DataSourceVpcConfiguration]
    #
    # @!attribute git_hub_repository_configuration_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map GitHub
    #               repository attributes or field names to Amazon Kendra index field names.
    #               To create custom fields, use the <code>UpdateIndex</code> API before you map to
    #               GitHub fields. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The GitHub data source field names must exist in your GitHub custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute git_hub_commit_configuration_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of GitHub commits to Amazon Kendra index field names.
    #               To create custom fields, use the <code>UpdateIndex</code> API before you map to
    #               GitHub fields. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The GitHub data source field names must exist in your GitHub custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute git_hub_issue_document_configuration_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of GitHub issues to Amazon Kendra index field names.
    #               To create custom fields, use the <code>UpdateIndex</code> API before you map to
    #               GitHub fields. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The GitHub data source field names must exist in your GitHub custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute git_hub_issue_comment_configuration_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of GitHub issue comments to Amazon Kendra index field names.
    #               To create custom fields, use the <code>UpdateIndex</code> API before you map to
    #               GitHub fields. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The GitHub data source field names must exist in your GitHub custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute git_hub_issue_attachment_configuration_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of GitHub issue attachments to Amazon Kendra index field names.
    #               To create custom fields, use the <code>UpdateIndex</code> API before you map to
    #               GitHub fields. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The GitHub data source field names must exist in your GitHub custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute git_hub_pull_request_comment_configuration_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of GitHub pull request comments to Amazon Kendra index field names.
    #               To create custom fields, use the <code>UpdateIndex</code> API before you map to
    #               GitHub fields. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The GitHub data source field names must exist in your GitHub custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute git_hub_pull_request_document_configuration_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of GitHub pull requests to Amazon Kendra index field names.
    #               To create custom fields, use the <code>UpdateIndex</code> API before you map to
    #               GitHub fields. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The GitHub data source field names must exist in your GitHub custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute git_hub_pull_request_document_attachment_configuration_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map attributes
    #               or field names of GitHub pull request attachments to Amazon Kendra index field names.
    #               To create custom fields, use the <code>UpdateIndex</code> API before you map to
    #               GitHub fields. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The GitHub data source field names must exist in your GitHub custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    GitHubConfiguration = ::Struct.new(
      :saa_s_configuration,
      :on_premise_configuration,
      :type,
      :secret_arn,
      :use_change_log,
      :git_hub_document_crawl_properties,
      :repository_filter,
      :inclusion_folder_name_patterns,
      :inclusion_file_type_patterns,
      :inclusion_file_name_patterns,
      :exclusion_folder_name_patterns,
      :exclusion_file_type_patterns,
      :exclusion_file_name_patterns,
      :vpc_configuration,
      :git_hub_repository_configuration_field_mappings,
      :git_hub_commit_configuration_field_mappings,
      :git_hub_issue_document_configuration_field_mappings,
      :git_hub_issue_comment_configuration_field_mappings,
      :git_hub_issue_attachment_configuration_field_mappings,
      :git_hub_pull_request_comment_configuration_field_mappings,
      :git_hub_pull_request_document_configuration_field_mappings,
      :git_hub_pull_request_document_attachment_configuration_field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.use_change_log ||= false
      end

    end

    # <p>Provides the configuration information to include certain types of GitHub content. You can
    #             configure to index repository files only, or also include issues and pull requests,
    #             comments, and comment attachments.</p>
    #
    # @!attribute crawl_repository_documents
    #   <p>
    #               <code>TRUE</code> to index all files with a repository.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_issue
    #   <p>
    #               <code>TRUE</code> to index all issues within a repository.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_issue_comment
    #   <p>
    #               <code>TRUE</code> to index all comments on issues.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_issue_comment_attachment
    #   <p>
    #               <code>TRUE</code> to include all comment attachments for issues.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_pull_request
    #   <p>
    #               <code>TRUE</code> to index all pull requests within a repository.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_pull_request_comment
    #   <p>
    #               <code>TRUE</code> to index all comments on pull requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_pull_request_comment_attachment
    #   <p>
    #               <code>TRUE</code> to include all comment attachments for pull requests.</p>
    #
    #   @return [Boolean]
    #
    GitHubDocumentCrawlProperties = ::Struct.new(
      :crawl_repository_documents,
      :crawl_issue,
      :crawl_issue_comment,
      :crawl_issue_comment_attachment,
      :crawl_pull_request,
      :crawl_pull_request_comment,
      :crawl_pull_request_comment_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_repository_documents ||= false
        self.crawl_issue ||= false
        self.crawl_issue_comment ||= false
        self.crawl_issue_comment_attachment ||= false
        self.crawl_pull_request ||= false
        self.crawl_pull_request_comment ||= false
        self.crawl_pull_request_comment_attachment ||= false
      end

    end

    # <p>Provides the configuration information to connect to
    #             Google Drive as your data source.</p>
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of a Secrets Managersecret
    #               that contains the credentials required to connect to Google Drive.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html">Using a Google Workspace Drive data
    #                   source</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain items in your
    #               Google Drive, including shared drives and users' My Drives. Items that
    #               match the patterns are included in the index. Items that
    #               don't match the patterns are excluded from the index. If an item matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               item isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain items in your
    #               Google Drive, including shared drives and users' My Drives. Items that
    #               match the patterns are excluded from the index. Items that
    #               don't match the patterns are included in the index. If an item matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               item isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute field_mappings
    #   <p>Maps Google Drive data source attributes or field names to Amazon Kendra index
    #               field names. To create custom fields, use the <code>UpdateIndex</code> API before
    #               you map to Google Drive fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Google Drive data source field names must exist in your Google Drive custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute exclude_mime_types
    #   <p>A list of MIME types to exclude from the index. All documents
    #               matching the specified MIME type are excluded. </p>
    #           <p>For a list of MIME types, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html">Using a Google Workspace Drive data
    #                   source</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclude_user_accounts
    #   <p>A list of email addresses of the users. Documents owned by these
    #               users are excluded from the index. Documents shared with excluded
    #               users are indexed unless they are excluded in another way.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclude_shared_drives
    #   <p>A list of identifiers or shared drives to exclude from the index.
    #               All files and folders stored on the shared drive are
    #               excluded.</p>
    #
    #   @return [Array<String>]
    #
    GoogleDriveConfiguration = ::Struct.new(
      :secret_arn,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings,
      :exclude_mime_types,
      :exclude_user_accounts,
      :exclude_shared_drives,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of users or sub groups that belong to a group. Users and groups
    #             are useful for filtering search results to different users based on their
    #             group's access to documents.</p>
    #
    # @!attribute member_groups
    #   <p>A list of sub groups that belong to a group. For example, the sub
    #               groups "Research", "Engineering", and "Sales and Marketing" all belong
    #               to the group "Company".</p>
    #
    #   @return [Array<MemberGroup>]
    #
    # @!attribute member_users
    #   <p>A list of users that belong to a group. For example, a list of interns
    #               all belong to the "Interns" group.</p>
    #
    #   @return [Array<MemberUser>]
    #
    # @!attribute s3_pathfor_group_members
    #   <p>If you have more than 1000 users and/or sub groups for a single group,
    #               you need to provide the path to the S3 file that lists your users and sub
    #               groups for a group. Your sub groups can contain more than 1000 users, but
    #               the list of sub groups that belong to a group (and/or users) must be no
    #               more than 1000.</p>
    #           <p>You can download this
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/samples/group_members.zip">example
    #                   S3 file</a> that uses the correct format for listing group members. Note,
    #               <code>dataSourceId</code> is optional. The value of <code>type</code>
    #               for a group is always <code>GROUP</code> and for a user it is
    #               always <code>USER</code>.</p>
    #
    #   @return [S3Path]
    #
    GroupMembers = ::Struct.new(
      :member_groups,
      :member_users,
      :s3_pathfor_group_members,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information on the processing of <code>PUT</code> and <code>DELETE</code> actions
    #             for mapping users to their groups.</p>
    #
    # @!attribute status
    #   <p>The current processing status of actions for mapping users to their groups.
    #               The status can be either <code>PROCESSING</code>, <code>SUCCEEDED</code>,
    #               <code>DELETING</code>, <code>DELETED</code>, or <code>FAILED</code>.</p>
    #
    #   Enum, one of: ["FAILED", "SUCCEEDED", "PROCESSING", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_at
    #   <p>The last date-time an action was updated. An action can be a
    #               <code>PUT</code> or <code>DELETE</code> action for mapping users
    #               to their groups.</p>
    #
    #   @return [Time]
    #
    # @!attribute received_at
    #   <p>The date-time an action was received by Amazon Kendra. An action can be a
    #               <code>PUT</code> or <code>DELETE</code> action for mapping users to
    #               their groups.</p>
    #
    #   @return [Time]
    #
    # @!attribute ordering_id
    #   <p>The order in which actions should complete processing. An action can
    #               be a <code>PUT</code> or <code>DELETE</code> action for mapping users
    #               to their groups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_reason
    #   <p>The reason an action could not be processed. An action can be a
    #               <code>PUT</code> or <code>DELETE</code> action for mapping users
    #               to their groups.</p>
    #
    #   @return [String]
    #
    GroupOrderingIdSummary = ::Struct.new(
      :status,
      :last_updated_at,
      :received_at,
      :ordering_id,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Group summary information.
    #         </p>
    #
    # @!attribute group_id
    #   <p>
    #               The identifier of the group you want group summary information on.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute ordering_id
    #   <p>
    #               The timestamp identifier used for the latest <code>PUT</code> or <code>DELETE</code>
    #               action.
    #           </p>
    #
    #   @return [Integer]
    #
    GroupSummary = ::Struct.new(
      :group_id,
      :ordering_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Information to define the hierarchy for which documents users should have access to.
    #         </p>
    #
    # @!attribute principal_list
    #   <p>A list of <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html">principal</a> lists
    #                   that define the hierarchy for which documents users should have access to.
    #                   Each hierarchical list specifies which user or group has allow or deny
    #                   access for each document.</p>
    #
    #   @return [Array<Principal>]
    #
    HierarchicalPrincipal = ::Struct.new(
      :principal_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information that you can use to highlight a search result
    #             so that your users can quickly identify terms in the
    #             response.</p>
    #
    # @!attribute begin_offset
    #   <p>The zero-based location in the response string where the highlight
    #               starts.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset
    #   <p>The zero-based location in the response string where the highlight
    #               ends.</p>
    #
    #   @return [Integer]
    #
    # @!attribute top_answer
    #   <p>Indicates whether the response is the best response. True if this
    #               is the best response; otherwise, false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute type
    #   <p>The highlight type. </p>
    #
    #   Enum, one of: ["STANDARD", "THESAURUS_SYNONYM"]
    #
    #   @return [String]
    #
    Highlight = ::Struct.new(
      :begin_offset,
      :end_offset,
      :top_answer,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.top_answer ||= false
      end

    end

    # Includes enum constants for HighlightType
    #
    module HighlightType
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      THESAURUS_SYNONYM = "THESAURUS_SYNONYM"
    end

    # <p>Provides the configuration information for invoking a Lambda function in
    #             Lambda to alter document metadata and content when ingesting
    #             documents into Amazon Kendra. You can configure your Lambda function using
    #             <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_CustomDocumentEnrichmentConfiguration.html">PreExtractionHookConfiguration</a>
    #             if you want to apply advanced alterations on the original or raw documents.
    #             If you want to apply advanced alterations on the Amazon Kendra structured documents,
    #             you must configure your Lambda function using <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_CustomDocumentEnrichmentConfiguration.html">PostExtractionHookConfiguration</a>.
    #             You can only invoke one Lambda function. However, this function can invoke other
    #             functions it requires.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing document metadata
    #                 during the ingestion process</a>.</p>
    #
    # @!attribute invocation_condition
    #   <p>The condition used for when a Lambda function should be invoked.</p>
    #           <p>For example, you can specify a condition that if there are empty date-time
    #               values, then Amazon Kendra should invoke a function that inserts the current date-time.</p>
    #
    #   @return [DocumentAttributeCondition]
    #
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to run a Lambda function
    #               during ingestion. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM roles for Amazon Kendra</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>Stores the original, raw documents or the structured, parsed
    #               documents before and after altering them. For more information,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html cde-data-contracts-lambda">Data
    #                   contracts for Lambda functions</a>.</p>
    #
    #   @return [String]
    #
    HookConfiguration = ::Struct.new(
      :invocation_condition,
      :lambda_arn,
      :s3_bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of information on the configuration of an index.</p>
    #
    # @!attribute name
    #   <p>The identifier of the index.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the index. Use this to identify the index
    #               when you are using APIs such as <code>Query</code>,
    #                   <code>DescribeIndex</code>, <code>UpdateIndex</code>, and
    #                   <code>DeleteIndex</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute edition
    #   <p>Indicates whether the index is a enterprise edition index or a
    #               developer edition index. </p>
    #
    #   Enum, one of: ["DEVELOPER_EDITION", "ENTERPRISE_EDITION"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix timestamp when the index was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The Unix timestamp when the index was last updated by the
    #                   <code>UpdateIndex</code> API.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the index. When the status is
    #                   <code>ACTIVE</code>, the index is ready to search.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"]
    #
    #   @return [String]
    #
    IndexConfigurationSummary = ::Struct.new(
      :name,
      :id,
      :edition,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IndexEdition
    #
    module IndexEdition
      # No documentation available.
      #
      DEVELOPER_EDITION = "DEVELOPER_EDITION"

      # No documentation available.
      #
      ENTERPRISE_EDITION = "ENTERPRISE_EDITION"
    end

    # <p>Provides information about the number of documents and the number
    #             of questions and answers in an index.</p>
    #
    # @!attribute faq_statistics
    #   <p>The number of question and answer topics in the index.</p>
    #
    #   @return [FaqStatistics]
    #
    # @!attribute text_document_statistics
    #   <p>The number of text documents indexed.</p>
    #
    #   @return [TextDocumentStatistics]
    #
    IndexStatistics = ::Struct.new(
      :faq_statistics,
      :text_document_statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IndexStatus
    #
    module IndexStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      SYSTEM_UPDATING = "SYSTEM_UPDATING"
    end

    # <p>Provides the configuration information for applying basic logic to alter document
    #             metadata and content when ingesting documents into Amazon Kendra. To apply advanced
    #             logic, to go beyond what you can do with basic logic, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_HookConfiguration.html">HookConfiguration</a>.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing document metadata
    #                 during the ingestion process</a>.</p>
    #
    # @!attribute condition
    #   <p>Configuration of the condition used for the target document attribute or metadata
    #               field when ingesting documents into Amazon Kendra.</p>
    #
    #   @return [DocumentAttributeCondition]
    #
    # @!attribute target
    #   <p>Configuration of the target document attribute or metadata field when ingesting
    #               documents into Amazon Kendra. You can also include a value.</p>
    #
    #   @return [DocumentAttributeTarget]
    #
    # @!attribute document_content_deletion
    #   <p>
    #               <code>TRUE</code> to delete content if the condition used for the target
    #               attribute is met.</p>
    #
    #   @return [Boolean]
    #
    InlineCustomDocumentEnrichmentConfiguration = ::Struct.new(
      :condition,
      :target,
      :document_content_deletion,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.document_content_deletion ||= false
      end

    end

    # <p></p>
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

    # Includes enum constants for Interval
    #
    module Interval
      # No documentation available.
      #
      THIS_MONTH = "THIS_MONTH"

      # No documentation available.
      #
      THIS_WEEK = "THIS_WEEK"

      # No documentation available.
      #
      ONE_WEEK_AGO = "ONE_WEEK_AGO"

      # No documentation available.
      #
      TWO_WEEKS_AGO = "TWO_WEEKS_AGO"

      # No documentation available.
      #
      ONE_MONTH_AGO = "ONE_MONTH_AGO"

      # No documentation available.
      #
      TWO_MONTHS_AGO = "TWO_MONTHS_AGO"
    end

    # <p>The input to the request is not valid.</p>
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

    # Includes enum constants for IssueSubEntity
    #
    module IssueSubEntity
      # No documentation available.
      #
      COMMENTS = "COMMENTS"

      # No documentation available.
      #
      ATTACHMENTS = "ATTACHMENTS"

      # No documentation available.
      #
      WORKLOGS = "WORKLOGS"
    end

    # <p>Provides the configuration information to connect to Jira as your
    #             data source.</p>
    #
    # @!attribute jira_account_url
    #   <p>The URL of the Jira account. For example, company.attlassian.net or
    #               https://jira.company.com. You can find your Jira account URL in the URL of
    #               your profile page for Jira desktop.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of an Secrets Manager secret that
    #               contains the key-value pairs required to connect to your Jira
    #               data source. The secret must
    #               contain a JSON structure with the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>jira-id—The ID of the Jira account.</p>
    #               </li>
    #               <li>
    #                   <p>jiraCredentials—The password of the Jira account user.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute use_change_log
    #   <p>Specify to use the change log option to update your index.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute project
    #   <p>Specify which projects to crawl in your Jira data source. You can specify
    #               one or more Jira project IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute issue_type
    #   <p>Specify which issue types to crawl in your Jira data source.
    #               You can specify one or more of these options to crawl.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>Specify which statuses to crawl in your Jira data source.
    #               You can specify one or more of these options to crawl.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute issue_sub_entity_filter
    #   <p>Specify whether to crawl comments,
    #               attachments,
    #               and work logs. You can specify one or more of these options.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute attachment_field_mappings
    #   <p>A list of DataSourceToIndexFieldMapping objects that map attributes
    #               or field names of Jira attachments to Amazon Kendra index field names.
    #               To create custom fields, use the UpdateIndex API before you map to Jira
    #               fields. For
    #               more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">
    #                   Mapping data source fields</a>. The Jira data source field names
    #               must exist in your Jira custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute comment_field_mappings
    #   <p>A list of DataSourceToIndexFieldMapping objects that map attributes
    #               or field names of Jira comments to Amazon Kendra index field names.
    #               To create custom fields, use the UpdateIndex API before you map to Jira
    #               fields. For
    #               more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">
    #                   Mapping data source fields</a>. The Jira data source field names
    #               must exist in your Jira custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute issue_field_mappings
    #   <p>A list of DataSourceToIndexFieldMapping objects that map attributes
    #               or field names of Jira issues to Amazon Kendra index field names.
    #               To create custom fields, use the UpdateIndex API before you map to Jira
    #               fields. For
    #               more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">
    #                   Mapping data source fields</a>. The Jira data source field names
    #               must exist in your Jira custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute project_field_mappings
    #   <p>A list of DataSourceToIndexFieldMapping objects that map attributes
    #               or field names of Jira projects to Amazon Kendra index field names.
    #               To create custom fields, use the UpdateIndex API before you map to Jira
    #               fields. For
    #               more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">
    #                   Mapping data source fields</a>. The Jira data source field names
    #               must exist in your Jira custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute work_log_field_mappings
    #   <p>A list of DataSourceToIndexFieldMapping objects that map attributes
    #               or field names of Jira work logs to Amazon Kendra index field names.
    #               To create custom fields, use the UpdateIndex API before you map to Jira
    #               fields. For
    #               more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">
    #                   Mapping data source fields</a>. The Jira data source field names
    #               must exist in your Jira custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain file paths,
    #               file
    #               names, and
    #               file types in your Jira data source. Files that match the patterns are included in the
    #               index. Files that don't match the patterns are excluded from the index. If a file
    #               matches both an inclusion pattern and an exclusion pattern, the exclusion pattern takes
    #               precedence and the file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain file paths,
    #               file names, and file types
    #               in your Jira data source. Files that match the patterns
    #               are excluded from the index. Files that don’t match the patterns are
    #               included in the index. If a file matches both an inclusion pattern
    #               and an exclusion pattern, the exclusion pattern takes precedence
    #               and the file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_configuration
    #   <p>Configuration information for an
    #               Amazon Virtual Private Cloud to connect to your Jira. Your Jira
    #               account must reside inside your VPC.</p>
    #
    #   @return [DataSourceVpcConfiguration]
    #
    JiraConfiguration = ::Struct.new(
      :jira_account_url,
      :secret_arn,
      :use_change_log,
      :project,
      :issue_type,
      :status,
      :issue_sub_entity_filter,
      :attachment_field_mappings,
      :comment_field_mappings,
      :issue_field_mappings,
      :project_field_mappings,
      :work_log_field_mappings,
      :inclusion_patterns,
      :exclusion_patterns,
      :vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.use_change_log ||= false
      end

    end

    # <p>Provides the configuration information for the JSON token type.</p>
    #
    # @!attribute user_name_attribute_field
    #   <p>The user name attribute field.</p>
    #
    #   @return [String]
    #
    # @!attribute group_attribute_field
    #   <p>The group attribute field.</p>
    #
    #   @return [String]
    #
    JsonTokenTypeConfiguration = ::Struct.new(
      :user_name_attribute_field,
      :group_attribute_field,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for the JWT token type.</p>
    #
    # @!attribute key_location
    #   <p>The location of the key.</p>
    #
    #   Enum, one of: ["URL", "SECRET_MANAGER"]
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The signing key URL.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_manager_arn
    #   <p>The Amazon Resource Name (arn) of the secret.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name_attribute_field
    #   <p>The user name attribute field.</p>
    #
    #   @return [String]
    #
    # @!attribute group_attribute_field
    #   <p>The group attribute field.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer
    #   <p>The issuer of the token.</p>
    #
    #   @return [String]
    #
    # @!attribute claim_regex
    #   <p>The regular expression that identifies the claim.</p>
    #
    #   @return [String]
    #
    JwtTokenTypeConfiguration = ::Struct.new(
      :key_location,
      :url,
      :secret_manager_arn,
      :user_name_attribute_field,
      :group_attribute_field,
      :issuer,
      :claim_regex,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeyLocation
    #
    module KeyLocation
      # No documentation available.
      #
      URL = "URL"

      # No documentation available.
      #
      SECRET_MANAGER = "SECRET_MANAGER"
    end

    # @!attribute id
    #   <p>The identifier of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #         Amazon Kendra returns a pagination token in the response. You can use this pagination token
    #         to retrieve the next set of jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of synchronization jobs to return in the response.
    #         If there are fewer results in the list, this response contains only the
    #         actual results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_time_filter
    #   <p>When specified, the synchronization jobs returned in the list are
    #         limited to jobs between the specified dates. </p>
    #
    #   @return [TimeRange]
    #
    # @!attribute status_filter
    #   <p>When specified, only returns synchronization jobs with the
    #           <code>Status</code> field equal to the specified status.</p>
    #
    #   Enum, one of: ["FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"]
    #
    #   @return [String]
    #
    ListDataSourceSyncJobsInput = ::Struct.new(
      :id,
      :index_id,
      :next_token,
      :max_results,
      :start_time_filter,
      :status_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute history
    #   <p>A history of synchronization jobs for the data source.</p>
    #
    #   @return [Array<DataSourceSyncJob>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this token that you
    #         can use in the subsequent request to retrieve the next set of jobs.</p>
    #
    #   @return [String]
    #
    ListDataSourceSyncJobsOutput = ::Struct.new(
      :history,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to
    #         retrieve), Amazon Kendra returns a pagination token in the response. You
    #         can use this pagination token to retrieve the next set of data sources
    #           (<code>DataSourceSummaryItems</code>). </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of data sources to return.</p>
    #
    #   @return [Integer]
    #
    ListDataSourcesInput = ::Struct.new(
      :index_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary_items
    #   <p>An array of summary information for one or more data sources.</p>
    #
    #   @return [Array<DataSourceSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this token that you
    #         can use in the subsequent request to retrieve the next set of data
    #         sources. </p>
    #
    #   @return [String]
    #
    ListDataSourcesOutput = ::Struct.new(
      :summary_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination
    #               token to retrieve the next set of users or groups.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of returned users or groups.</p>
    #
    #   @return [Integer]
    #
    ListEntityPersonasInput = ::Struct.new(
      :id,
      :index_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary_items
    #   <p>An array of summary information for one or more users or groups.</p>
    #
    #   @return [Array<PersonasSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this token, which you can use in
    #               a later request to retrieve the next set of users or groups.</p>
    #
    #   @return [String]
    #
    ListEntityPersonasOutput = ::Struct.new(
      :summary_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination
    #               token to retrieve the next set of users or groups.</p>
    #
    #   @return [String]
    #
    ListExperienceEntitiesInput = ::Struct.new(
      :id,
      :index_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary_items
    #   <p>An array of summary information for one or more users or groups.</p>
    #
    #   @return [Array<ExperienceEntitiesSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this token, which you can use in
    #               a later request to retrieve the next set of users or groups.</p>
    #
    #   @return [String]
    #
    ListExperienceEntitiesOutput = ::Struct.new(
      :summary_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data
    #               to retrieve), Amazon Kendra returns a pagination token in the response. You can use this
    #               pagination token to retrieve the next set of Amazon Kendra experiences.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of returned Amazon Kendra experiences.</p>
    #
    #   @return [Integer]
    #
    ListExperiencesInput = ::Struct.new(
      :index_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary_items
    #   <p>An array of summary information for one or more Amazon Kendra experiences.</p>
    #
    #   @return [Array<ExperiencesSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this token, which you can use
    #               in a later request to retrieve the next set of Amazon Kendra experiences.</p>
    #
    #   @return [String]
    #
    ListExperiencesOutput = ::Struct.new(
      :summary_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The index that contains the FAQ lists.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of FAQs.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of FAQs to return in the response. If there are fewer results in
    #               the list, this response contains only the actual results.</p>
    #
    #   @return [Integer]
    #
    ListFaqsInput = ::Struct.new(
      :index_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this token that you can use
    #               in the subsequent request to retrieve the next set of FAQs.</p>
    #
    #   @return [String]
    #
    # @!attribute faq_summary_items
    #   <p>information about the FAQs associated with the specified index.</p>
    #
    #   @return [Array<FaqSummary>]
    #
    ListFaqsOutput = ::Struct.new(
      :next_token,
      :faq_summary_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index for getting a list of groups mapped
    #               to users before a given ordering or timestamp identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The identifier of the data source for getting a list of groups mapped
    #               to users before a given ordering timestamp identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute ordering_id
    #   <p>The timestamp identifier used for the latest <code>PUT</code> or
    #               <code>DELETE</code> action for mapping users to their groups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination
    #               token to retrieve the next set of groups that are mapped to users before a
    #               given ordering or timestamp identifier.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #               The maximum number of returned groups that are mapped to users before a
    #               given ordering or timestamp identifier.
    #           </p>
    #
    #   @return [Integer]
    #
    ListGroupsOlderThanOrderingIdInput = ::Struct.new(
      :index_id,
      :data_source_id,
      :ordering_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute groups_summaries
    #   <p>
    #               Summary information for list of groups that are mapped to users before a
    #               given ordering or timestamp identifier.
    #           </p>
    #
    #   @return [Array<GroupSummary>]
    #
    # @!attribute next_token
    #   <p>
    #               If the response is truncated, Amazon Kendra returns this token that you can use
    #               in the subsequent request to retrieve the next set of groups that are
    #               mapped to users before a given ordering or timestamp identifier.
    #           </p>
    #
    #   @return [String]
    #
    ListGroupsOlderThanOrderingIdOutput = ::Struct.new(
      :groups_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to
    #         retrieve), Amazon Kendra returns a pagination token in the response. You
    #         can use this pagination token to retrieve the next set of indexes
    #           (<code>DataSourceSummaryItems</code>). </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of data sources to return.</p>
    #
    #   @return [Integer]
    #
    ListIndicesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_configuration_summary_items
    #   <p>An array of summary information on the configuration of one or more indexes.</p>
    #
    #   @return [Array<IndexConfigurationSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this token that you
    #         can use in the subsequent request to retrieve the next set of
    #         indexes.</p>
    #
    #   @return [String]
    #
    ListIndicesOutput = ::Struct.new(
      :index_configuration_summary_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index for a list of all block lists that exist for
    #               that index.</p>
    #           <p>For information on the current quota limits for block lists, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    #                   for Amazon Kendra</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination
    #               token to retrieve the next set of block lists (<code>BlockListSummaryItems</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of block lists to return.</p>
    #
    #   @return [Integer]
    #
    ListQuerySuggestionsBlockListsInput = ::Struct.new(
      :index_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute block_list_summary_items
    #   <p>Summary items for a block list.</p>
    #           <p>This includes summary items on the block list ID, block list name, when the
    #               block list was created, when the block list was last updated, and the count
    #               of block words/phrases in the block list.</p>
    #           <p>For information on the current quota limits for block lists, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    #                   for Amazon Kendra</a>.</p>
    #
    #   @return [Array<QuerySuggestionsBlockListSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this token that you can use
    #               in the subsequent request to retrieve the next set of block lists.</p>
    #
    #   @return [String]
    #
    ListQuerySuggestionsBlockListsOutput = ::Struct.new(
      :block_list_summary_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #         get a list of tags for.</p>
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
    #   <p>A list of tags associated with the index, FAQ, or data source.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index associated with the thesaurus to list.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Kendra returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of thesauri (<code>ThesaurusSummaryItems</code>).
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of thesauri to return.</p>
    #
    #   @return [Integer]
    #
    ListThesauriInput = ::Struct.new(
      :index_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra returns this
    #            token that you can use in the subsequent request to
    #            retrieve the next set of thesauri.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute thesaurus_summary_items
    #   <p>An array of summary information for a thesaurus or multiple thesauri.</p>
    #
    #   @return [Array<ThesaurusSummary>]
    #
    ListThesauriOutput = ::Struct.new(
      :next_token,
      :thesaurus_summary_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The sub groups that belong to a group.</p>
    #
    # @!attribute group_id
    #   <p>The identifier of the sub group you want to map to a group.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The identifier of the data source for the sub group
    #               you want to map to a group.</p>
    #
    #   @return [String]
    #
    MemberGroup = ::Struct.new(
      :group_id,
      :data_source_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The users that belong to a group.</p>
    #
    # @!attribute user_id
    #   <p>The identifier of the user you want to map to a group.</p>
    #
    #   @return [String]
    #
    MemberUser = ::Struct.new(
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MetricType
    #
    module MetricType
      # No documentation available.
      #
      QUERIES_BY_COUNT = "QUERIES_BY_COUNT"

      # No documentation available.
      #
      QUERIES_BY_ZERO_CLICK_RATE = "QUERIES_BY_ZERO_CLICK_RATE"

      # No documentation available.
      #
      QUERIES_BY_ZERO_RESULT_RATE = "QUERIES_BY_ZERO_RESULT_RATE"

      # No documentation available.
      #
      DOCS_BY_CLICK_COUNT = "DOCS_BY_CLICK_COUNT"

      # No documentation available.
      #
      AGG_QUERY_DOC_METRICS = "AGG_QUERY_DOC_METRICS"

      # No documentation available.
      #
      TREND_QUERY_DOC_METRICS = "TREND_QUERY_DOC_METRICS"
    end

    # Includes enum constants for Mode
    #
    module Mode
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      LEARN_ONLY = "LEARN_ONLY"
    end

    # <p>Provides the configuration information to connect to GitHub Enterprise Server (on premises).</p>
    #
    # @!attribute host_url
    #   <p>The GitHub host URL or API endpoint URL. For example,
    #               <i>https://on-prem-host-url/api/v3/</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute organization_name
    #   <p>The name of the organization of the GitHub Enterprise Server (in-premise) account you want
    #               to connect to. You can find your organization name by logging into GitHub desktop and
    #               selecting <b>Your organizations</b> under your profile picture dropdown.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_certificate_s3_path
    #   <p>Information required to find a specific file in an Amazon S3 bucket.</p>
    #
    #   @return [S3Path]
    #
    OnPremiseConfiguration = ::Struct.new(
      :host_url,
      :organization_name,
      :ssl_certificate_s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect
    #             to OneDrive as your data source.</p>
    #
    # @!attribute tenant_domain
    #   <p>The Azure Active Directory domain of the organization. </p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of an Secrets Managersecret
    #               that contains the user name and password to connect to OneDrive. The
    #               user namd should be the application ID for the OneDrive application,
    #               and the password is the application key for the OneDrive
    #               application.</p>
    #
    #   @return [String]
    #
    # @!attribute one_drive_users
    #   <p>A list of user accounts whose documents should be indexed.</p>
    #
    #   @return [OneDriveUsers]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain documents
    #               in your OneDrive. Documents that match the
    #               patterns are included in the index. Documents that don't match the
    #               patterns are excluded from the index. If a document matches both an
    #               inclusion and exclusion pattern, the exclusion pattern takes
    #               precedence and the document isn't included in the index.</p>
    #           <p>The pattern is applied to the file name.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain documents
    #               in your OneDrive. Documents that match the
    #               patterns are excluded from the index. Documents that don't match the
    #               patterns are included in the index. If a document matches both an
    #               inclusion and exclusion pattern, the exclusion pattern takes
    #               precedence and the document isn't included in the index.</p>
    #           <p>The pattern is applied to the file name.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map OneDrive data
    #               source attributes or field names to Amazon Kendra index field names. To create
    #               custom fields, use the <code>UpdateIndex</code> API before you map to OneDrive fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The OneDrive data source field names must exist in your OneDrive custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute disable_local_groups
    #   <p>A Boolean value that specifies whether local
    #         groups are disabled (<code>True</code>) or enabled (<code>False</code>).
    #         </p>
    #
    #   @return [Boolean]
    #
    OneDriveConfiguration = ::Struct.new(
      :tenant_domain,
      :secret_arn,
      :one_drive_users,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings,
      :disable_local_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.disable_local_groups ||= false
      end

    end

    # <p>User accounts whose documents should be indexed.</p>
    #
    # @!attribute one_drive_user_list
    #   <p>A list of users whose documents should be indexed. Specify the
    #               user names in email format, for example,
    #                   <code>username@tenantdomain</code>. If you need to index the
    #               documents of more than 100 users, use the
    #                   <code>OneDriveUserS3Path</code> field to specify the location of
    #               a file containing a list of users.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute one_drive_user_s3_path
    #   <p>The S3 bucket location of a file containing a list of users whose
    #               documents should be indexed.</p>
    #
    #   @return [S3Path]
    #
    OneDriveUsers = ::Struct.new(
      :one_drive_user_list,
      :one_drive_user_s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Order
    #
    module Order
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # Includes enum constants for Persona
    #
    module Persona
      # No documentation available.
      #
      OWNER = "OWNER"

      # No documentation available.
      #
      VIEWER = "VIEWER"
    end

    # <p>Summary information for users or groups in your Amazon Web Services SSO identity
    #             source. This applies to users and groups with specific permissions that define
    #             their level of access to your Amazon Kendra experience. You can create an Amazon Kendra experience
    #             such as a search application. For more information on creating a search application
    #             experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a
    #                 search experience with no code</a>.</p>
    #
    # @!attribute entity_id
    #   <p>The identifier of a user or group in your Amazon Web Services SSO identity source.
    #               For example, a user ID could be an email.</p>
    #
    #   @return [String]
    #
    # @!attribute persona
    #   <p>The persona that defines the specific permissions of the user or group in
    #               your Amazon Web Services SSO identity source. The available personas or access
    #               roles are <code>Owner</code> and <code>Viewer</code>. For more information on
    #               these personas, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html access-search-experience">Providing
    #                   access to your search page</a>.</p>
    #
    #   Enum, one of: ["OWNER", "VIEWER"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date-time the summary information was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date-time the summary information was last updated.</p>
    #
    #   @return [Time]
    #
    PersonasSummary = ::Struct.new(
      :entity_id,
      :persona,
      :created_at,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides user and group information for document access
    #             filtering.</p>
    #
    # @!attribute name
    #   <p>The name of the user or group.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of principal.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute access
    #   <p>Whether to allow or deny access to the principal.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The identifier of the data source the principal should
    #               access documents from.</p>
    #
    #   @return [String]
    #
    Principal = ::Struct.new(
      :name,
      :type,
      :access,
      :data_source_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PrincipalMappingStatus
    #
    module PrincipalMappingStatus
      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      PROCESSING = "PROCESSING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # Includes enum constants for PrincipalType
    #
    module PrincipalType
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      GROUP = "GROUP"
    end

    # <p>Provides the configuration information for a web proxy to connect to
    #             website hosts.</p>
    #
    # @!attribute host
    #   <p>The name of the website host you want to connect to
    #               via a web proxy server.</p>
    #           <p>For example, the host name of https://a.example.com/page1.html
    #               is "a.example.com".</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number of the website host you want to connect
    #               to via a web proxy server. </p>
    #           <p>For example, the port for https://a.example.com/page1.html
    #               is 443, the standard port for HTTPS.</p>
    #
    #   @return [Integer]
    #
    # @!attribute credentials
    #   <p>Your secret ARN, which you can create in <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html">Secrets Manager</a>
    #            </p>
    #           <p>The credentials are optional. You use a secret if web proxy credentials
    #               are required to connect to a website host. Amazon Kendra currently support basic
    #               authentication to connect to a web proxy server. The secret stores your
    #               credentials.</p>
    #
    #   @return [String]
    #
    ProxyConfiguration = ::Struct.new(
      :host,
      :port,
      :credentials,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index you want to map users to their groups.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The identifier of the data source you want to map users to their groups.</p>
    #           <p>This is useful if a group is tied to multiple data sources, but you only want
    #               the group to access documents of a certain data source. For example, the groups
    #               "Research", "Engineering", and "Sales and Marketing" are all tied to the company's
    #               documents stored in the data sources Confluence and Salesforce. However,
    #               "Sales and Marketing" team only needs access to customer-related documents
    #               stored in Salesforce.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The identifier of the group you want to map its users to.</p>
    #
    #   @return [String]
    #
    # @!attribute group_members
    #   <p>The list that contains your users or sub groups that belong
    #               the same group.</p>
    #           <p>For example, the group "Company" includes the user "CEO" and the
    #               sub groups "Research", "Engineering", and "Sales and Marketing".</p>
    #           <p>If you have more than 1000 users and/or sub groups for a single group,
    #               you need to provide the path to the S3 file that lists your users and
    #               sub groups for a group. Your sub groups can contain more than 1000 users,
    #               but the list of sub groups that belong to a group (and/or users) must be
    #               no more than 1000.</p>
    #
    #   @return [GroupMembers]
    #
    # @!attribute ordering_id
    #   <p>The timestamp identifier you specify to ensure Amazon Kendra does not override
    #               the latest <code>PUT</code> action with previous actions. The highest number
    #               ID, which is the ordering ID, is the latest action you want to process and
    #               apply on top of other actions with lower number IDs. This prevents previous
    #               actions with lower number IDs from possibly overriding the latest action.</p>
    #           <p>The ordering ID can be the UNIX time of the last update you made to a
    #               group members list. You would then provide this list when calling
    #               <code>PutPrincipalMapping</code>. This ensures your <code>PUT</code> action
    #               for that updated group with the latest members list doesn't get overwritten
    #               by earlier <code>PUT</code> actions for the same group which are yet to
    #               be processed.</p>
    #           <p>The default ordering ID is the current UNIX time in milliseconds that the
    #               action was received by Amazon Kendra.</p>
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role that has access to the S3 file
    #               that contains your list of users or sub groups that belong to a group.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html iam-roles-ds">IAM roles for Amazon Kendra</a>.</p>
    #
    #   @return [String]
    #
    PutPrincipalMappingInput = ::Struct.new(
      :index_id,
      :data_source_id,
      :group_id,
      :group_members,
      :ordering_id,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutPrincipalMappingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QueryIdentifiersEnclosingOption
    #
    module QueryIdentifiersEnclosingOption
      # No documentation available.
      #
      DOUBLE_QUOTES = "DOUBLE_QUOTES"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # @!attribute index_id
    #   <p>The unique identifier of the index to search. The identifier is
    #            returned in the response from the <code>CreateIndex</code>
    #            API.</p>
    #
    #   @return [String]
    #
    # @!attribute query_text
    #   <p>The text to search for.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_filter
    #   <p>Enables filtered searches based on document attributes. You can only
    #            provide one attribute filter; however, the <code>AndAllFilters</code>,
    #               <code>NotFilter</code>, and <code>OrAllFilters</code> parameters
    #            contain a list of other filters.</p>
    #            <p>The <code>AttributeFilter</code> parameter enables you to create a
    #            set of filtering rules that a document must satisfy to be included in
    #            the query results.</p>
    #
    #   @return [AttributeFilter]
    #
    # @!attribute facets
    #   <p>An array of documents attributes. Amazon Kendra returns a count for
    #            each attribute key specified. This helps your users narrow their search.</p>
    #
    #   @return [Array<Facet>]
    #
    # @!attribute requested_document_attributes
    #   <p>An array of document attributes to include in the response.
    #            You can limit the response to include certain document attributes.
    #            By default all document attributes are included in the response.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute query_result_type_filter
    #   <p>Sets the type of query. Only results for the specified query type
    #            are returned.</p>
    #
    #   Enum, one of: ["DOCUMENT", "QUESTION_ANSWER", "ANSWER"]
    #
    #   @return [String]
    #
    # @!attribute document_relevance_override_configurations
    #   <p>Overrides relevance tuning configurations of fields or attributes set at the index level.</p>
    #            <p>If you use this API to override the relevance tuning configured at the index
    #            level, but there is no relevance tuning configured at the index level, then Amazon Kendra does not apply any relevance tuning.</p>
    #            <p>If there is relevance tuning configured at the index level, but you do not use this API
    #            to override any relevance tuning in the index, then Amazon Kendra uses the relevance tuning that is configured at the index level.</p>
    #            <p>If there is relevance tuning configured for fields at the index level,
    #            but you use this API to override only some of these fields, then for the fields you did not override,
    #            the importance is set to 1.</p>
    #
    #   @return [Array<DocumentRelevanceConfiguration>]
    #
    # @!attribute page_number
    #   <p>Query results are returned in pages the size of the
    #            <code>PageSize</code> parameter. By default, Amazon Kendra returns
    #            the first page of results. Use this parameter to get result pages after
    #            the first one.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_size
    #   <p>Sets the number of results that are returned in each page of
    #            results. The default page size is 10. The maximum number of results
    #            returned is 100. If you ask for more than 100 results, only 100 are
    #            returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sorting_configuration
    #   <p>Provides information that determines how the results of the query
    #            are sorted. You can set the field that Amazon Kendra should sort the results
    #            on, and specify whether the results should be sorted in ascending or
    #            descending order. In the case of ties in sorting the results, the
    #            results are sorted by relevance.</p>
    #            <p>If you don't provide sorting configuration, the results are sorted
    #            by the relevance that Amazon Kendra determines for the result.</p>
    #
    #   @return [SortingConfiguration]
    #
    # @!attribute user_context
    #   <p>The user context token or user and group information.</p>
    #
    #   @return [UserContext]
    #
    # @!attribute visitor_id
    #   <p>Provides an identifier for a specific user. The
    #               <code>VisitorId</code> should be a unique identifier, such as a
    #            GUID. Don't use personally identifiable information, such as the user's
    #            email address, as the <code>VisitorId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute spell_correction_configuration
    #   <p>Enables suggested spell corrections for queries.</p>
    #
    #   @return [SpellCorrectionConfiguration]
    #
    QueryInput = ::Struct.new(
      :index_id,
      :query_text,
      :attribute_filter,
      :facets,
      :requested_document_attributes,
      :query_result_type_filter,
      :document_relevance_override_configurations,
      :page_number,
      :page_size,
      :sorting_configuration,
      :user_context,
      :visitor_id,
      :spell_correction_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The unique identifier for the search. You use <code>QueryId</code>
    #            to identify the search when using the feedback API.</p>
    #
    #   @return [String]
    #
    # @!attribute result_items
    #   <p>The results of the search.</p>
    #
    #   @return [Array<QueryResultItem>]
    #
    # @!attribute facet_results
    #   <p>Contains the facet results. A <code>FacetResult</code> contains the
    #            counts for each attribute key that was specified in the
    #               <code>Facets</code> input parameter.</p>
    #
    #   @return [Array<FacetResult>]
    #
    # @!attribute total_number_of_results
    #   <p>The total number of items found by the search; however, you can only
    #            retrieve up to 100 items. For example, if the search found 192 items,
    #            you can only retrieve the first 100 of the items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute warnings
    #   <p>A list of warning codes and their messages on problems with your query.</p>
    #            <p>Amazon Kendra currently only supports one type of warning, which is a warning
    #            on invalid syntax used in the query. For examples of invalid query syntax,
    #            see <a href="https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html searching-index-query-syntax">Searching
    #               with advanced query syntax</a>.</p>
    #
    #   @return [Array<Warning>]
    #
    # @!attribute spell_corrected_queries
    #   <p>A list of information related to suggested spell corrections for a query.</p>
    #
    #   @return [Array<SpellCorrectedQuery>]
    #
    QueryOutput = ::Struct.new(
      :query_id,
      :result_items,
      :facet_results,
      :total_number_of_results,
      :warnings,
      :spell_corrected_queries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single query result.</p>
    #          <p>A query result contains information about a document returned by the
    #          query. This includes the original location of the document, a list of
    #          attributes assigned to the document, and relevant text from the
    #          document that satisfies the query.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the query result.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of document. </p>
    #
    #   Enum, one of: ["DOCUMENT", "QUESTION_ANSWER", "ANSWER"]
    #
    #   @return [String]
    #
    # @!attribute additional_attributes
    #   <p>One or more additional attributes associated with the query
    #            result.</p>
    #
    #   @return [Array<AdditionalResultAttribute>]
    #
    # @!attribute document_id
    #   <p>The unique identifier for the document.</p>
    #
    #   @return [String]
    #
    # @!attribute document_title
    #   <p>The title of the document. Contains the text of the title and
    #            information for highlighting the relevant terms in the title.</p>
    #
    #   @return [TextWithHighlights]
    #
    # @!attribute document_excerpt
    #   <p>An extract of the text in the document. Contains information about
    #            highlighting the relevant terms in the excerpt.</p>
    #
    #   @return [TextWithHighlights]
    #
    # @!attribute document_uri
    #   <p>The URI of the original location of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute document_attributes
    #   <p>An array of document attributes assigned to a document in
    #            the search results. For example, the document author (<code>_author</code>)
    #            or the source URI (<code>_source_uri</code>) of the document.</p>
    #
    #   @return [Array<DocumentAttribute>]
    #
    # @!attribute score_attributes
    #   <p>Indicates the confidence that Amazon Kendra has that a result matches the
    #            query that you provided. Each result is placed into a bin that
    #            indicates the confidence, <code>VERY_HIGH</code>, <code>HIGH</code>,
    #               <code>MEDIUM</code> and <code>LOW</code>. You can use the score to
    #            determine if a response meets the confidence needed for your
    #            application.</p>
    #            <p>The field is only set to <code>LOW</code> when the <code>Type</code>
    #            field is set to <code>DOCUMENT</code> and Amazon Kendra is not confident that
    #            the result matches the query.</p>
    #
    #   @return [ScoreAttributes]
    #
    # @!attribute feedback_token
    #   <p>A token that identifies a particular result from a particular query.
    #            Use this token to provide click-through feedback for the result. For
    #            more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/submitting-feedback.html"> Submitting feedback
    #            </a>.</p>
    #
    #   @return [String]
    #
    QueryResultItem = ::Struct.new(
      :id,
      :type,
      :additional_attributes,
      :document_id,
      :document_title,
      :document_excerpt,
      :document_uri,
      :document_attributes,
      :score_attributes,
      :feedback_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QueryResultType
    #
    module QueryResultType
      # No documentation available.
      #
      DOCUMENT = "DOCUMENT"

      # No documentation available.
      #
      QUESTION_ANSWER = "QUESTION_ANSWER"

      # No documentation available.
      #
      ANSWER = "ANSWER"
    end

    # Includes enum constants for QuerySuggestionsBlockListStatus
    #
    module QuerySuggestionsBlockListStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      ACTIVE_BUT_UPDATE_FAILED = "ACTIVE_BUT_UPDATE_FAILED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Summary information on a query suggestions block list.</p>
    #         <p>This includes information on the block list ID, block list name, when the
    #             block list was created, when the block list was last updated, and the count
    #             of block words/phrases in the block list.</p>
    #         <p>For information on the current quota limits for block lists, see
    #             <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    #                 for Amazon Kendra</a>.</p>
    #
    # @!attribute id
    #   <p>The identifier of a block list.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the block list.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the block list.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date-time summary information for a query suggestions
    #               block list was last created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date-time the block list was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute item_count
    #   <p>The number of items in the block list file.</p>
    #
    #   @return [Integer]
    #
    QuerySuggestionsBlockListSummary = ::Struct.new(
      :id,
      :name,
      :status,
      :created_at,
      :updated_at,
      :item_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QuerySuggestionsStatus
    #
    module QuerySuggestionsStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # <p>Provides the configuration information to connect to Quip as your data source.</p>
    #
    # @!attribute domain
    #   <p>The Quip site domain.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of an Secrets Manager secret
    #               that contains the key-value pairs that are required to connect to your
    #               Quip. The secret must contain a JSON structure with the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>accessToken—The token created in Quip. For more information,
    #                       see <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-slack.html quip-authentication">Authentication
    #                           for a Quip data source</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute crawl_file_comments
    #   <p>Specify whether to crawl file comments in Quip.
    #               You can specify one or more of these options.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_chat_rooms
    #   <p>Specify whether to crawl chat rooms in Quip.
    #               You can specify one or more of these options.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_attachments
    #   <p>Specify whether to crawl attachments in Quip.
    #               You can specify one or more of these options.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute folder_ids
    #   <p>The identifier of the Quip folder IDs to index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute thread_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map
    #               attributes or field names of Quip threads to Amazon Kendra index
    #               field names. To create custom fields, use the <code>UpdateIndex</code>
    #               API before you map to Quip fields. For more information, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping
    #                   data source fields</a>. The Quip field names must exist in your
    #               Quip custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute message_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map
    #               attributes or field names of Quip messages to Amazon Kendra index
    #               field names. To create custom fields, use the <code>UpdateIndex</code>
    #               API before you map to Quip fields. For more information, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping
    #                   data source fields</a>. The Quip field names must exist in your
    #               Quip custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute attachment_field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map
    #               attributes or field names of Quip attachments to Amazon Kendra index
    #               field names. To create custom fields, use the <code>UpdateIndex</code>
    #               API before you map to Quip fields. For more information, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping
    #                   data source fields</a>. The Quip field names must exist in your
    #               Quip custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain files in your Quip file
    #               system. Files that match the patterns are included in the index. Files that don't match
    #               the patterns are excluded from the index. If a file matches both an inclusion pattern
    #               and an exclusion pattern, the exclusion pattern takes
    #               precedence, and the file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain files in your Quip file
    #               system. Files that match the patterns are excluded from the index. Files that don’t
    #               match the patterns are included in the index. If a file matches both an inclusion
    #               pattern and an exclusion pattern, the exclusion pattern takes
    #               precedence, and the file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_configuration
    #   <p>Configuration information for an Amazon Virtual Private Cloud
    #               (VPC) to connect to your Quip. For more information, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html">Configuring
    #                   a VPC</a>.</p>
    #
    #   @return [DataSourceVpcConfiguration]
    #
    QuipConfiguration = ::Struct.new(
      :domain,
      :secret_arn,
      :crawl_file_comments,
      :crawl_chat_rooms,
      :crawl_attachments,
      :folder_ids,
      :thread_field_mappings,
      :message_field_mappings,
      :attachment_field_mappings,
      :inclusion_patterns,
      :exclusion_patterns,
      :vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_file_comments ||= false
        self.crawl_chat_rooms ||= false
        self.crawl_attachments ||= false
      end

    end

    # Includes enum constants for ReadAccessType
    #
    module ReadAccessType
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      DENY = "DENY"
    end

    # <p>Provides information for manually tuning the relevance of a field
    #             in a search. When a query includes terms that match the field, the
    #             results are given a boost in the response based on these tuning
    #             parameters.</p>
    #
    # @!attribute freshness
    #   <p>Indicates that this field determines how "fresh" a document is.
    #               For example, if document 1 was created on November 5, and document 2
    #               was created on October 31, document 1 is "fresher" than document 2.
    #               You can only set the <code>Freshness</code> field on one
    #                   <code>DATE</code> type field. Only applies to <code>DATE</code>
    #               fields.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute importance
    #   <p>The relative importance of the field in the search. Larger numbers
    #               provide more of a boost than smaller numbers.</p>
    #
    #   @return [Integer]
    #
    # @!attribute duration
    #   <p>Specifies the time period that the boost applies to. For example,
    #               to make the boost apply to documents with the field value within the
    #               last month, you would use "2628000s". Once the field value is beyond
    #               the specified range, the effect of the boost drops off. The higher
    #               the importance, the faster the effect drops off. If you don't
    #               specify a value, the default is 3 months. The value of the field is
    #               a numeric string followed by the character "s", for example "86400s"
    #               for one day, or "604800s" for one week. </p>
    #           <p>Only applies to <code>DATE</code> fields.</p>
    #
    #   @return [String]
    #
    # @!attribute rank_order
    #   <p>Determines how values should be interpreted.</p>
    #           <p>When the <code>RankOrder</code> field is <code>ASCENDING</code>,
    #               higher numbers are better. For example, a document with a rating
    #               score of 10 is higher ranking than a document with a rating score of
    #               1.</p>
    #           <p>When the <code>RankOrder</code> field is <code>DESCENDING</code>,
    #               lower numbers are better. For example, in a task tracking
    #               application, a priority 1 task is more important than a priority 5
    #               task.</p>
    #           <p>Only applies to <code>LONG</code> and <code>DOUBLE</code>
    #               fields.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute value_importance_map
    #   <p>A list of values that should be given a different boost when they
    #               appear in the result list. For example, if you are boosting a field
    #               called "department," query terms that match the department field are
    #               boosted in the result. However, you can add entries from the
    #               department field to boost documents with those values higher. </p>
    #           <p>For example, you can add entries to the map with names of
    #               departments. If you add "HR",5 and "Legal",3 those departments are
    #               given special attention when they appear in the metadata of a
    #               document. When those terms appear they are given the specified
    #               importance instead of the regular importance for the boost.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    Relevance = ::Struct.new(
      :freshness,
      :importance,
      :duration,
      :rank_order,
      :value_importance_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides feedback on how relevant a document is to a search. Your
    #             application uses the <code>SubmitFeedback</code> API to
    #             provide relevance information.</p>
    #
    # @!attribute result_id
    #   <p>The unique identifier of the search result that the user provided
    #               relevance feedback for.</p>
    #
    #   @return [String]
    #
    # @!attribute relevance_value
    #   <p>Whether to document was relevant or not relevant to the
    #               search.</p>
    #
    #   Enum, one of: ["RELEVANT", "NOT_RELEVANT"]
    #
    #   @return [String]
    #
    RelevanceFeedback = ::Struct.new(
      :result_id,
      :relevance_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RelevanceType
    #
    module RelevanceType
      # No documentation available.
      #
      RELEVANT = "RELEVANT"

      # No documentation available.
      #
      NOT_RELEVANT = "NOT_RELEVANT"
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceAlreadyExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # <p></p>
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

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to
    #             an Amazon S3 bucket.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the bucket that contains the documents.</p>
    #
    #   @return [String]
    #
    # @!attribute inclusion_prefixes
    #   <p>A list of S3 prefixes for the documents that should be included in
    #               the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of glob patterns for documents that should be indexed. If a
    #               document that matches an inclusion pattern also matches an exclusion
    #               pattern, the document is not indexed.</p>
    #           <p>Some <a href="https://docs.aws.amazon.com/cli/latest/reference/s3/ use-of-exclude-and-include-filters">examples</a>
    #               are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <i>*.txt</i> will include all text files
    #                       in a directory (files with the extension .txt).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>**/*.txt</i> will include all text
    #                       files in a directory and its subdirectories.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>*tax*</i> will include all files in
    #                       a directory that contain 'tax' in the file name, such as 'tax',
    #                       'taxes', 'income_tax'.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of glob patterns for documents that should not be indexed.
    #               If a document that matches an inclusion prefix or inclusion pattern
    #               also matches an exclusion pattern, the document is not
    #               indexed.</p>
    #           <p>Some <a href="https://docs.aws.amazon.com/cli/latest/reference/s3/ use-of-exclude-and-include-filters">examples</a>
    #               are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <i>*.png , *.jpg</i> will exclude
    #                       all PNG and JPEG image files in a directory
    #                       (files with the extensions .png and .jpg).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>*internal*</i> will exclude all
    #                       files in a directory that contain 'internal' in the file name,
    #                       such as 'internal', 'internal_only', 'company_internal'.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>**/*internal*</i> will exclude
    #                       all internal-related files in a directory and its subdirectories.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute documents_metadata_configuration
    #   <p>Document metadata files that contain information such as the
    #               document access control information, source URI, document author,
    #               and custom attributes. Each metadata file contains metadata about a
    #               single document.</p>
    #
    #   @return [DocumentsMetadataConfiguration]
    #
    # @!attribute access_control_list_configuration
    #   <p>Provides the path to the S3 bucket that contains the user context
    #               filtering files for the data source. For the format of the file, see
    #                   <a href="https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html">Access control for S3 data sources</a>.</p>
    #
    #   @return [AccessControlListConfiguration]
    #
    S3DataSourceConfiguration = ::Struct.new(
      :bucket_name,
      :inclusion_prefixes,
      :inclusion_patterns,
      :exclusion_patterns,
      :documents_metadata_configuration,
      :access_control_list_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information required to find a specific file in an Amazon S3
    #             bucket.</p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket that contains the file.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The name of the file.</p>
    #
    #   @return [String]
    #
    S3Path = ::Struct.new(
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to GitHub Enterprise Cloud (SaaS).</p>
    #
    # @!attribute organization_name
    #   <p>The name of the organization of the GitHub Enterprise Cloud (SaaS) account you want
    #               to connect to. You can find your organization name by logging into GitHub desktop and
    #               selecting <b>Your organizations</b> under your profile picture dropdown.</p>
    #
    #   @return [String]
    #
    # @!attribute host_url
    #   <p>The GitHub host URL or API endpoint URL. For example,
    #               <i>https://api.github.com</i>.</p>
    #
    #   @return [String]
    #
    SaaSConfiguration = ::Struct.new(
      :organization_name,
      :host_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration information for syncing a Salesforce chatter feed. The
    #             contents of the object comes from the Salesforce FeedItem
    #             table.</p>
    #
    # @!attribute document_data_field_name
    #   <p>The name of the column in the Salesforce FeedItem table that
    #               contains the content to index. Typically this is the
    #                   <code>Body</code> column.</p>
    #
    #   @return [String]
    #
    # @!attribute document_title_field_name
    #   <p>The name of the column in the Salesforce FeedItem table that
    #               contains the title of the document. This is typically the
    #                   <code>Title</code> column.</p>
    #
    #   @return [String]
    #
    # @!attribute field_mappings
    #   <p>Maps fields from a Salesforce chatter feed into Amazon Kendra index
    #               fields.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute include_filter_types
    #   <p>Filters the documents in the feed based on status of the user.
    #               When you specify <code>ACTIVE_USERS</code> only documents from users
    #               who have an active account are indexed. When you specify
    #                   <code>STANDARD_USER</code> only documents for Salesforce
    #               standard users are documented. You can specify both.</p>
    #
    #   @return [Array<String>]
    #
    SalesforceChatterFeedConfiguration = ::Struct.new(
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings,
      :include_filter_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SalesforceChatterFeedIncludeFilterType
    #
    module SalesforceChatterFeedIncludeFilterType
      # No documentation available.
      #
      ACTIVE_USER = "ACTIVE_USER"

      # No documentation available.
      #
      STANDARD_USER = "STANDARD_USER"
    end

    # <p>Provides the configuration information to connect to Salesforce
    #             as your data source.</p>
    #
    # @!attribute server_url
    #   <p>The instance URL for the Salesforce site that you want to
    #               index.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of an Secrets Managersecret
    #               that contains the key/value pairs required to connect to your
    #               Salesforce instance. The secret must contain a JSON structure with
    #               the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>authenticationUrl - The OAUTH endpoint that Amazon Kendra
    #                       connects to get an OAUTH token. </p>
    #               </li>
    #               <li>
    #                   <p>consumerKey - The application public key generated when
    #                       you created your Salesforce application.</p>
    #               </li>
    #               <li>
    #                   <p>consumerSecret - The application private key generated
    #                       when you created your Salesforce application.</p>
    #               </li>
    #               <li>
    #                   <p>password - The password associated with the user logging
    #                       in to the Salesforce instance.</p>
    #               </li>
    #               <li>
    #                   <p>securityToken - The token associated with the user account
    #                       logging in to the Salesforce instance.</p>
    #               </li>
    #               <li>
    #                   <p>username - The user name of the user logging in to the
    #                       Salesforce instance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute standard_object_configurations
    #   <p>Configuration of the Salesforce standard objects that Amazon Kendra
    #               indexes.</p>
    #
    #   @return [Array<SalesforceStandardObjectConfiguration>]
    #
    # @!attribute knowledge_article_configuration
    #   <p>Configuration information for the knowledge article
    #               types that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge
    #               articles and the standard fields of knowledge articles, or the
    #               custom fields of custom knowledge articles, but not both.</p>
    #
    #   @return [SalesforceKnowledgeArticleConfiguration]
    #
    # @!attribute chatter_feed_configuration
    #   <p>Configuration information for Salesforce chatter feeds.</p>
    #
    #   @return [SalesforceChatterFeedConfiguration]
    #
    # @!attribute crawl_attachments
    #   <p>Indicates whether Amazon Kendra should index attachments to Salesforce
    #               objects.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute standard_object_attachment_configuration
    #   <p>Configuration information for processing attachments to
    #               Salesforce standard objects. </p>
    #
    #   @return [SalesforceStandardObjectAttachmentConfiguration]
    #
    # @!attribute include_attachment_file_patterns
    #   <p>A list of regular expression patterns to include certain documents in your Salesforce.
    #               Documents that match the patterns are included in the index. Documents that
    #               don't match the patterns are excluded from the index. If a document matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               document isn't included in the index.</p>
    #           <p>The pattern is applied to the name of the attached file.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclude_attachment_file_patterns
    #   <p>A list of regular expression patterns to exclude certain documents in your Salesforce.
    #               Documents that match the patterns are excluded from the index. Documents that
    #               don't match the patterns are included in the index. If a document matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               document isn't included in the index.</p>
    #           <p>The pattern is applied to the name of the attached file.</p>
    #
    #   @return [Array<String>]
    #
    SalesforceConfiguration = ::Struct.new(
      :server_url,
      :secret_arn,
      :standard_object_configurations,
      :knowledge_article_configuration,
      :chatter_feed_configuration,
      :crawl_attachments,
      :standard_object_attachment_configuration,
      :include_attachment_file_patterns,
      :exclude_attachment_file_patterns,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_attachments ||= false
      end

    end

    # <p>Provides the configuration information for indexing Salesforce custom
    #             articles.</p>
    #
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute document_data_field_name
    #   <p>The name of the field in the custom knowledge article that
    #               contains the document data to index.</p>
    #
    #   @return [String]
    #
    # @!attribute document_title_field_name
    #   <p>The name of the field in the custom knowledge article that
    #               contains the document title.</p>
    #
    #   @return [String]
    #
    # @!attribute field_mappings
    #   <p>Maps attributes or field names of the custom knowledge article to Amazon Kendra
    #               index field names. To create custom fields, use the <code>UpdateIndex</code> API
    #               before you map to Salesforce fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Salesforce data source field names must exist in your Salesforce custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    SalesforceCustomKnowledgeArticleTypeConfiguration = ::Struct.new(
      :name,
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for the knowledge article
    #             types that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge
    #             articles and the standard fields of knowledge articles, or the
    #             custom fields of custom knowledge articles, but not both </p>
    #
    # @!attribute included_states
    #   <p>Specifies the document states that should be included when
    #               Amazon Kendra indexes knowledge articles. You must specify at least one
    #               state.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute standard_knowledge_article_type_configuration
    #   <p>Configuration information for standard Salesforce
    #               knowledge articles.</p>
    #
    #   @return [SalesforceStandardKnowledgeArticleTypeConfiguration]
    #
    # @!attribute custom_knowledge_article_type_configurations
    #   <p>Configuration information for custom Salesforce knowledge
    #               articles.</p>
    #
    #   @return [Array<SalesforceCustomKnowledgeArticleTypeConfiguration>]
    #
    SalesforceKnowledgeArticleConfiguration = ::Struct.new(
      :included_states,
      :standard_knowledge_article_type_configuration,
      :custom_knowledge_article_type_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SalesforceKnowledgeArticleState
    #
    module SalesforceKnowledgeArticleState
      # No documentation available.
      #
      DRAFT = "DRAFT"

      # No documentation available.
      #
      PUBLISHED = "PUBLISHED"

      # No documentation available.
      #
      ARCHIVED = "ARCHIVED"
    end

    # <p>Provides the configuration information for standard Salesforce
    #             knowledge articles.</p>
    #
    # @!attribute document_data_field_name
    #   <p>The name of the field that contains the document data to
    #               index.</p>
    #
    #   @return [String]
    #
    # @!attribute document_title_field_name
    #   <p>The name of the field that contains the document title.</p>
    #
    #   @return [String]
    #
    # @!attribute field_mappings
    #   <p>Maps attributes or field names of the knowledge article to Amazon Kendra
    #               index field names. To create custom fields, use the <code>UpdateIndex</code> API
    #               before you map to Salesforce fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Salesforce data source field names must exist in your Salesforce custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    SalesforceStandardKnowledgeArticleTypeConfiguration = ::Struct.new(
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for processing attachments to
    #             Salesforce standard objects.</p>
    #
    # @!attribute document_title_field_name
    #   <p>The name of the field used for the document title.</p>
    #
    #   @return [String]
    #
    # @!attribute field_mappings
    #   <p>One or more objects that map fields in attachments to Amazon Kendra
    #               index fields.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    SalesforceStandardObjectAttachmentConfiguration = ::Struct.new(
      :document_title_field_name,
      :field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for indexing a single standard
    #             object.</p>
    #
    # @!attribute name
    #   <p>The name of the standard object.</p>
    #
    #   Enum, one of: ["ACCOUNT", "CAMPAIGN", "CASE", "CONTACT", "CONTRACT", "DOCUMENT", "GROUP", "IDEA", "LEAD", "OPPORTUNITY", "PARTNER", "PRICEBOOK", "PRODUCT", "PROFILE", "SOLUTION", "TASK", "USER"]
    #
    #   @return [String]
    #
    # @!attribute document_data_field_name
    #   <p>The name of the field in the standard object table that contains
    #               the document contents.</p>
    #
    #   @return [String]
    #
    # @!attribute document_title_field_name
    #   <p>The name of the field in the standard object table that contains
    #               the document title.</p>
    #
    #   @return [String]
    #
    # @!attribute field_mappings
    #   <p>Maps attributes or field names of the standard object to Amazon Kendra
    #               index field names. To create custom fields, use the <code>UpdateIndex</code> API
    #               before you map to Salesforce fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Salesforce data source field names must exist in your Salesforce custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    SalesforceStandardObjectConfiguration = ::Struct.new(
      :name,
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SalesforceStandardObjectName
    #
    module SalesforceStandardObjectName
      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"

      # No documentation available.
      #
      CAMPAIGN = "CAMPAIGN"

      # No documentation available.
      #
      CASE = "CASE"

      # No documentation available.
      #
      CONTACT = "CONTACT"

      # No documentation available.
      #
      CONTRACT = "CONTRACT"

      # No documentation available.
      #
      DOCUMENT = "DOCUMENT"

      # No documentation available.
      #
      GROUP = "GROUP"

      # No documentation available.
      #
      IDEA = "IDEA"

      # No documentation available.
      #
      LEAD = "LEAD"

      # No documentation available.
      #
      OPPORTUNITY = "OPPORTUNITY"

      # No documentation available.
      #
      PARTNER = "PARTNER"

      # No documentation available.
      #
      PRICEBOOK = "PRICEBOOK"

      # No documentation available.
      #
      PRODUCT = "PRODUCT"

      # No documentation available.
      #
      PROFILE = "PROFILE"

      # No documentation available.
      #
      SOLUTION = "SOLUTION"

      # No documentation available.
      #
      TASK = "TASK"

      # No documentation available.
      #
      USER = "USER"
    end

    # <p>Provides a relative ranking that indicates how confident Amazon Kendra is
    #          that the response matches the query.</p>
    #
    # @!attribute score_confidence
    #   <p>A relative ranking for how well the response matches the
    #            query.</p>
    #
    #   Enum, one of: ["VERY_HIGH", "HIGH", "MEDIUM", "LOW", "NOT_AVAILABLE"]
    #
    #   @return [String]
    #
    ScoreAttributes = ::Struct.new(
      :score_confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScoreConfidence
    #
    module ScoreConfidence
      # No documentation available.
      #
      VERY_HIGH = "VERY_HIGH"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      NOT_AVAILABLE = "NOT_AVAILABLE"
    end

    # <p>Provides information about how a custom index field is used during
    #             a search.</p>
    #
    # @!attribute facetable
    #   <p>Indicates that the field can be used to create search facets, a
    #               count of results for each value in the field. The default is
    #                   <code>false</code> .</p>
    #
    #   @return [Boolean]
    #
    # @!attribute searchable
    #   <p>Determines whether the field is used in the search. If the
    #                   <code>Searchable</code> field is <code>true</code>, you can use
    #               relevance tuning to manually tune how Amazon Kendra weights the field in
    #               the search. The default is <code>true</code> for string fields and
    #                   <code>false</code> for number and date fields.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute displayable
    #   <p>Determines whether the field is returned in the query response.
    #               The default is <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sortable
    #   <p>Determines whether the field can be used to sort the results of a
    #               query. If you specify sorting on a field that does not have
    #                   <code>Sortable</code> set to <code>true</code>, Amazon Kendra returns an
    #               exception. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    Search = ::Struct.new(
      :facetable,
      :searchable,
      :displayable,
      :sortable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.facetable ||= false
        self.searchable ||= false
        self.displayable ||= false
        self.sortable ||= false
      end

    end

    # <p>Provides the configuration information for the seed or starting point URLs to crawl.</p>
    #         <p>
    #             <i>When selecting websites to index, you must adhere to
    #             the <a href="https://aws.amazon.com/aup/">Amazon Acceptable Use Policy</a>
    #             and all other Amazon terms. Remember that you must only use Amazon Kendra Web
    #             Crawler to index your own webpages, or webpages that you have authorization
    #             to index.</i>
    #          </p>
    #
    # @!attribute seed_urls
    #   <p>The list of seed or starting point URLs of the
    #               websites you want to crawl.</p>
    #           <p>The list can include a maximum of 100 seed URLs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute web_crawler_mode
    #   <p>You can choose one of the following modes:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>HOST_ONLY</code> – crawl only the website host names.
    #                       For example, if the seed URL is "abc.example.com",
    #                       then only URLs with host name "abc.example.com" are crawled.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SUBDOMAINS</code> – crawl the website host names with
    #                       subdomains. For example, if the seed URL is  "abc.example.com", then
    #                       "a.abc.example.com" and "b.abc.example.com" are also crawled.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EVERYTHING</code> – crawl the website host names with
    #                       subdomains and other domains that the webpages link to.</p>
    #               </li>
    #            </ul>
    #           <p>The default mode is set to <code>HOST_ONLY</code>.</p>
    #
    #   Enum, one of: ["HOST_ONLY", "SUBDOMAINS", "EVERYTHING"]
    #
    #   @return [String]
    #
    SeedUrlConfiguration = ::Struct.new(
      :seed_urls,
      :web_crawler_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the identifier of the KMS key used to
    #             encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't
    #             support asymmetric keys.</p>
    #
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key. Amazon Kendra
    #               doesn't support asymmetric keys.</p>
    #
    #   @return [String]
    #
    ServerSideEncryptionConfiguration = ::Struct.new(
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Kendra::Types::ServerSideEncryptionConfiguration "\
          "kms_key_id=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for ServiceNowAuthenticationType
    #
    module ServiceNowAuthenticationType
      # No documentation available.
      #
      HTTP_BASIC = "HTTP_BASIC"

      # No documentation available.
      #
      OAUTH2 = "OAUTH2"
    end

    # Includes enum constants for ServiceNowBuildVersionType
    #
    module ServiceNowBuildVersionType
      # No documentation available.
      #
      LONDON = "LONDON"

      # No documentation available.
      #
      OTHERS = "OTHERS"
    end

    # <p>Provides the configuration information to connect to
    #             ServiceNow as your data source.</p>
    #
    # @!attribute host_url
    #   <p>The ServiceNow instance that the data source connects to. The host
    #               endpoint should look like the following:
    #                   <i>{instance}.service-now.com.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret
    #               that contains the user name and password required to connect to the
    #               ServiceNow instance.</p>
    #
    #   @return [String]
    #
    # @!attribute service_now_build_version
    #   <p>The identifier of the release that the ServiceNow host is running.
    #               If the host is not running the <code>LONDON</code> release, use
    #                   <code>OTHERS</code>.</p>
    #
    #   Enum, one of: ["LONDON", "OTHERS"]
    #
    #   @return [String]
    #
    # @!attribute knowledge_article_configuration
    #   <p>Configuration information for crawling knowledge articles
    #               in the ServiceNow site.</p>
    #
    #   @return [ServiceNowKnowledgeArticleConfiguration]
    #
    # @!attribute service_catalog_configuration
    #   <p>Configuration information for crawling service catalogs
    #               in the ServiceNow site.</p>
    #
    #   @return [ServiceNowServiceCatalogConfiguration]
    #
    # @!attribute authentication_type
    #   <p>The type of authentication used to connect to the
    #               ServiceNow instance. If you choose <code>HTTP_BASIC</code>, Amazon Kendra is
    #               authenticated using the user name and password provided in the
    #               Secrets Manager secret in the <code>SecretArn</code> field. When you
    #               choose <code>OAUTH2</code>, Amazon Kendra is authenticated using the OAuth
    #               token and secret provided in the Secrets Manager secret, and the
    #               user name and password are used to determine which information Amazon Kendra
    #               has access to.</p>
    #           <p>When you use <code>OAUTH2</code> authentication, you must generate
    #               a token and a client secret using the ServiceNow console. For more
    #               information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-servicenow.html">Using a
    #                   ServiceNow data source</a>.</p>
    #
    #   Enum, one of: ["HTTP_BASIC", "OAUTH2"]
    #
    #   @return [String]
    #
    ServiceNowConfiguration = ::Struct.new(
      :host_url,
      :secret_arn,
      :service_now_build_version,
      :knowledge_article_configuration,
      :service_catalog_configuration,
      :authentication_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for crawling knowledge articles
    #             in the ServiceNow site.</p>
    #
    # @!attribute crawl_attachments
    #   <p>Indicates whether Amazon Kendra should index attachments to knowledge
    #               articles.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_attachment_file_patterns
    #   <p>A list of regular expression patterns to include certain attachments of knowledge articles in
    #               your ServiceNow. Item that match the patterns are included in the index. Items that
    #               don't match the patterns are excluded from the index. If an item matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               item isn't included in the index.</p>
    #           <p>The regex is
    #               applied to the field specified in the <code>PatternTargetField</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclude_attachment_file_patterns
    #   <p>A list of regular expression patterns to exclude certain attachments of knowledge articles in
    #               your ServiceNow. Item that match the patterns are excluded from the index. Items that
    #               don't match the patterns are included in the index. If an item matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               item isn't included in the index.</p>
    #           <p>The regex is
    #               applied to the field specified in the <code>PatternTargetField</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute document_data_field_name
    #   <p>The name of the ServiceNow field that is mapped to the index
    #               document contents field in the Amazon Kendra index.</p>
    #
    #   @return [String]
    #
    # @!attribute document_title_field_name
    #   <p>The name of the ServiceNow field that is mapped to the index
    #               document title field.</p>
    #
    #   @return [String]
    #
    # @!attribute field_mappings
    #   <p>Maps attributes or field names of knoweldge articles to Amazon Kendra index
    #               field names. To create custom fields, use the <code>UpdateIndex</code> API before
    #               you map to ServiceNow fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The ServiceNow data source field names must exist in your ServiceNow custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute filter_query
    #   <p>A query that selects the knowledge articles to index. The query
    #               can return articles from multiple knowledge bases, and the knowledge
    #               bases can be public or private.</p>
    #           <p>The query string must be one generated by the ServiceNow console.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/servicenow-query.html">Specifying
    #                   documents to index with a query</a>. </p>
    #
    #   @return [String]
    #
    ServiceNowKnowledgeArticleConfiguration = ::Struct.new(
      :crawl_attachments,
      :include_attachment_file_patterns,
      :exclude_attachment_file_patterns,
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings,
      :filter_query,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_attachments ||= false
      end

    end

    # <p>Provides the configuration information for crawling service catalog
    #             items in the ServiceNow site</p>
    #
    # @!attribute crawl_attachments
    #   <p>Indicates whether Amazon Kendra should crawl attachments to the service
    #               catalog items. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_attachment_file_patterns
    #   <p>A list of regular expression patterns to include certain attachments of catalogs in
    #               your ServiceNow. Item that match the patterns are included in the index. Items that
    #               don't match the patterns are excluded from the index. If an item matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               item isn't included in the index.</p>
    #           <p>The regex is applied to the file name of the attachment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclude_attachment_file_patterns
    #   <p>A list of regular expression patterns to exclude certain attachments of catalogs in
    #               your ServiceNow. Item that match the patterns are excluded from the index. Items that
    #               don't match the patterns are included in the index. If an item matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               item isn't included in the index.</p>
    #           <p>The regex is applied to the file name of the attachment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute document_data_field_name
    #   <p>The name of the ServiceNow field that is mapped to the index
    #               document contents field in the Amazon Kendra index.</p>
    #
    #   @return [String]
    #
    # @!attribute document_title_field_name
    #   <p>The name of the ServiceNow field that is mapped to the index
    #               document title field.</p>
    #
    #   @return [String]
    #
    # @!attribute field_mappings
    #   <p>Maps attributes or field names of catalogs to Amazon Kendra index
    #               field names. To create custom fields, use the <code>UpdateIndex</code> API before
    #               you map to ServiceNow fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The ServiceNow data source field names must exist in your ServiceNow custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    ServiceNowServiceCatalogConfiguration = ::Struct.new(
      :crawl_attachments,
      :include_attachment_file_patterns,
      :exclude_attachment_file_patterns,
      :document_data_field_name,
      :document_title_field_name,
      :field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_attachments ||= false
      end

    end

    # <p></p>
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

    # <p>Provides the configuration information to connect to Microsoft
    #             SharePoint as your data source.</p>
    #
    # @!attribute share_point_version
    #   <p>The version of Microsoft SharePoint that you are using as a data
    #               source.</p>
    #
    #   Enum, one of: ["SHAREPOINT_2013", "SHAREPOINT_2016", "SHAREPOINT_ONLINE"]
    #
    #   @return [String]
    #
    # @!attribute urls
    #   <p>The URLs of the Microsoft SharePoint site that contains the
    #               documents that should be indexed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of credentials stored in
    #               Secrets Manager. The credentials should be a user/password pair.
    #               If you use SharePoint Server, you also need to provide the sever
    #               domain name as part of the credentials. For
    #               more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-sharepoint.html">Using a
    #                   Microsoft SharePoint Data Source</a>. For more information
    #               about Secrets Manager see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html"> What Is
    #                   Secrets Manager</a> in the <i>Secrets Manager
    #                   </i> user guide.</p>
    #
    #   @return [String]
    #
    # @!attribute crawl_attachments
    #   <p>
    #               <code>TRUE</code> to include attachments to documents stored in
    #               your Microsoft SharePoint site in the index; otherwise,
    #                   <code>FALSE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute use_change_log
    #   <p>
    #               <code>TRUE</code> to use the SharePoint change log to determine which documents
    #               require updating in the index. Depending on the change log's
    #               size, it may take longer for Amazon Kendra to use the change log than to
    #               scan all of your documents in SharePoint.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain documents in your SharePoint.
    #               Documents that match the patterns are included in the index. Documents that
    #               don't match the patterns are excluded from the index. If a document matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               document isn't included in the index.</p>
    #           <p>The regex is applied to the display URL of the SharePoint
    #               document.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain documents in your SharePoint.
    #               Documents that match the patterns are excluded from the index. Documents that
    #               don't match the patterns are included in the index. If a document matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               document isn't included in the index.</p>
    #           <p>The regex is applied to the display URL of the SharePoint
    #               document.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_configuration
    #   <p>Provides the configuration information to connect to an Amazon VPC.</p>
    #
    #   @return [DataSourceVpcConfiguration]
    #
    # @!attribute field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map SharePoint data
    #               source attributes or field names to Amazon Kendra index field names. To create
    #               custom fields, use the <code>UpdateIndex</code> API before you map to SharePoint fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The SharePoint data source field names must exist in your SharePoint custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    # @!attribute document_title_field_name
    #   <p>The Microsoft SharePoint attribute field that contains the title
    #               of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute disable_local_groups
    #   <p>A Boolean value that specifies whether local
    #            groups are disabled (<code>True</code>) or enabled (<code>False</code>).
    #         </p>
    #
    #   @return [Boolean]
    #
    # @!attribute ssl_certificate_s3_path
    #   <p>Information required to find a specific file in an Amazon S3
    #               bucket.</p>
    #
    #   @return [S3Path]
    #
    SharePointConfiguration = ::Struct.new(
      :share_point_version,
      :urls,
      :secret_arn,
      :crawl_attachments,
      :use_change_log,
      :inclusion_patterns,
      :exclusion_patterns,
      :vpc_configuration,
      :field_mappings,
      :document_title_field_name,
      :disable_local_groups,
      :ssl_certificate_s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_attachments ||= false
        self.use_change_log ||= false
        self.disable_local_groups ||= false
      end

    end

    # Includes enum constants for SharePointVersion
    #
    module SharePointVersion
      # No documentation available.
      #
      SHAREPOINT_2013 = "SHAREPOINT_2013"

      # No documentation available.
      #
      SHAREPOINT_2016 = "SHAREPOINT_2016"

      # No documentation available.
      #
      SHAREPOINT_ONLINE = "SHAREPOINT_ONLINE"
    end

    # <p>Provides the configuration information for the sitemap URLs to crawl.</p>
    #         <p>
    #             <i>When selecting websites to index, you must adhere to
    #             the <a href="https://aws.amazon.com/aup/">Amazon Acceptable Use Policy</a>
    #             and all other Amazon terms. Remember that you must only use Amazon Kendra Web
    #             Crawler to index your own webpages, or webpages that you have authorization
    #             to index.</i>
    #          </p>
    #
    # @!attribute site_maps
    #   <p>The list of sitemap URLs of the websites
    #               you want to crawl.</p>
    #           <p>The list can include a maximum of three sitemap URLs.</p>
    #
    #   @return [Array<String>]
    #
    SiteMapsConfiguration = ::Struct.new(
      :site_maps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information to connect to Slack as your
    #             data source.</p>
    #
    # @!attribute team_id
    #   <p>The identifier of the team in the Slack workspace. For example,
    #               <i>T0123456789</i>.</p>
    #           <p>You can find your team ID in the URL of the main page of your Slack workspace.
    #               When you log in to Slack via a browser, you are directed to the URL of the main
    #               page. For example, <i>https://app.slack.com/client/<b>T0123456789</b>/...</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of an Secrets Manager secret that contains
    #               the key-value pairs required to connect to your Slack workspace team. The secret
    #               must contain a JSON structure with the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>slackToken—The user or bot token created in Slack. For more
    #                       information on creating a token in Slack, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-slack.html slack-authentication">Authentication
    #                           for a Slack data source</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>Configuration information for an Amazon Virtual Private Cloud to connect to your Slack.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html">Configuring a VPC</a>.</p>
    #
    #   @return [DataSourceVpcConfiguration]
    #
    # @!attribute slack_entity_list
    #   <p>Specify whether to index public channels, private channels, group messages, and
    #               direct messages. You can specify one or more of these options.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute use_change_log
    #   <p>
    #               <code>TRUE</code> to use the Slack change log to determine which documents
    #               require updating in the index. Depending on the Slack change log's
    #               size, it may take longer for Amazon Kendra to use the change log than to
    #               scan all of your documents in Slack.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crawl_bot_message
    #   <p>
    #               <code>TRUE</code> to index bot messages from your Slack workspace team.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute exclude_archived
    #   <p>
    #               <code>TRUE</code> to exclude archived messages to index from your Slack
    #               workspace team.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute since_crawl_date
    #   <p>The date to start crawling your data from your Slack workspace team. The date
    #               must follow this format: <code>yyyy-mm-dd</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute look_back_period
    #   <p>The number of hours for change log to look back from when you last synchronized
    #               your data. You can look back up to 7 days or 168 hours.</p>
    #           <p>Change log updates your index only if new content was added since you
    #               last synced your data. Updated or deleted content from before you last synced
    #               does not get updated in your index. To capture updated or deleted content before you
    #               last synced, set the <code>LookBackPeriod</code> to the number of hours you want
    #               change log to look back.</p>
    #
    #   @return [Integer]
    #
    # @!attribute private_channel_filter
    #   <p>The list of private channel names from your Slack workspace team. You use this if
    #               you want to index specific private channels, not all private channels. You can also
    #               use regular expression patterns to filter private channels.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute public_channel_filter
    #   <p>The list of public channel names to index from your Slack workspace team. You use
    #               this if you want to index specific public channels, not all public channels. You can
    #               also use regular expression patterns to filter public channels.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain attached files in your Slack
    #               workspace team. Files that match the patterns are included in the index. Files that
    #               don't match the patterns are excluded from the index. If a file matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain attached files in your Slack
    #               workspace team. Files that match the patterns are excluded from the index. Files that
    #               don’t match the patterns are included in the index. If a file matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the file
    #               isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map Slack data
    #               source attributes or field names to Amazon Kendra index field names. To create
    #               custom fields, use the <code>UpdateIndex</code> API before you map to Slack fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping data source fields</a>.
    #               The Slack data source field names must exist in your Slack custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    SlackConfiguration = ::Struct.new(
      :team_id,
      :secret_arn,
      :vpc_configuration,
      :slack_entity_list,
      :use_change_log,
      :crawl_bot_message,
      :exclude_archived,
      :since_crawl_date,
      :look_back_period,
      :private_channel_filter,
      :public_channel_filter,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.use_change_log ||= false
        self.crawl_bot_message ||= false
        self.exclude_archived ||= false
      end

    end

    # Includes enum constants for SlackEntity
    #
    module SlackEntity
      # No documentation available.
      #
      PUBLIC_CHANNEL = "PUBLIC_CHANNEL"

      # No documentation available.
      #
      PRIVATE_CHANNEL = "PRIVATE_CHANNEL"

      # No documentation available.
      #
      GROUP_MESSAGE = "GROUP_MESSAGE"

      # No documentation available.
      #
      DIRECT_MESSAGE = "DIRECT_MESSAGE"
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      DESC = "DESC"

      # No documentation available.
      #
      ASC = "ASC"
    end

    # <p>Specifies the document attribute to use to sort the response to a
    #             Amazon Kendra query. You can specify a single attribute for sorting. The
    #             attribute must have the <code>Sortable</code> flag set to
    #             <code>true</code>, otherwise Amazon Kendra returns an exception.</p>
    #         <p>You can sort attributes of the following types.</p>
    #         <ul>
    #             <li>
    #                 <p>Date value</p>
    #             </li>
    #             <li>
    #                 <p>Long value</p>
    #             </li>
    #             <li>
    #                 <p>String value</p>
    #             </li>
    #          </ul>
    #         <p>You can't sort attributes of the following type.</p>
    #         <ul>
    #             <li>
    #                 <p>String list value</p>
    #             </li>
    #          </ul>
    #
    # @!attribute document_attribute_key
    #   <p>The name of the document attribute used to sort the response. You
    #               can use any field that has the <code>Sortable</code> flag set to
    #               true.</p>
    #           <p>You can also sort by any of the following built-in
    #               attributes:</p>
    #           <ul>
    #               <li>
    #                   <p>_category</p>
    #               </li>
    #               <li>
    #                   <p>_created_at</p>
    #               </li>
    #               <li>
    #                   <p>_last_updated_at</p>
    #               </li>
    #               <li>
    #                   <p>_version</p>
    #               </li>
    #               <li>
    #                   <p>_view_count</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order that the results should be returned in. In case of ties,
    #               the relevance assigned to the result by Amazon Kendra is used as the
    #               tie-breaker.</p>
    #
    #   Enum, one of: ["DESC", "ASC"]
    #
    #   @return [String]
    #
    SortingConfiguration = ::Struct.new(
      :document_attribute_key,
      :sort_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A query with suggested spell corrections. </p>
    #
    # @!attribute suggested_query_text
    #   <p>The query with the suggested spell corrections.</p>
    #
    #   @return [String]
    #
    # @!attribute corrections
    #   <p>The corrected misspelled word or words in a query.</p>
    #
    #   @return [Array<Correction>]
    #
    SpellCorrectedQuery = ::Struct.new(
      :suggested_query_text,
      :corrections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for suggested query spell corrections.</p>
    #         <p>Suggested spell corrections are based on words that appear in your indexed documents
    #             and how closely a corrected word matches a misspelled word.</p>
    #         <p>This feature is designed with certain defaults or limits. For information on the
    #             current limits and how to request more support for some limits, see the
    #             <a href="https://docs.aws.amazon.com/kendra/latest/dg/query-spell-check.html">Spell
    #                 Checker documentation</a>.</p>
    #
    # @!attribute include_query_spell_check_suggestions
    #   <p>
    #               <code>TRUE</code> to suggest spell corrections for queries.</p>
    #
    #   @return [Boolean]
    #
    SpellCorrectionConfiguration = ::Struct.new(
      :include_query_spell_check_suggestions,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_query_spell_check_suggestions ||= false
      end

    end

    # <p>Provides the configuration information to use a SQL
    #             database.</p>
    #
    # @!attribute query_identifiers_enclosing_option
    #   <p>Determines whether Amazon Kendra encloses SQL identifiers for tables and
    #               column names in double quotes (") when making a database
    #               query.</p>
    #           <p>By default, Amazon Kendra passes SQL identifiers the way that they are
    #               entered into the data source configuration. It does not change the
    #               case of identifiers or enclose them in quotes.</p>
    #           <p>PostgreSQL internally converts uppercase characters to lower case
    #               characters in identifiers unless they are quoted. Choosing this
    #               option encloses identifiers in quotes so that PostgreSQL does not
    #               convert the character's case.</p>
    #           <p>For MySQL databases, you must enable the <code>ansi_quotes</code>
    #               option when you set this field to <code>DOUBLE_QUOTES</code>.</p>
    #
    #   Enum, one of: ["DOUBLE_QUOTES", "NONE"]
    #
    #   @return [String]
    #
    SqlConfiguration = ::Struct.new(
      :query_identifiers_enclosing_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the data source to synchronize.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    #   @return [String]
    #
    StartDataSourceSyncJobInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_id
    #   <p>Identifies a particular synchronization job.</p>
    #
    #   @return [String]
    #
    StartDataSourceSyncJobOutput = ::Struct.new(
      :execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the status of documents submitted for indexing.</p>
    #
    # @!attribute document_id
    #   <p>The unique identifier of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute document_status
    #   <p>The current status of a document.</p>
    #           <p>If the document was submitted for deletion, the status is
    #                   <code>NOT_FOUND</code> after the document is deleted.</p>
    #
    #   Enum, one of: ["NOT_FOUND", "PROCESSING", "INDEXED", "UPDATED", "FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>Indicates the source of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>Provides detailed information about why the document couldn't be
    #               indexed. Use this information to correct the error before you
    #               resubmit the document for indexing.</p>
    #
    #   @return [String]
    #
    Status = ::Struct.new(
      :document_id,
      :document_status,
      :failure_code,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the data source for which to stop the
    #         synchronization jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    #   @return [String]
    #
    StopDataSourceSyncJobInput = ::Struct.new(
      :id,
      :index_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopDataSourceSyncJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index that was queried.</p>
    #
    #   @return [String]
    #
    # @!attribute query_id
    #   <p>The identifier of the specific query for which you are submitting
    #               feedback. The query ID is returned in the response to the
    #                   <code>Query</code> API.</p>
    #
    #   @return [String]
    #
    # @!attribute click_feedback_items
    #   <p>Tells Amazon Kendra that a particular search result link was chosen
    #               by the user. </p>
    #
    #   @return [Array<ClickFeedback>]
    #
    # @!attribute relevance_feedback_items
    #   <p>Provides Amazon Kendra with relevant or not relevant feedback for
    #               whether a particular item was relevant to the search.</p>
    #
    #   @return [Array<RelevanceFeedback>]
    #
    SubmitFeedbackInput = ::Struct.new(
      :index_id,
      :query_id,
      :click_feedback_items,
      :relevance_feedback_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SubmitFeedbackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single query suggestion.</p>
    #
    # @!attribute id
    #   <p>The unique UUID (universally unique identifier) of a single
    #               query suggestion.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the unique UUID (universally unique identifier)
    #               of a single query suggestion.</p>
    #           <p>The value is the text string of a suggestion.</p>
    #
    #   @return [SuggestionValue]
    #
    Suggestion = ::Struct.new(
      :id,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The text highlights for a single query suggestion.</p>
    #
    # @!attribute begin_offset
    #   <p>The zero-based location in the response string where the highlight starts.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset
    #   <p>The zero-based location in the response string where the highlight ends.</p>
    #
    #   @return [Integer]
    #
    SuggestionHighlight = ::Struct.new(
      :begin_offset,
      :end_offset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides text and information about where to highlight the query suggestion text.</p>
    #
    # @!attribute text
    #   <p>The query suggestion text to display to the user.</p>
    #
    #   @return [String]
    #
    # @!attribute highlights
    #   <p>The beginning and end of the query suggestion text that should be highlighted.</p>
    #
    #   @return [Array<SuggestionHighlight>]
    #
    SuggestionTextWithHighlights = ::Struct.new(
      :text,
      :highlights,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>SuggestionTextWithHighlights</code> structure information.</p>
    #
    # @!attribute text
    #   <p>The <code>SuggestionTextWithHighlights</code> structure that contains
    #               the query suggestion text and highlights.</p>
    #
    #   @return [SuggestionTextWithHighlights]
    #
    SuggestionValue = ::Struct.new(
      :text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of key/value pairs that identify an index, FAQ, or data source.
    #       Tag keys and values can consist of Unicode letters, digits, white space,
    #       and any of the following symbols: _ . : / = + - @.</p>
    #
    # @!attribute key
    #   <p>The key for the tag. Keys are not case sensitive and must be unique
    #         for the index, FAQ, or data source.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value associated with the tag. The value may be an empty string
    #         but it can't be null.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #         tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag keys to add to the index, FAQ, or data source. If a tag
    #         already exists, the existing value is replaced with the new value.</p>
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

    # <p>Provides information about text documents indexed in an
    #             index.</p>
    #
    # @!attribute indexed_text_documents_count
    #   <p>The number of text documents indexed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute indexed_text_bytes
    #   <p>The total size, in bytes, of the indexed documents.</p>
    #
    #   @return [Integer]
    #
    TextDocumentStatistics = ::Struct.new(
      :indexed_text_documents_count,
      :indexed_text_bytes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.indexed_text_documents_count ||= 0
        self.indexed_text_bytes ||= 0
      end

    end

    # <p>Provides text and information about where to highlight the
    #             text.</p>
    #
    # @!attribute text
    #   <p>The text to display to the user.</p>
    #
    #   @return [String]
    #
    # @!attribute highlights
    #   <p>The beginning and end of the text that should be
    #               highlighted.</p>
    #
    #   @return [Array<Highlight>]
    #
    TextWithHighlights = ::Struct.new(
      :text,
      :highlights,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ThesaurusStatus
    #
    module ThesaurusStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      ACTIVE_BUT_UPDATE_FAILED = "ACTIVE_BUT_UPDATE_FAILED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>An array of summary information for a thesaurus or multiple thesauri.</p>
    #
    # @!attribute id
    #   <p>The identifier of the thesaurus.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the thesaurus.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the thesaurus.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix datetime that the thesaurus was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The Unix datetime that the thesaurus was last updated.</p>
    #
    #   @return [Time]
    #
    ThesaurusSummary = ::Struct.new(
      :id,
      :name,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # <p>Provides a range of time.</p>
    #
    # @!attribute start_time
    #   <p>The UNIX datetime of the beginning of the time range.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The UNIX datetime of the end of the time range.</p>
    #
    #   @return [Time]
    #
    TimeRange = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      SAAS = "SAAS"

      # No documentation available.
      #
      ON_PREMISE = "ON_PREMISE"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #         remove the tag from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the index, FAQ, or data source. If a
    #         tag key does not exist on the resource, it is ignored.</p>
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

    # @!attribute id
    #   <p>The unique identifier of the data source to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data source to update. The name of the data source
    #         can't be updated. To rename a data source you must delete the data source
    #         and re-create it.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index that contains the data source to
    #         update.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>Configuration information for an Amazon Kendra data source you want to update.</p>
    #
    #   @return [DataSourceConfiguration]
    #
    # @!attribute description
    #   <p>The new description for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The new update schedule for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the new role to use when the data
    #         source is accessing resources on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for a language. This allows you to support a language for all
    #               documents when updating the data source. English is supported
    #               by default. For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_document_enrichment_configuration
    #   <p>Configuration information for altering document metadata and content during the
    #               document ingestion process when you update a data source.</p>
    #           <p>For more information on how to create, modify and delete document metadata, or make
    #               other content alterations when you ingest documents into Amazon Kendra, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing
    #                   document metadata during the ingestion process</a>.</p>
    #
    #   @return [CustomDocumentEnrichmentConfiguration]
    #
    UpdateDataSourceInput = ::Struct.new(
      :id,
      :name,
      :index_id,
      :configuration,
      :description,
      :schedule,
      :role_arn,
      :language_code,
      :custom_document_enrichment_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDataSourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of your Amazon Kendra experience you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of your Amazon Kendra experience you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index for your Amazon Kendra experience you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access <code>Query</code>
    #               API, <code>QuerySuggestions</code> API, <code>SubmitFeedback</code>
    #               API, and Amazon Web Services SSO that stores your user and group information.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM roles for Amazon Kendra</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>Configuration information for your Amazon Kendra you want to update.</p>
    #
    #   @return [ExperienceConfiguration]
    #
    # @!attribute description
    #   <p>The description of your Amazon Kendra experience you want to update.</p>
    #
    #   @return [String]
    #
    UpdateExperienceInput = ::Struct.new(
      :id,
      :name,
      :index_id,
      :role_arn,
      :configuration,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateExperienceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the index to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the index to update.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>A new IAM role that gives Amazon Kendra permission to access your
    #         Amazon CloudWatch logs.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A new description for the index.</p>
    #
    #   @return [String]
    #
    # @!attribute document_metadata_configuration_updates
    #   <p>The document metadata you want to update.</p>
    #
    #   @return [Array<DocumentMetadataConfiguration>]
    #
    # @!attribute capacity_units
    #   <p>Sets the number of additional document storage and query capacity
    #         units that should be used by the index. You can change the capacity of
    #         the index up to 5 times per day, or make 5 API calls.</p>
    #            <p>If you are using extra storage units, you can't reduce the storage
    #         capacity below what is required to meet the storage needs for your
    #         index.</p>
    #
    #   @return [CapacityUnitsConfiguration]
    #
    # @!attribute user_token_configurations
    #   <p>The user token configuration.</p>
    #
    #   @return [Array<UserTokenConfiguration>]
    #
    # @!attribute user_context_policy
    #   <p>The user context policy.</p>
    #
    #   Enum, one of: ["ATTRIBUTE_FILTER", "USER_TOKEN"]
    #
    #   @return [String]
    #
    # @!attribute user_group_resolution_configuration
    #   <p>Enables fetching access levels of groups and users from an Amazon Web Services Single Sign On
    #            identity source. To configure this, see
    #            <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html">UserGroupResolutionConfiguration</a>.</p>
    #
    #   @return [UserGroupResolutionConfiguration]
    #
    UpdateIndexInput = ::Struct.new(
      :id,
      :name,
      :role_arn,
      :description,
      :document_metadata_configuration_updates,
      :capacity_units,
      :user_token_configurations,
      :user_context_policy,
      :user_group_resolution_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateIndexOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index for a block list.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier of a block list.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a block list.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for a block list.</p>
    #
    #   @return [String]
    #
    # @!attribute source_s3_path
    #   <p>The S3 path where your block list text file sits in S3.</p>
    #           <p>If you update your block list and provide the same path to the
    #               block list text file in S3, then Amazon Kendra reloads the file to refresh
    #               the block list. Amazon Kendra does not automatically refresh your block list.
    #               You need to call the <code>UpdateQuerySuggestionsBlockList</code> API
    #               to refresh you block list.</p>
    #           <p>If you update your block list, then Amazon Kendra asynchronously refreshes
    #               all query suggestions with the latest content in the S3 file. This
    #               means changes might not take effect immediately.</p>
    #
    #   @return [S3Path]
    #
    # @!attribute role_arn
    #   <p>The IAM (Identity and Access Management) role used to access the
    #               block list text file in S3.</p>
    #
    #   @return [String]
    #
    UpdateQuerySuggestionsBlockListInput = ::Struct.new(
      :index_id,
      :id,
      :name,
      :description,
      :source_s3_path,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateQuerySuggestionsBlockListOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_id
    #   <p>The identifier of the index you want to update query suggestions settings for.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>Set the mode to <code>ENABLED</code> or <code>LEARN_ONLY</code>.</p>
    #           <p>By default, Amazon Kendra enables query suggestions.
    #               <code>LEARN_ONLY</code> mode allows you to turn off query suggestions.
    #               You can to update this at any time.</p>
    #           <p>In <code>LEARN_ONLY</code> mode, Amazon Kendra continues to learn from new
    #               queries to keep suggestions up to date for when you are ready to
    #               switch to ENABLED mode again.</p>
    #
    #   Enum, one of: ["ENABLED", "LEARN_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute query_log_look_back_window_in_days
    #   <p>How recent your queries are in your query log time window.</p>
    #           <p>The time window is the number of days from current day to past days.</p>
    #           <p>By default, Amazon Kendra sets this to 180.</p>
    #
    #   @return [Integer]
    #
    # @!attribute include_queries_without_user_information
    #   <p>
    #               <code>TRUE</code> to include queries without user information (i.e. all queries,
    #               irrespective of the user), otherwise <code>FALSE</code> to only include queries
    #               with user information.</p>
    #           <p>If you pass user information to Amazon Kendra along with the queries, you can set this
    #               flag to <code>FALSE</code> and instruct Amazon Kendra to only consider queries with user
    #               information.</p>
    #           <p>If you set to <code>FALSE</code>, Amazon Kendra only considers queries searched at least
    #               <code>MinimumQueryCount</code> times across <code>MinimumNumberOfQueryingUsers</code>
    #               unique users for suggestions.</p>
    #           <p>If you set to <code>TRUE</code>, Amazon Kendra ignores all user information and learns
    #               from all queries.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute minimum_number_of_querying_users
    #   <p>The minimum number of unique users who must search a query in order for the query
    #               to be eligible to suggest to your users.</p>
    #           <p>Increasing this number might decrease the number of suggestions. However, this
    #               ensures a query is searched by many users and is truly popular to suggest to users.</p>
    #           <p>How you tune this setting depends on your specific needs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minimum_query_count
    #   <p>The the minimum number of times a query must be searched in order to be
    #               eligible to suggest to your users.</p>
    #           <p>Decreasing this number increases the number of suggestions. However, this
    #               affects the quality of suggestions as it sets a low bar for a query to be
    #               considered popular to suggest to users.</p>
    #           <p>How you tune this setting depends on your specific needs.</p>
    #
    #   @return [Integer]
    #
    UpdateQuerySuggestionsConfigInput = ::Struct.new(
      :index_id,
      :mode,
      :query_log_look_back_window_in_days,
      :include_queries_without_user_information,
      :minimum_number_of_querying_users,
      :minimum_query_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateQuerySuggestionsConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the thesaurus to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated name of the thesaurus.</p>
    #
    #   @return [String]
    #
    # @!attribute index_id
    #   <p>The identifier of the index associated with the thesaurus to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the thesaurus.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The updated role ARN of the thesaurus.</p>
    #
    #   @return [String]
    #
    # @!attribute source_s3_path
    #   <p>Information required to find a specific file in an Amazon S3
    #               bucket.</p>
    #
    #   @return [S3Path]
    #
    UpdateThesaurusInput = ::Struct.new(
      :id,
      :name,
      :index_id,
      :description,
      :role_arn,
      :source_s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateThesaurusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information of the URLs to crawl.</p>
    #         <p>You can only crawl websites that use the secure communication protocol,
    #             Hypertext Transfer Protocol Secure (HTTPS). If you receive an error when
    #             crawling a website, it could be that the website is blocked from crawling.</p>
    #         <p>
    #             <i>When selecting websites to index, you must adhere to
    #             the <a href="https://aws.amazon.com/aup/">Amazon Acceptable Use Policy</a>
    #             and all other Amazon terms. Remember that you must only use Amazon Kendra Web
    #             Crawler to index your own webpages, or webpages that you have authorization to
    #             index.</i>
    #          </p>
    #
    # @!attribute seed_url_configuration
    #   <p>Configuration of the seed or starting point URLs of the websites
    #               you want to crawl.</p>
    #           <p>You can choose to crawl only the website host names, or the website host names
    #               with subdomains, or the website host names with subdomains and other domains
    #               that the webpages link to.</p>
    #           <p>You can list up to 100 seed URLs.</p>
    #
    #   @return [SeedUrlConfiguration]
    #
    # @!attribute site_maps_configuration
    #   <p>Configuration of the sitemap URLs of the websites you want to crawl.</p>
    #           <p>Only URLs belonging to the same website host names are crawled. You can list up to
    #               three sitemap URLs.</p>
    #
    #   @return [SiteMapsConfiguration]
    #
    Urls = ::Struct.new(
      :seed_url_configuration,
      :site_maps_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the user context for
    #          an Amazon Kendra index.</p>
    #          <p>This is used for filtering search results for different users based on their access
    #          to documents.</p>
    #          <p>You provide one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>User token</p>
    #             </li>
    #             <li>
    #                <p>User ID, the groups the user belongs to, and any data sources the groups can
    #                access.</p>
    #             </li>
    #          </ul>
    #          <p>If you provide both, an exception is thrown.</p>
    #
    # @!attribute token
    #   <p>The user context token for filtering search results for a user. It must
    #            be a JWT or a JSON token.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier of the user you want to filter search results based on their
    #            access to documents.</p>
    #
    #   @return [String]
    #
    # @!attribute groups
    #   <p>The list of groups you want to filter search results based on the
    #            groups' access to documents.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute data_source_groups
    #   <p>The list of data source groups you want to filter search results
    #            based on groups' access to documents in that data source.</p>
    #
    #   @return [Array<DataSourceGroup>]
    #
    UserContext = ::Struct.new(
      :token,
      :user_id,
      :groups,
      :data_source_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserContextPolicy
    #
    module UserContextPolicy
      # No documentation available.
      #
      ATTRIBUTE_FILTER = "ATTRIBUTE_FILTER"

      # No documentation available.
      #
      USER_TOKEN = "USER_TOKEN"
    end

    # <p>Provides the configuration information to fetch access levels
    #          of groups and users from an Amazon Web Services Single Sign On identity
    #          source. This is useful for setting up user context filtering, where
    #          Amazon Kendra filters search results for different users based on their
    #          group's access to documents. You can also map your users to their
    #          groups for user context filtering using the
    #          <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_PutPrincipalMapping.html">PutPrincipalMapping
    #             API</a>.</p>
    #          <p>To set up an Amazon Web Services SSO identity source in the console to use with
    #          Amazon Kendra, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/getting-started-aws-sso.html">Getting started
    #             with an Amazon Web Services SSO identity source</a>. You must also grant the required
    #          permissions to use Amazon Web Services SSO with Amazon Kendra. For more information, see
    #          <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-aws-sso">IAM roles for
    #             Amazon Web Services SSO</a>.</p>
    #          <p>Amazon Kendra currently does not support using <code>UserGroupResolutionConfiguration</code>
    #          with an Amazon Web Services organization member account for your Amazon Web Services SSO
    #          identify source. You must create your index in the management account for the organization
    #          in order to use <code>UserGroupResolutionConfiguration</code>.</p>
    #
    # @!attribute user_group_resolution_mode
    #   <p>The identity store provider (mode) you want to use to fetch access levels of groups and
    #            users. Amazon Web Services Single Sign On is currently the only available mode. Your users and groups
    #            must
    #            exist in an Amazon Web Services SSO identity source in order to use this mode.</p>
    #
    #   Enum, one of: ["AWS_SSO", "NONE"]
    #
    #   @return [String]
    #
    UserGroupResolutionConfiguration = ::Struct.new(
      :user_group_resolution_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserGroupResolutionMode
    #
    module UserGroupResolutionMode
      # No documentation available.
      #
      AWS_SSO = "AWS_SSO"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>Provides the configuration information for the identifiers of your users.</p>
    #
    # @!attribute identity_attribute_name
    #   <p>The Amazon Web Services SSO field name that contains the identifiers of your users,
    #               such as their emails. This is used for <a href="https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html">user context filtering</a>
    #               and for granting access to your Amazon Kendra experience. You must set up Amazon Web Services SSO
    #               with Amazon Kendra. You must include your users and groups in your Access Control List when
    #               you ingest documents into your index. For more information, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/getting-started-aws-sso.html">Getting
    #                   started with an Amazon Web Services SSO identity source</a>.</p>
    #
    #   @return [String]
    #
    UserIdentityConfiguration = ::Struct.new(
      :identity_attribute_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the configuration information for a token.</p>
    #
    # @!attribute jwt_token_type_configuration
    #   <p>Information about the JWT token type configuration.</p>
    #
    #   @return [JwtTokenTypeConfiguration]
    #
    # @!attribute json_token_type_configuration
    #   <p>Information about the JSON token type configuration.</p>
    #
    #   @return [JsonTokenTypeConfiguration]
    #
    UserTokenConfiguration = ::Struct.new(
      :jwt_token_type_configuration,
      :json_token_type_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # <p>The warning code and message that explains a problem with a query.</p>
    #
    # @!attribute message
    #   <p>The message that explains the problem with the query.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The code used to show the type of warning for the query.</p>
    #
    #   Enum, one of: ["QUERY_LANGUAGE_INVALID_SYNTAX"]
    #
    #   @return [String]
    #
    Warning = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WarningCode
    #
    module WarningCode
      # No documentation available.
      #
      QUERY_LANGUAGE_INVALID_SYNTAX = "QUERY_LANGUAGE_INVALID_SYNTAX"
    end

    # <p>Provides the configuration information required for Amazon Kendra
    #             Web Crawler.</p>
    #
    # @!attribute urls
    #   <p>Specifies the seed or starting point URLs of the
    #               websites or the sitemap URLs of the websites you want to crawl.</p>
    #           <p>You can include website subdomains. You can list up to 100 seed
    #               URLs and up to three sitemap URLs.</p>
    #           <p>You can only crawl websites that use the secure communication protocol,
    #               Hypertext Transfer Protocol Secure (HTTPS). If you receive an error when
    #               crawling a website, it could be that the website is blocked from crawling.</p>
    #           <p>
    #               <i>When selecting websites to index, you must adhere to
    #               the <a href="https://aws.amazon.com/aup/">Amazon Acceptable Use Policy</a>
    #               and all other Amazon terms. Remember that you must only use Amazon Kendra
    #               Web Crawler to index your own webpages, or webpages that you have
    #               authorization to index.</i>
    #            </p>
    #
    #   @return [Urls]
    #
    # @!attribute crawl_depth
    #   <p>Specifies the number of levels in a website that you want to crawl.</p>
    #           <p>The first level begins from the website seed or starting point URL.
    #               For example, if a website has 3 levels – index level (i.e. seed in this
    #               example), sections level, and subsections level – and you are only
    #               interested in crawling information up to the sections level (i.e.
    #               levels 0-1), you can set your depth to 1.</p>
    #           <p>The default crawl depth is set to 2.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_links_per_page
    #   <p>The maximum number of URLs on a webpage to include when crawling a website.
    #               This number is per webpage.</p>
    #               <p>As a website’s webpages are crawled, any URLs the webpages link to are
    #                   also crawled. URLs on a webpage are crawled in order of appearance.</p>
    #           <p>The default maximum links per page is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_content_size_per_page_in_mega_bytes
    #   <p>The maximum size (in MB) of a webpage or attachment to crawl.</p>
    #           <p>Files larger than this size (in MB) are skipped/not crawled.</p>
    #           <p>The default maximum size of a webpage or attachment is set to 50 MB.</p>
    #
    #   @return [Float]
    #
    # @!attribute max_urls_per_minute_crawl_rate
    #   <p>The maximum number of URLs crawled per website host per minute.</p>
    #           <p>A minimum of one URL is required.</p>
    #           <p>The default maximum number of URLs crawled per website host per minute is 300.</p>
    #
    #   @return [Integer]
    #
    # @!attribute url_inclusion_patterns
    #   <p>A list of regular expression patterns to include certain URLs to crawl. URLs
    #               that match the patterns are included in the index. URLs that
    #               don't match the patterns are excluded from the index. If a URL matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               URL file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute url_exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain URLs to crawl. URLs
    #               that match the patterns are excluded from the index. URLs that
    #               don't match the patterns are included in the index. If a URL matches both
    #               an inclusion and exclusion pattern, the exclusion pattern takes precedence and the
    #               URL file isn't included in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute proxy_configuration
    #   <p>Configuration information required to connect to your internal
    #               websites via a web proxy.</p>
    #           <p>You must provide the website host name and port number. For example, the
    #               host name of https://a.example.com/page1.html is "a.example.com" and the
    #               port is 443, the standard port for HTTPS.</p>
    #           <p>Web proxy credentials are optional and you can use them to connect to a
    #               web proxy server that requires basic authentication. To store web proxy
    #               credentials, you use a secret in <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html">Secrets Manager</a>.</p>
    #
    #   @return [ProxyConfiguration]
    #
    # @!attribute authentication_configuration
    #   <p>Configuration information required to connect to websites using
    #               authentication.</p>
    #           <p>You can connect to websites using basic authentication of user name and password.</p>
    #           <p>You must provide the website host name and port number. For example, the host name
    #               of https://a.example.com/page1.html is "a.example.com" and the port is 443, the
    #               standard port for HTTPS. You use a secret in <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html">Secrets Manager</a> to store
    #               your authentication credentials.</p>
    #
    #   @return [AuthenticationConfiguration]
    #
    WebCrawlerConfiguration = ::Struct.new(
      :urls,
      :crawl_depth,
      :max_links_per_page,
      :max_content_size_per_page_in_mega_bytes,
      :max_urls_per_minute_crawl_rate,
      :url_inclusion_patterns,
      :url_exclusion_patterns,
      :proxy_configuration,
      :authentication_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WebCrawlerMode
    #
    module WebCrawlerMode
      # No documentation available.
      #
      HOST_ONLY = "HOST_ONLY"

      # No documentation available.
      #
      SUBDOMAINS = "SUBDOMAINS"

      # No documentation available.
      #
      EVERYTHING = "EVERYTHING"
    end

    # <p>Provides the configuration information to connect to Amazon WorkDocs
    #             as your data source.</p>
    #         <p>Amazon WorkDocs connector is available in Oregon, North Virginia, Sydney, Singapore and Ireland
    #             regions.</p>
    #
    # @!attribute organization_id
    #   <p>The identifier of the directory corresponding to your
    #               Amazon WorkDocs site repository.</p>
    #           <p>You can find the organization ID in the
    #               <a href="https://console.aws.amazon.com/directoryservicev2/">Directory Service</a> by going to
    #               <b>Active Directory</b>, then
    #               <b>Directories</b>. Your Amazon WorkDocs site directory has an
    #               ID, which is the organization ID. You can also set up a new Amazon WorkDocs
    #               directory in the Directory Service console and enable a Amazon WorkDocs site
    #               for the directory in the Amazon WorkDocs console.</p>
    #
    #   @return [String]
    #
    # @!attribute crawl_comments
    #   <p>
    #               <code>TRUE</code> to include comments on documents
    #               in your index. Including comments in your index means each comment
    #               is a document that can be searched on.</p>
    #           <p>The default is set to <code>FALSE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute use_change_log
    #   <p>
    #               <code>TRUE</code> to use the Amazon WorkDocs change log to determine
    #               which documents require updating in the index. Depending on the change log's
    #               size, it may take longer for Amazon Kendra to use the change log than to
    #               scan all of your documents in Amazon WorkDocs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute inclusion_patterns
    #   <p>A list of regular expression patterns to include certain files
    #               in your Amazon WorkDocs site repository. Files that match the patterns
    #               are included in the index. Files that don't match the patterns are
    #               excluded from the index. If a file matches both an inclusion and exclusion
    #               pattern, the exclusion pattern takes precedence and the file isn't included
    #               in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute exclusion_patterns
    #   <p>A list of regular expression patterns to exclude certain files
    #               in your Amazon WorkDocs site repository. Files that match the patterns
    #               are excluded from the index. Files that don’t match the patterns
    #               are included in the index. If a file matches both an inclusion and exclusion
    #               pattern, the exclusion pattern takes precedence and the file isn't included
    #               in the index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute field_mappings
    #   <p>A list of <code>DataSourceToIndexFieldMapping</code> objects that
    #               map Amazon WorkDocs data source attributes or field names to Amazon Kendra
    #               index field names. To create custom fields, use the
    #               <code>UpdateIndex</code> API before you map to Amazon WorkDocs fields.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html">Mapping
    #                   data source fields</a>. The Amazon WorkDocs data source field names
    #               must exist in your Amazon WorkDocs custom metadata.</p>
    #
    #   @return [Array<DataSourceToIndexFieldMapping>]
    #
    WorkDocsConfiguration = ::Struct.new(
      :organization_id,
      :crawl_comments,
      :use_change_log,
      :inclusion_patterns,
      :exclusion_patterns,
      :field_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_comments ||= false
        self.use_change_log ||= false
      end

    end

  end
end
