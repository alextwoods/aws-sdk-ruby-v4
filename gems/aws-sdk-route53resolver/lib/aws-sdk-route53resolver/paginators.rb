# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Resolver
  module Paginators

    class ListFirewallConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_firewall_configs)
      # @param [Hash] options (see Client#list_firewall_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_firewall_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_firewall_configs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_firewall_configs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFirewallDomainLists
      # @param [Client] client
      # @param [Hash] params (see Client#list_firewall_domain_lists)
      # @param [Hash] options (see Client#list_firewall_domain_lists)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_firewall_domain_lists operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_firewall_domain_lists(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_firewall_domain_lists(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFirewallDomains
      # @param [Client] client
      # @param [Hash] params (see Client#list_firewall_domains)
      # @param [Hash] options (see Client#list_firewall_domains)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_firewall_domains operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_firewall_domains(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_firewall_domains(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFirewallRuleGroupAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#list_firewall_rule_group_associations)
      # @param [Hash] options (see Client#list_firewall_rule_group_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_firewall_rule_group_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_firewall_rule_group_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_firewall_rule_group_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFirewallRuleGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_firewall_rule_groups)
      # @param [Hash] options (see Client#list_firewall_rule_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_firewall_rule_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_firewall_rule_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_firewall_rule_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFirewallRules
      # @param [Client] client
      # @param [Hash] params (see Client#list_firewall_rules)
      # @param [Hash] options (see Client#list_firewall_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_firewall_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_firewall_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_firewall_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResolverConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_resolver_configs)
      # @param [Hash] options (see Client#list_resolver_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resolver_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resolver_configs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resolver_configs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResolverDnssecConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_resolver_dnssec_configs)
      # @param [Hash] options (see Client#list_resolver_dnssec_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resolver_dnssec_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resolver_dnssec_configs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resolver_dnssec_configs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResolverEndpointIpAddresses
      # @param [Client] client
      # @param [Hash] params (see Client#list_resolver_endpoint_ip_addresses)
      # @param [Hash] options (see Client#list_resolver_endpoint_ip_addresses)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resolver_endpoint_ip_addresses operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resolver_endpoint_ip_addresses(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resolver_endpoint_ip_addresses(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResolverEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#list_resolver_endpoints)
      # @param [Hash] options (see Client#list_resolver_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resolver_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resolver_endpoints(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resolver_endpoints(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResolverQueryLogConfigAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#list_resolver_query_log_config_associations)
      # @param [Hash] options (see Client#list_resolver_query_log_config_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resolver_query_log_config_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resolver_query_log_config_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resolver_query_log_config_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResolverQueryLogConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_resolver_query_log_configs)
      # @param [Hash] options (see Client#list_resolver_query_log_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resolver_query_log_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resolver_query_log_configs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resolver_query_log_configs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResolverRuleAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#list_resolver_rule_associations)
      # @param [Hash] options (see Client#list_resolver_rule_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resolver_rule_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resolver_rule_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resolver_rule_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResolverRules
      # @param [Client] client
      # @param [Hash] params (see Client#list_resolver_rules)
      # @param [Hash] options (see Client#list_resolver_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resolver_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resolver_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resolver_rules(params, @options)
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

  end
end
