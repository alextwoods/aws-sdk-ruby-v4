# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::RedshiftData
  module Builders

    # Operation Builder for BatchExecuteStatement
    class BatchExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.BatchExecuteStatement'
        data = {}
        data['Sqls'] = SqlList.build(input[:sqls]) unless input[:sqls].nil?
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['WithEvent'] = input[:with_event] unless input[:with_event].nil?
        data['StatementName'] = input[:statement_name] unless input[:statement_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SqlList
    class SqlList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CancelStatement
    class CancelStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.CancelStatement'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStatement
    class DescribeStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.DescribeStatement'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTable
    class DescribeTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.DescribeTable'
        data = {}
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['ConnectedDatabase'] = input[:connected_database] unless input[:connected_database].nil?
        data['Schema'] = input[:schema] unless input[:schema].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteStatement
    class ExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.ExecuteStatement'
        data = {}
        data['Sql'] = input[:sql] unless input[:sql].nil?
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['WithEvent'] = input[:with_event] unless input[:with_event].nil?
        data['StatementName'] = input[:statement_name] unless input[:statement_name].nil?
        data['Parameters'] = SqlParametersList.build(input[:parameters]) unless input[:parameters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SqlParametersList
    class SqlParametersList
      def self.build(input)
        data = []
        input.each do |element|
          data << SqlParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SqlParameter
    class SqlParameter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for GetStatementResult
    class GetStatementResult
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.GetStatementResult'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatabases
    class ListDatabases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.ListDatabases'
        data = {}
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSchemas
    class ListSchemas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.ListSchemas'
        data = {}
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['ConnectedDatabase'] = input[:connected_database] unless input[:connected_database].nil?
        data['SchemaPattern'] = input[:schema_pattern] unless input[:schema_pattern].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStatements
    class ListStatements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.ListStatements'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['StatementName'] = input[:statement_name] unless input[:statement_name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['RoleLevel'] = input[:role_level] unless input[:role_level].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTables
    class ListTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'RedshiftData.ListTables'
        data = {}
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['ConnectedDatabase'] = input[:connected_database] unless input[:connected_database].nil?
        data['SchemaPattern'] = input[:schema_pattern] unless input[:schema_pattern].nil?
        data['TablePattern'] = input[:table_pattern] unless input[:table_pattern].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
