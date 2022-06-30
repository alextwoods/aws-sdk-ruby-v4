# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudDirectory
  module Paginators

    class ListAppliedSchemaArns
      # @param [Client] client
      # @param [Hash] params (see Client#list_applied_schema_arns)
      # @param [Hash] options (see Client#list_applied_schema_arns)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_applied_schema_arns operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_applied_schema_arns(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_applied_schema_arns(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAttachedIndices
      # @param [Client] client
      # @param [Hash] params (see Client#list_attached_indices)
      # @param [Hash] options (see Client#list_attached_indices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_attached_indices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_attached_indices(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_attached_indices(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDevelopmentSchemaArns
      # @param [Client] client
      # @param [Hash] params (see Client#list_development_schema_arns)
      # @param [Hash] options (see Client#list_development_schema_arns)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_development_schema_arns operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_development_schema_arns(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_development_schema_arns(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDirectories
      # @param [Client] client
      # @param [Hash] params (see Client#list_directories)
      # @param [Hash] options (see Client#list_directories)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_directories operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_directories(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_directories(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFacetAttributes
      # @param [Client] client
      # @param [Hash] params (see Client#list_facet_attributes)
      # @param [Hash] options (see Client#list_facet_attributes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_facet_attributes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_facet_attributes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_facet_attributes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFacetNames
      # @param [Client] client
      # @param [Hash] params (see Client#list_facet_names)
      # @param [Hash] options (see Client#list_facet_names)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_facet_names operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_facet_names(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_facet_names(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListIndex
      # @param [Client] client
      # @param [Hash] params (see Client#list_index)
      # @param [Hash] options (see Client#list_index)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_index operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_index(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_index(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListManagedSchemaArns
      # @param [Client] client
      # @param [Hash] params (see Client#list_managed_schema_arns)
      # @param [Hash] options (see Client#list_managed_schema_arns)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_managed_schema_arns operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_managed_schema_arns(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_managed_schema_arns(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListObjectAttributes
      # @param [Client] client
      # @param [Hash] params (see Client#list_object_attributes)
      # @param [Hash] options (see Client#list_object_attributes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_object_attributes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_object_attributes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_object_attributes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListObjectChildren
      # @param [Client] client
      # @param [Hash] params (see Client#list_object_children)
      # @param [Hash] options (see Client#list_object_children)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_object_children operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_object_children(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_object_children(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListObjectParentPaths
      # @param [Client] client
      # @param [Hash] params (see Client#list_object_parent_paths)
      # @param [Hash] options (see Client#list_object_parent_paths)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_object_parent_paths operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_object_parent_paths(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_object_parent_paths(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListObjectParents
      # @param [Client] client
      # @param [Hash] params (see Client#list_object_parents)
      # @param [Hash] options (see Client#list_object_parents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_object_parents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_object_parents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_object_parents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListObjectPolicies
      # @param [Client] client
      # @param [Hash] params (see Client#list_object_policies)
      # @param [Hash] options (see Client#list_object_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_object_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_object_policies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_object_policies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPolicyAttachments
      # @param [Client] client
      # @param [Hash] params (see Client#list_policy_attachments)
      # @param [Hash] options (see Client#list_policy_attachments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_policy_attachments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_policy_attachments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_policy_attachments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPublishedSchemaArns
      # @param [Client] client
      # @param [Hash] params (see Client#list_published_schema_arns)
      # @param [Hash] options (see Client#list_published_schema_arns)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_published_schema_arns operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_published_schema_arns(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_published_schema_arns(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTagsForResource
      # @param [Client] client
      # @param [Hash] params (see Client#list_tags_for_resource)
      # @param [Hash] options (see Client#list_tags_for_resource)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tags_for_resource operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_tags_for_resource(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_tags_for_resource(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTypedLinkFacetAttributes
      # @param [Client] client
      # @param [Hash] params (see Client#list_typed_link_facet_attributes)
      # @param [Hash] options (see Client#list_typed_link_facet_attributes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_typed_link_facet_attributes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_typed_link_facet_attributes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_typed_link_facet_attributes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTypedLinkFacetNames
      # @param [Client] client
      # @param [Hash] params (see Client#list_typed_link_facet_names)
      # @param [Hash] options (see Client#list_typed_link_facet_names)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_typed_link_facet_names operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_typed_link_facet_names(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_typed_link_facet_names(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class LookupPolicy
      # @param [Client] client
      # @param [Hash] params (see Client#lookup_policy)
      # @param [Hash] options (see Client#lookup_policy)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the lookup_policy operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.lookup_policy(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.lookup_policy(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
