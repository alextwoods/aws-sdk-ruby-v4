# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCommit
  module Paginators

    class DescribeMergeConflicts
      # @param [Client] client
      # @param [Hash] params (see Client#describe_merge_conflicts)
      # @param [Hash] options (see Client#describe_merge_conflicts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_merge_conflicts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_merge_conflicts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_merge_conflicts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribePullRequestEvents
      # @param [Client] client
      # @param [Hash] params (see Client#describe_pull_request_events)
      # @param [Hash] options (see Client#describe_pull_request_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_pull_request_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_pull_request_events(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_pull_request_events(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetCommentReactions
      # @param [Client] client
      # @param [Hash] params (see Client#get_comment_reactions)
      # @param [Hash] options (see Client#get_comment_reactions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_comment_reactions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_comment_reactions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_comment_reactions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetCommentsForComparedCommit
      # @param [Client] client
      # @param [Hash] params (see Client#get_comments_for_compared_commit)
      # @param [Hash] options (see Client#get_comments_for_compared_commit)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_comments_for_compared_commit operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_comments_for_compared_commit(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_comments_for_compared_commit(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetCommentsForPullRequest
      # @param [Client] client
      # @param [Hash] params (see Client#get_comments_for_pull_request)
      # @param [Hash] options (see Client#get_comments_for_pull_request)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_comments_for_pull_request operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_comments_for_pull_request(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_comments_for_pull_request(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetDifferences
      # @param [Client] client
      # @param [Hash] params (see Client#get_differences)
      # @param [Hash] options (see Client#get_differences)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_differences operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_differences(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_differences(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetMergeConflicts
      # @param [Client] client
      # @param [Hash] params (see Client#get_merge_conflicts)
      # @param [Hash] options (see Client#get_merge_conflicts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_merge_conflicts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_merge_conflicts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_merge_conflicts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListApprovalRuleTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_approval_rule_templates)
      # @param [Hash] options (see Client#list_approval_rule_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_approval_rule_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_approval_rule_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_approval_rule_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssociatedApprovalRuleTemplatesForRepository
      # @param [Client] client
      # @param [Hash] params (see Client#list_associated_approval_rule_templates_for_repository)
      # @param [Hash] options (see Client#list_associated_approval_rule_templates_for_repository)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_associated_approval_rule_templates_for_repository operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_associated_approval_rule_templates_for_repository(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_associated_approval_rule_templates_for_repository(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBranches
      # @param [Client] client
      # @param [Hash] params (see Client#list_branches)
      # @param [Hash] options (see Client#list_branches)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_branches operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_branches(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_branches(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_branches operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.branches.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPullRequests
      # @param [Client] client
      # @param [Hash] params (see Client#list_pull_requests)
      # @param [Hash] options (see Client#list_pull_requests)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pull_requests operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pull_requests(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pull_requests(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRepositories
      # @param [Client] client
      # @param [Hash] params (see Client#list_repositories)
      # @param [Hash] options (see Client#list_repositories)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_repositories operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_repositories(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_repositories(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_repositories operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.repositories.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRepositoriesForApprovalRuleTemplate
      # @param [Client] client
      # @param [Hash] params (see Client#list_repositories_for_approval_rule_template)
      # @param [Hash] options (see Client#list_repositories_for_approval_rule_template)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_repositories_for_approval_rule_template operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_repositories_for_approval_rule_template(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_repositories_for_approval_rule_template(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
