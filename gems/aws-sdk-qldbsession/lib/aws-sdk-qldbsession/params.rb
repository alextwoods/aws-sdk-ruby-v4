# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QLDBSession
  module Params

    module AbortTransactionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortTransactionRequest, context: context)
        type = Types::AbortTransactionRequest.new
        type
      end
    end

    module AbortTransactionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortTransactionResult, context: context)
        type = Types::AbortTransactionResult.new
        type.timing_information = TimingInformation.build(params[:timing_information], context: "#{context}[:timing_information]") unless params[:timing_information].nil?
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module CapacityExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityExceededException, context: context)
        type = Types::CapacityExceededException.new
        type.message = params[:message]
        type
      end
    end

    module CommitTransactionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitTransactionRequest, context: context)
        type = Types::CommitTransactionRequest.new
        type.transaction_id = params[:transaction_id]
        type.commit_digest = params[:commit_digest]
        type
      end
    end

    module CommitTransactionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitTransactionResult, context: context)
        type = Types::CommitTransactionResult.new
        type.transaction_id = params[:transaction_id]
        type.commit_digest = params[:commit_digest]
        type.timing_information = TimingInformation.build(params[:timing_information], context: "#{context}[:timing_information]") unless params[:timing_information].nil?
        type.consumed_i_os = IOUsage.build(params[:consumed_i_os], context: "#{context}[:consumed_i_os]") unless params[:consumed_i_os].nil?
        type
      end
    end

    module EndSessionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndSessionRequest, context: context)
        type = Types::EndSessionRequest.new
        type
      end
    end

    module EndSessionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndSessionResult, context: context)
        type = Types::EndSessionResult.new
        type.timing_information = TimingInformation.build(params[:timing_information], context: "#{context}[:timing_information]") unless params[:timing_information].nil?
        type
      end
    end

    module ExecuteStatementRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteStatementRequest, context: context)
        type = Types::ExecuteStatementRequest.new
        type.transaction_id = params[:transaction_id]
        type.statement = params[:statement]
        type.parameters = StatementParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ExecuteStatementResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteStatementResult, context: context)
        type = Types::ExecuteStatementResult.new
        type.first_page = Page.build(params[:first_page], context: "#{context}[:first_page]") unless params[:first_page].nil?
        type.timing_information = TimingInformation.build(params[:timing_information], context: "#{context}[:timing_information]") unless params[:timing_information].nil?
        type.consumed_i_os = IOUsage.build(params[:consumed_i_os], context: "#{context}[:consumed_i_os]") unless params[:consumed_i_os].nil?
        type
      end
    end

    module FetchPageRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FetchPageRequest, context: context)
        type = Types::FetchPageRequest.new
        type.transaction_id = params[:transaction_id]
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module FetchPageResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FetchPageResult, context: context)
        type = Types::FetchPageResult.new
        type.page = Page.build(params[:page], context: "#{context}[:page]") unless params[:page].nil?
        type.timing_information = TimingInformation.build(params[:timing_information], context: "#{context}[:timing_information]") unless params[:timing_information].nil?
        type.consumed_i_os = IOUsage.build(params[:consumed_i_os], context: "#{context}[:consumed_i_os]") unless params[:consumed_i_os].nil?
        type
      end
    end

    module IOUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IOUsage, context: context)
        type = Types::IOUsage.new
        type.read_i_os = params[:read_i_os]
        type.write_i_os = params[:write_i_os]
        type
      end
    end

    module InvalidSessionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSessionException, context: context)
        type = Types::InvalidSessionException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module OccConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OccConflictException, context: context)
        type = Types::OccConflictException.new
        type.message = params[:message]
        type
      end
    end

    module Page
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Page, context: context)
        type = Types::Page.new
        type.values = ValueHolders.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module RateExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RateExceededException, context: context)
        type = Types::RateExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SendCommandInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendCommandInput, context: context)
        type = Types::SendCommandInput.new
        type.session_token = params[:session_token]
        type.start_session = StartSessionRequest.build(params[:start_session], context: "#{context}[:start_session]") unless params[:start_session].nil?
        type.start_transaction = StartTransactionRequest.build(params[:start_transaction], context: "#{context}[:start_transaction]") unless params[:start_transaction].nil?
        type.end_session = EndSessionRequest.build(params[:end_session], context: "#{context}[:end_session]") unless params[:end_session].nil?
        type.commit_transaction = CommitTransactionRequest.build(params[:commit_transaction], context: "#{context}[:commit_transaction]") unless params[:commit_transaction].nil?
        type.abort_transaction = AbortTransactionRequest.build(params[:abort_transaction], context: "#{context}[:abort_transaction]") unless params[:abort_transaction].nil?
        type.execute_statement = ExecuteStatementRequest.build(params[:execute_statement], context: "#{context}[:execute_statement]") unless params[:execute_statement].nil?
        type.fetch_page = FetchPageRequest.build(params[:fetch_page], context: "#{context}[:fetch_page]") unless params[:fetch_page].nil?
        type
      end
    end

    module SendCommandOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendCommandOutput, context: context)
        type = Types::SendCommandOutput.new
        type.start_session = StartSessionResult.build(params[:start_session], context: "#{context}[:start_session]") unless params[:start_session].nil?
        type.start_transaction = StartTransactionResult.build(params[:start_transaction], context: "#{context}[:start_transaction]") unless params[:start_transaction].nil?
        type.end_session = EndSessionResult.build(params[:end_session], context: "#{context}[:end_session]") unless params[:end_session].nil?
        type.commit_transaction = CommitTransactionResult.build(params[:commit_transaction], context: "#{context}[:commit_transaction]") unless params[:commit_transaction].nil?
        type.abort_transaction = AbortTransactionResult.build(params[:abort_transaction], context: "#{context}[:abort_transaction]") unless params[:abort_transaction].nil?
        type.execute_statement = ExecuteStatementResult.build(params[:execute_statement], context: "#{context}[:execute_statement]") unless params[:execute_statement].nil?
        type.fetch_page = FetchPageResult.build(params[:fetch_page], context: "#{context}[:fetch_page]") unless params[:fetch_page].nil?
        type
      end
    end

    module StartSessionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSessionRequest, context: context)
        type = Types::StartSessionRequest.new
        type.ledger_name = params[:ledger_name]
        type
      end
    end

    module StartSessionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSessionResult, context: context)
        type = Types::StartSessionResult.new
        type.session_token = params[:session_token]
        type.timing_information = TimingInformation.build(params[:timing_information], context: "#{context}[:timing_information]") unless params[:timing_information].nil?
        type
      end
    end

    module StartTransactionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTransactionRequest, context: context)
        type = Types::StartTransactionRequest.new
        type
      end
    end

    module StartTransactionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTransactionResult, context: context)
        type = Types::StartTransactionResult.new
        type.transaction_id = params[:transaction_id]
        type.timing_information = TimingInformation.build(params[:timing_information], context: "#{context}[:timing_information]") unless params[:timing_information].nil?
        type
      end
    end

    module StatementParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValueHolder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimingInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimingInformation, context: context)
        type = Types::TimingInformation.new
        type.processing_time_milliseconds = params[:processing_time_milliseconds]
        type
      end
    end

    module ValueHolder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValueHolder, context: context)
        type = Types::ValueHolder.new
        type.ion_binary = params[:ion_binary]
        type.ion_text = params[:ion_text]
        type
      end
    end

    module ValueHolders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValueHolder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
