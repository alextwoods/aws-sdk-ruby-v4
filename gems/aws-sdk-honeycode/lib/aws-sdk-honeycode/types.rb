# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Honeycode
  module Types

    # <p>
    #             You do not have sufficient access to perform this action. Check that the workbook is owned by you and your
    #             IAM policy allows access to the resource in the request.
    #         </p>
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

    # <p>The automation execution did not end successfully.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AutomationExecutionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The automation execution timed out.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AutomationExecutionTimeoutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook where the new rows are being added.</p>
    #           <p>
    #               If a workbook with the specified ID could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute table_id
    #   <p>The ID of the table where the new rows are being added.</p>
    #           <p>
    #               If a table with the specified ID could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute rows_to_create
    #   <p>
    #               The list of rows to create at the end of the table. Each item in this list needs to have a batch item id
    #               to uniquely identify the element in the request and the cells to create for that row.
    #               You need to specify at least one item in this list.
    #           </p>
    #           <p>
    #               Note that if one of the column ids in any of the rows in the request does not exist in the table, then the
    #               request fails and no updates are made to the table.
    #           </p>
    #
    #   @return [Array<CreateRowData>]
    #
    # @!attribute client_request_token
    #   <p>
    #               The request token for performing the batch create operation.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the operation again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    #   @return [String]
    #
    BatchCreateTableRowsInput = ::Struct.new(
      :workbook_id,
      :table_id,
      :rows_to_create,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workbook_cursor
    #   <p>The updated workbook cursor after adding the new rows at the end of the table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_rows
    #   <p>The map of batch item id to the row id that was created for that item.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute failed_batch_items
    #   <p>
    #               The list of batch items in the request that could not be added to the table. Each element in this list
    #               contains one item from the request that could not be added to the table along with the reason why
    #               that item could not be added.
    #           </p>
    #
    #   @return [Array<FailedBatchItem>]
    #
    BatchCreateTableRowsOutput = ::Struct.new(
      :workbook_cursor,
      :created_rows,
      :failed_batch_items,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook where the rows are being deleted.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute table_id
    #   <p>The ID of the table where the rows are being deleted.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute row_ids
    #   <p>
    #               The list of row ids to delete from the table. You need to specify at least one row id in this list.
    #           </p>
    #           <p>
    #               Note that if one of the row ids provided in the request does not exist in the table, then the request fails
    #               and no rows are deleted from the table.
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_request_token
    #   <p>
    #               The request token for performing the delete action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    #   @return [String]
    #
    BatchDeleteTableRowsInput = ::Struct.new(
      :workbook_id,
      :table_id,
      :row_ids,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workbook_cursor
    #   <p>The updated workbook cursor after deleting the rows from the table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_batch_items
    #   <p>
    #               The list of row ids in the request that could not be deleted from the table. Each element in this list
    #               contains one row id from the request that could not be deleted along with the reason why that item could not
    #               be deleted.
    #           </p>
    #
    #   @return [Array<FailedBatchItem>]
    #
    BatchDeleteTableRowsOutput = ::Struct.new(
      :workbook_cursor,
      :failed_batch_items,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook where the rows are being updated.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute table_id
    #   <p>The ID of the table where the rows are being updated.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute rows_to_update
    #   <p>
    #               The list of rows to update in the table. Each item in this list needs to contain the row id to update
    #               along with the map of column id to cell values for each column in that row that needs to be updated.
    #               You need to specify at least one row in this list, and for each row, you need to specify at least one
    #               column to update.
    #           </p>
    #           <p>
    #               Note that if one of the row or column ids in the request does not exist in the table, then the request fails
    #               and no updates are made to the table.
    #           </p>
    #
    #   @return [Array<UpdateRowData>]
    #
    # @!attribute client_request_token
    #   <p>
    #               The request token for performing the update action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    #   @return [String]
    #
    BatchUpdateTableRowsInput = ::Struct.new(
      :workbook_id,
      :table_id,
      :rows_to_update,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workbook_cursor
    #   <p>The updated workbook cursor after adding the new rows at the end of the table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_batch_items
    #   <p>
    #               The list of batch items in the request that could not be updated in the table. Each element in this list
    #               contains one item from the request that could not be updated in the table along with the reason why
    #               that item could not be updated.
    #           </p>
    #
    #   @return [Array<FailedBatchItem>]
    #
    BatchUpdateTableRowsOutput = ::Struct.new(
      :workbook_cursor,
      :failed_batch_items,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook where the rows are being upserted.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute table_id
    #   <p>The ID of the table where the rows are being upserted.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute rows_to_upsert
    #   <p>
    #               The list of rows to upsert in the table. Each item in this list needs to have a batch item id to uniquely
    #               identify the element in the request, a filter expression to find the rows to update for that element
    #               and the cell values to set for each column in the upserted rows. You need to specify
    #               at least one item in this list.
    #           </p>
    #           <p>
    #               Note that if one of the filter formulas in the request fails to evaluate because of an error or one of the
    #               column ids in any of the rows does not exist in the table, then the request fails
    #               and no updates are made to the table.
    #           </p>
    #
    #   @return [Array<UpsertRowData>]
    #
    # @!attribute client_request_token
    #   <p>
    #               The request token for performing the update action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    #   @return [String]
    #
    BatchUpsertTableRowsInput = ::Struct.new(
      :workbook_id,
      :table_id,
      :rows_to_upsert,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rows
    #   <p>
    #               A map with the batch item id as the key and the result of the upsert operation as the value. The
    #               result of the upsert operation specifies whether existing rows were updated or a new row was appended, along
    #               with the list of row ids that were affected.
    #           </p>
    #
    #   @return [Hash<String, UpsertRowsResult>]
    #
    # @!attribute workbook_cursor
    #   <p>The updated workbook cursor after updating or appending rows in the table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_batch_items
    #   <p>
    #               The list of batch items in the request that could not be updated or appended in the table. Each element in
    #               this list contains one item from the request that could not be updated in the table along with the reason
    #               why that item could not be updated or appended.
    #           </p>
    #
    #   @return [Array<FailedBatchItem>]
    #
    BatchUpsertTableRowsOutput = ::Struct.new(
      :rows,
      :workbook_cursor,
      :failed_batch_items,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # <p>An object that represents a single cell in a table.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute formula
    #   <p>
    #               The formula contained in the cell. This field is empty if a cell does not have a formula.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the cell. If this field is empty, then the format is either not specified in the
    #           workbook or the format is set to AUTO.</p>
    #
    #   Enum, one of: ["AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"]
    #
    #   @return [String]
    #
    # @!attribute raw_value
    #   <p>
    #               The raw value of the data contained in the cell. The raw value depends on the format of the data in the
    #               cell. However the attribute in the API return value is always a string containing the raw value.
    #           </p>
    #           <p>
    #               Cells with format DATE, DATE_TIME or TIME have the raw value as a floating point
    #               number where the whole number represents the number of days since 1/1/1900 and the fractional part
    #               represents the fraction of the day since midnight. For example, a cell with date 11/3/2020 has the raw value
    #               "44138". A cell with the time 9:00 AM has the raw value "0.375" and a cell with date/time value of
    #               11/3/2020 9:00 AM has the raw value "44138.375". Notice that even though the raw value is a number in all
    #               three cases, it is still represented as a string.
    #           </p>
    #           <p>
    #               Cells with format NUMBER, CURRENCY, PERCENTAGE and ACCOUNTING have the raw value of the data as the number
    #               representing the data being displayed. For example, the number 1.325 with two decimal places in the format
    #               will have it's raw value as "1.325" and formatted value as "1.33". A currency value for
    #               $10 will have the raw value as "10" and formatted value as "$10.00". A value representing 20% with two
    #               decimal places in the format will have its raw value as "0.2" and the formatted value as "20.00%". An
    #               accounting value of -$25 will have "-25" as the raw value and "$  (25.00)" as the formatted value.
    #           </p>
    #           <p>
    #               Cells with format TEXT will have the raw text as the raw value. For example, a cell with text "John Smith"
    #               will have "John Smith" as both the raw value and the formatted value.
    #           </p>
    #           <p>
    #               Cells with format CONTACT will have the name of the contact as a formatted value and the email address of
    #               the contact as the raw value. For example, a contact for John Smith will have "John Smith" as the
    #               formatted value and "john.smith@example.com" as the raw value.
    #           </p>
    #           <p>
    #               Cells with format ROWLINK (aka picklist) will have the first column of the linked row as the formatted value
    #               and the row id of the linked row as the raw value. For example, a cell containing a picklist to a table
    #               that displays task status might have "Completed" as the formatted value and
    #               "row:dfcefaee-5b37-4355-8f28-40c3e4ff5dd4/ca432b2f-b8eb-431d-9fb5-cbe0342f9f03" as the raw value.
    #           </p>
    #           <p>
    #               Cells with format ROWSET (aka multi-select or multi-record picklist) will by default have the first column
    #               of each of the linked rows as the formatted value in the list, and the rowset id of the linked rows as the
    #               raw value. For example, a cell containing a multi-select picklist to a table that contains items might have
    #               "Item A", "Item B" in the formatted value list and "rows:b742c1f4-6cb0-4650-a845-35eb86fcc2bb/
    #               [fdea123b-8f68-474a-aa8a-5ff87aa333af,6daf41f0-a138-4eee-89da-123086d36ecf]" as the raw value.
    #           </p>
    #           <p>
    #               Cells with format ATTACHMENT will have the name of the attachment as the formatted value and the attachment
    #               id as the raw value. For example, a cell containing an attachment named "image.jpeg" will have
    #               "image.jpeg" as the formatted value and "attachment:ca432b2f-b8eb-431d-9fb5-cbe0342f9f03" as the raw value.
    #           </p>
    #           <p>
    #               Cells with format AUTO or cells without any format that are auto-detected as one of the formats above will
    #               contain the raw and formatted values as mentioned above, based on the auto-detected formats. If there is no
    #               auto-detected format, the raw and formatted values will be the same as the data in the cell.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute formatted_value
    #   <p>
    #               The formatted value of the cell. This is the value that you see displayed in the cell in the UI.
    #           </p>
    #           <p>
    #               Note that the formatted value of a cell is always represented as a string irrespective of the data that is
    #               stored in the cell. For example, if a cell contains a date, the formatted value of the cell is the string
    #               representation of the formatted date being shown in the cell in the UI. See details in the rawValue field
    #               below for how cells of different formats will have different raw and formatted values.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute formatted_values
    #   <p>
    #               A list of formatted values of the cell. This field is only returned when the cell is ROWSET format
    #               (aka multi-select or multi-record picklist). Values in the list are always represented as strings.
    #               The formattedValue field will be empty if this field is returned.
    #           </p>
    #
    #   @return [Array<String>]
    #
    Cell = ::Struct.new(
      :formula,
      :format,
      :raw_value,
      :formatted_value,
      :formatted_values,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::Cell [SENSITIVE]>"
      end
    end

    # <p>
    #             CellInput object contains the data needed to create or update cells in a table.
    #         </p>
    #         <note>
    #             <p>
    #                 CellInput object has only a facts field or a fact field, but not both. A 400 bad request will be
    #                 thrown if both fact and facts field are present.
    #             </p>
    #         </note>
    #
    # @!attribute fact
    #   <p>
    #               Fact represents the data that is entered into a cell. This data can be free text or a formula. Formulas need
    #               to start with the equals (=) sign.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute facts
    #   <p>
    #               A list representing the values that are entered into a ROWSET cell. Facts list can have either only values
    #               or rowIDs, and rowIDs should from the same table.
    #           </p>
    #
    #   @return [Array<String>]
    #
    CellInput = ::Struct.new(
      :fact,
      :facts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::CellInput "\
          "fact=\"[SENSITIVE]\", "\
          "facts=#{facts || 'nil'}>"
      end
    end

    # <p>Metadata for column in the table.</p>
    #
    # @!attribute name
    #   <p>The name of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the column.</p>
    #
    #   Enum, one of: ["AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"]
    #
    #   @return [String]
    #
    ColumnMetadata = ::Struct.new(
      :name,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::ColumnMetadata "\
          "name=\"[SENSITIVE]\", "\
          "format=#{format || 'nil'}>"
      end
    end

    # <p>
    #             Data needed to create a single row in a table as part of the BatchCreateTableRows request.
    #         </p>
    #
    # @!attribute batch_item_id
    #   <p>
    #               An external identifier that represents the single row that is being created as part of the
    #               BatchCreateTableRows request. This can be any string that you can use to identify the row in the request.
    #               The BatchCreateTableRows API puts the batch item id in the results to allow you to link data in the
    #               request to data in the results.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute cells_to_create
    #   <p>
    #               A map representing the cells to create in the new row. The key is the column id of the
    #               cell and the value is the CellInput object that represents the data to set in that cell.
    #           </p>
    #
    #   @return [Hash<String, CellInput>]
    #
    CreateRowData = ::Struct.new(
      :batch_item_id,
      :cells_to_create,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data in a particular data cell defined on the screen.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute override_format
    #   <p>
    #               The overrideFormat is optional and is specified only if a particular row of data has a different format for
    #               the data than the default format defined on the screen or the table.
    #           </p>
    #
    #   Enum, one of: ["AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"]
    #
    #   @return [String]
    #
    # @!attribute raw_value
    #   <p>The raw value of the data. e.g. jsmith@example.com</p>
    #
    #   @return [String]
    #
    # @!attribute formatted_value
    #   <p>The formatted value of the data. e.g. John Smith.</p>
    #
    #   @return [String]
    #
    DataItem = ::Struct.new(
      :override_format,
      :raw_value,
      :formatted_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::DataItem [SENSITIVE]>"
      end
    end

    # <p>
    #             An object that contains the options relating to parsing delimited text as part of an import request.
    #         </p>
    #
    # @!attribute delimiter
    #   <p>The delimiter to use for separating columns in a single row of the input.</p>
    #
    #   @return [String]
    #
    # @!attribute has_header_row
    #   <p>Indicates whether the input file has a header row at the top containing the column names.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ignore_empty_rows
    #   <p>A parameter to indicate whether empty rows should be ignored or be included in the import.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_character_encoding
    #   <p>The encoding of the data in the input file.</p>
    #
    #   Enum, one of: ["UTF-8", "US-ASCII", "ISO-8859-1", "UTF-16BE", "UTF-16LE", "UTF-16"]
    #
    #   @return [String]
    #
    DelimitedTextImportOptions = ::Struct.new(
      :delimiter,
      :has_header_row,
      :ignore_empty_rows,
      :data_character_encoding,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.has_header_row ||= false
        self.ignore_empty_rows ||= false
      end
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook into which data was imported.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute table_id
    #   <p>The ID of the table into which data was imported.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID of the job that was returned by the StartTableDataImportJob request.</p>
    #           <p>
    #               If a job with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    DescribeTableDataImportJobInput = ::Struct.new(
      :workbook_id,
      :table_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_status
    #   <p>
    #               The current status of the import job.
    #           </p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>
    #               A message providing more details about the current status of the import job.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute job_metadata
    #   <p>
    #               The metadata about the job that was submitted for import.
    #           </p>
    #
    #   @return [TableDataImportJobMetadata]
    #
    # @!attribute error_code
    #   <p>
    #               If job status is failed, error code to understand reason for the failure.
    #           </p>
    #
    #   Enum, one of: ["ACCESS_DENIED", "INVALID_URL_ERROR", "INVALID_IMPORT_OPTIONS_ERROR", "INVALID_TABLE_ID_ERROR", "INVALID_TABLE_COLUMN_ID_ERROR", "TABLE_NOT_FOUND_ERROR", "FILE_EMPTY_ERROR", "INVALID_FILE_TYPE_ERROR", "FILE_PARSING_ERROR", "FILE_SIZE_LIMIT_ERROR", "FILE_NOT_FOUND_ERROR", "UNKNOWN_ERROR", "RESOURCE_NOT_FOUND_ERROR", "SYSTEM_LIMIT_ERROR"]
    #
    #   @return [String]
    #
    DescribeTableDataImportJobOutput = ::Struct.new(
      :job_status,
      :message,
      :job_metadata,
      :error_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the options relating to the destination of the import request.</p>
    #
    # @!attribute column_map
    #   <p>A map of the column id to the import properties for each column.</p>
    #
    #   @return [Hash<String, SourceDataColumnProperties>]
    #
    DestinationOptions = ::Struct.new(
      :column_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      AccessDenied = "ACCESS_DENIED"

      # No documentation available.
      #
      InvalidUrlError = "INVALID_URL_ERROR"

      # No documentation available.
      #
      InvalidImportOptionsError = "INVALID_IMPORT_OPTIONS_ERROR"

      # No documentation available.
      #
      InvalidTableIdError = "INVALID_TABLE_ID_ERROR"

      # No documentation available.
      #
      InvalidTableColumnIdError = "INVALID_TABLE_COLUMN_ID_ERROR"

      # No documentation available.
      #
      TableNotFoundError = "TABLE_NOT_FOUND_ERROR"

      # No documentation available.
      #
      FileEmptyError = "FILE_EMPTY_ERROR"

      # No documentation available.
      #
      InvalidFileTypeError = "INVALID_FILE_TYPE_ERROR"

      # No documentation available.
      #
      FileParsingError = "FILE_PARSING_ERROR"

      # No documentation available.
      #
      FileSizeLimitError = "FILE_SIZE_LIMIT_ERROR"

      # No documentation available.
      #
      FileNotFoundError = "FILE_NOT_FOUND_ERROR"

      # No documentation available.
      #
      UnknownError = "UNKNOWN_ERROR"

      # No documentation available.
      #
      ResourceNotFoundError = "RESOURCE_NOT_FOUND_ERROR"

      # No documentation available.
      #
      SystemLimitError = "SYSTEM_LIMIT_ERROR"
    end

    # <p>
    #             A single item in a batch that failed to perform the intended action because of an error preventing it from
    #             succeeding.
    #         </p>
    #
    # @!attribute id
    #   <p>
    #               The id of the batch item that failed. This is the batch item id for the BatchCreateTableRows and
    #               BatchUpsertTableRows operations and the row id for the BatchUpdateTableRows and BatchDeleteTableRows
    #               operations.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>
    #               The error message that indicates why the batch item failed.
    #           </p>
    #
    #   @return [String]
    #
    FailedBatchItem = ::Struct.new(
      :id,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             An object that represents a filter formula along with the id of the context row under which the filter
    #             function needs to evaluate.
    #         </p>
    #
    # @!attribute formula
    #   <p>
    #               A formula representing a filter function that returns zero or more matching rows from a table. Valid
    #               formulas in this field return a list of rows from a table. The most common ways of writing a formula to
    #               return a list of rows are to use the FindRow() or Filter() functions. Any other formula that returns zero or
    #               more rows is also acceptable. For example, you can use a formula that points to a cell that contains a
    #               filter function.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute context_row_id
    #   <p>
    #               The optional contextRowId attribute can be used to specify the row id of the context row if the filter
    #               formula contains unqualified references to table columns and needs a context row to evaluate them
    #               successfully.
    #           </p>
    #
    #   @return [String]
    #
    Filter = ::Struct.new(
      :formula,
      :context_row_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::Filter "\
          "formula=\"[SENSITIVE]\", "\
          "context_row_id=#{context_row_id || 'nil'}>"
      end
    end

    # Includes enum constants for Format
    #
    module Format
      # No documentation available.
      #
      Auto = "AUTO"

      # No documentation available.
      #
      Number = "NUMBER"

      # No documentation available.
      #
      Currency = "CURRENCY"

      # No documentation available.
      #
      Date = "DATE"

      # No documentation available.
      #
      Time = "TIME"

      # No documentation available.
      #
      DateTime = "DATE_TIME"

      # No documentation available.
      #
      Percentage = "PERCENTAGE"

      # No documentation available.
      #
      Text = "TEXT"

      # No documentation available.
      #
      Accounting = "ACCOUNTING"

      # No documentation available.
      #
      Contact = "CONTACT"

      # No documentation available.
      #
      Rowlink = "ROWLINK"

      # No documentation available.
      #
      Rowset = "ROWSET"
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook that contains the screen.</p>
    #
    #   @return [String]
    #
    # @!attribute app_id
    #   <p>The ID of the app that contains the screen.</p>
    #
    #   @return [String]
    #
    # @!attribute screen_id
    #   <p>The ID of the screen.</p>
    #
    #   @return [String]
    #
    # @!attribute variables
    #   <p>
    #               Variables are optional and are needed only if the screen requires them to render correctly. Variables are
    #               specified as a map where the key is the name of the variable as defined on the screen. The value is an
    #               object which currently has only one property, rawValue, which holds the value of the variable to be passed
    #               to the screen.
    #           </p>
    #
    #   @return [Hash<String, VariableValue>]
    #
    # @!attribute max_results
    #   <p>
    #               The number of results to be returned on a single page.
    #               Specify a number between 1 and 100. The maximum value is 100.
    #           </p>
    #           <p>
    #               This parameter is optional. If you don't specify this parameter, the default page size is 100.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    #   @return [String]
    #
    GetScreenDataInput = ::Struct.new(
      :workbook_id,
      :app_id,
      :screen_id,
      :variables,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::GetScreenDataInput "\
          "workbook_id=#{workbook_id || 'nil'}, "\
          "app_id=#{app_id || 'nil'}, "\
          "screen_id=#{screen_id || 'nil'}, "\
          "variables=\"[SENSITIVE]\", "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=#{next_token || 'nil'}>"
      end
    end

    # @!attribute results
    #   <p>A map of all the rows on the screen keyed by block name.</p>
    #
    #   @return [Hash<String, ResultSet>]
    #
    # @!attribute workbook_cursor
    #   <p>
    #               Indicates the cursor of the workbook at which the data returned by this workbook is read. Workbook cursor
    #               keeps increasing with every update and the increments are not sequential.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               Provides the pagination token to load the next page if there are more results matching the request. If a
    #               pagination token is not present in the response, it means that all data matching the query has been loaded.
    #           </p>
    #
    #   @return [String]
    #
    GetScreenDataOutput = ::Struct.new(
      :results,
      :workbook_cursor,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # Includes enum constants for ImportDataCharacterEncoding
    #
    module ImportDataCharacterEncoding
      # No documentation available.
      #
      UTF_8 = "UTF-8"

      # No documentation available.
      #
      US_ASCII = "US-ASCII"

      # No documentation available.
      #
      ISO_8859_1 = "ISO-8859-1"

      # No documentation available.
      #
      UTF_16BE = "UTF-16BE"

      # No documentation available.
      #
      UTF_16LE = "UTF-16LE"

      # No documentation available.
      #
      UTF_16 = "UTF-16"
    end

    # <p>An object that has details about the source of the data that was submitted for import.</p>
    #
    # @!attribute data_source_config
    #   <p>The configuration parameters for the data source of the import</p>
    #
    #   @return [ImportDataSourceConfig]
    #
    ImportDataSource = ::Struct.new(
      :data_source_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             An object that contains the configuration parameters for the data source of an import request.
    #         </p>
    #
    # @!attribute data_source_url
    #   <p>
    #               The URL from which source data will be downloaded for the import request.
    #           </p>
    #
    #   @return [String]
    #
    ImportDataSourceConfig = ::Struct.new(
      :data_source_url,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::ImportDataSourceConfig "\
          "data_source_url=\"[SENSITIVE]\">"
      end
    end

    # <p>An object that contains the attributes of the submitter of the import job.</p>
    #
    # @!attribute email
    #   <p>The email id of the submitter of the import job, if available.</p>
    #
    #   @return [String]
    #
    # @!attribute user_arn
    #   <p>The AWS user ARN of the submitter of the import job, if available.</p>
    #
    #   @return [String]
    #
    ImportJobSubmitter = ::Struct.new(
      :email,
      :user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::ImportJobSubmitter "\
          "email=\"[SENSITIVE]\", "\
          "user_arn=#{user_arn || 'nil'}>"
      end
    end

    # <p>An object that contains the options specified by the sumitter of the import request.</p>
    #
    # @!attribute destination_options
    #   <p>Options relating to the destination of the import request.</p>
    #
    #   @return [DestinationOptions]
    #
    # @!attribute delimited_text_options
    #   <p>Options relating to parsing delimited text. Required if dataFormat is DELIMITED_TEXT.</p>
    #
    #   @return [DelimitedTextImportOptions]
    #
    ImportOptions = ::Struct.new(
      :destination_options,
      :delimited_text_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportSourceDataFormat
    #
    module ImportSourceDataFormat
      # No documentation available.
      #
      DelimitedText = "DELIMITED_TEXT"
    end

    # <p>There were unexpected errors from the server.</p>
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

    # @!attribute workbook_id
    #   <p>The ID of the workbook that contains the screen automation.</p>
    #
    #   @return [String]
    #
    # @!attribute app_id
    #   <p>The ID of the app that contains the screen automation.</p>
    #
    #   @return [String]
    #
    # @!attribute screen_id
    #   <p>The ID of the screen that contains the screen automation.</p>
    #
    #   @return [String]
    #
    # @!attribute screen_automation_id
    #   <p>The ID of the automation action to be performed.</p>
    #
    #   @return [String]
    #
    # @!attribute variables
    #   <p>
    #               Variables are specified as a map where the key is the name of the variable as defined on the screen. The value is an
    #               object which currently has only one property, rawValue, which holds the value of the variable to be passed
    #               to the screen. Any variables defined in a screen are required to be passed in the call.
    #           </p>
    #
    #   @return [Hash<String, VariableValue>]
    #
    # @!attribute row_id
    #   <p>
    #               The row ID for the automation if the automation is defined inside a block with source or list.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>
    #               The request token for performing the automation action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will return the
    #               response of the previous call rather than performing the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    #   @return [String]
    #
    InvokeScreenAutomationInput = ::Struct.new(
      :workbook_id,
      :app_id,
      :screen_id,
      :screen_automation_id,
      :variables,
      :row_id,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::InvokeScreenAutomationInput "\
          "workbook_id=#{workbook_id || 'nil'}, "\
          "app_id=#{app_id || 'nil'}, "\
          "screen_id=#{screen_id || 'nil'}, "\
          "screen_automation_id=#{screen_automation_id || 'nil'}, "\
          "variables=\"[SENSITIVE]\", "\
          "row_id=#{row_id || 'nil'}, "\
          "client_request_token=#{client_request_token || 'nil'}>"
      end
    end

    # @!attribute workbook_cursor
    #   <p>The updated workbook cursor after performing the automation action.</p>
    #
    #   @return [Integer]
    #
    InvokeScreenAutomationOutput = ::Struct.new(
      :workbook_cursor,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook that contains the table whose columns are being retrieved.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute table_id
    #   <p>The ID of the table whose columns are being retrieved.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    #   @return [String]
    #
    ListTableColumnsInput = ::Struct.new(
      :workbook_id,
      :table_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_columns
    #   <p>
    #               The list of columns in the table.
    #           </p>
    #
    #   @return [Array<TableColumn>]
    #
    # @!attribute next_token
    #   <p>
    #               Provides the pagination token to load the next page if there are more results matching the request. If a
    #               pagination token is not present in the response, it means that all data matching the request has been
    #               loaded.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute workbook_cursor
    #   <p>
    #               Indicates the cursor of the workbook at which the data returned by this request is read. Workbook cursor
    #               keeps increasing with every update and the increments are not sequential.
    #           </p>
    #
    #   @return [Integer]
    #
    ListTableColumnsOutput = ::Struct.new(
      :table_columns,
      :next_token,
      :workbook_cursor,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook that contains the table whose rows are being retrieved.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute table_id
    #   <p>The ID of the table whose rows are being retrieved.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute row_ids
    #   <p>
    #               This parameter is optional. If one or more row ids are specified in this list, then only the specified
    #               row ids are returned in the result. If no row ids are specified here, then all the rows in the table are
    #               returned.
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of rows to return in each page of the results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    #   @return [String]
    #
    ListTableRowsInput = ::Struct.new(
      :workbook_id,
      :table_id,
      :row_ids,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute column_ids
    #   <p>
    #               The list of columns in the table whose row data is returned in the result.
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rows
    #   <p>
    #               The list of rows in the table. Note that this result is paginated, so this list contains a maximum of 100
    #               rows.
    #           </p>
    #
    #   @return [Array<TableRow>]
    #
    # @!attribute row_ids_not_found
    #   <p>
    #               The list of row ids included in the request that were not found in the table.
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>
    #               Provides the pagination token to load the next page if there are more results matching the request. If a
    #               pagination token is not present in the response, it means that all data matching the request has been
    #               loaded.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute workbook_cursor
    #   <p>
    #               Indicates the cursor of the workbook at which the data returned by this request is read. Workbook cursor
    #               keeps increasing with every update and the increments are not sequential.
    #           </p>
    #
    #   @return [Integer]
    #
    ListTableRowsOutput = ::Struct.new(
      :column_ids,
      :rows,
      :row_ids_not_found,
      :next_token,
      :workbook_cursor,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook whose tables are being retrieved.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of tables to return in each page of the results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    #   @return [String]
    #
    ListTablesInput = ::Struct.new(
      :workbook_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tables
    #   <p>
    #               The list of tables in the workbook.
    #           </p>
    #
    #   @return [Array<Table>]
    #
    # @!attribute next_token
    #   <p>
    #               Provides the pagination token to load the next page if there are more results matching the request. If a
    #               pagination token is not present in the response, it means that all data matching the request has been
    #               loaded.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute workbook_cursor
    #   <p>
    #               Indicates the cursor of the workbook at which the data returned by this request is read. Workbook cursor
    #               keeps increasing with every update and the increments are not sequential.
    #           </p>
    #
    #   @return [Integer]
    #
    ListTablesOutput = ::Struct.new(
      :tables,
      :next_token,
      :workbook_cursor,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
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
    #   <p>The resource's tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook whose table rows are being queried.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute table_id
    #   <p>The ID of the table whose rows are being queried.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute filter_formula
    #   <p>An object that represents a filter formula along with the id of the context row under which the filter
    #               function needs to evaluate.</p>
    #
    #   @return [Filter]
    #
    # @!attribute max_results
    #   <p>The maximum number of rows to return in each page of the results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    #   @return [String]
    #
    QueryTableRowsInput = ::Struct.new(
      :workbook_id,
      :table_id,
      :filter_formula,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute column_ids
    #   <p>
    #               The list of columns in the table whose row data is returned in the result.
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rows
    #   <p>
    #               The list of rows in the table that match the query filter.
    #           </p>
    #
    #   @return [Array<TableRow>]
    #
    # @!attribute next_token
    #   <p>
    #               Provides the pagination token to load the next page if there are more results matching the request. If a
    #               pagination token is not present in the response, it means that all data matching the request has been
    #               loaded.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute workbook_cursor
    #   <p>
    #               Indicates the cursor of the workbook at which the data returned by this request is read. Workbook cursor
    #               keeps increasing with every update and the increments are not sequential.
    #           </p>
    #
    #   @return [Integer]
    #
    QueryTableRowsOutput = ::Struct.new(
      :column_ids,
      :rows,
      :next_token,
      :workbook_cursor,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.workbook_cursor ||= 0
      end
    end

    # <p>The request timed out.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestTimeoutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A Workbook, Table, App, Screen or Screen Automation was not found with the given ID.</p>
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

    # <p>A single row in the ResultSet.</p>
    #
    # @!attribute row_id
    #   <p>The ID for a particular row.</p>
    #
    #   @return [String]
    #
    # @!attribute data_items
    #   <p>List of all the data cells in a row.</p>
    #
    #   @return [Array<DataItem>]
    #
    ResultRow = ::Struct.new(
      :row_id,
      :data_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             ResultSet contains the results of the request for a single block or list defined on the screen.
    #         </p>
    #
    # @!attribute headers
    #   <p>
    #               List of headers for all the data cells in the block. The header identifies the name and default format of
    #               the data cell. Data cells appear in the same order in all rows as defined in the header. The names and
    #               formats are not repeated in the rows. If a particular row does not have a value for a data cell, a blank
    #               value is used.
    #           </p>
    #           <p>
    #               For example, a task list that displays the task name, due date and assigned person might have headers
    #               [ { "name": "Task Name"}, {"name": "Due Date", "format": "DATE"}, {"name": "Assigned", "format": "CONTACT"} ].
    #               Every row in the result will have the task name as the first item, due date as the second item and assigned
    #               person as the third item. If a particular task does not have a due date, that row will still have a blank
    #               value in the second element and the assigned person will still be in the third element.
    #           </p>
    #
    #   @return [Array<ColumnMetadata>]
    #
    # @!attribute rows
    #   <p>
    #               List of rows returned by the request. Each row has a row Id and a list of data cells in that row. The data
    #               cells will be present in the same order as they are defined in the header.
    #           </p>
    #
    #   @return [Array<ResultRow>]
    #
    ResultSet = ::Struct.new(
      :headers,
      :rows,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The request caused service quota to be breached.
    #         </p>
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

    # <p>Remote service is unreachable.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the properties for importing data to a specific column in a table.</p>
    #
    # @!attribute column_index
    #   <p>The index of the column in the input file.</p>
    #
    #   @return [Integer]
    #
    SourceDataColumnProperties = ::Struct.new(
      :column_index,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.column_index ||= 0
      end
    end

    # @!attribute workbook_id
    #   <p>The ID of the workbook where the rows are being imported.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>
    #               The source of the data that is being imported. The size of source must be no larger than 100 MB.
    #               Source must have no more than 100,000 cells and no more than 1,000 rows.
    #           </p>
    #
    #   @return [ImportDataSource]
    #
    # @!attribute data_format
    #   <p>
    #               The format of the data that is being imported. Currently the only option supported is "DELIMITED_TEXT".
    #           </p>
    #
    #   Enum, one of: ["DELIMITED_TEXT"]
    #
    #   @return [String]
    #
    # @!attribute destination_table_id
    #   <p>The ID of the table where the rows are being imported.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute import_options
    #   <p>
    #               The options for customizing this import request.
    #           </p>
    #
    #   @return [ImportOptions]
    #
    # @!attribute client_request_token
    #   <p>
    #               The request token for performing the update action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    #   @return [String]
    #
    StartTableDataImportJobInput = ::Struct.new(
      :workbook_id,
      :data_source,
      :data_format,
      :destination_table_id,
      :import_options,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>
    #               The id that is assigned to this import job. Future requests to find out the status of this import job
    #               need to send this id in the appropriate parameter in the request.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>
    #               The status of the import job immediately after submitting the request.
    #           </p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    StartTableDataImportJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the properties of a table in a workbook.</p>
    #
    # @!attribute table_id
    #   <p>The id of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    Table = ::Struct.new(
      :table_id,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains attributes about a single column in a table</p>
    #
    # @!attribute table_column_id
    #   <p>The id of the column in the table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_column_name
    #   <p>The name of the column in the table.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #               The column level format that is applied in the table. An empty value in this field means that the
    #               column format is the default value 'AUTO'.
    #           </p>
    #
    #   Enum, one of: ["AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"]
    #
    #   @return [String]
    #
    TableColumn = ::Struct.new(
      :table_column_id,
      :table_column_name,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata associated with the table data import job that was submitted.</p>
    #
    # @!attribute submitter
    #   <p>Details about the submitter of the import request.</p>
    #
    #   @return [ImportJobSubmitter]
    #
    # @!attribute submit_time
    #   <p>The timestamp when the job was submitted for import.</p>
    #
    #   @return [Time]
    #
    # @!attribute import_options
    #   <p>The options that was specified at the time of submitting the import request.</p>
    #
    #   @return [ImportOptions]
    #
    # @!attribute data_source
    #   <p>The source of the data that was submitted for import.</p>
    #
    #   @return [ImportDataSource]
    #
    TableDataImportJobMetadata = ::Struct.new(
      :submitter,
      :submit_time,
      :import_options,
      :data_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TableDataImportJobStatus
    #
    module TableDataImportJobStatus
      # No documentation available.
      #
      Submitted = "SUBMITTED"

      # No documentation available.
      #
      InProgress = "IN_PROGRESS"

      # No documentation available.
      #
      Completed = "COMPLETED"

      # No documentation available.
      #
      Failed = "FAILED"
    end

    # <p>An object that contains attributes about a single row in a table</p>
    #
    # @!attribute row_id
    #   <p>The id of the row in the table.</p>
    #
    #   @return [String]
    #
    # @!attribute cells
    #   <p>A list of cells in the table row. The cells appear in the same order as the columns of the table.
    #           </p>
    #
    #   @return [Array<Cell>]
    #
    TableRow = ::Struct.new(
      :row_id,
      :cells,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to apply to the resource.</p>
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

    # <p>Tps(transactions per second) rate reached.</p>
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
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
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

    # <p>
    #             Data needed to create a single row in a table as part of the BatchCreateTableRows request.
    #         </p>
    #
    # @!attribute row_id
    #   <p>
    #               The id of the row that needs to be updated.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute cells_to_update
    #   <p>
    #               A map representing the cells to update in the given row. The key is the column id of the
    #               cell and the value is the CellInput object that represents the data to set in that cell.
    #           </p>
    #
    #   @return [Hash<String, CellInput>]
    #
    UpdateRowData = ::Struct.new(
      :row_id,
      :cells_to_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpsertAction
    #
    module UpsertAction
      # No documentation available.
      #
      Updated = "UPDATED"

      # No documentation available.
      #
      Appended = "APPENDED"
    end

    # <p>
    #             Data needed to upsert rows in a table as part of a single item in the BatchUpsertTableRows request.
    #         </p>
    #
    # @!attribute batch_item_id
    #   <p>
    #               An external identifier that represents a single item in the request that is being upserted as part of the
    #               BatchUpsertTableRows request. This can be any string that you can use to identify the item in the request.
    #               The BatchUpsertTableRows API puts the batch item id in the results to allow you to link data in the
    #               request to data in the results.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>
    #               The filter formula to use to find existing matching rows to update. The formula needs to return zero or more
    #               rows. If the formula returns 0 rows, then a new row will be appended in the target table. If the formula
    #               returns one or more rows, then the returned rows will be updated.
    #           </p>
    #           <p>
    #               Note that the filter formula needs to return rows from the target table for the upsert operation to succeed.
    #               If the filter formula has a syntax error or it doesn't evaluate to zero or more rows in the target table
    #               for any one item in the input list, then the entire BatchUpsertTableRows request fails and no updates are
    #               made to the table.
    #           </p>
    #
    #   @return [Filter]
    #
    # @!attribute cells_to_update
    #   <p>
    #               A map representing the cells to update for the matching rows or an appended row. The key is the column id
    #               of the cell and the value is the CellInput object that represents the data to set in that cell.
    #           </p>
    #
    #   @return [Hash<String, CellInput>]
    #
    UpsertRowData = ::Struct.new(
      :batch_item_id,
      :filter,
      :cells_to_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             An object that represents the result of a single upsert row request.
    #         </p>
    #
    # @!attribute row_ids
    #   <p>
    #               The list of row ids that were changed as part of an upsert row operation. If the upsert resulted in an
    #               update, this list could potentially contain multiple rows that matched the filter and hence got updated.
    #               If the upsert resulted in an append, this list would only have the single row that was appended.
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute upsert_action
    #   <p>
    #               The result of the upsert action.
    #           </p>
    #
    #   Enum, one of: ["UPDATED", "APPENDED"]
    #
    #   @return [String]
    #
    UpsertRowsResult = ::Struct.new(
      :row_ids,
      :upsert_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request is invalid. The message in the response contains details on why the request is invalid.
    #         </p>
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

    # <p>The input variables to the app to be used by the InvokeScreenAutomation action request.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute raw_value
    #   <p>Raw value of the variable.</p>
    #
    #   @return [String]
    #
    VariableValue = ::Struct.new(
      :raw_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Honeycode::Types::VariableValue [SENSITIVE]>"
      end
    end

  end
end
