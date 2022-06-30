# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::QLDBSession
  module Builders

    # Operation Builder for SendCommand
    class SendCommand
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'QLDBSession.SendCommand'
        data = {}
        data['SessionToken'] = input[:session_token] unless input[:session_token].nil?
        data['StartSession'] = Builders::StartSessionRequest.build(input[:start_session]) unless input[:start_session].nil?
        data['StartTransaction'] = Builders::StartTransactionRequest.build(input[:start_transaction]) unless input[:start_transaction].nil?
        data['EndSession'] = Builders::EndSessionRequest.build(input[:end_session]) unless input[:end_session].nil?
        data['CommitTransaction'] = Builders::CommitTransactionRequest.build(input[:commit_transaction]) unless input[:commit_transaction].nil?
        data['AbortTransaction'] = Builders::AbortTransactionRequest.build(input[:abort_transaction]) unless input[:abort_transaction].nil?
        data['ExecuteStatement'] = Builders::ExecuteStatementRequest.build(input[:execute_statement]) unless input[:execute_statement].nil?
        data['FetchPage'] = Builders::FetchPageRequest.build(input[:fetch_page]) unless input[:fetch_page].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FetchPageRequest
    class FetchPageRequest
      def self.build(input)
        data = {}
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data
      end
    end

    # Structure Builder for ExecuteStatementRequest
    class ExecuteStatementRequest
      def self.build(input)
        data = {}
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['Statement'] = input[:statement] unless input[:statement].nil?
        data['Parameters'] = Builders::StatementParameters.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # List Builder for StatementParameters
    class StatementParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ValueHolder.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ValueHolder
    class ValueHolder
      def self.build(input)
        data = {}
        data['IonBinary'] = Base64::encode64(input[:ion_binary]).strip unless input[:ion_binary].nil?
        data['IonText'] = input[:ion_text] unless input[:ion_text].nil?
        data
      end
    end

    # Structure Builder for AbortTransactionRequest
    class AbortTransactionRequest
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CommitTransactionRequest
    class CommitTransactionRequest
      def self.build(input)
        data = {}
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['CommitDigest'] = Base64::encode64(input[:commit_digest]).strip unless input[:commit_digest].nil?
        data
      end
    end

    # Structure Builder for EndSessionRequest
    class EndSessionRequest
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for StartTransactionRequest
    class StartTransactionRequest
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for StartSessionRequest
    class StartSessionRequest
      def self.build(input)
        data = {}
        data['LedgerName'] = input[:ledger_name] unless input[:ledger_name].nil?
        data
      end
    end
  end
end
