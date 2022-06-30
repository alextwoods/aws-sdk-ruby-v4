# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Signer
  module Paginators

    class ListSigningJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_signing_jobs)
      # @param [Hash] options (see Client#list_signing_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_signing_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_signing_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_signing_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSigningPlatforms
      # @param [Client] client
      # @param [Hash] params (see Client#list_signing_platforms)
      # @param [Hash] options (see Client#list_signing_platforms)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_signing_platforms operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_signing_platforms(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_signing_platforms(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSigningProfiles
      # @param [Client] client
      # @param [Hash] params (see Client#list_signing_profiles)
      # @param [Hash] options (see Client#list_signing_profiles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_signing_profiles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_signing_profiles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_signing_profiles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
