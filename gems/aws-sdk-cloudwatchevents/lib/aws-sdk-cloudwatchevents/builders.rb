# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatchEvents
  module Builders

    # Operation Builder for ActivateEventSource
    class ActivateEventSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ActivateEventSource'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelReplay
    class CancelReplay
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.CancelReplay'
        data = {}
        data['ReplayName'] = input[:replay_name] unless input[:replay_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateApiDestination
    class CreateApiDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.CreateApiDestination'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ConnectionArn'] = input[:connection_arn] unless input[:connection_arn].nil?
        data['InvocationEndpoint'] = input[:invocation_endpoint] unless input[:invocation_endpoint].nil?
        data['HttpMethod'] = input[:http_method] unless input[:http_method].nil?
        data['InvocationRateLimitPerSecond'] = input[:invocation_rate_limit_per_second] unless input[:invocation_rate_limit_per_second].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateArchive
    class CreateArchive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.CreateArchive'
        data = {}
        data['ArchiveName'] = input[:archive_name] unless input[:archive_name].nil?
        data['EventSourceArn'] = input[:event_source_arn] unless input[:event_source_arn].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['EventPattern'] = input[:event_pattern] unless input[:event_pattern].nil?
        data['RetentionDays'] = input[:retention_days] unless input[:retention_days].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateConnection
    class CreateConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.CreateConnection'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['AuthorizationType'] = input[:authorization_type] unless input[:authorization_type].nil?
        data['AuthParameters'] = Builders::CreateConnectionAuthRequestParameters.build(input[:auth_parameters]) unless input[:auth_parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateConnectionAuthRequestParameters
    class CreateConnectionAuthRequestParameters
      def self.build(input)
        data = {}
        data['BasicAuthParameters'] = Builders::CreateConnectionBasicAuthRequestParameters.build(input[:basic_auth_parameters]) unless input[:basic_auth_parameters].nil?
        data['OAuthParameters'] = Builders::CreateConnectionOAuthRequestParameters.build(input[:o_auth_parameters]) unless input[:o_auth_parameters].nil?
        data['ApiKeyAuthParameters'] = Builders::CreateConnectionApiKeyAuthRequestParameters.build(input[:api_key_auth_parameters]) unless input[:api_key_auth_parameters].nil?
        data['InvocationHttpParameters'] = Builders::ConnectionHttpParameters.build(input[:invocation_http_parameters]) unless input[:invocation_http_parameters].nil?
        data
      end
    end

    # Structure Builder for ConnectionHttpParameters
    class ConnectionHttpParameters
      def self.build(input)
        data = {}
        data['HeaderParameters'] = Builders::ConnectionHeaderParametersList.build(input[:header_parameters]) unless input[:header_parameters].nil?
        data['QueryStringParameters'] = Builders::ConnectionQueryStringParametersList.build(input[:query_string_parameters]) unless input[:query_string_parameters].nil?
        data['BodyParameters'] = Builders::ConnectionBodyParametersList.build(input[:body_parameters]) unless input[:body_parameters].nil?
        data
      end
    end

    # List Builder for ConnectionBodyParametersList
    class ConnectionBodyParametersList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConnectionBodyParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConnectionBodyParameter
    class ConnectionBodyParameter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['IsValueSecret'] = input[:is_value_secret] unless input[:is_value_secret].nil?
        data
      end
    end

    # List Builder for ConnectionQueryStringParametersList
    class ConnectionQueryStringParametersList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConnectionQueryStringParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConnectionQueryStringParameter
    class ConnectionQueryStringParameter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['IsValueSecret'] = input[:is_value_secret] unless input[:is_value_secret].nil?
        data
      end
    end

    # List Builder for ConnectionHeaderParametersList
    class ConnectionHeaderParametersList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConnectionHeaderParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConnectionHeaderParameter
    class ConnectionHeaderParameter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['IsValueSecret'] = input[:is_value_secret] unless input[:is_value_secret].nil?
        data
      end
    end

    # Structure Builder for CreateConnectionApiKeyAuthRequestParameters
    class CreateConnectionApiKeyAuthRequestParameters
      def self.build(input)
        data = {}
        data['ApiKeyName'] = input[:api_key_name] unless input[:api_key_name].nil?
        data['ApiKeyValue'] = input[:api_key_value] unless input[:api_key_value].nil?
        data
      end
    end

    # Structure Builder for CreateConnectionOAuthRequestParameters
    class CreateConnectionOAuthRequestParameters
      def self.build(input)
        data = {}
        data['ClientParameters'] = Builders::CreateConnectionOAuthClientRequestParameters.build(input[:client_parameters]) unless input[:client_parameters].nil?
        data['AuthorizationEndpoint'] = input[:authorization_endpoint] unless input[:authorization_endpoint].nil?
        data['HttpMethod'] = input[:http_method] unless input[:http_method].nil?
        data['OAuthHttpParameters'] = Builders::ConnectionHttpParameters.build(input[:o_auth_http_parameters]) unless input[:o_auth_http_parameters].nil?
        data
      end
    end

    # Structure Builder for CreateConnectionOAuthClientRequestParameters
    class CreateConnectionOAuthClientRequestParameters
      def self.build(input)
        data = {}
        data['ClientID'] = input[:client_id] unless input[:client_id].nil?
        data['ClientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data
      end
    end

    # Structure Builder for CreateConnectionBasicAuthRequestParameters
    class CreateConnectionBasicAuthRequestParameters
      def self.build(input)
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data
      end
    end

    # Operation Builder for CreateEventBus
    class CreateEventBus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.CreateEventBus'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['EventSourceName'] = input[:event_source_name] unless input[:event_source_name].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreatePartnerEventSource
    class CreatePartnerEventSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.CreatePartnerEventSource'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Account'] = input[:account] unless input[:account].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeactivateEventSource
    class DeactivateEventSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DeactivateEventSource'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeauthorizeConnection
    class DeauthorizeConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DeauthorizeConnection'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApiDestination
    class DeleteApiDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DeleteApiDestination'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteArchive
    class DeleteArchive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DeleteArchive'
        data = {}
        data['ArchiveName'] = input[:archive_name] unless input[:archive_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConnection
    class DeleteConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DeleteConnection'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEventBus
    class DeleteEventBus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DeleteEventBus'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePartnerEventSource
    class DeletePartnerEventSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DeletePartnerEventSource'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Account'] = input[:account] unless input[:account].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRule
    class DeleteRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DeleteRule'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        data['Force'] = input[:force] unless input[:force].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApiDestination
    class DescribeApiDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DescribeApiDestination'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeArchive
    class DescribeArchive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DescribeArchive'
        data = {}
        data['ArchiveName'] = input[:archive_name] unless input[:archive_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConnection
    class DescribeConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DescribeConnection'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEventBus
    class DescribeEventBus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DescribeEventBus'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEventSource
    class DescribeEventSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DescribeEventSource'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePartnerEventSource
    class DescribePartnerEventSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DescribePartnerEventSource'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReplay
    class DescribeReplay
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DescribeReplay'
        data = {}
        data['ReplayName'] = input[:replay_name] unless input[:replay_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRule
    class DescribeRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DescribeRule'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableRule
    class DisableRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.DisableRule'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableRule
    class EnableRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.EnableRule'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApiDestinations
    class ListApiDestinations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListApiDestinations'
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['ConnectionArn'] = input[:connection_arn] unless input[:connection_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListArchives
    class ListArchives
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListArchives'
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['EventSourceArn'] = input[:event_source_arn] unless input[:event_source_arn].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListConnections
    class ListConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListConnections'
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['ConnectionState'] = input[:connection_state] unless input[:connection_state].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEventBuses
    class ListEventBuses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListEventBuses'
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEventSources
    class ListEventSources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListEventSources'
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPartnerEventSourceAccounts
    class ListPartnerEventSourceAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListPartnerEventSourceAccounts'
        data = {}
        data['EventSourceName'] = input[:event_source_name] unless input[:event_source_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPartnerEventSources
    class ListPartnerEventSources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListPartnerEventSources'
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListReplays
    class ListReplays
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListReplays'
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['EventSourceArn'] = input[:event_source_arn] unless input[:event_source_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRuleNamesByTarget
    class ListRuleNamesByTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListRuleNamesByTarget'
        data = {}
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRules
    class ListRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListRules'
        data = {}
        data['NamePrefix'] = input[:name_prefix] unless input[:name_prefix].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTargetsByRule
    class ListTargetsByRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.ListTargetsByRule'
        data = {}
        data['Rule'] = input[:rule] unless input[:rule].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutEvents
    class PutEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.PutEvents'
        data = {}
        data['Entries'] = Builders::PutEventsRequestEntryList.build(input[:entries]) unless input[:entries].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PutEventsRequestEntryList
    class PutEventsRequestEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PutEventsRequestEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PutEventsRequestEntry
    class PutEventsRequestEntry
      def self.build(input)
        data = {}
        data['Time'] = Hearth::TimeHelper.to_epoch_seconds(input[:time]).to_i unless input[:time].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['Resources'] = Builders::EventResourceList.build(input[:resources]) unless input[:resources].nil?
        data['DetailType'] = input[:detail_type] unless input[:detail_type].nil?
        data['Detail'] = input[:detail] unless input[:detail].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        data['TraceHeader'] = input[:trace_header] unless input[:trace_header].nil?
        data
      end
    end

    # List Builder for EventResourceList
    class EventResourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutPartnerEvents
    class PutPartnerEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.PutPartnerEvents'
        data = {}
        data['Entries'] = Builders::PutPartnerEventsRequestEntryList.build(input[:entries]) unless input[:entries].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PutPartnerEventsRequestEntryList
    class PutPartnerEventsRequestEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PutPartnerEventsRequestEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PutPartnerEventsRequestEntry
    class PutPartnerEventsRequestEntry
      def self.build(input)
        data = {}
        data['Time'] = Hearth::TimeHelper.to_epoch_seconds(input[:time]).to_i unless input[:time].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['Resources'] = Builders::EventResourceList.build(input[:resources]) unless input[:resources].nil?
        data['DetailType'] = input[:detail_type] unless input[:detail_type].nil?
        data['Detail'] = input[:detail] unless input[:detail].nil?
        data
      end
    end

    # Operation Builder for PutPermission
    class PutPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.PutPermission'
        data = {}
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['Principal'] = input[:principal] unless input[:principal].nil?
        data['StatementId'] = input[:statement_id] unless input[:statement_id].nil?
        data['Condition'] = Builders::Condition.build(input[:condition]) unless input[:condition].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for PutRule
    class PutRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.PutRule'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data['EventPattern'] = input[:event_pattern] unless input[:event_pattern].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutTargets
    class PutTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.PutTargets'
        data = {}
        data['Rule'] = input[:rule] unless input[:rule].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        data['Targets'] = Builders::TargetList.build(input[:targets]) unless input[:targets].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TargetList
    class TargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Target.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Target
    class Target
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Input'] = input[:input] unless input[:input].nil?
        data['InputPath'] = input[:input_path] unless input[:input_path].nil?
        data['InputTransformer'] = Builders::InputTransformer.build(input[:input_transformer]) unless input[:input_transformer].nil?
        data['KinesisParameters'] = Builders::KinesisParameters.build(input[:kinesis_parameters]) unless input[:kinesis_parameters].nil?
        data['RunCommandParameters'] = Builders::RunCommandParameters.build(input[:run_command_parameters]) unless input[:run_command_parameters].nil?
        data['EcsParameters'] = Builders::EcsParameters.build(input[:ecs_parameters]) unless input[:ecs_parameters].nil?
        data['BatchParameters'] = Builders::BatchParameters.build(input[:batch_parameters]) unless input[:batch_parameters].nil?
        data['SqsParameters'] = Builders::SqsParameters.build(input[:sqs_parameters]) unless input[:sqs_parameters].nil?
        data['HttpParameters'] = Builders::HttpParameters.build(input[:http_parameters]) unless input[:http_parameters].nil?
        data['RedshiftDataParameters'] = Builders::RedshiftDataParameters.build(input[:redshift_data_parameters]) unless input[:redshift_data_parameters].nil?
        data['SageMakerPipelineParameters'] = Builders::SageMakerPipelineParameters.build(input[:sage_maker_pipeline_parameters]) unless input[:sage_maker_pipeline_parameters].nil?
        data['DeadLetterConfig'] = Builders::DeadLetterConfig.build(input[:dead_letter_config]) unless input[:dead_letter_config].nil?
        data['RetryPolicy'] = Builders::RetryPolicy.build(input[:retry_policy]) unless input[:retry_policy].nil?
        data
      end
    end

    # Structure Builder for RetryPolicy
    class RetryPolicy
      def self.build(input)
        data = {}
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = input[:maximum_event_age_in_seconds] unless input[:maximum_event_age_in_seconds].nil?
        data
      end
    end

    # Structure Builder for DeadLetterConfig
    class DeadLetterConfig
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Structure Builder for SageMakerPipelineParameters
    class SageMakerPipelineParameters
      def self.build(input)
        data = {}
        data['PipelineParameterList'] = Builders::SageMakerPipelineParameterList.build(input[:pipeline_parameter_list]) unless input[:pipeline_parameter_list].nil?
        data
      end
    end

    # List Builder for SageMakerPipelineParameterList
    class SageMakerPipelineParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SageMakerPipelineParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SageMakerPipelineParameter
    class SageMakerPipelineParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for RedshiftDataParameters
    class RedshiftDataParameters
      def self.build(input)
        data = {}
        data['SecretManagerArn'] = input[:secret_manager_arn] unless input[:secret_manager_arn].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['Sql'] = input[:sql] unless input[:sql].nil?
        data['StatementName'] = input[:statement_name] unless input[:statement_name].nil?
        data['WithEvent'] = input[:with_event] unless input[:with_event].nil?
        data
      end
    end

    # Structure Builder for HttpParameters
    class HttpParameters
      def self.build(input)
        data = {}
        data['PathParameterValues'] = Builders::PathParameterList.build(input[:path_parameter_values]) unless input[:path_parameter_values].nil?
        data['HeaderParameters'] = Builders::HeaderParametersMap.build(input[:header_parameters]) unless input[:header_parameters].nil?
        data['QueryStringParameters'] = Builders::QueryStringParametersMap.build(input[:query_string_parameters]) unless input[:query_string_parameters].nil?
        data
      end
    end

    # Map Builder for QueryStringParametersMap
    class QueryStringParametersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for HeaderParametersMap
    class HeaderParametersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for PathParameterList
    class PathParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SqsParameters
    class SqsParameters
      def self.build(input)
        data = {}
        data['MessageGroupId'] = input[:message_group_id] unless input[:message_group_id].nil?
        data
      end
    end

    # Structure Builder for BatchParameters
    class BatchParameters
      def self.build(input)
        data = {}
        data['JobDefinition'] = input[:job_definition] unless input[:job_definition].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['ArrayProperties'] = Builders::BatchArrayProperties.build(input[:array_properties]) unless input[:array_properties].nil?
        data['RetryStrategy'] = Builders::BatchRetryStrategy.build(input[:retry_strategy]) unless input[:retry_strategy].nil?
        data
      end
    end

    # Structure Builder for BatchRetryStrategy
    class BatchRetryStrategy
      def self.build(input)
        data = {}
        data['Attempts'] = input[:attempts] unless input[:attempts].nil?
        data
      end
    end

    # Structure Builder for BatchArrayProperties
    class BatchArrayProperties
      def self.build(input)
        data = {}
        data['Size'] = input[:size] unless input[:size].nil?
        data
      end
    end

    # Structure Builder for EcsParameters
    class EcsParameters
      def self.build(input)
        data = {}
        data['TaskDefinitionArn'] = input[:task_definition_arn] unless input[:task_definition_arn].nil?
        data['TaskCount'] = input[:task_count] unless input[:task_count].nil?
        data['LaunchType'] = input[:launch_type] unless input[:launch_type].nil?
        data['NetworkConfiguration'] = Builders::NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['PlatformVersion'] = input[:platform_version] unless input[:platform_version].nil?
        data['Group'] = input[:group] unless input[:group].nil?
        data['CapacityProviderStrategy'] = Builders::CapacityProviderStrategy.build(input[:capacity_provider_strategy]) unless input[:capacity_provider_strategy].nil?
        data['EnableECSManagedTags'] = input[:enable_ecs_managed_tags] unless input[:enable_ecs_managed_tags].nil?
        data['EnableExecuteCommand'] = input[:enable_execute_command] unless input[:enable_execute_command].nil?
        data['PlacementConstraints'] = Builders::PlacementConstraints.build(input[:placement_constraints]) unless input[:placement_constraints].nil?
        data['PlacementStrategy'] = Builders::PlacementStrategies.build(input[:placement_strategy]) unless input[:placement_strategy].nil?
        data['PropagateTags'] = input[:propagate_tags] unless input[:propagate_tags].nil?
        data['ReferenceId'] = input[:reference_id] unless input[:reference_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # List Builder for PlacementStrategies
    class PlacementStrategies
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PlacementStrategy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PlacementStrategy
    class PlacementStrategy
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['field'] = input[:field] unless input[:field].nil?
        data
      end
    end

    # List Builder for PlacementConstraints
    class PlacementConstraints
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PlacementConstraint.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PlacementConstraint
    class PlacementConstraint
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['expression'] = input[:expression] unless input[:expression].nil?
        data
      end
    end

    # List Builder for CapacityProviderStrategy
    class CapacityProviderStrategy
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CapacityProviderStrategyItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CapacityProviderStrategyItem
    class CapacityProviderStrategyItem
      def self.build(input)
        data = {}
        data['capacityProvider'] = input[:capacity_provider] unless input[:capacity_provider].nil?
        data['weight'] = input[:weight] unless input[:weight].nil?
        data['base'] = input[:base] unless input[:base].nil?
        data
      end
    end

    # Structure Builder for NetworkConfiguration
    class NetworkConfiguration
      def self.build(input)
        data = {}
        data['awsvpcConfiguration'] = Builders::AwsVpcConfiguration.build(input[:awsvpc_configuration]) unless input[:awsvpc_configuration].nil?
        data
      end
    end

    # Structure Builder for AwsVpcConfiguration
    class AwsVpcConfiguration
      def self.build(input)
        data = {}
        data['Subnets'] = Builders::StringList.build(input[:subnets]) unless input[:subnets].nil?
        data['SecurityGroups'] = Builders::StringList.build(input[:security_groups]) unless input[:security_groups].nil?
        data['AssignPublicIp'] = input[:assign_public_ip] unless input[:assign_public_ip].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RunCommandParameters
    class RunCommandParameters
      def self.build(input)
        data = {}
        data['RunCommandTargets'] = Builders::RunCommandTargets.build(input[:run_command_targets]) unless input[:run_command_targets].nil?
        data
      end
    end

    # List Builder for RunCommandTargets
    class RunCommandTargets
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RunCommandTarget.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RunCommandTarget
    class RunCommandTarget
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::RunCommandTargetValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for RunCommandTargetValues
    class RunCommandTargetValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KinesisParameters
    class KinesisParameters
      def self.build(input)
        data = {}
        data['PartitionKeyPath'] = input[:partition_key_path] unless input[:partition_key_path].nil?
        data
      end
    end

    # Structure Builder for InputTransformer
    class InputTransformer
      def self.build(input)
        data = {}
        data['InputPathsMap'] = Builders::TransformerPaths.build(input[:input_paths_map]) unless input[:input_paths_map].nil?
        data['InputTemplate'] = input[:input_template] unless input[:input_template].nil?
        data
      end
    end

    # Map Builder for TransformerPaths
    class TransformerPaths
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for RemovePermission
    class RemovePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.RemovePermission'
        data = {}
        data['StatementId'] = input[:statement_id] unless input[:statement_id].nil?
        data['RemoveAllPermissions'] = input[:remove_all_permissions] unless input[:remove_all_permissions].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveTargets
    class RemoveTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.RemoveTargets'
        data = {}
        data['Rule'] = input[:rule] unless input[:rule].nil?
        data['EventBusName'] = input[:event_bus_name] unless input[:event_bus_name].nil?
        data['Ids'] = Builders::TargetIdList.build(input[:ids]) unless input[:ids].nil?
        data['Force'] = input[:force] unless input[:force].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TargetIdList
    class TargetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartReplay
    class StartReplay
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.StartReplay'
        data = {}
        data['ReplayName'] = input[:replay_name] unless input[:replay_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['EventSourceArn'] = input[:event_source_arn] unless input[:event_source_arn].nil?
        data['EventStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:event_start_time]).to_i unless input[:event_start_time].nil?
        data['EventEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:event_end_time]).to_i unless input[:event_end_time].nil?
        data['Destination'] = Builders::ReplayDestination.build(input[:destination]) unless input[:destination].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReplayDestination
    class ReplayDestination
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['FilterArns'] = Builders::ReplayDestinationFilters.build(input[:filter_arns]) unless input[:filter_arns].nil?
        data
      end
    end

    # List Builder for ReplayDestinationFilters
    class ReplayDestinationFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TestEventPattern
    class TestEventPattern
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.TestEventPattern'
        data = {}
        data['EventPattern'] = input[:event_pattern] unless input[:event_pattern].nil?
        data['Event'] = input[:event] unless input[:event].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateApiDestination
    class UpdateApiDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.UpdateApiDestination'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ConnectionArn'] = input[:connection_arn] unless input[:connection_arn].nil?
        data['InvocationEndpoint'] = input[:invocation_endpoint] unless input[:invocation_endpoint].nil?
        data['HttpMethod'] = input[:http_method] unless input[:http_method].nil?
        data['InvocationRateLimitPerSecond'] = input[:invocation_rate_limit_per_second] unless input[:invocation_rate_limit_per_second].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateArchive
    class UpdateArchive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.UpdateArchive'
        data = {}
        data['ArchiveName'] = input[:archive_name] unless input[:archive_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['EventPattern'] = input[:event_pattern] unless input[:event_pattern].nil?
        data['RetentionDays'] = input[:retention_days] unless input[:retention_days].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateConnection
    class UpdateConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEvents.UpdateConnection'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['AuthorizationType'] = input[:authorization_type] unless input[:authorization_type].nil?
        data['AuthParameters'] = Builders::UpdateConnectionAuthRequestParameters.build(input[:auth_parameters]) unless input[:auth_parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateConnectionAuthRequestParameters
    class UpdateConnectionAuthRequestParameters
      def self.build(input)
        data = {}
        data['BasicAuthParameters'] = Builders::UpdateConnectionBasicAuthRequestParameters.build(input[:basic_auth_parameters]) unless input[:basic_auth_parameters].nil?
        data['OAuthParameters'] = Builders::UpdateConnectionOAuthRequestParameters.build(input[:o_auth_parameters]) unless input[:o_auth_parameters].nil?
        data['ApiKeyAuthParameters'] = Builders::UpdateConnectionApiKeyAuthRequestParameters.build(input[:api_key_auth_parameters]) unless input[:api_key_auth_parameters].nil?
        data['InvocationHttpParameters'] = Builders::ConnectionHttpParameters.build(input[:invocation_http_parameters]) unless input[:invocation_http_parameters].nil?
        data
      end
    end

    # Structure Builder for UpdateConnectionApiKeyAuthRequestParameters
    class UpdateConnectionApiKeyAuthRequestParameters
      def self.build(input)
        data = {}
        data['ApiKeyName'] = input[:api_key_name] unless input[:api_key_name].nil?
        data['ApiKeyValue'] = input[:api_key_value] unless input[:api_key_value].nil?
        data
      end
    end

    # Structure Builder for UpdateConnectionOAuthRequestParameters
    class UpdateConnectionOAuthRequestParameters
      def self.build(input)
        data = {}
        data['ClientParameters'] = Builders::UpdateConnectionOAuthClientRequestParameters.build(input[:client_parameters]) unless input[:client_parameters].nil?
        data['AuthorizationEndpoint'] = input[:authorization_endpoint] unless input[:authorization_endpoint].nil?
        data['HttpMethod'] = input[:http_method] unless input[:http_method].nil?
        data['OAuthHttpParameters'] = Builders::ConnectionHttpParameters.build(input[:o_auth_http_parameters]) unless input[:o_auth_http_parameters].nil?
        data
      end
    end

    # Structure Builder for UpdateConnectionOAuthClientRequestParameters
    class UpdateConnectionOAuthClientRequestParameters
      def self.build(input)
        data = {}
        data['ClientID'] = input[:client_id] unless input[:client_id].nil?
        data['ClientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data
      end
    end

    # Structure Builder for UpdateConnectionBasicAuthRequestParameters
    class UpdateConnectionBasicAuthRequestParameters
      def self.build(input)
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data
      end
    end
  end
end
