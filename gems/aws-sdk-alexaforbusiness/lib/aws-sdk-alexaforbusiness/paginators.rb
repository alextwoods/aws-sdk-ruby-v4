# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AlexaForBusiness
  module Paginators

    class ListBusinessReportSchedules
      # @param [Client] client
      # @param [Hash] params (see Client#list_business_report_schedules)
      # @param [Hash] options (see Client#list_business_report_schedules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_business_report_schedules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_business_report_schedules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_business_report_schedules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListConferenceProviders
      # @param [Client] client
      # @param [Hash] params (see Client#list_conference_providers)
      # @param [Hash] options (see Client#list_conference_providers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_conference_providers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_conference_providers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_conference_providers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDeviceEvents
      # @param [Client] client
      # @param [Hash] params (see Client#list_device_events)
      # @param [Hash] options (see Client#list_device_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_device_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_device_events(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_device_events(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListGatewayGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_gateway_groups)
      # @param [Hash] options (see Client#list_gateway_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_gateway_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_gateway_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_gateway_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListGateways
      # @param [Client] client
      # @param [Hash] params (see Client#list_gateways)
      # @param [Hash] options (see Client#list_gateways)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_gateways operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_gateways(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_gateways(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSkills
      # @param [Client] client
      # @param [Hash] params (see Client#list_skills)
      # @param [Hash] options (see Client#list_skills)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_skills operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_skills(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_skills(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSkillsStoreCategories
      # @param [Client] client
      # @param [Hash] params (see Client#list_skills_store_categories)
      # @param [Hash] options (see Client#list_skills_store_categories)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_skills_store_categories operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_skills_store_categories(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_skills_store_categories(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSkillsStoreSkillsByCategory
      # @param [Client] client
      # @param [Hash] params (see Client#list_skills_store_skills_by_category)
      # @param [Hash] options (see Client#list_skills_store_skills_by_category)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_skills_store_skills_by_category operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_skills_store_skills_by_category(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_skills_store_skills_by_category(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSmartHomeAppliances
      # @param [Client] client
      # @param [Hash] params (see Client#list_smart_home_appliances)
      # @param [Hash] options (see Client#list_smart_home_appliances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_smart_home_appliances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_smart_home_appliances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_smart_home_appliances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTags
      # @param [Client] client
      # @param [Hash] params (see Client#list_tags)
      # @param [Hash] options (see Client#list_tags)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tags operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_tags(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_tags(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchAddressBooks
      # @param [Client] client
      # @param [Hash] params (see Client#search_address_books)
      # @param [Hash] options (see Client#search_address_books)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_address_books operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_address_books(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_address_books(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchContacts
      # @param [Client] client
      # @param [Hash] params (see Client#search_contacts)
      # @param [Hash] options (see Client#search_contacts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_contacts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_contacts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_contacts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchDevices
      # @param [Client] client
      # @param [Hash] params (see Client#search_devices)
      # @param [Hash] options (see Client#search_devices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_devices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_devices(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_devices(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchNetworkProfiles
      # @param [Client] client
      # @param [Hash] params (see Client#search_network_profiles)
      # @param [Hash] options (see Client#search_network_profiles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_network_profiles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_network_profiles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_network_profiles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchProfiles
      # @param [Client] client
      # @param [Hash] params (see Client#search_profiles)
      # @param [Hash] options (see Client#search_profiles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_profiles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_profiles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_profiles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchRooms
      # @param [Client] client
      # @param [Hash] params (see Client#search_rooms)
      # @param [Hash] options (see Client#search_rooms)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_rooms operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_rooms(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_rooms(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchSkillGroups
      # @param [Client] client
      # @param [Hash] params (see Client#search_skill_groups)
      # @param [Hash] options (see Client#search_skill_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_skill_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_skill_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_skill_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchUsers
      # @param [Client] client
      # @param [Hash] params (see Client#search_users)
      # @param [Hash] options (see Client#search_users)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_users operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_users(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_users(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
