# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QLDB
  module Paginators

    class ListJournalKinesisStreamsForLedger
      # @param [Client] client
      # @param [Hash] params (see Client#list_journal_kinesis_streams_for_ledger)
      # @param [Hash] options (see Client#list_journal_kinesis_streams_for_ledger)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_journal_kinesis_streams_for_ledger operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_journal_kinesis_streams_for_ledger(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_journal_kinesis_streams_for_ledger(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListJournalS3Exports
      # @param [Client] client
      # @param [Hash] params (see Client#list_journal_s3_exports)
      # @param [Hash] options (see Client#list_journal_s3_exports)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_journal_s3_exports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_journal_s3_exports(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_journal_s3_exports(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListJournalS3ExportsForLedger
      # @param [Client] client
      # @param [Hash] params (see Client#list_journal_s3_exports_for_ledger)
      # @param [Hash] options (see Client#list_journal_s3_exports_for_ledger)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_journal_s3_exports_for_ledger operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_journal_s3_exports_for_ledger(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_journal_s3_exports_for_ledger(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListLedgers
      # @param [Client] client
      # @param [Hash] params (see Client#list_ledgers)
      # @param [Hash] options (see Client#list_ledgers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_ledgers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_ledgers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_ledgers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
