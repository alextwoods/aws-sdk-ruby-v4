# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QLDBSession
  module Stubs

    # Operation Stubber for SendCommand
    class SendCommand
      def self.default(visited=[])
        {
          start_session: Stubs::StartSessionResult.default(visited),
          start_transaction: Stubs::StartTransactionResult.default(visited),
          end_session: Stubs::EndSessionResult.default(visited),
          commit_transaction: Stubs::CommitTransactionResult.default(visited),
          abort_transaction: Stubs::AbortTransactionResult.default(visited),
          execute_statement: Stubs::ExecuteStatementResult.default(visited),
          fetch_page: Stubs::FetchPageResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StartSession'] = Stubs::StartSessionResult.stub(stub[:start_session]) unless stub[:start_session].nil?
        data['StartTransaction'] = Stubs::StartTransactionResult.stub(stub[:start_transaction]) unless stub[:start_transaction].nil?
        data['EndSession'] = Stubs::EndSessionResult.stub(stub[:end_session]) unless stub[:end_session].nil?
        data['CommitTransaction'] = Stubs::CommitTransactionResult.stub(stub[:commit_transaction]) unless stub[:commit_transaction].nil?
        data['AbortTransaction'] = Stubs::AbortTransactionResult.stub(stub[:abort_transaction]) unless stub[:abort_transaction].nil?
        data['ExecuteStatement'] = Stubs::ExecuteStatementResult.stub(stub[:execute_statement]) unless stub[:execute_statement].nil?
        data['FetchPage'] = Stubs::FetchPageResult.stub(stub[:fetch_page]) unless stub[:fetch_page].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FetchPageResult
    class FetchPageResult
      def self.default(visited=[])
        return nil if visited.include?('FetchPageResult')
        visited = visited + ['FetchPageResult']
        {
          page: Stubs::Page.default(visited),
          timing_information: Stubs::TimingInformation.default(visited),
          consumed_i_os: Stubs::IOUsage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FetchPageResult.new
        data = {}
        data['Page'] = Stubs::Page.stub(stub[:page]) unless stub[:page].nil?
        data['TimingInformation'] = Stubs::TimingInformation.stub(stub[:timing_information]) unless stub[:timing_information].nil?
        data['ConsumedIOs'] = Stubs::IOUsage.stub(stub[:consumed_i_os]) unless stub[:consumed_i_os].nil?
        data
      end
    end

    # Structure Stubber for IOUsage
    class IOUsage
      def self.default(visited=[])
        return nil if visited.include?('IOUsage')
        visited = visited + ['IOUsage']
        {
          read_i_os: 1,
          write_i_os: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IOUsage.new
        data = {}
        data['ReadIOs'] = stub[:read_i_os] unless stub[:read_i_os].nil?
        data['WriteIOs'] = stub[:write_i_os] unless stub[:write_i_os].nil?
        data
      end
    end

    # Structure Stubber for TimingInformation
    class TimingInformation
      def self.default(visited=[])
        return nil if visited.include?('TimingInformation')
        visited = visited + ['TimingInformation']
        {
          processing_time_milliseconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimingInformation.new
        data = {}
        data['ProcessingTimeMilliseconds'] = stub[:processing_time_milliseconds] unless stub[:processing_time_milliseconds].nil?
        data
      end
    end

    # Structure Stubber for Page
    class Page
      def self.default(visited=[])
        return nil if visited.include?('Page')
        visited = visited + ['Page']
        {
          values: Stubs::ValueHolders.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::Page.new
        data = {}
        data['Values'] = Stubs::ValueHolders.stub(stub[:values]) unless stub[:values].nil?
        data['NextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        data
      end
    end

    # List Stubber for ValueHolders
    class ValueHolders
      def self.default(visited=[])
        return nil if visited.include?('ValueHolders')
        visited = visited + ['ValueHolders']
        [
          Stubs::ValueHolder.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ValueHolder.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValueHolder
    class ValueHolder
      def self.default(visited=[])
        return nil if visited.include?('ValueHolder')
        visited = visited + ['ValueHolder']
        {
          ion_binary: 'ion_binary',
          ion_text: 'ion_text',
        }
      end

      def self.stub(stub)
        stub ||= Types::ValueHolder.new
        data = {}
        data['IonBinary'] = Base64::encode64(stub[:ion_binary]) unless stub[:ion_binary].nil?
        data['IonText'] = stub[:ion_text] unless stub[:ion_text].nil?
        data
      end
    end

    # Structure Stubber for ExecuteStatementResult
    class ExecuteStatementResult
      def self.default(visited=[])
        return nil if visited.include?('ExecuteStatementResult')
        visited = visited + ['ExecuteStatementResult']
        {
          first_page: Stubs::Page.default(visited),
          timing_information: Stubs::TimingInformation.default(visited),
          consumed_i_os: Stubs::IOUsage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecuteStatementResult.new
        data = {}
        data['FirstPage'] = Stubs::Page.stub(stub[:first_page]) unless stub[:first_page].nil?
        data['TimingInformation'] = Stubs::TimingInformation.stub(stub[:timing_information]) unless stub[:timing_information].nil?
        data['ConsumedIOs'] = Stubs::IOUsage.stub(stub[:consumed_i_os]) unless stub[:consumed_i_os].nil?
        data
      end
    end

    # Structure Stubber for AbortTransactionResult
    class AbortTransactionResult
      def self.default(visited=[])
        return nil if visited.include?('AbortTransactionResult')
        visited = visited + ['AbortTransactionResult']
        {
          timing_information: Stubs::TimingInformation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AbortTransactionResult.new
        data = {}
        data['TimingInformation'] = Stubs::TimingInformation.stub(stub[:timing_information]) unless stub[:timing_information].nil?
        data
      end
    end

    # Structure Stubber for CommitTransactionResult
    class CommitTransactionResult
      def self.default(visited=[])
        return nil if visited.include?('CommitTransactionResult')
        visited = visited + ['CommitTransactionResult']
        {
          transaction_id: 'transaction_id',
          commit_digest: 'commit_digest',
          timing_information: Stubs::TimingInformation.default(visited),
          consumed_i_os: Stubs::IOUsage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CommitTransactionResult.new
        data = {}
        data['TransactionId'] = stub[:transaction_id] unless stub[:transaction_id].nil?
        data['CommitDigest'] = Base64::encode64(stub[:commit_digest]) unless stub[:commit_digest].nil?
        data['TimingInformation'] = Stubs::TimingInformation.stub(stub[:timing_information]) unless stub[:timing_information].nil?
        data['ConsumedIOs'] = Stubs::IOUsage.stub(stub[:consumed_i_os]) unless stub[:consumed_i_os].nil?
        data
      end
    end

    # Structure Stubber for EndSessionResult
    class EndSessionResult
      def self.default(visited=[])
        return nil if visited.include?('EndSessionResult')
        visited = visited + ['EndSessionResult']
        {
          timing_information: Stubs::TimingInformation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EndSessionResult.new
        data = {}
        data['TimingInformation'] = Stubs::TimingInformation.stub(stub[:timing_information]) unless stub[:timing_information].nil?
        data
      end
    end

    # Structure Stubber for StartTransactionResult
    class StartTransactionResult
      def self.default(visited=[])
        return nil if visited.include?('StartTransactionResult')
        visited = visited + ['StartTransactionResult']
        {
          transaction_id: 'transaction_id',
          timing_information: Stubs::TimingInformation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StartTransactionResult.new
        data = {}
        data['TransactionId'] = stub[:transaction_id] unless stub[:transaction_id].nil?
        data['TimingInformation'] = Stubs::TimingInformation.stub(stub[:timing_information]) unless stub[:timing_information].nil?
        data
      end
    end

    # Structure Stubber for StartSessionResult
    class StartSessionResult
      def self.default(visited=[])
        return nil if visited.include?('StartSessionResult')
        visited = visited + ['StartSessionResult']
        {
          session_token: 'session_token',
          timing_information: Stubs::TimingInformation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StartSessionResult.new
        data = {}
        data['SessionToken'] = stub[:session_token] unless stub[:session_token].nil?
        data['TimingInformation'] = Stubs::TimingInformation.stub(stub[:timing_information]) unless stub[:timing_information].nil?
        data
      end
    end
  end
end
