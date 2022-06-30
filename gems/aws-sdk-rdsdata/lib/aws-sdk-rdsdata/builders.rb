# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::RDSData
  module Builders

    # Operation Builder for BatchExecuteStatement
    class BatchExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/BatchExecute')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['secretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['sql'] = input[:sql] unless input[:sql].nil?
        data['database'] = input[:database] unless input[:database].nil?
        data['schema'] = input[:schema] unless input[:schema].nil?
        data['parameterSets'] = Builders::SqlParameterSets.build(input[:parameter_sets]) unless input[:parameter_sets].nil?
        data['transactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SqlParameterSets
    class SqlParameterSets
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SqlParametersList.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for SqlParametersList
    class SqlParametersList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SqlParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SqlParameter
    class SqlParameter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = Builders::Field.build(input[:value]) unless input[:value].nil?
        data['typeHint'] = input[:type_hint] unless input[:type_hint].nil?
        data
      end
    end

    # Structure Builder for Field
    class Field
      def self.build(input)
        data = {}
        case input
        when Types::Field::IsNull
          data['isNull'] = input
        when Types::Field::BooleanValue
          data['booleanValue'] = input
        when Types::Field::LongValue
          data['longValue'] = input
        when Types::Field::DoubleValue
          data['doubleValue'] = Hearth::NumberHelper.serialize(input)
        when Types::Field::StringValue
          data['stringValue'] = input
        when Types::Field::BlobValue
          data['blobValue'] = Base64::encode64(input).strip
        when Types::Field::ArrayValue
          input = input.__getobj__
          data['arrayValue'] = (Builders::ArrayValue.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Field"
        end

        data
      end
    end

    # Structure Builder for ArrayValue
    class ArrayValue
      def self.build(input)
        data = {}
        case input
        when Types::ArrayValue::BooleanValues
          data['booleanValues'] = (Builders::BooleanArray.build(input) unless input.nil?)
        when Types::ArrayValue::LongValues
          data['longValues'] = (Builders::LongArray.build(input) unless input.nil?)
        when Types::ArrayValue::DoubleValues
          data['doubleValues'] = (Builders::DoubleArray.build(input) unless input.nil?)
        when Types::ArrayValue::StringValues
          data['stringValues'] = (Builders::StringArray.build(input) unless input.nil?)
        when Types::ArrayValue::ArrayValues
          data['arrayValues'] = (Builders::ArrayOfArray.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ArrayValue"
        end

        data
      end
    end

    # List Builder for ArrayOfArray
    class ArrayOfArray
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ArrayValue.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for StringArray
    class StringArray
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DoubleArray
    class DoubleArray
      def self.build(input)
        data = []
        input.each do |element|
          data << Hearth::NumberHelper.serialize(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for LongArray
    class LongArray
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for BooleanArray
    class BooleanArray
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BeginTransaction
    class BeginTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/BeginTransaction')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['secretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['database'] = input[:database] unless input[:database].nil?
        data['schema'] = input[:schema] unless input[:schema].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CommitTransaction
    class CommitTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CommitTransaction')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['secretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['transactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteSql
    class ExecuteSql
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ExecuteSql')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['dbClusterOrInstanceArn'] = input[:db_cluster_or_instance_arn] unless input[:db_cluster_or_instance_arn].nil?
        data['awsSecretStoreArn'] = input[:aws_secret_store_arn] unless input[:aws_secret_store_arn].nil?
        data['sqlStatements'] = input[:sql_statements] unless input[:sql_statements].nil?
        data['database'] = input[:database] unless input[:database].nil?
        data['schema'] = input[:schema] unless input[:schema].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteStatement
    class ExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/Execute')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['secretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['sql'] = input[:sql] unless input[:sql].nil?
        data['database'] = input[:database] unless input[:database].nil?
        data['schema'] = input[:schema] unless input[:schema].nil?
        data['parameters'] = Builders::SqlParametersList.build(input[:parameters]) unless input[:parameters].nil?
        data['transactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['includeResultMetadata'] = input[:include_result_metadata] unless input[:include_result_metadata].nil?
        data['continueAfterTimeout'] = input[:continue_after_timeout] unless input[:continue_after_timeout].nil?
        data['resultSetOptions'] = Builders::ResultSetOptions.build(input[:result_set_options]) unless input[:result_set_options].nil?
        data['formatRecordsAs'] = input[:format_records_as] unless input[:format_records_as].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResultSetOptions
    class ResultSetOptions
      def self.build(input)
        data = {}
        data['decimalReturnType'] = input[:decimal_return_type] unless input[:decimal_return_type].nil?
        data['longReturnType'] = input[:long_return_type] unless input[:long_return_type].nil?
        data
      end
    end

    # Operation Builder for RollbackTransaction
    class RollbackTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/RollbackTransaction')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['secretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['transactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
