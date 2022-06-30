# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::QLDBSession
  module Parsers

    # Operation Parser for SendCommand
    class SendCommand
      def self.parse(http_resp)
        data = Types::SendCommandOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.start_session = (Parsers::StartSessionResult.parse(map['StartSession']) unless map['StartSession'].nil?)
        data.start_transaction = (Parsers::StartTransactionResult.parse(map['StartTransaction']) unless map['StartTransaction'].nil?)
        data.end_session = (Parsers::EndSessionResult.parse(map['EndSession']) unless map['EndSession'].nil?)
        data.commit_transaction = (Parsers::CommitTransactionResult.parse(map['CommitTransaction']) unless map['CommitTransaction'].nil?)
        data.abort_transaction = (Parsers::AbortTransactionResult.parse(map['AbortTransaction']) unless map['AbortTransaction'].nil?)
        data.execute_statement = (Parsers::ExecuteStatementResult.parse(map['ExecuteStatement']) unless map['ExecuteStatement'].nil?)
        data.fetch_page = (Parsers::FetchPageResult.parse(map['FetchPage']) unless map['FetchPage'].nil?)
        data
      end
    end

    class FetchPageResult
      def self.parse(map)
        data = Types::FetchPageResult.new
        data.page = (Parsers::Page.parse(map['Page']) unless map['Page'].nil?)
        data.timing_information = (Parsers::TimingInformation.parse(map['TimingInformation']) unless map['TimingInformation'].nil?)
        data.consumed_i_os = (Parsers::IOUsage.parse(map['ConsumedIOs']) unless map['ConsumedIOs'].nil?)
        return data
      end
    end

    class IOUsage
      def self.parse(map)
        data = Types::IOUsage.new
        data.read_i_os = map['ReadIOs']
        data.write_i_os = map['WriteIOs']
        return data
      end
    end

    class TimingInformation
      def self.parse(map)
        data = Types::TimingInformation.new
        data.processing_time_milliseconds = map['ProcessingTimeMilliseconds']
        return data
      end
    end

    class Page
      def self.parse(map)
        data = Types::Page.new
        data.values = (Parsers::ValueHolders.parse(map['Values']) unless map['Values'].nil?)
        data.next_page_token = map['NextPageToken']
        return data
      end
    end

    class ValueHolders
      def self.parse(list)
        list.map do |value|
          Parsers::ValueHolder.parse(value) unless value.nil?
        end
      end
    end

    class ValueHolder
      def self.parse(map)
        data = Types::ValueHolder.new
        data.ion_binary = Base64::decode64(map['IonBinary']) unless map['IonBinary'].nil?
        data.ion_text = map['IonText']
        return data
      end
    end

    class ExecuteStatementResult
      def self.parse(map)
        data = Types::ExecuteStatementResult.new
        data.first_page = (Parsers::Page.parse(map['FirstPage']) unless map['FirstPage'].nil?)
        data.timing_information = (Parsers::TimingInformation.parse(map['TimingInformation']) unless map['TimingInformation'].nil?)
        data.consumed_i_os = (Parsers::IOUsage.parse(map['ConsumedIOs']) unless map['ConsumedIOs'].nil?)
        return data
      end
    end

    class AbortTransactionResult
      def self.parse(map)
        data = Types::AbortTransactionResult.new
        data.timing_information = (Parsers::TimingInformation.parse(map['TimingInformation']) unless map['TimingInformation'].nil?)
        return data
      end
    end

    class CommitTransactionResult
      def self.parse(map)
        data = Types::CommitTransactionResult.new
        data.transaction_id = map['TransactionId']
        data.commit_digest = Base64::decode64(map['CommitDigest']) unless map['CommitDigest'].nil?
        data.timing_information = (Parsers::TimingInformation.parse(map['TimingInformation']) unless map['TimingInformation'].nil?)
        data.consumed_i_os = (Parsers::IOUsage.parse(map['ConsumedIOs']) unless map['ConsumedIOs'].nil?)
        return data
      end
    end

    class EndSessionResult
      def self.parse(map)
        data = Types::EndSessionResult.new
        data.timing_information = (Parsers::TimingInformation.parse(map['TimingInformation']) unless map['TimingInformation'].nil?)
        return data
      end
    end

    class StartTransactionResult
      def self.parse(map)
        data = Types::StartTransactionResult.new
        data.transaction_id = map['TransactionId']
        data.timing_information = (Parsers::TimingInformation.parse(map['TimingInformation']) unless map['TimingInformation'].nil?)
        return data
      end
    end

    class StartSessionResult
      def self.parse(map)
        data = Types::StartSessionResult.new
        data.session_token = map['SessionToken']
        data.timing_information = (Parsers::TimingInformation.parse(map['TimingInformation']) unless map['TimingInformation'].nil?)
        return data
      end
    end

    # Error Parser for CapacityExceededException
    class CapacityExceededException
      def self.parse(http_resp)
        data = Types::CapacityExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidSessionException
    class InvalidSessionException
      def self.parse(http_resp)
        data = Types::InvalidSessionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for OccConflictException
    class OccConflictException
      def self.parse(http_resp)
        data = Types::OccConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for RateExceededException
    class RateExceededException
      def self.parse(http_resp)
        data = Types::RateExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end
  end
end
