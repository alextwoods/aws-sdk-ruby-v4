# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EventBridge
  module Parsers

    # Operation Parser for ActivateEventSource
    class ActivateEventSource
      def self.parse(http_resp)
        data = Types::ActivateEventSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidStateException
    class InvalidStateException
      def self.parse(http_resp)
        data = Types::InvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalException
    class InternalException
      def self.parse(http_resp)
        data = Types::InternalException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OperationDisabledException
    class OperationDisabledException
      def self.parse(http_resp)
        data = Types::OperationDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CancelReplay
    class CancelReplay
      def self.parse(http_resp)
        data = Types::CancelReplayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replay_arn = map['ReplayArn']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data
      end
    end

    # Error Parser for IllegalStatusException
    class IllegalStatusException
      def self.parse(http_resp)
        data = Types::IllegalStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateApiDestination
    class CreateApiDestination
      def self.parse(http_resp)
        data = Types::CreateApiDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.api_destination_arn = map['ApiDestinationArn']
        data.api_destination_state = map['ApiDestinationState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateArchive
    class CreateArchive
      def self.parse(http_resp)
        data = Types::CreateArchiveOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.archive_arn = map['ArchiveArn']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    # Error Parser for InvalidEventPatternException
    class InvalidEventPatternException
      def self.parse(http_resp)
        data = Types::InvalidEventPatternException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateConnection
    class CreateConnection
      def self.parse(http_resp)
        data = Types::CreateConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_arn = map['ConnectionArn']
        data.connection_state = map['ConnectionState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data
      end
    end

    # Operation Parser for CreateEndpoint
    class CreateEndpoint
      def self.parse(http_resp)
        data = Types::CreateEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.routing_config = (RoutingConfig.parse(map['RoutingConfig']) unless map['RoutingConfig'].nil?)
        data.replication_config = (ReplicationConfig.parse(map['ReplicationConfig']) unless map['ReplicationConfig'].nil?)
        data.event_buses = (EndpointEventBusList.parse(map['EventBuses']) unless map['EventBuses'].nil?)
        data.role_arn = map['RoleArn']
        data.state = map['State']
        data
      end
    end

    class EndpointEventBusList
      def self.parse(list)
        list.map do |value|
          EndpointEventBus.parse(value) unless value.nil?
        end
      end
    end

    class EndpointEventBus
      def self.parse(map)
        data = Types::EndpointEventBus.new
        data.event_bus_arn = map['EventBusArn']
        return data
      end
    end

    class ReplicationConfig
      def self.parse(map)
        data = Types::ReplicationConfig.new
        data.state = map['State']
        return data
      end
    end

    class RoutingConfig
      def self.parse(map)
        data = Types::RoutingConfig.new
        data.failover_config = (FailoverConfig.parse(map['FailoverConfig']) unless map['FailoverConfig'].nil?)
        return data
      end
    end

    class FailoverConfig
      def self.parse(map)
        data = Types::FailoverConfig.new
        data.primary = (Primary.parse(map['Primary']) unless map['Primary'].nil?)
        data.secondary = (Secondary.parse(map['Secondary']) unless map['Secondary'].nil?)
        return data
      end
    end

    class Secondary
      def self.parse(map)
        data = Types::Secondary.new
        data.route = map['Route']
        return data
      end
    end

    class Primary
      def self.parse(map)
        data = Types::Primary.new
        data.health_check = map['HealthCheck']
        return data
      end
    end

    # Operation Parser for CreateEventBus
    class CreateEventBus
      def self.parse(http_resp)
        data = Types::CreateEventBusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_bus_arn = map['EventBusArn']
        data
      end
    end

    # Operation Parser for CreatePartnerEventSource
    class CreatePartnerEventSource
      def self.parse(http_resp)
        data = Types::CreatePartnerEventSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_source_arn = map['EventSourceArn']
        data
      end
    end

    # Operation Parser for DeactivateEventSource
    class DeactivateEventSource
      def self.parse(http_resp)
        data = Types::DeactivateEventSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeauthorizeConnection
    class DeauthorizeConnection
      def self.parse(http_resp)
        data = Types::DeauthorizeConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_arn = map['ConnectionArn']
        data.connection_state = map['ConnectionState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_authorized_time = Time.at(map['LastAuthorizedTime'].to_i) if map['LastAuthorizedTime']
        data
      end
    end

    # Operation Parser for DeleteApiDestination
    class DeleteApiDestination
      def self.parse(http_resp)
        data = Types::DeleteApiDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteArchive
    class DeleteArchive
      def self.parse(http_resp)
        data = Types::DeleteArchiveOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteConnection
    class DeleteConnection
      def self.parse(http_resp)
        data = Types::DeleteConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_arn = map['ConnectionArn']
        data.connection_state = map['ConnectionState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_authorized_time = Time.at(map['LastAuthorizedTime'].to_i) if map['LastAuthorizedTime']
        data
      end
    end

    # Operation Parser for DeleteEndpoint
    class DeleteEndpoint
      def self.parse(http_resp)
        data = Types::DeleteEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEventBus
    class DeleteEventBus
      def self.parse(http_resp)
        data = Types::DeleteEventBusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePartnerEventSource
    class DeletePartnerEventSource
      def self.parse(http_resp)
        data = Types::DeletePartnerEventSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRule
    class DeleteRule
      def self.parse(http_resp)
        data = Types::DeleteRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ManagedRuleException
    class ManagedRuleException
      def self.parse(http_resp)
        data = Types::ManagedRuleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeApiDestination
    class DescribeApiDestination
      def self.parse(http_resp)
        data = Types::DescribeApiDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.api_destination_arn = map['ApiDestinationArn']
        data.name = map['Name']
        data.description = map['Description']
        data.api_destination_state = map['ApiDestinationState']
        data.connection_arn = map['ConnectionArn']
        data.invocation_endpoint = map['InvocationEndpoint']
        data.http_method = map['HttpMethod']
        data.invocation_rate_limit_per_second = map['InvocationRateLimitPerSecond']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data
      end
    end

    # Operation Parser for DescribeArchive
    class DescribeArchive
      def self.parse(http_resp)
        data = Types::DescribeArchiveOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.archive_arn = map['ArchiveArn']
        data.archive_name = map['ArchiveName']
        data.event_source_arn = map['EventSourceArn']
        data.description = map['Description']
        data.event_pattern = map['EventPattern']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.retention_days = map['RetentionDays']
        data.size_bytes = map['SizeBytes']
        data.event_count = map['EventCount']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    # Operation Parser for DescribeConnection
    class DescribeConnection
      def self.parse(http_resp)
        data = Types::DescribeConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_arn = map['ConnectionArn']
        data.name = map['Name']
        data.description = map['Description']
        data.connection_state = map['ConnectionState']
        data.state_reason = map['StateReason']
        data.authorization_type = map['AuthorizationType']
        data.secret_arn = map['SecretArn']
        data.auth_parameters = (ConnectionAuthResponseParameters.parse(map['AuthParameters']) unless map['AuthParameters'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_authorized_time = Time.at(map['LastAuthorizedTime'].to_i) if map['LastAuthorizedTime']
        data
      end
    end

    class ConnectionAuthResponseParameters
      def self.parse(map)
        data = Types::ConnectionAuthResponseParameters.new
        data.basic_auth_parameters = (ConnectionBasicAuthResponseParameters.parse(map['BasicAuthParameters']) unless map['BasicAuthParameters'].nil?)
        data.o_auth_parameters = (ConnectionOAuthResponseParameters.parse(map['OAuthParameters']) unless map['OAuthParameters'].nil?)
        data.api_key_auth_parameters = (ConnectionApiKeyAuthResponseParameters.parse(map['ApiKeyAuthParameters']) unless map['ApiKeyAuthParameters'].nil?)
        data.invocation_http_parameters = (ConnectionHttpParameters.parse(map['InvocationHttpParameters']) unless map['InvocationHttpParameters'].nil?)
        return data
      end
    end

    class ConnectionHttpParameters
      def self.parse(map)
        data = Types::ConnectionHttpParameters.new
        data.header_parameters = (ConnectionHeaderParametersList.parse(map['HeaderParameters']) unless map['HeaderParameters'].nil?)
        data.query_string_parameters = (ConnectionQueryStringParametersList.parse(map['QueryStringParameters']) unless map['QueryStringParameters'].nil?)
        data.body_parameters = (ConnectionBodyParametersList.parse(map['BodyParameters']) unless map['BodyParameters'].nil?)
        return data
      end
    end

    class ConnectionBodyParametersList
      def self.parse(list)
        list.map do |value|
          ConnectionBodyParameter.parse(value) unless value.nil?
        end
      end
    end

    class ConnectionBodyParameter
      def self.parse(map)
        data = Types::ConnectionBodyParameter.new
        data.key = map['Key']
        data.value = map['Value']
        data.is_value_secret = map['IsValueSecret']
        return data
      end
    end

    class ConnectionQueryStringParametersList
      def self.parse(list)
        list.map do |value|
          ConnectionQueryStringParameter.parse(value) unless value.nil?
        end
      end
    end

    class ConnectionQueryStringParameter
      def self.parse(map)
        data = Types::ConnectionQueryStringParameter.new
        data.key = map['Key']
        data.value = map['Value']
        data.is_value_secret = map['IsValueSecret']
        return data
      end
    end

    class ConnectionHeaderParametersList
      def self.parse(list)
        list.map do |value|
          ConnectionHeaderParameter.parse(value) unless value.nil?
        end
      end
    end

    class ConnectionHeaderParameter
      def self.parse(map)
        data = Types::ConnectionHeaderParameter.new
        data.key = map['Key']
        data.value = map['Value']
        data.is_value_secret = map['IsValueSecret']
        return data
      end
    end

    class ConnectionApiKeyAuthResponseParameters
      def self.parse(map)
        data = Types::ConnectionApiKeyAuthResponseParameters.new
        data.api_key_name = map['ApiKeyName']
        return data
      end
    end

    class ConnectionOAuthResponseParameters
      def self.parse(map)
        data = Types::ConnectionOAuthResponseParameters.new
        data.client_parameters = (ConnectionOAuthClientResponseParameters.parse(map['ClientParameters']) unless map['ClientParameters'].nil?)
        data.authorization_endpoint = map['AuthorizationEndpoint']
        data.http_method = map['HttpMethod']
        data.o_auth_http_parameters = (ConnectionHttpParameters.parse(map['OAuthHttpParameters']) unless map['OAuthHttpParameters'].nil?)
        return data
      end
    end

    class ConnectionOAuthClientResponseParameters
      def self.parse(map)
        data = Types::ConnectionOAuthClientResponseParameters.new
        data.client_id = map['ClientID']
        return data
      end
    end

    class ConnectionBasicAuthResponseParameters
      def self.parse(map)
        data = Types::ConnectionBasicAuthResponseParameters.new
        data.username = map['Username']
        return data
      end
    end

    # Operation Parser for DescribeEndpoint
    class DescribeEndpoint
      def self.parse(http_resp)
        data = Types::DescribeEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.description = map['Description']
        data.arn = map['Arn']
        data.routing_config = (RoutingConfig.parse(map['RoutingConfig']) unless map['RoutingConfig'].nil?)
        data.replication_config = (ReplicationConfig.parse(map['ReplicationConfig']) unless map['ReplicationConfig'].nil?)
        data.event_buses = (EndpointEventBusList.parse(map['EventBuses']) unless map['EventBuses'].nil?)
        data.role_arn = map['RoleArn']
        data.endpoint_id = map['EndpointId']
        data.endpoint_url = map['EndpointUrl']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data
      end
    end

    # Operation Parser for DescribeEventBus
    class DescribeEventBus
      def self.parse(http_resp)
        data = Types::DescribeEventBusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for DescribeEventSource
    class DescribeEventSource
      def self.parse(http_resp)
        data = Types::DescribeEventSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['Arn']
        data.created_by = map['CreatedBy']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.expiration_time = Time.at(map['ExpirationTime'].to_i) if map['ExpirationTime']
        data.name = map['Name']
        data.state = map['State']
        data
      end
    end

    # Operation Parser for DescribePartnerEventSource
    class DescribePartnerEventSource
      def self.parse(http_resp)
        data = Types::DescribePartnerEventSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['Arn']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DescribeReplay
    class DescribeReplay
      def self.parse(http_resp)
        data = Types::DescribeReplayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replay_name = map['ReplayName']
        data.replay_arn = map['ReplayArn']
        data.description = map['Description']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.event_source_arn = map['EventSourceArn']
        data.destination = (ReplayDestination.parse(map['Destination']) unless map['Destination'].nil?)
        data.event_start_time = Time.at(map['EventStartTime'].to_i) if map['EventStartTime']
        data.event_end_time = Time.at(map['EventEndTime'].to_i) if map['EventEndTime']
        data.event_last_replayed_time = Time.at(map['EventLastReplayedTime'].to_i) if map['EventLastReplayedTime']
        data.replay_start_time = Time.at(map['ReplayStartTime'].to_i) if map['ReplayStartTime']
        data.replay_end_time = Time.at(map['ReplayEndTime'].to_i) if map['ReplayEndTime']
        data
      end
    end

    class ReplayDestination
      def self.parse(map)
        data = Types::ReplayDestination.new
        data.arn = map['Arn']
        data.filter_arns = (ReplayDestinationFilters.parse(map['FilterArns']) unless map['FilterArns'].nil?)
        return data
      end
    end

    class ReplayDestinationFilters
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeRule
    class DescribeRule
      def self.parse(http_resp)
        data = Types::DescribeRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.event_pattern = map['EventPattern']
        data.schedule_expression = map['ScheduleExpression']
        data.state = map['State']
        data.description = map['Description']
        data.role_arn = map['RoleArn']
        data.managed_by = map['ManagedBy']
        data.event_bus_name = map['EventBusName']
        data.created_by = map['CreatedBy']
        data
      end
    end

    # Operation Parser for DisableRule
    class DisableRule
      def self.parse(http_resp)
        data = Types::DisableRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableRule
    class EnableRule
      def self.parse(http_resp)
        data = Types::EnableRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ListApiDestinations
    class ListApiDestinations
      def self.parse(http_resp)
        data = Types::ListApiDestinationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.api_destinations = (ApiDestinationResponseList.parse(map['ApiDestinations']) unless map['ApiDestinations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApiDestinationResponseList
      def self.parse(list)
        list.map do |value|
          ApiDestination.parse(value) unless value.nil?
        end
      end
    end

    class ApiDestination
      def self.parse(map)
        data = Types::ApiDestination.new
        data.api_destination_arn = map['ApiDestinationArn']
        data.name = map['Name']
        data.api_destination_state = map['ApiDestinationState']
        data.connection_arn = map['ConnectionArn']
        data.invocation_endpoint = map['InvocationEndpoint']
        data.http_method = map['HttpMethod']
        data.invocation_rate_limit_per_second = map['InvocationRateLimitPerSecond']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListArchives
    class ListArchives
      def self.parse(http_resp)
        data = Types::ListArchivesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.archives = (ArchiveResponseList.parse(map['Archives']) unless map['Archives'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ArchiveResponseList
      def self.parse(list)
        list.map do |value|
          Archive.parse(value) unless value.nil?
        end
      end
    end

    class Archive
      def self.parse(map)
        data = Types::Archive.new
        data.archive_name = map['ArchiveName']
        data.event_source_arn = map['EventSourceArn']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.retention_days = map['RetentionDays']
        data.size_bytes = map['SizeBytes']
        data.event_count = map['EventCount']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for ListConnections
    class ListConnections
      def self.parse(http_resp)
        data = Types::ListConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connections = (ConnectionResponseList.parse(map['Connections']) unless map['Connections'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConnectionResponseList
      def self.parse(list)
        list.map do |value|
          Connection.parse(value) unless value.nil?
        end
      end
    end

    class Connection
      def self.parse(map)
        data = Types::Connection.new
        data.connection_arn = map['ConnectionArn']
        data.name = map['Name']
        data.connection_state = map['ConnectionState']
        data.state_reason = map['StateReason']
        data.authorization_type = map['AuthorizationType']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_authorized_time = Time.at(map['LastAuthorizedTime'].to_i) if map['LastAuthorizedTime']
        return data
      end
    end

    # Operation Parser for ListEndpoints
    class ListEndpoints
      def self.parse(http_resp)
        data = Types::ListEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoints = (EndpointList.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EndpointList
      def self.parse(list)
        list.map do |value|
          Endpoint.parse(value) unless value.nil?
        end
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.name = map['Name']
        data.description = map['Description']
        data.arn = map['Arn']
        data.routing_config = (RoutingConfig.parse(map['RoutingConfig']) unless map['RoutingConfig'].nil?)
        data.replication_config = (ReplicationConfig.parse(map['ReplicationConfig']) unless map['ReplicationConfig'].nil?)
        data.event_buses = (EndpointEventBusList.parse(map['EventBuses']) unless map['EventBuses'].nil?)
        data.role_arn = map['RoleArn']
        data.endpoint_id = map['EndpointId']
        data.endpoint_url = map['EndpointUrl']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListEventBuses
    class ListEventBuses
      def self.parse(http_resp)
        data = Types::ListEventBusesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_buses = (EventBusList.parse(map['EventBuses']) unless map['EventBuses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EventBusList
      def self.parse(list)
        list.map do |value|
          EventBus.parse(value) unless value.nil?
        end
      end
    end

    class EventBus
      def self.parse(map)
        data = Types::EventBus.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.policy = map['Policy']
        return data
      end
    end

    # Operation Parser for ListEventSources
    class ListEventSources
      def self.parse(http_resp)
        data = Types::ListEventSourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_sources = (EventSourceList.parse(map['EventSources']) unless map['EventSources'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EventSourceList
      def self.parse(list)
        list.map do |value|
          EventSource.parse(value) unless value.nil?
        end
      end
    end

    class EventSource
      def self.parse(map)
        data = Types::EventSource.new
        data.arn = map['Arn']
        data.created_by = map['CreatedBy']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.expiration_time = Time.at(map['ExpirationTime'].to_i) if map['ExpirationTime']
        data.name = map['Name']
        data.state = map['State']
        return data
      end
    end

    # Operation Parser for ListPartnerEventSourceAccounts
    class ListPartnerEventSourceAccounts
      def self.parse(http_resp)
        data = Types::ListPartnerEventSourceAccountsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.partner_event_source_accounts = (PartnerEventSourceAccountList.parse(map['PartnerEventSourceAccounts']) unless map['PartnerEventSourceAccounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PartnerEventSourceAccountList
      def self.parse(list)
        list.map do |value|
          PartnerEventSourceAccount.parse(value) unless value.nil?
        end
      end
    end

    class PartnerEventSourceAccount
      def self.parse(map)
        data = Types::PartnerEventSourceAccount.new
        data.account = map['Account']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.expiration_time = Time.at(map['ExpirationTime'].to_i) if map['ExpirationTime']
        data.state = map['State']
        return data
      end
    end

    # Operation Parser for ListPartnerEventSources
    class ListPartnerEventSources
      def self.parse(http_resp)
        data = Types::ListPartnerEventSourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.partner_event_sources = (PartnerEventSourceList.parse(map['PartnerEventSources']) unless map['PartnerEventSources'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PartnerEventSourceList
      def self.parse(list)
        list.map do |value|
          PartnerEventSource.parse(value) unless value.nil?
        end
      end
    end

    class PartnerEventSource
      def self.parse(map)
        data = Types::PartnerEventSource.new
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListReplays
    class ListReplays
      def self.parse(http_resp)
        data = Types::ListReplaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replays = (ReplayList.parse(map['Replays']) unless map['Replays'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReplayList
      def self.parse(list)
        list.map do |value|
          Replay.parse(value) unless value.nil?
        end
      end
    end

    class Replay
      def self.parse(map)
        data = Types::Replay.new
        data.replay_name = map['ReplayName']
        data.event_source_arn = map['EventSourceArn']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.event_start_time = Time.at(map['EventStartTime'].to_i) if map['EventStartTime']
        data.event_end_time = Time.at(map['EventEndTime'].to_i) if map['EventEndTime']
        data.event_last_replayed_time = Time.at(map['EventLastReplayedTime'].to_i) if map['EventLastReplayedTime']
        data.replay_start_time = Time.at(map['ReplayStartTime'].to_i) if map['ReplayStartTime']
        data.replay_end_time = Time.at(map['ReplayEndTime'].to_i) if map['ReplayEndTime']
        return data
      end
    end

    # Operation Parser for ListRuleNamesByTarget
    class ListRuleNamesByTarget
      def self.parse(http_resp)
        data = Types::ListRuleNamesByTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule_names = (RuleNameList.parse(map['RuleNames']) unless map['RuleNames'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RuleNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListRules
    class ListRules
      def self.parse(http_resp)
        data = Types::ListRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rules = (RuleResponseList.parse(map['Rules']) unless map['Rules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RuleResponseList
      def self.parse(list)
        list.map do |value|
          Rule.parse(value) unless value.nil?
        end
      end
    end

    class Rule
      def self.parse(map)
        data = Types::Rule.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.event_pattern = map['EventPattern']
        data.state = map['State']
        data.description = map['Description']
        data.schedule_expression = map['ScheduleExpression']
        data.role_arn = map['RoleArn']
        data.managed_by = map['ManagedBy']
        data.event_bus_name = map['EventBusName']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListTargetsByRule
    class ListTargetsByRule
      def self.parse(http_resp)
        data = Types::ListTargetsByRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.targets = (TargetList.parse(map['Targets']) unless map['Targets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TargetList
      def self.parse(list)
        list.map do |value|
          Target.parse(value) unless value.nil?
        end
      end
    end

    class Target
      def self.parse(map)
        data = Types::Target.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.role_arn = map['RoleArn']
        data.input = map['Input']
        data.input_path = map['InputPath']
        data.input_transformer = (InputTransformer.parse(map['InputTransformer']) unless map['InputTransformer'].nil?)
        data.kinesis_parameters = (KinesisParameters.parse(map['KinesisParameters']) unless map['KinesisParameters'].nil?)
        data.run_command_parameters = (RunCommandParameters.parse(map['RunCommandParameters']) unless map['RunCommandParameters'].nil?)
        data.ecs_parameters = (EcsParameters.parse(map['EcsParameters']) unless map['EcsParameters'].nil?)
        data.batch_parameters = (BatchParameters.parse(map['BatchParameters']) unless map['BatchParameters'].nil?)
        data.sqs_parameters = (SqsParameters.parse(map['SqsParameters']) unless map['SqsParameters'].nil?)
        data.http_parameters = (HttpParameters.parse(map['HttpParameters']) unless map['HttpParameters'].nil?)
        data.redshift_data_parameters = (RedshiftDataParameters.parse(map['RedshiftDataParameters']) unless map['RedshiftDataParameters'].nil?)
        data.sage_maker_pipeline_parameters = (SageMakerPipelineParameters.parse(map['SageMakerPipelineParameters']) unless map['SageMakerPipelineParameters'].nil?)
        data.dead_letter_config = (DeadLetterConfig.parse(map['DeadLetterConfig']) unless map['DeadLetterConfig'].nil?)
        data.retry_policy = (RetryPolicy.parse(map['RetryPolicy']) unless map['RetryPolicy'].nil?)
        return data
      end
    end

    class RetryPolicy
      def self.parse(map)
        data = Types::RetryPolicy.new
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.maximum_event_age_in_seconds = map['MaximumEventAgeInSeconds']
        return data
      end
    end

    class DeadLetterConfig
      def self.parse(map)
        data = Types::DeadLetterConfig.new
        data.arn = map['Arn']
        return data
      end
    end

    class SageMakerPipelineParameters
      def self.parse(map)
        data = Types::SageMakerPipelineParameters.new
        data.pipeline_parameter_list = (SageMakerPipelineParameterList.parse(map['PipelineParameterList']) unless map['PipelineParameterList'].nil?)
        return data
      end
    end

    class SageMakerPipelineParameterList
      def self.parse(list)
        list.map do |value|
          SageMakerPipelineParameter.parse(value) unless value.nil?
        end
      end
    end

    class SageMakerPipelineParameter
      def self.parse(map)
        data = Types::SageMakerPipelineParameter.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class RedshiftDataParameters
      def self.parse(map)
        data = Types::RedshiftDataParameters.new
        data.secret_manager_arn = map['SecretManagerArn']
        data.database = map['Database']
        data.db_user = map['DbUser']
        data.sql = map['Sql']
        data.statement_name = map['StatementName']
        data.with_event = map['WithEvent']
        return data
      end
    end

    class HttpParameters
      def self.parse(map)
        data = Types::HttpParameters.new
        data.path_parameter_values = (PathParameterList.parse(map['PathParameterValues']) unless map['PathParameterValues'].nil?)
        data.header_parameters = (HeaderParametersMap.parse(map['HeaderParameters']) unless map['HeaderParameters'].nil?)
        data.query_string_parameters = (QueryStringParametersMap.parse(map['QueryStringParameters']) unless map['QueryStringParameters'].nil?)
        return data
      end
    end

    class QueryStringParametersMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class HeaderParametersMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class PathParameterList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SqsParameters
      def self.parse(map)
        data = Types::SqsParameters.new
        data.message_group_id = map['MessageGroupId']
        return data
      end
    end

    class BatchParameters
      def self.parse(map)
        data = Types::BatchParameters.new
        data.job_definition = map['JobDefinition']
        data.job_name = map['JobName']
        data.array_properties = (BatchArrayProperties.parse(map['ArrayProperties']) unless map['ArrayProperties'].nil?)
        data.retry_strategy = (BatchRetryStrategy.parse(map['RetryStrategy']) unless map['RetryStrategy'].nil?)
        return data
      end
    end

    class BatchRetryStrategy
      def self.parse(map)
        data = Types::BatchRetryStrategy.new
        data.attempts = map['Attempts']
        return data
      end
    end

    class BatchArrayProperties
      def self.parse(map)
        data = Types::BatchArrayProperties.new
        data.size = map['Size']
        return data
      end
    end

    class EcsParameters
      def self.parse(map)
        data = Types::EcsParameters.new
        data.task_definition_arn = map['TaskDefinitionArn']
        data.task_count = map['TaskCount']
        data.launch_type = map['LaunchType']
        data.network_configuration = (NetworkConfiguration.parse(map['NetworkConfiguration']) unless map['NetworkConfiguration'].nil?)
        data.platform_version = map['PlatformVersion']
        data.group = map['Group']
        data.capacity_provider_strategy = (CapacityProviderStrategy.parse(map['CapacityProviderStrategy']) unless map['CapacityProviderStrategy'].nil?)
        data.enable_ecs_managed_tags = map['EnableECSManagedTags']
        data.enable_execute_command = map['EnableExecuteCommand']
        data.placement_constraints = (PlacementConstraints.parse(map['PlacementConstraints']) unless map['PlacementConstraints'].nil?)
        data.placement_strategy = (PlacementStrategies.parse(map['PlacementStrategy']) unless map['PlacementStrategy'].nil?)
        data.propagate_tags = map['PropagateTags']
        data.reference_id = map['ReferenceId']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class PlacementStrategies
      def self.parse(list)
        list.map do |value|
          PlacementStrategy.parse(value) unless value.nil?
        end
      end
    end

    class PlacementStrategy
      def self.parse(map)
        data = Types::PlacementStrategy.new
        data.type = map['type']
        data.field = map['field']
        return data
      end
    end

    class PlacementConstraints
      def self.parse(list)
        list.map do |value|
          PlacementConstraint.parse(value) unless value.nil?
        end
      end
    end

    class PlacementConstraint
      def self.parse(map)
        data = Types::PlacementConstraint.new
        data.type = map['type']
        data.expression = map['expression']
        return data
      end
    end

    class CapacityProviderStrategy
      def self.parse(list)
        list.map do |value|
          CapacityProviderStrategyItem.parse(value) unless value.nil?
        end
      end
    end

    class CapacityProviderStrategyItem
      def self.parse(map)
        data = Types::CapacityProviderStrategyItem.new
        data.capacity_provider = map['capacityProvider']
        data.weight = map['weight']
        data.base = map['base']
        return data
      end
    end

    class NetworkConfiguration
      def self.parse(map)
        data = Types::NetworkConfiguration.new
        data.awsvpc_configuration = (AwsVpcConfiguration.parse(map['awsvpcConfiguration']) unless map['awsvpcConfiguration'].nil?)
        return data
      end
    end

    class AwsVpcConfiguration
      def self.parse(map)
        data = Types::AwsVpcConfiguration.new
        data.subnets = (StringList.parse(map['Subnets']) unless map['Subnets'].nil?)
        data.security_groups = (StringList.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.assign_public_ip = map['AssignPublicIp']
        return data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RunCommandParameters
      def self.parse(map)
        data = Types::RunCommandParameters.new
        data.run_command_targets = (RunCommandTargets.parse(map['RunCommandTargets']) unless map['RunCommandTargets'].nil?)
        return data
      end
    end

    class RunCommandTargets
      def self.parse(list)
        list.map do |value|
          RunCommandTarget.parse(value) unless value.nil?
        end
      end
    end

    class RunCommandTarget
      def self.parse(map)
        data = Types::RunCommandTarget.new
        data.key = map['Key']
        data.values = (RunCommandTargetValues.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class RunCommandTargetValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class KinesisParameters
      def self.parse(map)
        data = Types::KinesisParameters.new
        data.partition_key_path = map['PartitionKeyPath']
        return data
      end
    end

    class InputTransformer
      def self.parse(map)
        data = Types::InputTransformer.new
        data.input_paths_map = (TransformerPaths.parse(map['InputPathsMap']) unless map['InputPathsMap'].nil?)
        data.input_template = map['InputTemplate']
        return data
      end
    end

    class TransformerPaths
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for PutEvents
    class PutEvents
      def self.parse(http_resp)
        data = Types::PutEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_entry_count = map['FailedEntryCount']
        data.entries = (PutEventsResultEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data
      end
    end

    class PutEventsResultEntryList
      def self.parse(list)
        list.map do |value|
          PutEventsResultEntry.parse(value) unless value.nil?
        end
      end
    end

    class PutEventsResultEntry
      def self.parse(map)
        data = Types::PutEventsResultEntry.new
        data.event_id = map['EventId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for PutPartnerEvents
    class PutPartnerEvents
      def self.parse(http_resp)
        data = Types::PutPartnerEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_entry_count = map['FailedEntryCount']
        data.entries = (PutPartnerEventsResultEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data
      end
    end

    class PutPartnerEventsResultEntryList
      def self.parse(list)
        list.map do |value|
          PutPartnerEventsResultEntry.parse(value) unless value.nil?
        end
      end
    end

    class PutPartnerEventsResultEntry
      def self.parse(map)
        data = Types::PutPartnerEventsResultEntry.new
        data.event_id = map['EventId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for PutPermission
    class PutPermission
      def self.parse(http_resp)
        data = Types::PutPermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for PolicyLengthExceededException
    class PolicyLengthExceededException
      def self.parse(http_resp)
        data = Types::PolicyLengthExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutRule
    class PutRule
      def self.parse(http_resp)
        data = Types::PutRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule_arn = map['RuleArn']
        data
      end
    end

    # Operation Parser for PutTargets
    class PutTargets
      def self.parse(http_resp)
        data = Types::PutTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_entry_count = map['FailedEntryCount']
        data.failed_entries = (PutTargetsResultEntryList.parse(map['FailedEntries']) unless map['FailedEntries'].nil?)
        data
      end
    end

    class PutTargetsResultEntryList
      def self.parse(list)
        list.map do |value|
          PutTargetsResultEntry.parse(value) unless value.nil?
        end
      end
    end

    class PutTargetsResultEntry
      def self.parse(map)
        data = Types::PutTargetsResultEntry.new
        data.target_id = map['TargetId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for RemovePermission
    class RemovePermission
      def self.parse(http_resp)
        data = Types::RemovePermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RemoveTargets
    class RemoveTargets
      def self.parse(http_resp)
        data = Types::RemoveTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_entry_count = map['FailedEntryCount']
        data.failed_entries = (RemoveTargetsResultEntryList.parse(map['FailedEntries']) unless map['FailedEntries'].nil?)
        data
      end
    end

    class RemoveTargetsResultEntryList
      def self.parse(list)
        list.map do |value|
          RemoveTargetsResultEntry.parse(value) unless value.nil?
        end
      end
    end

    class RemoveTargetsResultEntry
      def self.parse(map)
        data = Types::RemoveTargetsResultEntry.new
        data.target_id = map['TargetId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for StartReplay
    class StartReplay
      def self.parse(http_resp)
        data = Types::StartReplayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replay_arn = map['ReplayArn']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.replay_start_time = Time.at(map['ReplayStartTime'].to_i) if map['ReplayStartTime']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TestEventPattern
    class TestEventPattern
      def self.parse(http_resp)
        data = Types::TestEventPatternOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.result = map['Result']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateApiDestination
    class UpdateApiDestination
      def self.parse(http_resp)
        data = Types::UpdateApiDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.api_destination_arn = map['ApiDestinationArn']
        data.api_destination_state = map['ApiDestinationState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data
      end
    end

    # Operation Parser for UpdateArchive
    class UpdateArchive
      def self.parse(http_resp)
        data = Types::UpdateArchiveOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.archive_arn = map['ArchiveArn']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    # Operation Parser for UpdateConnection
    class UpdateConnection
      def self.parse(http_resp)
        data = Types::UpdateConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_arn = map['ConnectionArn']
        data.connection_state = map['ConnectionState']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_authorized_time = Time.at(map['LastAuthorizedTime'].to_i) if map['LastAuthorizedTime']
        data
      end
    end

    # Operation Parser for UpdateEndpoint
    class UpdateEndpoint
      def self.parse(http_resp)
        data = Types::UpdateEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.routing_config = (RoutingConfig.parse(map['RoutingConfig']) unless map['RoutingConfig'].nil?)
        data.replication_config = (ReplicationConfig.parse(map['ReplicationConfig']) unless map['ReplicationConfig'].nil?)
        data.event_buses = (EndpointEventBusList.parse(map['EventBuses']) unless map['EventBuses'].nil?)
        data.role_arn = map['RoleArn']
        data.endpoint_id = map['EndpointId']
        data.endpoint_url = map['EndpointUrl']
        data.state = map['State']
        data
      end
    end
  end
end
