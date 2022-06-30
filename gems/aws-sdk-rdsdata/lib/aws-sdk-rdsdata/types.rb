# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RDSData
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

    # <p>Contains an array.</p>
    #
    class ArrayValue < Hearth::Union
      # <p>An array of Boolean values.</p>
      #
      class BooleanValues < ArrayValue
        def to_h
          { boolean_values: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::BooleanValues #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An array of integers.</p>
      #
      class LongValues < ArrayValue
        def to_h
          { long_values: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::LongValues #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An array of floating-point numbers.</p>
      #
      class DoubleValues < ArrayValue
        def to_h
          { double_values: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::DoubleValues #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An array of strings.</p>
      #
      class StringValues < ArrayValue
        def to_h
          { string_values: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::StringValues #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An array of arrays.</p>
      #
      class ArrayValues < ArrayValue
        def to_h
          { array_values: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::ArrayValues #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ArrayValue
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>There is an error in the call or in a SQL statement.</p>
    #
    # @!attribute message
    #   <p>The error message returned by this <code>BadRequestException</code> error.</p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request parameters represent the input of a SQL statement over an array of
    #             data.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute sql
    #   <p>The SQL statement to run.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>The name of the database schema.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_sets
    #   <p>The parameter set for the batch operation.</p>
    #           <p>The SQL statement is executed as many times as the number of parameter sets provided.
    #             To execute a SQL statement with no parameters, use one of the following options:</p>
    #           <ul>
    #               <li>
    #                   <p>Specify one or more empty parameter sets.</p>
    #               </li>
    #               <li>
    #                   <p>Use the <code>ExecuteStatement</code> operation instead of the <code>BatchExecuteStatement</code> operation.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Array parameters are not supported.</p>
    #           </note>
    #
    #   @return [Array<Array<SqlParameter>>]
    #
    # @!attribute transaction_id
    #   <p>The identifier of a transaction that was started by using the
    #                   <code>BeginTransaction</code> operation. Specify the transaction ID of the
    #               transaction that you want to include the SQL statement in.</p>
    #           <p>If the SQL statement is not part of a transaction, don't set this
    #               parameter.</p>
    #
    #   @return [String]
    #
    BatchExecuteStatementInput = ::Struct.new(
      :resource_arn,
      :secret_arn,
      :sql,
      :database,
      :schema,
      :parameter_sets,
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response elements represent the output of a SQL statement over an array of
    #             data.</p>
    #
    # @!attribute update_results
    #   <p>The execution results of each batch entry.</p>
    #
    #   @return [Array<UpdateResult>]
    #
    BatchExecuteStatementOutput = ::Struct.new(
      :update_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request parameters represent the input of a request to start a SQL
    #             transaction.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>The name of the database schema.</p>
    #
    #   @return [String]
    #
    BeginTransactionInput = ::Struct.new(
      :resource_arn,
      :secret_arn,
      :database,
      :schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response elements represent the output of a request to start a SQL
    #             transaction.</p>
    #
    # @!attribute transaction_id
    #   <p>The transaction ID of the transaction started by the call.</p>
    #
    #   @return [String]
    #
    BeginTransactionOutput = ::Struct.new(
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the metadata for a column.</p>
    #
    # @!attribute name
    #   <p>The name of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type_name
    #   <p>The database-specific data type of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute label
    #   <p>The label for the column.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema that owns the table that includes the column.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table that includes the column.</p>
    #
    #   @return [String]
    #
    # @!attribute is_auto_increment
    #   <p>A value that indicates whether the column increments automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_signed
    #   <p>A value that indicates whether an integer column is signed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_currency
    #   <p>A value that indicates whether the column contains currency values.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_case_sensitive
    #   <p>A value that indicates whether the column is case-sensitive.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute nullable
    #   <p>A value that indicates whether the column is nullable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute precision
    #   <p>The precision value of a decimal number column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scale
    #   <p>The scale value of a decimal number column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute array_base_column_type
    #   <p>The type of the column.</p>
    #
    #   @return [Integer]
    #
    ColumnMetadata = ::Struct.new(
      :name,
      :type,
      :type_name,
      :label,
      :schema_name,
      :table_name,
      :is_auto_increment,
      :is_signed,
      :is_currency,
      :is_case_sensitive,
      :nullable,
      :precision,
      :scale,
      :array_base_column_type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.type ||= 0
        self.is_auto_increment ||= false
        self.is_signed ||= false
        self.is_currency ||= false
        self.is_case_sensitive ||= false
        self.nullable ||= 0
        self.precision ||= 0
        self.scale ||= 0
        self.array_base_column_type ||= 0
      end

    end

    # <p>The request parameters represent the input of a commit transaction request.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute transaction_id
    #   <p>The identifier of the transaction to end and commit.</p>
    #
    #   @return [String]
    #
    CommitTransactionInput = ::Struct.new(
      :resource_arn,
      :secret_arn,
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response elements represent the output of a commit transaction request.</p>
    #
    # @!attribute transaction_status
    #   <p>The status of the commit operation.</p>
    #
    #   @return [String]
    #
    CommitTransactionOutput = ::Struct.new(
      :transaction_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DecimalReturnType
    #
    module DecimalReturnType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      DOUBLE_OR_LONG = "DOUBLE_OR_LONG"
    end

    # <p>The request parameters represent the input of a request to run one or more SQL
    #             statements.</p>
    #
    # @!attribute db_cluster_or_instance_arn
    #   <p>The ARN of the Aurora Serverless DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_secret_store_arn
    #   <p>The Amazon Resource Name (ARN) of the secret that enables access to the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute sql_statements
    #   <p>One or more SQL statements to run on the DB cluster.</p>
    #           <p>You can separate SQL statements from each other with a semicolon (;). Any valid SQL
    #               statement is permitted, including data definition, data manipulation, and commit
    #               statements. </p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>The name of the database schema.</p>
    #
    #   @return [String]
    #
    ExecuteSqlInput = ::Struct.new(
      :db_cluster_or_instance_arn,
      :aws_secret_store_arn,
      :sql_statements,
      :database,
      :schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response elements represent the output of a request to run one or more SQL
    #             statements.</p>
    #
    # @!attribute sql_statement_results
    #   <p>The results of the SQL statement or statements.</p>
    #
    #   @return [Array<SqlStatementResult>]
    #
    ExecuteSqlOutput = ::Struct.new(
      :sql_statement_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request parameters represent the input of a request to run a SQL statement against
    #             a database.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute sql
    #   <p>The SQL statement to run.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>The name of the database schema.</p>
    #           <note>
    #               <p>Currently, the <code>schema</code> parameter isn't supported.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the SQL statement.</p>
    #           <note>
    #               <p>Array parameters are not supported.</p>
    #           </note>
    #
    #   @return [Array<SqlParameter>]
    #
    # @!attribute transaction_id
    #   <p>The identifier of a transaction that was started by using the
    #                   <code>BeginTransaction</code> operation. Specify the transaction ID of the
    #               transaction that you want to include the SQL statement in.</p>
    #           <p>If the SQL statement is not part of a transaction, don't set this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute include_result_metadata
    #   <p>A value that indicates whether to include metadata in the results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute continue_after_timeout
    #   <p>A value that indicates whether to continue running the statement after
    #               the call times out. By default, the statement stops running when the call
    #               times out.</p>
    #           <important>
    #               <p>For DDL statements, we recommend continuing to run the statement after
    #                  the call times out. When a DDL statement terminates before it is finished
    #                  running, it can result in errors and possibly corrupted data structures.</p>
    #           </important>
    #
    #   @return [Boolean]
    #
    # @!attribute result_set_options
    #   <p>Options that control how the result set is returned.</p>
    #
    #   @return [ResultSetOptions]
    #
    # @!attribute format_records_as
    #   <p>A value that indicates whether to format the result set as a single JSON string.
    #           This parameter only applies to <code>SELECT</code> statements and is ignored for
    #           other types of statements. Allowed values are <code>NONE</code> and <code>JSON</code>.
    #           The default value is <code>NONE</code>. The result is returned in the <code>formattedRecords</code> field.</p>
    #           <p>For usage information about the JSON format for result sets, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API</a>
    #             in the <i>Amazon Aurora User Guide</i>.</p>
    #
    #   Enum, one of: ["NONE", "JSON"]
    #
    #   @return [String]
    #
    ExecuteStatementInput = ::Struct.new(
      :resource_arn,
      :secret_arn,
      :sql,
      :database,
      :schema,
      :parameters,
      :transaction_id,
      :include_result_metadata,
      :continue_after_timeout,
      :result_set_options,
      :format_records_as,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_result_metadata ||= false
        self.continue_after_timeout ||= false
      end

    end

    # <p>The response elements represent the output of a request to run a SQL statement against
    #             a database.</p>
    #
    # @!attribute records
    #   <p>The records returned by the SQL statement. This field is blank if the
    #           <code>formatRecordsAs</code> parameter is set to <code>JSON</code>.</p>
    #
    #   @return [Array<Array<Field>>]
    #
    # @!attribute column_metadata
    #   <p>Metadata for the columns included in the results. This field is blank if the
    #           <code>formatRecordsAs</code> parameter is set to <code>JSON</code>.</p>
    #
    #   @return [Array<ColumnMetadata>]
    #
    # @!attribute number_of_records_updated
    #   <p>The number of records updated by the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute generated_fields
    #   <p>Values for fields generated during a DML request.</p>
    #
    #           <note>
    #               <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL.
    #                   To get the values of generated fields, use the <code>RETURNING</code> clause. For
    #                   more information, see <a href="https://www.postgresql.org/docs/10/dml-returning.html">Returning Data From
    #                       Modified Rows</a> in the PostgreSQL documentation.</p>
    #           </note>
    #
    #   @return [Array<Field>]
    #
    # @!attribute formatted_records
    #   <p>A string value that represents the result set of a <code>SELECT</code> statement
    #           in JSON format. This value is only present when the <code>formatRecordsAs</code>
    #           parameter is set to <code>JSON</code>.</p>
    #           <p>The size limit for this field is currently 10 MB. If the JSON-formatted string representing the
    #             result set requires more than 10 MB, the call returns an error.</p>
    #
    #   @return [String]
    #
    ExecuteStatementOutput = ::Struct.new(
      :records,
      :column_metadata,
      :number_of_records_updated,
      :generated_fields,
      :formatted_records,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_records_updated ||= 0
      end

    end

    # <p>Contains a value.</p>
    #
    class Field < Hearth::Union
      # <p>A NULL value.</p>
      #
      class IsNull < Field
        def to_h
          { is_null: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::IsNull #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value of Boolean data type.</p>
      #
      class BooleanValue < Field
        def to_h
          { boolean_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::BooleanValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value of long data type.</p>
      #
      class LongValue < Field
        def to_h
          { long_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::LongValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value of double data type.</p>
      #
      class DoubleValue < Field
        def to_h
          { double_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::DoubleValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value of string data type.</p>
      #
      class StringValue < Field
        def to_h
          { string_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::StringValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value of BLOB data type.</p>
      #
      class BlobValue < Field
        def to_h
          { blob_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::BlobValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An array of values.</p>
      #
      class ArrayValue < Field
        def to_h
          { array_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::ArrayValue #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < Field
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>There are insufficient privileges to make the call.</p>
    #
    # @!attribute message
    #   <p>The error message returned by this <code>ForbiddenException</code> error.</p>
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal error occurred.</p>
    #
    InternalServerErrorException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LongReturnType
    #
    module LongReturnType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      LONG = "LONG"
    end

    # <p>The <code>resourceArn</code>, <code>secretArn</code>, or <code>transactionId</code> value can't be found.</p>
    #
    # @!attribute message
    #   <p>The error message returned by this <code>NotFoundException</code> error.</p>
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A record returned by a call.</p>
    #         <important>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #         </important>
    #
    # @!attribute values
    #   <p>The values returned in the record.</p>
    #
    #   @return [Array<Value>]
    #
    Record = ::Struct.new(
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecordsFormatType
    #
    module RecordsFormatType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # <p>The result set returned by a SQL statement.</p>
    #         <important>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #         </important>
    #
    # @!attribute result_set_metadata
    #   <p>The result-set metadata in the result set.</p>
    #
    #   @return [ResultSetMetadata]
    #
    # @!attribute records
    #   <p>The records in the result set.</p>
    #
    #   @return [Array<Record>]
    #
    ResultFrame = ::Struct.new(
      :result_set_metadata,
      :records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata of the result set returned by a SQL statement.</p>
    #
    # @!attribute column_count
    #   <p>The number of columns in the result set.</p>
    #
    #   @return [Integer]
    #
    # @!attribute column_metadata
    #   <p>The metadata of the columns in the result set.</p>
    #
    #   @return [Array<ColumnMetadata>]
    #
    ResultSetMetadata = ::Struct.new(
      :column_count,
      :column_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.column_count ||= 0
      end

    end

    # <p>Options that control how the result set is returned.</p>
    #
    # @!attribute decimal_return_type
    #   <p>A value that indicates how a field of <code>DECIMAL</code> type is represented
    #               in the response. The value of <code>STRING</code>, the default, specifies that
    #               it is converted to a String value. The value of <code>DOUBLE_OR_LONG</code>
    #               specifies that it is converted to a Long value if its scale is 0, or to a Double
    #               value otherwise.</p>
    #           <important>
    #               <p>Conversion to Double or Long can result in roundoff errors due to precision loss.
    #                   We recommend converting to String, especially when working with currency values.</p>
    #           </important>
    #
    #   Enum, one of: ["STRING", "DOUBLE_OR_LONG"]
    #
    #   @return [String]
    #
    # @!attribute long_return_type
    #   <p>A value that indicates how a field of <code>LONG</code> type is represented.
    #           Allowed values are <code>LONG</code> and <code>STRING</code>. The default
    #           is <code>LONG</code>. Specify <code>STRING</code> if the length or
    #           precision of numeric values might cause truncation or rounding errors.
    #           </p>
    #
    #   Enum, one of: ["STRING", "LONG"]
    #
    #   @return [String]
    #
    ResultSetOptions = ::Struct.new(
      :decimal_return_type,
      :long_return_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request parameters represent the input of a request to perform a rollback of a
    #             transaction.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute transaction_id
    #   <p>The identifier of the transaction to roll back.</p>
    #
    #   @return [String]
    #
    RollbackTransactionInput = ::Struct.new(
      :resource_arn,
      :secret_arn,
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response elements represent the output of a request to perform a rollback of a
    #             transaction.</p>
    #
    # @!attribute transaction_status
    #   <p>The status of the rollback operation.</p>
    #
    #   @return [String]
    #
    RollbackTransactionOutput = ::Struct.new(
      :transaction_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service specified by the <code>resourceArn</code> parameter is not
    #             available.</p>
    #
    ServiceUnavailableError = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A parameter used in a SQL statement.</p>
    #
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the parameter.</p>
    #
    #   @return [Field]
    #
    # @!attribute type_hint
    #   <p>A hint that specifies the correct object type for data type mapping. Possible values
    #               are as follows:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>DATE</code> - The corresponding <code>String</code> parameter value is sent as an object
    #                 of <code>DATE</code> type to the database. The accepted format is <code>YYYY-MM-DD</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DECIMAL</code> - The corresponding <code>String</code> parameter value is sent as an object
    #                       of <code>DECIMAL</code> type to the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JSON</code> - The corresponding <code>String</code> parameter value is sent as an
    #              object of <code>JSON</code> type to the database.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TIME</code> - The corresponding <code>String</code> parameter value is sent as an object
    #                       of <code>TIME</code> type to the database. The accepted format is <code>HH:MM:SS[.FFF]</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMESTAMP</code> - The corresponding <code>String</code> parameter value is sent as an object
    #                 of <code>TIMESTAMP</code> type to the database. The accepted format is <code>YYYY-MM-DD HH:MM:SS[.FFF]</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UUID</code> - The corresponding <code>String</code> parameter value is sent as an object of
    #                <code>UUID</code> type to the database.
    #             </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["JSON", "UUID", "TIMESTAMP", "DATE", "TIME", "DECIMAL"]
    #
    #   @return [String]
    #
    SqlParameter = ::Struct.new(
      :name,
      :value,
      :type_hint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a SQL statement.</p>
    #
    #         <important>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #         </important>
    #
    # @!attribute result_frame
    #   <p>The result set of the SQL statement.</p>
    #
    #   @return [ResultFrame]
    #
    # @!attribute number_of_records_updated
    #   <p>The number of records updated by a SQL statement.</p>
    #
    #   @return [Integer]
    #
    SqlStatementResult = ::Struct.new(
      :result_frame,
      :number_of_records_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_records_updated ||= 0
      end

    end

    # <p>The execution of the SQL statement timed out.</p>
    #
    # @!attribute message
    #   <p>The error message returned by this <code>StatementTimeoutException</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute db_connection_id
    #   <p>The database connection ID that executed the SQL statement.</p>
    #
    #   @return [Integer]
    #
    StatementTimeoutException = ::Struct.new(
      :message,
      :db_connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.db_connection_id ||= 0
      end

    end

    # <p>A structure value returned by a call.</p>
    #         <important>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #         </important>
    #
    # @!attribute attributes
    #   <p>The attributes returned in the record.</p>
    #
    #   @return [Array<Value>]
    #
    StructValue = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TypeHint
    #
    module TypeHint
      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      UUID = "UUID"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"

      # No documentation available.
      #
      DATE = "DATE"

      # No documentation available.
      #
      TIME = "TIME"

      # No documentation available.
      #
      DECIMAL = "DECIMAL"
    end

    # <p>The response elements represent the results of an update.</p>
    #
    # @!attribute generated_fields
    #   <p>Values for fields generated during the request.</p>
    #
    #   @return [Array<Field>]
    #
    UpdateResult = ::Struct.new(
      :generated_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the value of a column.</p>
    #
    #         <important>
    #             <p>This data structure is only used with the deprecated <code>ExecuteSql</code> operation.
    #               Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation instead.</p>
    #         </important>
    #
    class Value < Hearth::Union
      # <p>A NULL value.</p>
      #
      class IsNull < Value
        def to_h
          { is_null: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::IsNull #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value for a column of BIT data type.</p>
      #
      class BitValue < Value
        def to_h
          { bit_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::BitValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value for a column of big integer data type.</p>
      #
      class BigIntValue < Value
        def to_h
          { big_int_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::BigIntValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value for a column of integer data type.</p>
      #
      class IntValue < Value
        def to_h
          { int_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::IntValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value for a column of double data type.</p>
      #
      class DoubleValue < Value
        def to_h
          { double_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::DoubleValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value for a column of real data type.</p>
      #
      class RealValue < Value
        def to_h
          { real_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::RealValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value for a column of string data type.</p>
      #
      class StringValue < Value
        def to_h
          { string_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::StringValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value for a column of BLOB data type.</p>
      #
      class BlobValue < Value
        def to_h
          { blob_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::BlobValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An array of column values.</p>
      #
      class ArrayValues < Value
        def to_h
          { array_values: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::ArrayValues #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A value for a column of STRUCT data type.</p>
      #
      class StructValue < Value
        def to_h
          { struct_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::StructValue #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < Value
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::RDSData::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

  end
end
