# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QLDBSession
  module Validators

    class AbortTransactionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortTransactionRequest, context: context)
      end
    end

    class AbortTransactionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortTransactionResult, context: context)
        Validators::TimingInformation.validate!(input[:timing_information], context: "#{context}[:timing_information]") unless input[:timing_information].nil?
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class CapacityExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommitTransactionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitTransactionRequest, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:commit_digest], ::String, context: "#{context}[:commit_digest]")
      end
    end

    class CommitTransactionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitTransactionResult, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:commit_digest], ::String, context: "#{context}[:commit_digest]")
        Validators::TimingInformation.validate!(input[:timing_information], context: "#{context}[:timing_information]") unless input[:timing_information].nil?
        Validators::IOUsage.validate!(input[:consumed_i_os], context: "#{context}[:consumed_i_os]") unless input[:consumed_i_os].nil?
      end
    end

    class EndSessionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndSessionRequest, context: context)
      end
    end

    class EndSessionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndSessionResult, context: context)
        Validators::TimingInformation.validate!(input[:timing_information], context: "#{context}[:timing_information]") unless input[:timing_information].nil?
      end
    end

    class ExecuteStatementRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteStatementRequest, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:statement], ::String, context: "#{context}[:statement]")
        Validators::StatementParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ExecuteStatementResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteStatementResult, context: context)
        Validators::Page.validate!(input[:first_page], context: "#{context}[:first_page]") unless input[:first_page].nil?
        Validators::TimingInformation.validate!(input[:timing_information], context: "#{context}[:timing_information]") unless input[:timing_information].nil?
        Validators::IOUsage.validate!(input[:consumed_i_os], context: "#{context}[:consumed_i_os]") unless input[:consumed_i_os].nil?
      end
    end

    class FetchPageRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FetchPageRequest, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class FetchPageResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FetchPageResult, context: context)
        Validators::Page.validate!(input[:page], context: "#{context}[:page]") unless input[:page].nil?
        Validators::TimingInformation.validate!(input[:timing_information], context: "#{context}[:timing_information]") unless input[:timing_information].nil?
        Validators::IOUsage.validate!(input[:consumed_i_os], context: "#{context}[:consumed_i_os]") unless input[:consumed_i_os].nil?
      end
    end

    class IOUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IOUsage, context: context)
        Hearth::Validator.validate!(input[:read_i_os], ::Integer, context: "#{context}[:read_i_os]")
        Hearth::Validator.validate!(input[:write_i_os], ::Integer, context: "#{context}[:write_i_os]")
      end
    end

    class InvalidSessionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSessionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OccConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OccConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Page
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Page, context: context)
        Validators::ValueHolders.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class RateExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RateExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SendCommandInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendCommandInput, context: context)
        Hearth::Validator.validate!(input[:session_token], ::String, context: "#{context}[:session_token]")
        Validators::StartSessionRequest.validate!(input[:start_session], context: "#{context}[:start_session]") unless input[:start_session].nil?
        Validators::StartTransactionRequest.validate!(input[:start_transaction], context: "#{context}[:start_transaction]") unless input[:start_transaction].nil?
        Validators::EndSessionRequest.validate!(input[:end_session], context: "#{context}[:end_session]") unless input[:end_session].nil?
        Validators::CommitTransactionRequest.validate!(input[:commit_transaction], context: "#{context}[:commit_transaction]") unless input[:commit_transaction].nil?
        Validators::AbortTransactionRequest.validate!(input[:abort_transaction], context: "#{context}[:abort_transaction]") unless input[:abort_transaction].nil?
        Validators::ExecuteStatementRequest.validate!(input[:execute_statement], context: "#{context}[:execute_statement]") unless input[:execute_statement].nil?
        Validators::FetchPageRequest.validate!(input[:fetch_page], context: "#{context}[:fetch_page]") unless input[:fetch_page].nil?
      end
    end

    class SendCommandOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendCommandOutput, context: context)
        Validators::StartSessionResult.validate!(input[:start_session], context: "#{context}[:start_session]") unless input[:start_session].nil?
        Validators::StartTransactionResult.validate!(input[:start_transaction], context: "#{context}[:start_transaction]") unless input[:start_transaction].nil?
        Validators::EndSessionResult.validate!(input[:end_session], context: "#{context}[:end_session]") unless input[:end_session].nil?
        Validators::CommitTransactionResult.validate!(input[:commit_transaction], context: "#{context}[:commit_transaction]") unless input[:commit_transaction].nil?
        Validators::AbortTransactionResult.validate!(input[:abort_transaction], context: "#{context}[:abort_transaction]") unless input[:abort_transaction].nil?
        Validators::ExecuteStatementResult.validate!(input[:execute_statement], context: "#{context}[:execute_statement]") unless input[:execute_statement].nil?
        Validators::FetchPageResult.validate!(input[:fetch_page], context: "#{context}[:fetch_page]") unless input[:fetch_page].nil?
      end
    end

    class StartSessionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSessionRequest, context: context)
        Hearth::Validator.validate!(input[:ledger_name], ::String, context: "#{context}[:ledger_name]")
      end
    end

    class StartSessionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSessionResult, context: context)
        Hearth::Validator.validate!(input[:session_token], ::String, context: "#{context}[:session_token]")
        Validators::TimingInformation.validate!(input[:timing_information], context: "#{context}[:timing_information]") unless input[:timing_information].nil?
      end
    end

    class StartTransactionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTransactionRequest, context: context)
      end
    end

    class StartTransactionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTransactionResult, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Validators::TimingInformation.validate!(input[:timing_information], context: "#{context}[:timing_information]") unless input[:timing_information].nil?
      end
    end

    class StatementParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValueHolder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimingInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimingInformation, context: context)
        Hearth::Validator.validate!(input[:processing_time_milliseconds], ::Integer, context: "#{context}[:processing_time_milliseconds]")
      end
    end

    class ValueHolder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValueHolder, context: context)
        Hearth::Validator.validate!(input[:ion_binary], ::String, context: "#{context}[:ion_binary]")
        Hearth::Validator.validate!(input[:ion_text], ::String, context: "#{context}[:ion_text]")
      end
    end

    class ValueHolders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValueHolder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
