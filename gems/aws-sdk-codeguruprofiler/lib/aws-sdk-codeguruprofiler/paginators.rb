# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeGuruProfiler
  module Paginators

    class GetFindingsReportAccountSummary
      # @param [Client] client
      # @param [Hash] params (see Client#get_findings_report_account_summary)
      # @param [Hash] options (see Client#get_findings_report_account_summary)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_findings_report_account_summary operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_findings_report_account_summary(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_findings_report_account_summary(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFindingsReports
      # @param [Client] client
      # @param [Hash] params (see Client#list_findings_reports)
      # @param [Hash] options (see Client#list_findings_reports)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_findings_reports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_findings_reports(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_findings_reports(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListProfileTimes
      # @param [Client] client
      # @param [Hash] params (see Client#list_profile_times)
      # @param [Hash] options (see Client#list_profile_times)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_profile_times operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_profile_times(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_profile_times(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_profile_times operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.profile_times.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListProfilingGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_profiling_groups)
      # @param [Hash] options (see Client#list_profiling_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_profiling_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_profiling_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_profiling_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
