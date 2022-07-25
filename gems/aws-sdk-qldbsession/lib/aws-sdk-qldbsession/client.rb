# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::QLDBSession
  # An API client for QLDBSession
  # See {#initialize} for a full list of supported configuration options
  # <p>The transactional data APIs for Amazon QLDB</p>
  #          <note>
  #             <p>Instead of interacting directly with this API, we recommend using the QLDB driver
  #             or the QLDB shell to execute data transactions on a ledger.</p>
  #             <ul>
  #                <li>
  #                   <p>If you are working with an AWS SDK, use the QLDB driver. The driver provides
  #                   a high-level abstraction layer above this <i>QLDB Session</i> data
  #                   plane and manages <code>SendCommand</code> API calls for you. For information and
  #                   a list of supported programming languages, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html">Getting started
  #                      with the driver</a> in the <i>Amazon QLDB Developer
  #                   Guide</i>.</p>
  #                </li>
  #                <li>
  #                   <p>If you are working with the AWS Command Line Interface (AWS CLI), use the
  #                   QLDB shell. The shell is a command line interface that uses the QLDB driver to
  #                   interact with a ledger. For information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html">Accessing Amazon QLDB using the
  #                      QLDB shell</a>.</p>
  #                </li>
  #             </ul>
  #          </note>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::QLDBSession::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Sends a command to an Amazon QLDB ledger.</p>
    #          <note>
    #             <p>Instead of interacting directly with this API, we recommend using the QLDB driver
    #             or the QLDB shell to execute data transactions on a ledger.</p>
    #             <ul>
    #                <li>
    #                   <p>If you are working with an AWS SDK, use the QLDB driver. The driver provides
    #                   a high-level abstraction layer above this <i>QLDB Session</i> data
    #                   plane and manages <code>SendCommand</code> API calls for you. For information and
    #                   a list of supported programming languages, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html">Getting started
    #                      with the driver</a> in the <i>Amazon QLDB Developer
    #                   Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>If you are working with the AWS Command Line Interface (AWS CLI), use the
    #                   QLDB shell. The shell is a command line interface that uses the QLDB driver to
    #                   interact with a ledger. For information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html">Accessing Amazon QLDB using the
    #                      QLDB shell</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::SendCommandInput}.
    #
    # @option params [String] :session_token
    #   <p>Specifies the session token for the current command. A session token is constant
    #            throughout the life of the session.</p>
    #            <p>To obtain a session token, run the <code>StartSession</code> command. This
    #               <code>SessionToken</code> is required for every subsequent command that is issued during
    #            the current session.</p>
    #
    # @option params [StartSessionRequest] :start_session
    #   <p>Command to start a new session. A session token is obtained as part of the
    #            response.</p>
    #
    # @option params [StartTransactionRequest] :start_transaction
    #   <p>Command to start a new transaction.</p>
    #
    # @option params [EndSessionRequest] :end_session
    #   <p>Command to end the current session.</p>
    #
    # @option params [CommitTransactionRequest] :commit_transaction
    #   <p>Command to commit the specified transaction.</p>
    #
    # @option params [AbortTransactionRequest] :abort_transaction
    #   <p>Command to abort the current transaction.</p>
    #
    # @option params [ExecuteStatementRequest] :execute_statement
    #   <p>Command to execute a statement in the specified transaction.</p>
    #
    # @option params [FetchPageRequest] :fetch_page
    #   <p>Command to fetch a page.</p>
    #
    # @return [Types::SendCommandOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_command(
    #     session_token: 'SessionToken',
    #     start_session: {
    #       ledger_name: 'LedgerName' # required
    #     },
    #     start_transaction: { },
    #     end_session: { },
    #     commit_transaction: {
    #       transaction_id: 'TransactionId', # required
    #       commit_digest: 'CommitDigest' # required
    #     },
    #     abort_transaction: { },
    #     execute_statement: {
    #       transaction_id: 'TransactionId', # required
    #       statement: 'Statement', # required
    #       parameters: [
    #         {
    #           ion_binary: 'IonBinary',
    #           ion_text: 'IonText'
    #         }
    #       ]
    #     },
    #     fetch_page: {
    #       transaction_id: 'TransactionId', # required
    #       next_page_token: 'NextPageToken' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendCommandOutput
    #   resp.data.start_session #=> Types::StartSessionResult
    #   resp.data.start_session.session_token #=> String
    #   resp.data.start_session.timing_information #=> Types::TimingInformation
    #   resp.data.start_session.timing_information.processing_time_milliseconds #=> Integer
    #   resp.data.start_transaction #=> Types::StartTransactionResult
    #   resp.data.start_transaction.transaction_id #=> String
    #   resp.data.start_transaction.timing_information #=> Types::TimingInformation
    #   resp.data.end_session #=> Types::EndSessionResult
    #   resp.data.end_session.timing_information #=> Types::TimingInformation
    #   resp.data.commit_transaction #=> Types::CommitTransactionResult
    #   resp.data.commit_transaction.transaction_id #=> String
    #   resp.data.commit_transaction.commit_digest #=> String
    #   resp.data.commit_transaction.timing_information #=> Types::TimingInformation
    #   resp.data.commit_transaction.consumed_i_os #=> Types::IOUsage
    #   resp.data.commit_transaction.consumed_i_os.read_i_os #=> Integer
    #   resp.data.commit_transaction.consumed_i_os.write_i_os #=> Integer
    #   resp.data.abort_transaction #=> Types::AbortTransactionResult
    #   resp.data.abort_transaction.timing_information #=> Types::TimingInformation
    #   resp.data.execute_statement #=> Types::ExecuteStatementResult
    #   resp.data.execute_statement.first_page #=> Types::Page
    #   resp.data.execute_statement.first_page.values #=> Array<ValueHolder>
    #   resp.data.execute_statement.first_page.values[0] #=> Types::ValueHolder
    #   resp.data.execute_statement.first_page.values[0].ion_binary #=> String
    #   resp.data.execute_statement.first_page.values[0].ion_text #=> String
    #   resp.data.execute_statement.first_page.next_page_token #=> String
    #   resp.data.execute_statement.timing_information #=> Types::TimingInformation
    #   resp.data.execute_statement.consumed_i_os #=> Types::IOUsage
    #   resp.data.fetch_page #=> Types::FetchPageResult
    #   resp.data.fetch_page.page #=> Types::Page
    #   resp.data.fetch_page.timing_information #=> Types::TimingInformation
    #   resp.data.fetch_page.consumed_i_os #=> Types::IOUsage
    #
    def send_command(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendCommandInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendCommandInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendCommand
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CapacityExceededException, Errors::InvalidSessionException, Errors::OccConflictException, Errors::RateExceededException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::SendCommand
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendCommand,
        stubs: @stubs,
        params_class: Params::SendCommandOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_command
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
