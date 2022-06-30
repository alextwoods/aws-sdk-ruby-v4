# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::HealthLake
  module Paginators

    class ListFHIRDatastores
      # @param [Client] client
      # @param [Hash] params (see Client#list_fhir_datastores)
      # @param [Hash] options (see Client#list_fhir_datastores)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_fhir_datastores operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_fhir_datastores(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_fhir_datastores(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFHIRExportJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_fhir_export_jobs)
      # @param [Hash] options (see Client#list_fhir_export_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_fhir_export_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_fhir_export_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_fhir_export_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFHIRImportJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_fhir_import_jobs)
      # @param [Hash] options (see Client#list_fhir_import_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_fhir_import_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_fhir_import_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_fhir_import_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
