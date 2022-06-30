# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkLink
  module Paginators

    class ListDevices
      # @param [Client] client
      # @param [Hash] params (see Client#list_devices)
      # @param [Hash] options (see Client#list_devices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_devices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_devices(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_devices(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDomains
      # @param [Client] client
      # @param [Hash] params (see Client#list_domains)
      # @param [Hash] options (see Client#list_domains)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_domains operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_domains(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_domains(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFleets
      # @param [Client] client
      # @param [Hash] params (see Client#list_fleets)
      # @param [Hash] options (see Client#list_fleets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_fleets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_fleets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_fleets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWebsiteAuthorizationProviders
      # @param [Client] client
      # @param [Hash] params (see Client#list_website_authorization_providers)
      # @param [Hash] options (see Client#list_website_authorization_providers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_website_authorization_providers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_website_authorization_providers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_website_authorization_providers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWebsiteCertificateAuthorities
      # @param [Client] client
      # @param [Hash] params (see Client#list_website_certificate_authorities)
      # @param [Hash] options (see Client#list_website_certificate_authorities)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_website_certificate_authorities operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_website_certificate_authorities(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_website_certificate_authorities(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
