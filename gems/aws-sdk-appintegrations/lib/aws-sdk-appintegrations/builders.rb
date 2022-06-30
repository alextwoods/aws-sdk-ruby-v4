# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AppIntegrations
  module Builders

    # Operation Builder for CreateDataIntegration
    class CreateDataIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/dataIntegrations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['KmsKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['SourceURI'] = input[:source_uri] unless input[:source_uri].nil?
        data['ScheduleConfig'] = Builders::ScheduleConfiguration.build(input[:schedule_config]) unless input[:schedule_config].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ScheduleConfiguration
    class ScheduleConfiguration
      def self.build(input)
        data = {}
        data['FirstExecutionFrom'] = input[:first_execution_from] unless input[:first_execution_from].nil?
        data['Object'] = input[:object] unless input[:object].nil?
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data
      end
    end

    # Operation Builder for CreateEventIntegration
    class CreateEventIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/eventIntegrations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['EventFilter'] = Builders::EventFilter.build(input[:event_filter]) unless input[:event_filter].nil?
        data['EventBridgeBus'] = input[:event_bridge_bus] unless input[:event_bridge_bus].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EventFilter
    class EventFilter
      def self.build(input)
        data = {}
        data['Source'] = input[:source] unless input[:source].nil?
        data
      end
    end

    # Operation Builder for DeleteDataIntegration
    class DeleteDataIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:data_integration_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :data_integration_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dataIntegrations/%<DataIntegrationIdentifier>s',
            DataIntegrationIdentifier: Hearth::HTTP.uri_escape(input[:data_integration_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEventIntegration
    class DeleteEventIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/eventIntegrations/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDataIntegration
    class GetDataIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dataIntegrations/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEventIntegration
    class GetEventIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/eventIntegrations/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDataIntegrationAssociations
    class ListDataIntegrationAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:data_integration_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :data_integration_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dataIntegrations/%<DataIntegrationIdentifier>s/associations',
            DataIntegrationIdentifier: Hearth::HTTP.uri_escape(input[:data_integration_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDataIntegrations
    class ListDataIntegrations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/dataIntegrations')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEventIntegrationAssociations
    class ListEventIntegrationAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:event_integration_name].to_s.empty?
          raise ArgumentError, "HTTP label :event_integration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/eventIntegrations/%<EventIntegrationName>s/associations',
            EventIntegrationName: Hearth::HTTP.uri_escape(input[:event_integration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEventIntegrations
    class ListEventIntegrations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/eventIntegrations')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDataIntegration
    class UpdateDataIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dataIntegrations/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEventIntegration
    class UpdateEventIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/eventIntegrations/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
