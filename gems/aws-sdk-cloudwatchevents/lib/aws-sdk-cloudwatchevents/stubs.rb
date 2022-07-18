# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatchEvents
  module Stubs

    # Operation Stubber for ActivateEventSource
    class ActivateEventSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelReplay
    class CancelReplay
      def self.default(visited=[])
        {
          replay_arn: 'replay_arn',
          state: 'state',
          state_reason: 'state_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplayArn'] = stub[:replay_arn] unless stub[:replay_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateApiDestination
    class CreateApiDestination
      def self.default(visited=[])
        {
          api_destination_arn: 'api_destination_arn',
          api_destination_state: 'api_destination_state',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApiDestinationArn'] = stub[:api_destination_arn] unless stub[:api_destination_arn].nil?
        data['ApiDestinationState'] = stub[:api_destination_state] unless stub[:api_destination_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateArchive
    class CreateArchive
      def self.default(visited=[])
        {
          archive_arn: 'archive_arn',
          state: 'state',
          state_reason: 'state_reason',
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ArchiveArn'] = stub[:archive_arn] unless stub[:archive_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConnection
    class CreateConnection
      def self.default(visited=[])
        {
          connection_arn: 'connection_arn',
          connection_state: 'connection_state',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['ConnectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEventBus
    class CreateEventBus
      def self.default(visited=[])
        {
          event_bus_arn: 'event_bus_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventBusArn'] = stub[:event_bus_arn] unless stub[:event_bus_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePartnerEventSource
    class CreatePartnerEventSource
      def self.default(visited=[])
        {
          event_source_arn: 'event_source_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeactivateEventSource
    class DeactivateEventSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeauthorizeConnection
    class DeauthorizeConnection
      def self.default(visited=[])
        {
          connection_arn: 'connection_arn',
          connection_state: 'connection_state',
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_authorized_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['ConnectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastAuthorizedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_authorized_time]).to_i unless stub[:last_authorized_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApiDestination
    class DeleteApiDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteArchive
    class DeleteArchive
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConnection
    class DeleteConnection
      def self.default(visited=[])
        {
          connection_arn: 'connection_arn',
          connection_state: 'connection_state',
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_authorized_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['ConnectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastAuthorizedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_authorized_time]).to_i unless stub[:last_authorized_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventBus
    class DeleteEventBus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePartnerEventSource
    class DeletePartnerEventSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRule
    class DeleteRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeApiDestination
    class DescribeApiDestination
      def self.default(visited=[])
        {
          api_destination_arn: 'api_destination_arn',
          name: 'name',
          description: 'description',
          api_destination_state: 'api_destination_state',
          connection_arn: 'connection_arn',
          invocation_endpoint: 'invocation_endpoint',
          http_method: 'http_method',
          invocation_rate_limit_per_second: 1,
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApiDestinationArn'] = stub[:api_destination_arn] unless stub[:api_destination_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ApiDestinationState'] = stub[:api_destination_state] unless stub[:api_destination_state].nil?
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['InvocationEndpoint'] = stub[:invocation_endpoint] unless stub[:invocation_endpoint].nil?
        data['HttpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['InvocationRateLimitPerSecond'] = stub[:invocation_rate_limit_per_second] unless stub[:invocation_rate_limit_per_second].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeArchive
    class DescribeArchive
      def self.default(visited=[])
        {
          archive_arn: 'archive_arn',
          archive_name: 'archive_name',
          event_source_arn: 'event_source_arn',
          description: 'description',
          event_pattern: 'event_pattern',
          state: 'state',
          state_reason: 'state_reason',
          retention_days: 1,
          size_bytes: 1,
          event_count: 1,
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ArchiveArn'] = stub[:archive_arn] unless stub[:archive_arn].nil?
        data['ArchiveName'] = stub[:archive_name] unless stub[:archive_name].nil?
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EventPattern'] = stub[:event_pattern] unless stub[:event_pattern].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['RetentionDays'] = stub[:retention_days] unless stub[:retention_days].nil?
        data['SizeBytes'] = stub[:size_bytes] unless stub[:size_bytes].nil?
        data['EventCount'] = stub[:event_count] unless stub[:event_count].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeConnection
    class DescribeConnection
      def self.default(visited=[])
        {
          connection_arn: 'connection_arn',
          name: 'name',
          description: 'description',
          connection_state: 'connection_state',
          state_reason: 'state_reason',
          authorization_type: 'authorization_type',
          secret_arn: 'secret_arn',
          auth_parameters: ConnectionAuthResponseParameters.default(visited),
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_authorized_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ConnectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['AuthorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['AuthParameters'] = Stubs::ConnectionAuthResponseParameters.stub(stub[:auth_parameters]) unless stub[:auth_parameters].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastAuthorizedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_authorized_time]).to_i unless stub[:last_authorized_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ConnectionAuthResponseParameters
    class ConnectionAuthResponseParameters
      def self.default(visited=[])
        return nil if visited.include?('ConnectionAuthResponseParameters')
        visited = visited + ['ConnectionAuthResponseParameters']
        {
          basic_auth_parameters: ConnectionBasicAuthResponseParameters.default(visited),
          o_auth_parameters: ConnectionOAuthResponseParameters.default(visited),
          api_key_auth_parameters: ConnectionApiKeyAuthResponseParameters.default(visited),
          invocation_http_parameters: ConnectionHttpParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionAuthResponseParameters.new
        data = {}
        data['BasicAuthParameters'] = Stubs::ConnectionBasicAuthResponseParameters.stub(stub[:basic_auth_parameters]) unless stub[:basic_auth_parameters].nil?
        data['OAuthParameters'] = Stubs::ConnectionOAuthResponseParameters.stub(stub[:o_auth_parameters]) unless stub[:o_auth_parameters].nil?
        data['ApiKeyAuthParameters'] = Stubs::ConnectionApiKeyAuthResponseParameters.stub(stub[:api_key_auth_parameters]) unless stub[:api_key_auth_parameters].nil?
        data['InvocationHttpParameters'] = Stubs::ConnectionHttpParameters.stub(stub[:invocation_http_parameters]) unless stub[:invocation_http_parameters].nil?
        data
      end
    end

    # Structure Stubber for ConnectionHttpParameters
    class ConnectionHttpParameters
      def self.default(visited=[])
        return nil if visited.include?('ConnectionHttpParameters')
        visited = visited + ['ConnectionHttpParameters']
        {
          header_parameters: ConnectionHeaderParametersList.default(visited),
          query_string_parameters: ConnectionQueryStringParametersList.default(visited),
          body_parameters: ConnectionBodyParametersList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionHttpParameters.new
        data = {}
        data['HeaderParameters'] = Stubs::ConnectionHeaderParametersList.stub(stub[:header_parameters]) unless stub[:header_parameters].nil?
        data['QueryStringParameters'] = Stubs::ConnectionQueryStringParametersList.stub(stub[:query_string_parameters]) unless stub[:query_string_parameters].nil?
        data['BodyParameters'] = Stubs::ConnectionBodyParametersList.stub(stub[:body_parameters]) unless stub[:body_parameters].nil?
        data
      end
    end

    # List Stubber for ConnectionBodyParametersList
    class ConnectionBodyParametersList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionBodyParametersList')
        visited = visited + ['ConnectionBodyParametersList']
        [
          ConnectionBodyParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConnectionBodyParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectionBodyParameter
    class ConnectionBodyParameter
      def self.default(visited=[])
        return nil if visited.include?('ConnectionBodyParameter')
        visited = visited + ['ConnectionBodyParameter']
        {
          key: 'key',
          value: 'value',
          is_value_secret: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionBodyParameter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['IsValueSecret'] = stub[:is_value_secret] unless stub[:is_value_secret].nil?
        data
      end
    end

    # List Stubber for ConnectionQueryStringParametersList
    class ConnectionQueryStringParametersList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionQueryStringParametersList')
        visited = visited + ['ConnectionQueryStringParametersList']
        [
          ConnectionQueryStringParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConnectionQueryStringParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectionQueryStringParameter
    class ConnectionQueryStringParameter
      def self.default(visited=[])
        return nil if visited.include?('ConnectionQueryStringParameter')
        visited = visited + ['ConnectionQueryStringParameter']
        {
          key: 'key',
          value: 'value',
          is_value_secret: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionQueryStringParameter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['IsValueSecret'] = stub[:is_value_secret] unless stub[:is_value_secret].nil?
        data
      end
    end

    # List Stubber for ConnectionHeaderParametersList
    class ConnectionHeaderParametersList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionHeaderParametersList')
        visited = visited + ['ConnectionHeaderParametersList']
        [
          ConnectionHeaderParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConnectionHeaderParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectionHeaderParameter
    class ConnectionHeaderParameter
      def self.default(visited=[])
        return nil if visited.include?('ConnectionHeaderParameter')
        visited = visited + ['ConnectionHeaderParameter']
        {
          key: 'key',
          value: 'value',
          is_value_secret: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionHeaderParameter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['IsValueSecret'] = stub[:is_value_secret] unless stub[:is_value_secret].nil?
        data
      end
    end

    # Structure Stubber for ConnectionApiKeyAuthResponseParameters
    class ConnectionApiKeyAuthResponseParameters
      def self.default(visited=[])
        return nil if visited.include?('ConnectionApiKeyAuthResponseParameters')
        visited = visited + ['ConnectionApiKeyAuthResponseParameters']
        {
          api_key_name: 'api_key_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionApiKeyAuthResponseParameters.new
        data = {}
        data['ApiKeyName'] = stub[:api_key_name] unless stub[:api_key_name].nil?
        data
      end
    end

    # Structure Stubber for ConnectionOAuthResponseParameters
    class ConnectionOAuthResponseParameters
      def self.default(visited=[])
        return nil if visited.include?('ConnectionOAuthResponseParameters')
        visited = visited + ['ConnectionOAuthResponseParameters']
        {
          client_parameters: ConnectionOAuthClientResponseParameters.default(visited),
          authorization_endpoint: 'authorization_endpoint',
          http_method: 'http_method',
          o_auth_http_parameters: ConnectionHttpParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionOAuthResponseParameters.new
        data = {}
        data['ClientParameters'] = Stubs::ConnectionOAuthClientResponseParameters.stub(stub[:client_parameters]) unless stub[:client_parameters].nil?
        data['AuthorizationEndpoint'] = stub[:authorization_endpoint] unless stub[:authorization_endpoint].nil?
        data['HttpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['OAuthHttpParameters'] = Stubs::ConnectionHttpParameters.stub(stub[:o_auth_http_parameters]) unless stub[:o_auth_http_parameters].nil?
        data
      end
    end

    # Structure Stubber for ConnectionOAuthClientResponseParameters
    class ConnectionOAuthClientResponseParameters
      def self.default(visited=[])
        return nil if visited.include?('ConnectionOAuthClientResponseParameters')
        visited = visited + ['ConnectionOAuthClientResponseParameters']
        {
          client_id: 'client_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionOAuthClientResponseParameters.new
        data = {}
        data['ClientID'] = stub[:client_id] unless stub[:client_id].nil?
        data
      end
    end

    # Structure Stubber for ConnectionBasicAuthResponseParameters
    class ConnectionBasicAuthResponseParameters
      def self.default(visited=[])
        return nil if visited.include?('ConnectionBasicAuthResponseParameters')
        visited = visited + ['ConnectionBasicAuthResponseParameters']
        {
          username: 'username',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionBasicAuthResponseParameters.new
        data = {}
        data['Username'] = stub[:username] unless stub[:username].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventBus
    class DescribeEventBus
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEventSource
    class DescribeEventSource
      def self.default(visited=[])
        {
          arn: 'arn',
          created_by: 'created_by',
          creation_time: Time.now,
          expiration_time: Time.now,
          name: 'name',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_time]).to_i unless stub[:expiration_time].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePartnerEventSource
    class DescribePartnerEventSource
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeReplay
    class DescribeReplay
      def self.default(visited=[])
        {
          replay_name: 'replay_name',
          replay_arn: 'replay_arn',
          description: 'description',
          state: 'state',
          state_reason: 'state_reason',
          event_source_arn: 'event_source_arn',
          destination: ReplayDestination.default(visited),
          event_start_time: Time.now,
          event_end_time: Time.now,
          event_last_replayed_time: Time.now,
          replay_start_time: Time.now,
          replay_end_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplayName'] = stub[:replay_name] unless stub[:replay_name].nil?
        data['ReplayArn'] = stub[:replay_arn] unless stub[:replay_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        data['Destination'] = Stubs::ReplayDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data['EventStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_start_time]).to_i unless stub[:event_start_time].nil?
        data['EventEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_end_time]).to_i unless stub[:event_end_time].nil?
        data['EventLastReplayedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_last_replayed_time]).to_i unless stub[:event_last_replayed_time].nil?
        data['ReplayStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replay_start_time]).to_i unless stub[:replay_start_time].nil?
        data['ReplayEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replay_end_time]).to_i unless stub[:replay_end_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReplayDestination
    class ReplayDestination
      def self.default(visited=[])
        return nil if visited.include?('ReplayDestination')
        visited = visited + ['ReplayDestination']
        {
          arn: 'arn',
          filter_arns: ReplayDestinationFilters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplayDestination.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['FilterArns'] = Stubs::ReplayDestinationFilters.stub(stub[:filter_arns]) unless stub[:filter_arns].nil?
        data
      end
    end

    # List Stubber for ReplayDestinationFilters
    class ReplayDestinationFilters
      def self.default(visited=[])
        return nil if visited.include?('ReplayDestinationFilters')
        visited = visited + ['ReplayDestinationFilters']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeRule
    class DescribeRule
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          event_pattern: 'event_pattern',
          schedule_expression: 'schedule_expression',
          state: 'state',
          description: 'description',
          role_arn: 'role_arn',
          managed_by: 'managed_by',
          event_bus_name: 'event_bus_name',
          created_by: 'created_by',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['EventPattern'] = stub[:event_pattern] unless stub[:event_pattern].nil?
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ManagedBy'] = stub[:managed_by] unless stub[:managed_by].nil?
        data['EventBusName'] = stub[:event_bus_name] unless stub[:event_bus_name].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableRule
    class DisableRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableRule
    class EnableRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListApiDestinations
    class ListApiDestinations
      def self.default(visited=[])
        {
          api_destinations: ApiDestinationResponseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApiDestinations'] = Stubs::ApiDestinationResponseList.stub(stub[:api_destinations]) unless stub[:api_destinations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApiDestinationResponseList
    class ApiDestinationResponseList
      def self.default(visited=[])
        return nil if visited.include?('ApiDestinationResponseList')
        visited = visited + ['ApiDestinationResponseList']
        [
          ApiDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApiDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApiDestination
    class ApiDestination
      def self.default(visited=[])
        return nil if visited.include?('ApiDestination')
        visited = visited + ['ApiDestination']
        {
          api_destination_arn: 'api_destination_arn',
          name: 'name',
          api_destination_state: 'api_destination_state',
          connection_arn: 'connection_arn',
          invocation_endpoint: 'invocation_endpoint',
          http_method: 'http_method',
          invocation_rate_limit_per_second: 1,
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiDestination.new
        data = {}
        data['ApiDestinationArn'] = stub[:api_destination_arn] unless stub[:api_destination_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ApiDestinationState'] = stub[:api_destination_state] unless stub[:api_destination_state].nil?
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['InvocationEndpoint'] = stub[:invocation_endpoint] unless stub[:invocation_endpoint].nil?
        data['HttpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['InvocationRateLimitPerSecond'] = stub[:invocation_rate_limit_per_second] unless stub[:invocation_rate_limit_per_second].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListArchives
    class ListArchives
      def self.default(visited=[])
        {
          archives: ArchiveResponseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Archives'] = Stubs::ArchiveResponseList.stub(stub[:archives]) unless stub[:archives].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ArchiveResponseList
    class ArchiveResponseList
      def self.default(visited=[])
        return nil if visited.include?('ArchiveResponseList')
        visited = visited + ['ArchiveResponseList']
        [
          Archive.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Archive.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Archive
    class Archive
      def self.default(visited=[])
        return nil if visited.include?('Archive')
        visited = visited + ['Archive']
        {
          archive_name: 'archive_name',
          event_source_arn: 'event_source_arn',
          state: 'state',
          state_reason: 'state_reason',
          retention_days: 1,
          size_bytes: 1,
          event_count: 1,
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Archive.new
        data = {}
        data['ArchiveName'] = stub[:archive_name] unless stub[:archive_name].nil?
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['RetentionDays'] = stub[:retention_days] unless stub[:retention_days].nil?
        data['SizeBytes'] = stub[:size_bytes] unless stub[:size_bytes].nil?
        data['EventCount'] = stub[:event_count] unless stub[:event_count].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListConnections
    class ListConnections
      def self.default(visited=[])
        {
          connections: ConnectionResponseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Connections'] = Stubs::ConnectionResponseList.stub(stub[:connections]) unless stub[:connections].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConnectionResponseList
    class ConnectionResponseList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionResponseList')
        visited = visited + ['ConnectionResponseList']
        [
          Connection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Connection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Connection
    class Connection
      def self.default(visited=[])
        return nil if visited.include?('Connection')
        visited = visited + ['Connection']
        {
          connection_arn: 'connection_arn',
          name: 'name',
          connection_state: 'connection_state',
          state_reason: 'state_reason',
          authorization_type: 'authorization_type',
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_authorized_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Connection.new
        data = {}
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ConnectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['AuthorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastAuthorizedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_authorized_time]).to_i unless stub[:last_authorized_time].nil?
        data
      end
    end

    # Operation Stubber for ListEventBuses
    class ListEventBuses
      def self.default(visited=[])
        {
          event_buses: EventBusList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventBuses'] = Stubs::EventBusList.stub(stub[:event_buses]) unless stub[:event_buses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventBusList
    class EventBusList
      def self.default(visited=[])
        return nil if visited.include?('EventBusList')
        visited = visited + ['EventBusList']
        [
          EventBus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventBus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventBus
    class EventBus
      def self.default(visited=[])
        return nil if visited.include?('EventBus')
        visited = visited + ['EventBus']
        {
          name: 'name',
          arn: 'arn',
          policy: 'policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventBus.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data
      end
    end

    # Operation Stubber for ListEventSources
    class ListEventSources
      def self.default(visited=[])
        {
          event_sources: EventSourceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventSources'] = Stubs::EventSourceList.stub(stub[:event_sources]) unless stub[:event_sources].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventSourceList
    class EventSourceList
      def self.default(visited=[])
        return nil if visited.include?('EventSourceList')
        visited = visited + ['EventSourceList']
        [
          EventSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventSource
    class EventSource
      def self.default(visited=[])
        return nil if visited.include?('EventSource')
        visited = visited + ['EventSource']
        {
          arn: 'arn',
          created_by: 'created_by',
          creation_time: Time.now,
          expiration_time: Time.now,
          name: 'name',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventSource.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_time]).to_i unless stub[:expiration_time].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for ListPartnerEventSourceAccounts
    class ListPartnerEventSourceAccounts
      def self.default(visited=[])
        {
          partner_event_source_accounts: PartnerEventSourceAccountList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PartnerEventSourceAccounts'] = Stubs::PartnerEventSourceAccountList.stub(stub[:partner_event_source_accounts]) unless stub[:partner_event_source_accounts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PartnerEventSourceAccountList
    class PartnerEventSourceAccountList
      def self.default(visited=[])
        return nil if visited.include?('PartnerEventSourceAccountList')
        visited = visited + ['PartnerEventSourceAccountList']
        [
          PartnerEventSourceAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PartnerEventSourceAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PartnerEventSourceAccount
    class PartnerEventSourceAccount
      def self.default(visited=[])
        return nil if visited.include?('PartnerEventSourceAccount')
        visited = visited + ['PartnerEventSourceAccount']
        {
          account: 'account',
          creation_time: Time.now,
          expiration_time: Time.now,
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::PartnerEventSourceAccount.new
        data = {}
        data['Account'] = stub[:account] unless stub[:account].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_time]).to_i unless stub[:expiration_time].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for ListPartnerEventSources
    class ListPartnerEventSources
      def self.default(visited=[])
        {
          partner_event_sources: PartnerEventSourceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PartnerEventSources'] = Stubs::PartnerEventSourceList.stub(stub[:partner_event_sources]) unless stub[:partner_event_sources].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PartnerEventSourceList
    class PartnerEventSourceList
      def self.default(visited=[])
        return nil if visited.include?('PartnerEventSourceList')
        visited = visited + ['PartnerEventSourceList']
        [
          PartnerEventSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PartnerEventSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PartnerEventSource
    class PartnerEventSource
      def self.default(visited=[])
        return nil if visited.include?('PartnerEventSource')
        visited = visited + ['PartnerEventSource']
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::PartnerEventSource.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListReplays
    class ListReplays
      def self.default(visited=[])
        {
          replays: ReplayList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Replays'] = Stubs::ReplayList.stub(stub[:replays]) unless stub[:replays].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplayList
    class ReplayList
      def self.default(visited=[])
        return nil if visited.include?('ReplayList')
        visited = visited + ['ReplayList']
        [
          Replay.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Replay.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Replay
    class Replay
      def self.default(visited=[])
        return nil if visited.include?('Replay')
        visited = visited + ['Replay']
        {
          replay_name: 'replay_name',
          event_source_arn: 'event_source_arn',
          state: 'state',
          state_reason: 'state_reason',
          event_start_time: Time.now,
          event_end_time: Time.now,
          event_last_replayed_time: Time.now,
          replay_start_time: Time.now,
          replay_end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Replay.new
        data = {}
        data['ReplayName'] = stub[:replay_name] unless stub[:replay_name].nil?
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['EventStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_start_time]).to_i unless stub[:event_start_time].nil?
        data['EventEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_end_time]).to_i unless stub[:event_end_time].nil?
        data['EventLastReplayedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_last_replayed_time]).to_i unless stub[:event_last_replayed_time].nil?
        data['ReplayStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replay_start_time]).to_i unless stub[:replay_start_time].nil?
        data['ReplayEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replay_end_time]).to_i unless stub[:replay_end_time].nil?
        data
      end
    end

    # Operation Stubber for ListRuleNamesByTarget
    class ListRuleNamesByTarget
      def self.default(visited=[])
        {
          rule_names: RuleNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleNames'] = Stubs::RuleNameList.stub(stub[:rule_names]) unless stub[:rule_names].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RuleNameList
    class RuleNameList
      def self.default(visited=[])
        return nil if visited.include?('RuleNameList')
        visited = visited + ['RuleNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRules
    class ListRules
      def self.default(visited=[])
        {
          rules: RuleResponseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rules'] = Stubs::RuleResponseList.stub(stub[:rules]) unless stub[:rules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RuleResponseList
    class RuleResponseList
      def self.default(visited=[])
        return nil if visited.include?('RuleResponseList')
        visited = visited + ['RuleResponseList']
        [
          Rule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Rule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          name: 'name',
          arn: 'arn',
          event_pattern: 'event_pattern',
          state: 'state',
          description: 'description',
          schedule_expression: 'schedule_expression',
          role_arn: 'role_arn',
          managed_by: 'managed_by',
          event_bus_name: 'event_bus_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Rule.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['EventPattern'] = stub[:event_pattern] unless stub[:event_pattern].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ManagedBy'] = stub[:managed_by] unless stub[:managed_by].nil?
        data['EventBusName'] = stub[:event_bus_name] unless stub[:event_bus_name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListTargetsByRule
    class ListTargetsByRule
      def self.default(visited=[])
        {
          targets: TargetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Targets'] = Stubs::TargetList.stub(stub[:targets]) unless stub[:targets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TargetList
    class TargetList
      def self.default(visited=[])
        return nil if visited.include?('TargetList')
        visited = visited + ['TargetList']
        [
          Target.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Target.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Target
    class Target
      def self.default(visited=[])
        return nil if visited.include?('Target')
        visited = visited + ['Target']
        {
          id: 'id',
          arn: 'arn',
          role_arn: 'role_arn',
          input: 'input',
          input_path: 'input_path',
          input_transformer: InputTransformer.default(visited),
          kinesis_parameters: KinesisParameters.default(visited),
          run_command_parameters: RunCommandParameters.default(visited),
          ecs_parameters: EcsParameters.default(visited),
          batch_parameters: BatchParameters.default(visited),
          sqs_parameters: SqsParameters.default(visited),
          http_parameters: HttpParameters.default(visited),
          redshift_data_parameters: RedshiftDataParameters.default(visited),
          sage_maker_pipeline_parameters: SageMakerPipelineParameters.default(visited),
          dead_letter_config: DeadLetterConfig.default(visited),
          retry_policy: RetryPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Target.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Input'] = stub[:input] unless stub[:input].nil?
        data['InputPath'] = stub[:input_path] unless stub[:input_path].nil?
        data['InputTransformer'] = Stubs::InputTransformer.stub(stub[:input_transformer]) unless stub[:input_transformer].nil?
        data['KinesisParameters'] = Stubs::KinesisParameters.stub(stub[:kinesis_parameters]) unless stub[:kinesis_parameters].nil?
        data['RunCommandParameters'] = Stubs::RunCommandParameters.stub(stub[:run_command_parameters]) unless stub[:run_command_parameters].nil?
        data['EcsParameters'] = Stubs::EcsParameters.stub(stub[:ecs_parameters]) unless stub[:ecs_parameters].nil?
        data['BatchParameters'] = Stubs::BatchParameters.stub(stub[:batch_parameters]) unless stub[:batch_parameters].nil?
        data['SqsParameters'] = Stubs::SqsParameters.stub(stub[:sqs_parameters]) unless stub[:sqs_parameters].nil?
        data['HttpParameters'] = Stubs::HttpParameters.stub(stub[:http_parameters]) unless stub[:http_parameters].nil?
        data['RedshiftDataParameters'] = Stubs::RedshiftDataParameters.stub(stub[:redshift_data_parameters]) unless stub[:redshift_data_parameters].nil?
        data['SageMakerPipelineParameters'] = Stubs::SageMakerPipelineParameters.stub(stub[:sage_maker_pipeline_parameters]) unless stub[:sage_maker_pipeline_parameters].nil?
        data['DeadLetterConfig'] = Stubs::DeadLetterConfig.stub(stub[:dead_letter_config]) unless stub[:dead_letter_config].nil?
        data['RetryPolicy'] = Stubs::RetryPolicy.stub(stub[:retry_policy]) unless stub[:retry_policy].nil?
        data
      end
    end

    # Structure Stubber for RetryPolicy
    class RetryPolicy
      def self.default(visited=[])
        return nil if visited.include?('RetryPolicy')
        visited = visited + ['RetryPolicy']
        {
          maximum_retry_attempts: 1,
          maximum_event_age_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RetryPolicy.new
        data = {}
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = stub[:maximum_event_age_in_seconds] unless stub[:maximum_event_age_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for DeadLetterConfig
    class DeadLetterConfig
      def self.default(visited=[])
        return nil if visited.include?('DeadLetterConfig')
        visited = visited + ['DeadLetterConfig']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeadLetterConfig.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for SageMakerPipelineParameters
    class SageMakerPipelineParameters
      def self.default(visited=[])
        return nil if visited.include?('SageMakerPipelineParameters')
        visited = visited + ['SageMakerPipelineParameters']
        {
          pipeline_parameter_list: SageMakerPipelineParameterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SageMakerPipelineParameters.new
        data = {}
        data['PipelineParameterList'] = Stubs::SageMakerPipelineParameterList.stub(stub[:pipeline_parameter_list]) unless stub[:pipeline_parameter_list].nil?
        data
      end
    end

    # List Stubber for SageMakerPipelineParameterList
    class SageMakerPipelineParameterList
      def self.default(visited=[])
        return nil if visited.include?('SageMakerPipelineParameterList')
        visited = visited + ['SageMakerPipelineParameterList']
        [
          SageMakerPipelineParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SageMakerPipelineParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SageMakerPipelineParameter
    class SageMakerPipelineParameter
      def self.default(visited=[])
        return nil if visited.include?('SageMakerPipelineParameter')
        visited = visited + ['SageMakerPipelineParameter']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SageMakerPipelineParameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for RedshiftDataParameters
    class RedshiftDataParameters
      def self.default(visited=[])
        return nil if visited.include?('RedshiftDataParameters')
        visited = visited + ['RedshiftDataParameters']
        {
          secret_manager_arn: 'secret_manager_arn',
          database: 'database',
          db_user: 'db_user',
          sql: 'sql',
          statement_name: 'statement_name',
          with_event: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftDataParameters.new
        data = {}
        data['SecretManagerArn'] = stub[:secret_manager_arn] unless stub[:secret_manager_arn].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['DbUser'] = stub[:db_user] unless stub[:db_user].nil?
        data['Sql'] = stub[:sql] unless stub[:sql].nil?
        data['StatementName'] = stub[:statement_name] unless stub[:statement_name].nil?
        data['WithEvent'] = stub[:with_event] unless stub[:with_event].nil?
        data
      end
    end

    # Structure Stubber for HttpParameters
    class HttpParameters
      def self.default(visited=[])
        return nil if visited.include?('HttpParameters')
        visited = visited + ['HttpParameters']
        {
          path_parameter_values: PathParameterList.default(visited),
          header_parameters: HeaderParametersMap.default(visited),
          query_string_parameters: QueryStringParametersMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpParameters.new
        data = {}
        data['PathParameterValues'] = Stubs::PathParameterList.stub(stub[:path_parameter_values]) unless stub[:path_parameter_values].nil?
        data['HeaderParameters'] = Stubs::HeaderParametersMap.stub(stub[:header_parameters]) unless stub[:header_parameters].nil?
        data['QueryStringParameters'] = Stubs::QueryStringParametersMap.stub(stub[:query_string_parameters]) unless stub[:query_string_parameters].nil?
        data
      end
    end

    # Map Stubber for QueryStringParametersMap
    class QueryStringParametersMap
      def self.default(visited=[])
        return nil if visited.include?('QueryStringParametersMap')
        visited = visited + ['QueryStringParametersMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for HeaderParametersMap
    class HeaderParametersMap
      def self.default(visited=[])
        return nil if visited.include?('HeaderParametersMap')
        visited = visited + ['HeaderParametersMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for PathParameterList
    class PathParameterList
      def self.default(visited=[])
        return nil if visited.include?('PathParameterList')
        visited = visited + ['PathParameterList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SqsParameters
    class SqsParameters
      def self.default(visited=[])
        return nil if visited.include?('SqsParameters')
        visited = visited + ['SqsParameters']
        {
          message_group_id: 'message_group_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SqsParameters.new
        data = {}
        data['MessageGroupId'] = stub[:message_group_id] unless stub[:message_group_id].nil?
        data
      end
    end

    # Structure Stubber for BatchParameters
    class BatchParameters
      def self.default(visited=[])
        return nil if visited.include?('BatchParameters')
        visited = visited + ['BatchParameters']
        {
          job_definition: 'job_definition',
          job_name: 'job_name',
          array_properties: BatchArrayProperties.default(visited),
          retry_strategy: BatchRetryStrategy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchParameters.new
        data = {}
        data['JobDefinition'] = stub[:job_definition] unless stub[:job_definition].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['ArrayProperties'] = Stubs::BatchArrayProperties.stub(stub[:array_properties]) unless stub[:array_properties].nil?
        data['RetryStrategy'] = Stubs::BatchRetryStrategy.stub(stub[:retry_strategy]) unless stub[:retry_strategy].nil?
        data
      end
    end

    # Structure Stubber for BatchRetryStrategy
    class BatchRetryStrategy
      def self.default(visited=[])
        return nil if visited.include?('BatchRetryStrategy')
        visited = visited + ['BatchRetryStrategy']
        {
          attempts: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchRetryStrategy.new
        data = {}
        data['Attempts'] = stub[:attempts] unless stub[:attempts].nil?
        data
      end
    end

    # Structure Stubber for BatchArrayProperties
    class BatchArrayProperties
      def self.default(visited=[])
        return nil if visited.include?('BatchArrayProperties')
        visited = visited + ['BatchArrayProperties']
        {
          size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchArrayProperties.new
        data = {}
        data['Size'] = stub[:size] unless stub[:size].nil?
        data
      end
    end

    # Structure Stubber for EcsParameters
    class EcsParameters
      def self.default(visited=[])
        return nil if visited.include?('EcsParameters')
        visited = visited + ['EcsParameters']
        {
          task_definition_arn: 'task_definition_arn',
          task_count: 1,
          launch_type: 'launch_type',
          network_configuration: NetworkConfiguration.default(visited),
          platform_version: 'platform_version',
          group: 'group',
          capacity_provider_strategy: CapacityProviderStrategy.default(visited),
          enable_ecs_managed_tags: false,
          enable_execute_command: false,
          placement_constraints: PlacementConstraints.default(visited),
          placement_strategy: PlacementStrategies.default(visited),
          propagate_tags: 'propagate_tags',
          reference_id: 'reference_id',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EcsParameters.new
        data = {}
        data['TaskDefinitionArn'] = stub[:task_definition_arn] unless stub[:task_definition_arn].nil?
        data['TaskCount'] = stub[:task_count] unless stub[:task_count].nil?
        data['LaunchType'] = stub[:launch_type] unless stub[:launch_type].nil?
        data['NetworkConfiguration'] = Stubs::NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['PlatformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['Group'] = stub[:group] unless stub[:group].nil?
        data['CapacityProviderStrategy'] = Stubs::CapacityProviderStrategy.stub(stub[:capacity_provider_strategy]) unless stub[:capacity_provider_strategy].nil?
        data['EnableECSManagedTags'] = stub[:enable_ecs_managed_tags] unless stub[:enable_ecs_managed_tags].nil?
        data['EnableExecuteCommand'] = stub[:enable_execute_command] unless stub[:enable_execute_command].nil?
        data['PlacementConstraints'] = Stubs::PlacementConstraints.stub(stub[:placement_constraints]) unless stub[:placement_constraints].nil?
        data['PlacementStrategy'] = Stubs::PlacementStrategies.stub(stub[:placement_strategy]) unless stub[:placement_strategy].nil?
        data['PropagateTags'] = stub[:propagate_tags] unless stub[:propagate_tags].nil?
        data['ReferenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for PlacementStrategies
    class PlacementStrategies
      def self.default(visited=[])
        return nil if visited.include?('PlacementStrategies')
        visited = visited + ['PlacementStrategies']
        [
          PlacementStrategy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PlacementStrategy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlacementStrategy
    class PlacementStrategy
      def self.default(visited=[])
        return nil if visited.include?('PlacementStrategy')
        visited = visited + ['PlacementStrategy']
        {
          type: 'type',
          field: 'field',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementStrategy.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['field'] = stub[:field] unless stub[:field].nil?
        data
      end
    end

    # List Stubber for PlacementConstraints
    class PlacementConstraints
      def self.default(visited=[])
        return nil if visited.include?('PlacementConstraints')
        visited = visited + ['PlacementConstraints']
        [
          PlacementConstraint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PlacementConstraint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlacementConstraint
    class PlacementConstraint
      def self.default(visited=[])
        return nil if visited.include?('PlacementConstraint')
        visited = visited + ['PlacementConstraint']
        {
          type: 'type',
          expression: 'expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementConstraint.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['expression'] = stub[:expression] unless stub[:expression].nil?
        data
      end
    end

    # List Stubber for CapacityProviderStrategy
    class CapacityProviderStrategy
      def self.default(visited=[])
        return nil if visited.include?('CapacityProviderStrategy')
        visited = visited + ['CapacityProviderStrategy']
        [
          CapacityProviderStrategyItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CapacityProviderStrategyItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CapacityProviderStrategyItem
    class CapacityProviderStrategyItem
      def self.default(visited=[])
        return nil if visited.include?('CapacityProviderStrategyItem')
        visited = visited + ['CapacityProviderStrategyItem']
        {
          capacity_provider: 'capacity_provider',
          weight: 1,
          base: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CapacityProviderStrategyItem.new
        data = {}
        data['capacityProvider'] = stub[:capacity_provider] unless stub[:capacity_provider].nil?
        data['weight'] = stub[:weight] unless stub[:weight].nil?
        data['base'] = stub[:base] unless stub[:base].nil?
        data
      end
    end

    # Structure Stubber for NetworkConfiguration
    class NetworkConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NetworkConfiguration')
        visited = visited + ['NetworkConfiguration']
        {
          awsvpc_configuration: AwsVpcConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkConfiguration.new
        data = {}
        data['awsvpcConfiguration'] = Stubs::AwsVpcConfiguration.stub(stub[:awsvpc_configuration]) unless stub[:awsvpc_configuration].nil?
        data
      end
    end

    # Structure Stubber for AwsVpcConfiguration
    class AwsVpcConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AwsVpcConfiguration')
        visited = visited + ['AwsVpcConfiguration']
        {
          subnets: StringList.default(visited),
          security_groups: StringList.default(visited),
          assign_public_ip: 'assign_public_ip',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsVpcConfiguration.new
        data = {}
        data['Subnets'] = Stubs::StringList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['SecurityGroups'] = Stubs::StringList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['AssignPublicIp'] = stub[:assign_public_ip] unless stub[:assign_public_ip].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RunCommandParameters
    class RunCommandParameters
      def self.default(visited=[])
        return nil if visited.include?('RunCommandParameters')
        visited = visited + ['RunCommandParameters']
        {
          run_command_targets: RunCommandTargets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RunCommandParameters.new
        data = {}
        data['RunCommandTargets'] = Stubs::RunCommandTargets.stub(stub[:run_command_targets]) unless stub[:run_command_targets].nil?
        data
      end
    end

    # List Stubber for RunCommandTargets
    class RunCommandTargets
      def self.default(visited=[])
        return nil if visited.include?('RunCommandTargets')
        visited = visited + ['RunCommandTargets']
        [
          RunCommandTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RunCommandTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RunCommandTarget
    class RunCommandTarget
      def self.default(visited=[])
        return nil if visited.include?('RunCommandTarget')
        visited = visited + ['RunCommandTarget']
        {
          key: 'key',
          values: RunCommandTargetValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RunCommandTarget.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = Stubs::RunCommandTargetValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for RunCommandTargetValues
    class RunCommandTargetValues
      def self.default(visited=[])
        return nil if visited.include?('RunCommandTargetValues')
        visited = visited + ['RunCommandTargetValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KinesisParameters
    class KinesisParameters
      def self.default(visited=[])
        return nil if visited.include?('KinesisParameters')
        visited = visited + ['KinesisParameters']
        {
          partition_key_path: 'partition_key_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisParameters.new
        data = {}
        data['PartitionKeyPath'] = stub[:partition_key_path] unless stub[:partition_key_path].nil?
        data
      end
    end

    # Structure Stubber for InputTransformer
    class InputTransformer
      def self.default(visited=[])
        return nil if visited.include?('InputTransformer')
        visited = visited + ['InputTransformer']
        {
          input_paths_map: TransformerPaths.default(visited),
          input_template: 'input_template',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputTransformer.new
        data = {}
        data['InputPathsMap'] = Stubs::TransformerPaths.stub(stub[:input_paths_map]) unless stub[:input_paths_map].nil?
        data['InputTemplate'] = stub[:input_template] unless stub[:input_template].nil?
        data
      end
    end

    # Map Stubber for TransformerPaths
    class TransformerPaths
      def self.default(visited=[])
        return nil if visited.include?('TransformerPaths')
        visited = visited + ['TransformerPaths']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for PutEvents
    class PutEvents
      def self.default(visited=[])
        {
          failed_entry_count: 1,
          entries: PutEventsResultEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedEntryCount'] = stub[:failed_entry_count] unless stub[:failed_entry_count].nil?
        data['Entries'] = Stubs::PutEventsResultEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PutEventsResultEntryList
    class PutEventsResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('PutEventsResultEntryList')
        visited = visited + ['PutEventsResultEntryList']
        [
          PutEventsResultEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PutEventsResultEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PutEventsResultEntry
    class PutEventsResultEntry
      def self.default(visited=[])
        return nil if visited.include?('PutEventsResultEntry')
        visited = visited + ['PutEventsResultEntry']
        {
          event_id: 'event_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PutEventsResultEntry.new
        data = {}
        data['EventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for PutPartnerEvents
    class PutPartnerEvents
      def self.default(visited=[])
        {
          failed_entry_count: 1,
          entries: PutPartnerEventsResultEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedEntryCount'] = stub[:failed_entry_count] unless stub[:failed_entry_count].nil?
        data['Entries'] = Stubs::PutPartnerEventsResultEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PutPartnerEventsResultEntryList
    class PutPartnerEventsResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('PutPartnerEventsResultEntryList')
        visited = visited + ['PutPartnerEventsResultEntryList']
        [
          PutPartnerEventsResultEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PutPartnerEventsResultEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PutPartnerEventsResultEntry
    class PutPartnerEventsResultEntry
      def self.default(visited=[])
        return nil if visited.include?('PutPartnerEventsResultEntry')
        visited = visited + ['PutPartnerEventsResultEntry']
        {
          event_id: 'event_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PutPartnerEventsResultEntry.new
        data = {}
        data['EventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for PutPermission
    class PutPermission
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRule
    class PutRule
      def self.default(visited=[])
        {
          rule_arn: 'rule_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleArn'] = stub[:rule_arn] unless stub[:rule_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutTargets
    class PutTargets
      def self.default(visited=[])
        {
          failed_entry_count: 1,
          failed_entries: PutTargetsResultEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedEntryCount'] = stub[:failed_entry_count] unless stub[:failed_entry_count].nil?
        data['FailedEntries'] = Stubs::PutTargetsResultEntryList.stub(stub[:failed_entries]) unless stub[:failed_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PutTargetsResultEntryList
    class PutTargetsResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('PutTargetsResultEntryList')
        visited = visited + ['PutTargetsResultEntryList']
        [
          PutTargetsResultEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PutTargetsResultEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PutTargetsResultEntry
    class PutTargetsResultEntry
      def self.default(visited=[])
        return nil if visited.include?('PutTargetsResultEntry')
        visited = visited + ['PutTargetsResultEntry']
        {
          target_id: 'target_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PutTargetsResultEntry.new
        data = {}
        data['TargetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for RemovePermission
    class RemovePermission
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTargets
    class RemoveTargets
      def self.default(visited=[])
        {
          failed_entry_count: 1,
          failed_entries: RemoveTargetsResultEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedEntryCount'] = stub[:failed_entry_count] unless stub[:failed_entry_count].nil?
        data['FailedEntries'] = Stubs::RemoveTargetsResultEntryList.stub(stub[:failed_entries]) unless stub[:failed_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RemoveTargetsResultEntryList
    class RemoveTargetsResultEntryList
      def self.default(visited=[])
        return nil if visited.include?('RemoveTargetsResultEntryList')
        visited = visited + ['RemoveTargetsResultEntryList']
        [
          RemoveTargetsResultEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RemoveTargetsResultEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RemoveTargetsResultEntry
    class RemoveTargetsResultEntry
      def self.default(visited=[])
        return nil if visited.include?('RemoveTargetsResultEntry')
        visited = visited + ['RemoveTargetsResultEntry']
        {
          target_id: 'target_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::RemoveTargetsResultEntry.new
        data = {}
        data['TargetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for StartReplay
    class StartReplay
      def self.default(visited=[])
        {
          replay_arn: 'replay_arn',
          state: 'state',
          state_reason: 'state_reason',
          replay_start_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplayArn'] = stub[:replay_arn] unless stub[:replay_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['ReplayStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replay_start_time]).to_i unless stub[:replay_start_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestEventPattern
    class TestEventPattern
      def self.default(visited=[])
        {
          result: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Result'] = stub[:result] unless stub[:result].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApiDestination
    class UpdateApiDestination
      def self.default(visited=[])
        {
          api_destination_arn: 'api_destination_arn',
          api_destination_state: 'api_destination_state',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApiDestinationArn'] = stub[:api_destination_arn] unless stub[:api_destination_arn].nil?
        data['ApiDestinationState'] = stub[:api_destination_state] unless stub[:api_destination_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateArchive
    class UpdateArchive
      def self.default(visited=[])
        {
          archive_arn: 'archive_arn',
          state: 'state',
          state_reason: 'state_reason',
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ArchiveArn'] = stub[:archive_arn] unless stub[:archive_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConnection
    class UpdateConnection
      def self.default(visited=[])
        {
          connection_arn: 'connection_arn',
          connection_state: 'connection_state',
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_authorized_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['ConnectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastAuthorizedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_authorized_time]).to_i unless stub[:last_authorized_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
