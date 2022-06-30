# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SecretsManager
  module Paginators

    class ListSecrets
      # @param [Client] client
      # @param [Hash] params (see Client#list_secrets)
      # @param [Hash] options (see Client#list_secrets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_secrets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_secrets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_secrets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSecretVersionIds
      # @param [Client] client
      # @param [Hash] params (see Client#list_secret_version_ids)
      # @param [Hash] options (see Client#list_secret_version_ids)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_secret_version_ids operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_secret_version_ids(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_secret_version_ids(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
