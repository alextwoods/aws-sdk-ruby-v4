# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kendra
  module Paginators

    class GetSnapshots
      # @param [Client] client
      # @param [Hash] params (see Client#get_snapshots)
      # @param [Hash] options (see Client#get_snapshots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_snapshots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_snapshots(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_snapshots(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDataSources
      # @param [Client] client
      # @param [Hash] params (see Client#list_data_sources)
      # @param [Hash] options (see Client#list_data_sources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_data_sources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_data_sources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_data_sources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDataSourceSyncJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_data_source_sync_jobs)
      # @param [Hash] options (see Client#list_data_source_sync_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_data_source_sync_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_data_source_sync_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_data_source_sync_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEntityPersonas
      # @param [Client] client
      # @param [Hash] params (see Client#list_entity_personas)
      # @param [Hash] options (see Client#list_entity_personas)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_entity_personas operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_entity_personas(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_entity_personas(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListExperienceEntities
      # @param [Client] client
      # @param [Hash] params (see Client#list_experience_entities)
      # @param [Hash] options (see Client#list_experience_entities)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_experience_entities operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_experience_entities(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_experience_entities(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListExperiences
      # @param [Client] client
      # @param [Hash] params (see Client#list_experiences)
      # @param [Hash] options (see Client#list_experiences)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_experiences operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_experiences(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_experiences(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFaqs
      # @param [Client] client
      # @param [Hash] params (see Client#list_faqs)
      # @param [Hash] options (see Client#list_faqs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_faqs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_faqs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_faqs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListGroupsOlderThanOrderingId
      # @param [Client] client
      # @param [Hash] params (see Client#list_groups_older_than_ordering_id)
      # @param [Hash] options (see Client#list_groups_older_than_ordering_id)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_groups_older_than_ordering_id operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_groups_older_than_ordering_id(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_groups_older_than_ordering_id(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListIndices
      # @param [Client] client
      # @param [Hash] params (see Client#list_indices)
      # @param [Hash] options (see Client#list_indices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_indices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_indices(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_indices(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListQuerySuggestionsBlockLists
      # @param [Client] client
      # @param [Hash] params (see Client#list_query_suggestions_block_lists)
      # @param [Hash] options (see Client#list_query_suggestions_block_lists)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_query_suggestions_block_lists operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_query_suggestions_block_lists(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_query_suggestions_block_lists(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListThesauri
      # @param [Client] client
      # @param [Hash] params (see Client#list_thesauri)
      # @param [Hash] options (see Client#list_thesauri)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_thesauri operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_thesauri(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_thesauri(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
