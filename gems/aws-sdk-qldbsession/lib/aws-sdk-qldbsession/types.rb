# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QLDBSession
  module Types

    # <p>Contains the details of the transaction to abort.</p>
    #
    AbortTransactionRequest = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of the aborted transaction.</p>
    #
    # @!attribute timing_information
    #   <p>Contains server-side performance information for the command.</p>
    #
    #   @return [TimingInformation]
    #
    AbortTransactionResult = ::Struct.new(
      :timing_information,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returned if the request is malformed or contains an error such as an invalid parameter
    #          value or a missing required parameter.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returned when the request exceeds the processing capacity of the ledger.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CapacityExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of the transaction to commit.</p>
    #
    # @!attribute transaction_id
    #   <p>Specifies the transaction ID of the transaction to commit.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_digest
    #   <p>Specifies the commit digest for the transaction to commit. For every active transaction,
    #            the commit digest must be passed. QLDB validates <code>CommitDigest</code> and rejects
    #            the commit with an error if the digest computed on the client does not match the digest
    #            computed by QLDB.</p>
    #            <p>The purpose of the <code>CommitDigest</code> parameter is to ensure that QLDB commits
    #            a transaction if and only if the server has processed the exact set of statements sent by
    #            the client, in the same order that client sent them, and with no duplicates.</p>
    #
    #   @return [String]
    #
    CommitTransactionRequest = ::Struct.new(
      :transaction_id,
      :commit_digest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of the committed transaction.</p>
    #
    # @!attribute transaction_id
    #   <p>The transaction ID of the committed transaction.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_digest
    #   <p>The commit digest of the committed transaction.</p>
    #
    #   @return [String]
    #
    # @!attribute timing_information
    #   <p>Contains server-side performance information for the command.</p>
    #
    #   @return [TimingInformation]
    #
    # @!attribute consumed_i_os
    #   <p>Contains metrics about the number of I/O requests that were consumed.</p>
    #
    #   @return [IOUsage]
    #
    CommitTransactionResult = ::Struct.new(
      :transaction_id,
      :commit_digest,
      :timing_information,
      :consumed_i_os,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a request to end the session.</p>
    #
    EndSessionRequest = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of the ended session.</p>
    #
    # @!attribute timing_information
    #   <p>Contains server-side performance information for the command.</p>
    #
    #   @return [TimingInformation]
    #
    EndSessionResult = ::Struct.new(
      :timing_information,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a request to execute a statement.</p>
    #
    # @!attribute transaction_id
    #   <p>Specifies the transaction ID of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute statement
    #   <p>Specifies the statement of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Specifies the parameters for the parameterized statement in the request.</p>
    #
    #   @return [Array<ValueHolder>]
    #
    ExecuteStatementRequest = ::Struct.new(
      :transaction_id,
      :statement,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of the executed statement.</p>
    #
    # @!attribute first_page
    #   <p>Contains the details of the first fetched page.</p>
    #
    #   @return [Page]
    #
    # @!attribute timing_information
    #   <p>Contains server-side performance information for the command.</p>
    #
    #   @return [TimingInformation]
    #
    # @!attribute consumed_i_os
    #   <p>Contains metrics about the number of I/O requests that were consumed.</p>
    #
    #   @return [IOUsage]
    #
    ExecuteStatementResult = ::Struct.new(
      :first_page,
      :timing_information,
      :consumed_i_os,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the details of the page to be fetched.</p>
    #
    # @!attribute transaction_id
    #   <p>Specifies the transaction ID of the page to be fetched.</p>
    #
    #   @return [String]
    #
    # @!attribute next_page_token
    #   <p>Specifies the next page token of the page to be fetched.</p>
    #
    #   @return [String]
    #
    FetchPageRequest = ::Struct.new(
      :transaction_id,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the page that was fetched.</p>
    #
    # @!attribute page
    #   <p>Contains details of the fetched page.</p>
    #
    #   @return [Page]
    #
    # @!attribute timing_information
    #   <p>Contains server-side performance information for the command.</p>
    #
    #   @return [TimingInformation]
    #
    # @!attribute consumed_i_os
    #   <p>Contains metrics about the number of I/O requests that were consumed.</p>
    #
    #   @return [IOUsage]
    #
    FetchPageResult = ::Struct.new(
      :page,
      :timing_information,
      :consumed_i_os,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains I/O usage metrics for a command that was invoked.</p>
    #
    # @!attribute read_i_os
    #   <p>The number of read I/O requests that the command made.</p>
    #
    #   @return [Integer]
    #
    # @!attribute write_i_os
    #   <p>The number of write I/O requests that the command made.</p>
    #
    #   @return [Integer]
    #
    IOUsage = ::Struct.new(
      :read_i_os,
      :write_i_os,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.read_i_os ||= 0
        self.write_i_os ||= 0
      end

    end

    # <p>Returned if the session doesn't exist anymore because it timed out or expired.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InvalidSessionException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returned if a resource limit such as number of active sessions is exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returned when a transaction cannot be written to the journal due to a failure in the
    #          verification phase of <i>optimistic concurrency control</i> (OCC).</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OccConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details of the fetched page.</p>
    #
    # @!attribute values
    #   <p>A structure that contains values in multiple encoding formats.</p>
    #
    #   @return [Array<ValueHolder>]
    #
    # @!attribute next_page_token
    #   <p>The token of the next page.</p>
    #
    #   @return [String]
    #
    Page = ::Struct.new(
      :values,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returned when the rate of requests exceeds the allowed throughput.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RateExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_token
    #   <p>Specifies the session token for the current command. A session token is constant
    #            throughout the life of the session.</p>
    #            <p>To obtain a session token, run the <code>StartSession</code> command. This
    #               <code>SessionToken</code> is required for every subsequent command that is issued during
    #            the current session.</p>
    #
    #   @return [String]
    #
    # @!attribute start_session
    #   <p>Command to start a new session. A session token is obtained as part of the
    #            response.</p>
    #
    #   @return [StartSessionRequest]
    #
    # @!attribute start_transaction
    #   <p>Command to start a new transaction.</p>
    #
    #   @return [StartTransactionRequest]
    #
    # @!attribute end_session
    #   <p>Command to end the current session.</p>
    #
    #   @return [EndSessionRequest]
    #
    # @!attribute commit_transaction
    #   <p>Command to commit the specified transaction.</p>
    #
    #   @return [CommitTransactionRequest]
    #
    # @!attribute abort_transaction
    #   <p>Command to abort the current transaction.</p>
    #
    #   @return [AbortTransactionRequest]
    #
    # @!attribute execute_statement
    #   <p>Command to execute a statement in the specified transaction.</p>
    #
    #   @return [ExecuteStatementRequest]
    #
    # @!attribute fetch_page
    #   <p>Command to fetch a page.</p>
    #
    #   @return [FetchPageRequest]
    #
    SendCommandInput = ::Struct.new(
      :session_token,
      :start_session,
      :start_transaction,
      :end_session,
      :commit_transaction,
      :abort_transaction,
      :execute_statement,
      :fetch_page,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute start_session
    #   <p>Contains the details of the started session that includes a session token. This
    #               <code>SessionToken</code> is required for every subsequent command that is issued during
    #            the current session.</p>
    #
    #   @return [StartSessionResult]
    #
    # @!attribute start_transaction
    #   <p>Contains the details of the started transaction.</p>
    #
    #   @return [StartTransactionResult]
    #
    # @!attribute end_session
    #   <p>Contains the details of the ended session.</p>
    #
    #   @return [EndSessionResult]
    #
    # @!attribute commit_transaction
    #   <p>Contains the details of the committed transaction.</p>
    #
    #   @return [CommitTransactionResult]
    #
    # @!attribute abort_transaction
    #   <p>Contains the details of the aborted transaction.</p>
    #
    #   @return [AbortTransactionResult]
    #
    # @!attribute execute_statement
    #   <p>Contains the details of the executed statement.</p>
    #
    #   @return [ExecuteStatementResult]
    #
    # @!attribute fetch_page
    #   <p>Contains the details of the fetched page.</p>
    #
    #   @return [FetchPageResult]
    #
    SendCommandOutput = ::Struct.new(
      :start_session,
      :start_transaction,
      :end_session,
      :commit_transaction,
      :abort_transaction,
      :execute_statement,
      :fetch_page,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a request to start a new session.</p>
    #
    # @!attribute ledger_name
    #   <p>The name of the ledger to start a new session against.</p>
    #
    #   @return [String]
    #
    StartSessionRequest = ::Struct.new(
      :ledger_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of the started session.</p>
    #
    # @!attribute session_token
    #   <p>Session token of the started session. This <code>SessionToken</code> is required for
    #            every subsequent command that is issued during the current session.</p>
    #
    #   @return [String]
    #
    # @!attribute timing_information
    #   <p>Contains server-side performance information for the command.</p>
    #
    #   @return [TimingInformation]
    #
    StartSessionResult = ::Struct.new(
      :session_token,
      :timing_information,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a request to start a transaction.</p>
    #
    StartTransactionRequest = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of the started transaction.</p>
    #
    # @!attribute transaction_id
    #   <p>The transaction ID of the started transaction.</p>
    #
    #   @return [String]
    #
    # @!attribute timing_information
    #   <p>Contains server-side performance information for the command.</p>
    #
    #   @return [TimingInformation]
    #
    StartTransactionResult = ::Struct.new(
      :transaction_id,
      :timing_information,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains server-side performance information for a command. Amazon QLDB captures timing
    #          information between the times when it receives the request and when it sends the
    #          corresponding response.</p>
    #
    # @!attribute processing_time_milliseconds
    #   <p>The amount of time that QLDB spent on processing the command, measured in
    #            milliseconds.</p>
    #
    #   @return [Integer]
    #
    TimingInformation = ::Struct.new(
      :processing_time_milliseconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.processing_time_milliseconds ||= 0
      end

    end

    # <p>A structure that can contain a value in multiple encoding formats.</p>
    #
    # @!attribute ion_binary
    #   <p>An Amazon Ion binary value contained in a <code>ValueHolder</code> structure.</p>
    #
    #   @return [String]
    #
    # @!attribute ion_text
    #   <p>An Amazon Ion plaintext value contained in a <code>ValueHolder</code> structure.</p>
    #
    #   @return [String]
    #
    ValueHolder = ::Struct.new(
      :ion_binary,
      :ion_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
