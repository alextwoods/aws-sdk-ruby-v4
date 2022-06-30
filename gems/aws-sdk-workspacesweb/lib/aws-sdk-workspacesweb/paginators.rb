# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkSpacesWeb
  module Paginators

    class ListBrowserSettings
      # @param [Client] client
      # @param [Hash] params (see Client#list_browser_settings)
      # @param [Hash] options (see Client#list_browser_settings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_browser_settings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_browser_settings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_browser_settings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListIdentityProviders
      # @param [Client] client
      # @param [Hash] params (see Client#list_identity_providers)
      # @param [Hash] options (see Client#list_identity_providers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_identity_providers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_identity_providers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_identity_providers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListNetworkSettings
      # @param [Client] client
      # @param [Hash] params (see Client#list_network_settings)
      # @param [Hash] options (see Client#list_network_settings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_network_settings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_network_settings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_network_settings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPortals
      # @param [Client] client
      # @param [Hash] params (see Client#list_portals)
      # @param [Hash] options (see Client#list_portals)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_portals operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_portals(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_portals(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTrustStoreCertificates
      # @param [Client] client
      # @param [Hash] params (see Client#list_trust_store_certificates)
      # @param [Hash] options (see Client#list_trust_store_certificates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_trust_store_certificates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_trust_store_certificates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_trust_store_certificates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTrustStores
      # @param [Client] client
      # @param [Hash] params (see Client#list_trust_stores)
      # @param [Hash] options (see Client#list_trust_stores)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_trust_stores operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_trust_stores(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_trust_stores(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListUserSettings
      # @param [Client] client
      # @param [Hash] params (see Client#list_user_settings)
      # @param [Hash] options (see Client#list_user_settings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_user_settings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_user_settings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_user_settings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
