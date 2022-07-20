# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CloudWatchEvents
  module Validators

    class ActivateEventSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateEventSourceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ActivateEventSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateEventSourceOutput, context: context)
      end
    end

    class ApiDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiDestination, context: context)
        Hearth::Validator.validate!(input[:api_destination_arn], ::String, context: "#{context}[:api_destination_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:api_destination_state], ::String, context: "#{context}[:api_destination_state]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:invocation_endpoint], ::String, context: "#{context}[:invocation_endpoint]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:invocation_rate_limit_per_second], ::Integer, context: "#{context}[:invocation_rate_limit_per_second]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class ApiDestinationResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApiDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Archive
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Archive, context: context)
        Hearth::Validator.validate!(input[:archive_name], ::String, context: "#{context}[:archive_name]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:retention_days], ::Integer, context: "#{context}[:retention_days]")
        Hearth::Validator.validate!(input[:size_bytes], ::Integer, context: "#{context}[:size_bytes]")
        Hearth::Validator.validate!(input[:event_count], ::Integer, context: "#{context}[:event_count]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class ArchiveResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Archive.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsVpcConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsVpcConfiguration, context: context)
        StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        StringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:assign_public_ip], ::String, context: "#{context}[:assign_public_ip]")
      end
    end

    class BatchArrayProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchArrayProperties, context: context)
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class BatchParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchParameters, context: context)
        Hearth::Validator.validate!(input[:job_definition], ::String, context: "#{context}[:job_definition]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        BatchArrayProperties.validate!(input[:array_properties], context: "#{context}[:array_properties]") unless input[:array_properties].nil?
        BatchRetryStrategy.validate!(input[:retry_strategy], context: "#{context}[:retry_strategy]") unless input[:retry_strategy].nil?
      end
    end

    class BatchRetryStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchRetryStrategy, context: context)
        Hearth::Validator.validate!(input[:attempts], ::Integer, context: "#{context}[:attempts]")
      end
    end

    class CancelReplayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelReplayInput, context: context)
        Hearth::Validator.validate!(input[:replay_name], ::String, context: "#{context}[:replay_name]")
      end
    end

    class CancelReplayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelReplayOutput, context: context)
        Hearth::Validator.validate!(input[:replay_arn], ::String, context: "#{context}[:replay_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
      end
    end

    class CapacityProviderStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CapacityProviderStrategyItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CapacityProviderStrategyItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityProviderStrategyItem, context: context)
        Hearth::Validator.validate!(input[:capacity_provider], ::String, context: "#{context}[:capacity_provider]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
        Hearth::Validator.validate!(input[:base], ::Integer, context: "#{context}[:base]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Condition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Condition, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Connection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connection, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_authorized_time], ::Time, context: "#{context}[:last_authorized_time]")
      end
    end

    class ConnectionApiKeyAuthResponseParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionApiKeyAuthResponseParameters, context: context)
        Hearth::Validator.validate!(input[:api_key_name], ::String, context: "#{context}[:api_key_name]")
      end
    end

    class ConnectionAuthResponseParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionAuthResponseParameters, context: context)
        ConnectionBasicAuthResponseParameters.validate!(input[:basic_auth_parameters], context: "#{context}[:basic_auth_parameters]") unless input[:basic_auth_parameters].nil?
        ConnectionOAuthResponseParameters.validate!(input[:o_auth_parameters], context: "#{context}[:o_auth_parameters]") unless input[:o_auth_parameters].nil?
        ConnectionApiKeyAuthResponseParameters.validate!(input[:api_key_auth_parameters], context: "#{context}[:api_key_auth_parameters]") unless input[:api_key_auth_parameters].nil?
        ConnectionHttpParameters.validate!(input[:invocation_http_parameters], context: "#{context}[:invocation_http_parameters]") unless input[:invocation_http_parameters].nil?
      end
    end

    class ConnectionBasicAuthResponseParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionBasicAuthResponseParameters, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class ConnectionBodyParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionBodyParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:is_value_secret], ::TrueClass, ::FalseClass, context: "#{context}[:is_value_secret]")
      end
    end

    class ConnectionBodyParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConnectionBodyParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectionHeaderParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionHeaderParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:is_value_secret], ::TrueClass, ::FalseClass, context: "#{context}[:is_value_secret]")
      end
    end

    class ConnectionHeaderParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConnectionHeaderParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectionHttpParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionHttpParameters, context: context)
        ConnectionHeaderParametersList.validate!(input[:header_parameters], context: "#{context}[:header_parameters]") unless input[:header_parameters].nil?
        ConnectionQueryStringParametersList.validate!(input[:query_string_parameters], context: "#{context}[:query_string_parameters]") unless input[:query_string_parameters].nil?
        ConnectionBodyParametersList.validate!(input[:body_parameters], context: "#{context}[:body_parameters]") unless input[:body_parameters].nil?
      end
    end

    class ConnectionOAuthClientResponseParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionOAuthClientResponseParameters, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class ConnectionOAuthResponseParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionOAuthResponseParameters, context: context)
        ConnectionOAuthClientResponseParameters.validate!(input[:client_parameters], context: "#{context}[:client_parameters]") unless input[:client_parameters].nil?
        Hearth::Validator.validate!(input[:authorization_endpoint], ::String, context: "#{context}[:authorization_endpoint]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        ConnectionHttpParameters.validate!(input[:o_auth_http_parameters], context: "#{context}[:o_auth_http_parameters]") unless input[:o_auth_http_parameters].nil?
      end
    end

    class ConnectionQueryStringParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionQueryStringParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:is_value_secret], ::TrueClass, ::FalseClass, context: "#{context}[:is_value_secret]")
      end
    end

    class ConnectionQueryStringParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConnectionQueryStringParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectionResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Connection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateApiDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiDestinationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:invocation_endpoint], ::String, context: "#{context}[:invocation_endpoint]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:invocation_rate_limit_per_second], ::Integer, context: "#{context}[:invocation_rate_limit_per_second]")
      end
    end

    class CreateApiDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:api_destination_arn], ::String, context: "#{context}[:api_destination_arn]")
        Hearth::Validator.validate!(input[:api_destination_state], ::String, context: "#{context}[:api_destination_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class CreateArchiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateArchiveInput, context: context)
        Hearth::Validator.validate!(input[:archive_name], ::String, context: "#{context}[:archive_name]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_pattern], ::String, context: "#{context}[:event_pattern]")
        Hearth::Validator.validate!(input[:retention_days], ::Integer, context: "#{context}[:retention_days]")
      end
    end

    class CreateArchiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateArchiveOutput, context: context)
        Hearth::Validator.validate!(input[:archive_arn], ::String, context: "#{context}[:archive_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class CreateConnectionApiKeyAuthRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionApiKeyAuthRequestParameters, context: context)
        Hearth::Validator.validate!(input[:api_key_name], ::String, context: "#{context}[:api_key_name]")
        Hearth::Validator.validate!(input[:api_key_value], ::String, context: "#{context}[:api_key_value]")
      end
    end

    class CreateConnectionAuthRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionAuthRequestParameters, context: context)
        CreateConnectionBasicAuthRequestParameters.validate!(input[:basic_auth_parameters], context: "#{context}[:basic_auth_parameters]") unless input[:basic_auth_parameters].nil?
        CreateConnectionOAuthRequestParameters.validate!(input[:o_auth_parameters], context: "#{context}[:o_auth_parameters]") unless input[:o_auth_parameters].nil?
        CreateConnectionApiKeyAuthRequestParameters.validate!(input[:api_key_auth_parameters], context: "#{context}[:api_key_auth_parameters]") unless input[:api_key_auth_parameters].nil?
        ConnectionHttpParameters.validate!(input[:invocation_http_parameters], context: "#{context}[:invocation_http_parameters]") unless input[:invocation_http_parameters].nil?
      end
    end

    class CreateConnectionBasicAuthRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionBasicAuthRequestParameters, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class CreateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        CreateConnectionAuthRequestParameters.validate!(input[:auth_parameters], context: "#{context}[:auth_parameters]") unless input[:auth_parameters].nil?
      end
    end

    class CreateConnectionOAuthClientRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionOAuthClientRequestParameters, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
      end
    end

    class CreateConnectionOAuthRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionOAuthRequestParameters, context: context)
        CreateConnectionOAuthClientRequestParameters.validate!(input[:client_parameters], context: "#{context}[:client_parameters]") unless input[:client_parameters].nil?
        Hearth::Validator.validate!(input[:authorization_endpoint], ::String, context: "#{context}[:authorization_endpoint]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        ConnectionHttpParameters.validate!(input[:o_auth_http_parameters], context: "#{context}[:o_auth_http_parameters]") unless input[:o_auth_http_parameters].nil?
      end
    end

    class CreateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class CreateEventBusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventBusInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:event_source_name], ::String, context: "#{context}[:event_source_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEventBusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventBusOutput, context: context)
        Hearth::Validator.validate!(input[:event_bus_arn], ::String, context: "#{context}[:event_bus_arn]")
      end
    end

    class CreatePartnerEventSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePartnerEventSourceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
      end
    end

    class CreatePartnerEventSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePartnerEventSourceOutput, context: context)
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
      end
    end

    class DeactivateEventSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateEventSourceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeactivateEventSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateEventSourceOutput, context: context)
      end
    end

    class DeadLetterConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeadLetterConfig, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeauthorizeConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeauthorizeConnectionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeauthorizeConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeauthorizeConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_authorized_time], ::Time, context: "#{context}[:last_authorized_time]")
      end
    end

    class DeleteApiDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiDestinationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteApiDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiDestinationOutput, context: context)
      end
    end

    class DeleteArchiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteArchiveInput, context: context)
        Hearth::Validator.validate!(input[:archive_name], ::String, context: "#{context}[:archive_name]")
      end
    end

    class DeleteArchiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteArchiveOutput, context: context)
      end
    end

    class DeleteConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_authorized_time], ::Time, context: "#{context}[:last_authorized_time]")
      end
    end

    class DeleteEventBusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventBusInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteEventBusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventBusOutput, context: context)
      end
    end

    class DeletePartnerEventSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePartnerEventSourceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
      end
    end

    class DeletePartnerEventSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePartnerEventSourceOutput, context: context)
      end
    end

    class DeleteRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class DeleteRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleOutput, context: context)
      end
    end

    class DescribeApiDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApiDestinationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeApiDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApiDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:api_destination_arn], ::String, context: "#{context}[:api_destination_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:api_destination_state], ::String, context: "#{context}[:api_destination_state]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:invocation_endpoint], ::String, context: "#{context}[:invocation_endpoint]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:invocation_rate_limit_per_second], ::Integer, context: "#{context}[:invocation_rate_limit_per_second]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class DescribeArchiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeArchiveInput, context: context)
        Hearth::Validator.validate!(input[:archive_name], ::String, context: "#{context}[:archive_name]")
      end
    end

    class DescribeArchiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeArchiveOutput, context: context)
        Hearth::Validator.validate!(input[:archive_arn], ::String, context: "#{context}[:archive_arn]")
        Hearth::Validator.validate!(input[:archive_name], ::String, context: "#{context}[:archive_name]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_pattern], ::String, context: "#{context}[:event_pattern]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:retention_days], ::Integer, context: "#{context}[:retention_days]")
        Hearth::Validator.validate!(input[:size_bytes], ::Integer, context: "#{context}[:size_bytes]")
        Hearth::Validator.validate!(input[:event_count], ::Integer, context: "#{context}[:event_count]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribeConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        ConnectionAuthResponseParameters.validate!(input[:auth_parameters], context: "#{context}[:auth_parameters]") unless input[:auth_parameters].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_authorized_time], ::Time, context: "#{context}[:last_authorized_time]")
      end
    end

    class DescribeEventBusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventBusInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeEventBusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventBusOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class DescribeEventSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSourceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeEventSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:expiration_time], ::Time, context: "#{context}[:expiration_time]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DescribePartnerEventSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePartnerEventSourceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribePartnerEventSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePartnerEventSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeReplayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplayInput, context: context)
        Hearth::Validator.validate!(input[:replay_name], ::String, context: "#{context}[:replay_name]")
      end
    end

    class DescribeReplayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplayOutput, context: context)
        Hearth::Validator.validate!(input[:replay_name], ::String, context: "#{context}[:replay_name]")
        Hearth::Validator.validate!(input[:replay_arn], ::String, context: "#{context}[:replay_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        ReplayDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:event_start_time], ::Time, context: "#{context}[:event_start_time]")
        Hearth::Validator.validate!(input[:event_end_time], ::Time, context: "#{context}[:event_end_time]")
        Hearth::Validator.validate!(input[:event_last_replayed_time], ::Time, context: "#{context}[:event_last_replayed_time]")
        Hearth::Validator.validate!(input[:replay_start_time], ::Time, context: "#{context}[:replay_start_time]")
        Hearth::Validator.validate!(input[:replay_end_time], ::Time, context: "#{context}[:replay_end_time]")
      end
    end

    class DescribeRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
      end
    end

    class DescribeRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuleOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:event_pattern], ::String, context: "#{context}[:event_pattern]")
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:managed_by], ::String, context: "#{context}[:managed_by]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
      end
    end

    class DisableRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
      end
    end

    class DisableRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableRuleOutput, context: context)
      end
    end

    class EcsParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EcsParameters, context: context)
        Hearth::Validator.validate!(input[:task_definition_arn], ::String, context: "#{context}[:task_definition_arn]")
        Hearth::Validator.validate!(input[:task_count], ::Integer, context: "#{context}[:task_count]")
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        CapacityProviderStrategy.validate!(input[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless input[:capacity_provider_strategy].nil?
        Hearth::Validator.validate!(input[:enable_ecs_managed_tags], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ecs_managed_tags]")
        Hearth::Validator.validate!(input[:enable_execute_command], ::TrueClass, ::FalseClass, context: "#{context}[:enable_execute_command]")
        PlacementConstraints.validate!(input[:placement_constraints], context: "#{context}[:placement_constraints]") unless input[:placement_constraints].nil?
        PlacementStrategies.validate!(input[:placement_strategy], context: "#{context}[:placement_strategy]") unless input[:placement_strategy].nil?
        Hearth::Validator.validate!(input[:propagate_tags], ::String, context: "#{context}[:propagate_tags]")
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EnableRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
      end
    end

    class EnableRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableRuleOutput, context: context)
      end
    end

    class EventBus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventBus, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class EventBusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventBus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSource, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:expiration_time], ::Time, context: "#{context}[:expiration_time]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class EventSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HeaderParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class HttpParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpParameters, context: context)
        PathParameterList.validate!(input[:path_parameter_values], context: "#{context}[:path_parameter_values]") unless input[:path_parameter_values].nil?
        HeaderParametersMap.validate!(input[:header_parameters], context: "#{context}[:header_parameters]") unless input[:header_parameters].nil?
        QueryStringParametersMap.validate!(input[:query_string_parameters], context: "#{context}[:query_string_parameters]") unless input[:query_string_parameters].nil?
      end
    end

    class IllegalStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InputTransformer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputTransformer, context: context)
        TransformerPaths.validate!(input[:input_paths_map], context: "#{context}[:input_paths_map]") unless input[:input_paths_map].nil?
        Hearth::Validator.validate!(input[:input_template], ::String, context: "#{context}[:input_template]")
      end
    end

    class InternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEventPatternException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEventPatternException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KinesisParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisParameters, context: context)
        Hearth::Validator.validate!(input[:partition_key_path], ::String, context: "#{context}[:partition_key_path]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListApiDestinationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApiDestinationsInput, context: context)
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListApiDestinationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApiDestinationsOutput, context: context)
        ApiDestinationResponseList.validate!(input[:api_destinations], context: "#{context}[:api_destinations]") unless input[:api_destinations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListArchivesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArchivesInput, context: context)
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListArchivesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArchivesOutput, context: context)
        ArchiveResponseList.validate!(input[:archives], context: "#{context}[:archives]") unless input[:archives].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectionsOutput, context: context)
        ConnectionResponseList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventBusesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventBusesInput, context: context)
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListEventBusesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventBusesOutput, context: context)
        EventBusList.validate!(input[:event_buses], context: "#{context}[:event_buses]") unless input[:event_buses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventSourcesInput, context: context)
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListEventSourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventSourcesOutput, context: context)
        EventSourceList.validate!(input[:event_sources], context: "#{context}[:event_sources]") unless input[:event_sources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPartnerEventSourceAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartnerEventSourceAccountsInput, context: context)
        Hearth::Validator.validate!(input[:event_source_name], ::String, context: "#{context}[:event_source_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListPartnerEventSourceAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartnerEventSourceAccountsOutput, context: context)
        PartnerEventSourceAccountList.validate!(input[:partner_event_source_accounts], context: "#{context}[:partner_event_source_accounts]") unless input[:partner_event_source_accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPartnerEventSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartnerEventSourcesInput, context: context)
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListPartnerEventSourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartnerEventSourcesOutput, context: context)
        PartnerEventSourceList.validate!(input[:partner_event_sources], context: "#{context}[:partner_event_sources]") unless input[:partner_event_sources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReplaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReplaysInput, context: context)
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListReplaysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReplaysOutput, context: context)
        ReplayList.validate!(input[:replays], context: "#{context}[:replays]") unless input[:replays].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRuleNamesByTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleNamesByTargetInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListRuleNamesByTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleNamesByTargetOutput, context: context)
        RuleNameList.validate!(input[:rule_names], context: "#{context}[:rule_names]") unless input[:rule_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesInput, context: context)
        Hearth::Validator.validate!(input[:name_prefix], ::String, context: "#{context}[:name_prefix]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesOutput, context: context)
        RuleResponseList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTargetsByRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsByRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule], ::String, context: "#{context}[:rule]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTargetsByRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsByRuleOutput, context: context)
        TargetList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ManagedRuleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedRuleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NetworkConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkConfiguration, context: context)
        AwsVpcConfiguration.validate!(input[:awsvpc_configuration], context: "#{context}[:awsvpc_configuration]") unless input[:awsvpc_configuration].nil?
      end
    end

    class OperationDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PartnerEventSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartnerEventSource, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class PartnerEventSourceAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartnerEventSourceAccount, context: context)
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:expiration_time], ::Time, context: "#{context}[:expiration_time]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class PartnerEventSourceAccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartnerEventSourceAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartnerEventSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartnerEventSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PathParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PlacementConstraint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementConstraint, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
      end
    end

    class PlacementConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlacementConstraint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlacementStrategies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlacementStrategy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlacementStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementStrategy, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
      end
    end

    class PolicyLengthExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyLengthExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsInput, context: context)
        PutEventsRequestEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class PutEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsOutput, context: context)
        Hearth::Validator.validate!(input[:failed_entry_count], ::Integer, context: "#{context}[:failed_entry_count]")
        PutEventsResultEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class PutEventsRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsRequestEntry, context: context)
        Hearth::Validator.validate!(input[:time], ::Time, context: "#{context}[:time]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        EventResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:detail_type], ::String, context: "#{context}[:detail_type]")
        Hearth::Validator.validate!(input[:detail], ::String, context: "#{context}[:detail]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
        Hearth::Validator.validate!(input[:trace_header], ::String, context: "#{context}[:trace_header]")
      end
    end

    class PutEventsRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PutEventsRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutEventsResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsResultEntry, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class PutEventsResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PutEventsResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutPartnerEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPartnerEventsInput, context: context)
        PutPartnerEventsRequestEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class PutPartnerEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPartnerEventsOutput, context: context)
        Hearth::Validator.validate!(input[:failed_entry_count], ::Integer, context: "#{context}[:failed_entry_count]")
        PutPartnerEventsResultEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class PutPartnerEventsRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPartnerEventsRequestEntry, context: context)
        Hearth::Validator.validate!(input[:time], ::Time, context: "#{context}[:time]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        EventResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:detail_type], ::String, context: "#{context}[:detail_type]")
        Hearth::Validator.validate!(input[:detail], ::String, context: "#{context}[:detail]")
      end
    end

    class PutPartnerEventsRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PutPartnerEventsRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutPartnerEventsResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPartnerEventsResultEntry, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class PutPartnerEventsResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PutPartnerEventsResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPermissionInput, context: context)
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Condition.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPermissionOutput, context: context)
      end
    end

    class PutRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:event_pattern], ::String, context: "#{context}[:event_pattern]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
      end
    end

    class PutRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRuleOutput, context: context)
        Hearth::Validator.validate!(input[:rule_arn], ::String, context: "#{context}[:rule_arn]")
      end
    end

    class PutTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutTargetsInput, context: context)
        Hearth::Validator.validate!(input[:rule], ::String, context: "#{context}[:rule]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
        TargetList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
      end
    end

    class PutTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutTargetsOutput, context: context)
        Hearth::Validator.validate!(input[:failed_entry_count], ::Integer, context: "#{context}[:failed_entry_count]")
        PutTargetsResultEntryList.validate!(input[:failed_entries], context: "#{context}[:failed_entries]") unless input[:failed_entries].nil?
      end
    end

    class PutTargetsResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutTargetsResultEntry, context: context)
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class PutTargetsResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PutTargetsResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueryStringParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RedshiftDataParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDataParameters, context: context)
        Hearth::Validator.validate!(input[:secret_manager_arn], ::String, context: "#{context}[:secret_manager_arn]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:sql], ::String, context: "#{context}[:sql]")
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        Hearth::Validator.validate!(input[:with_event], ::TrueClass, ::FalseClass, context: "#{context}[:with_event]")
      end
    end

    class RemovePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemovePermissionInput, context: context)
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate!(input[:remove_all_permissions], ::TrueClass, ::FalseClass, context: "#{context}[:remove_all_permissions]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
      end
    end

    class RemovePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemovePermissionOutput, context: context)
      end
    end

    class RemoveTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTargetsInput, context: context)
        Hearth::Validator.validate!(input[:rule], ::String, context: "#{context}[:rule]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
        TargetIdList.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class RemoveTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTargetsOutput, context: context)
        Hearth::Validator.validate!(input[:failed_entry_count], ::Integer, context: "#{context}[:failed_entry_count]")
        RemoveTargetsResultEntryList.validate!(input[:failed_entries], context: "#{context}[:failed_entries]") unless input[:failed_entries].nil?
      end
    end

    class RemoveTargetsResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTargetsResultEntry, context: context)
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class RemoveTargetsResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RemoveTargetsResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Replay
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Replay, context: context)
        Hearth::Validator.validate!(input[:replay_name], ::String, context: "#{context}[:replay_name]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:event_start_time], ::Time, context: "#{context}[:event_start_time]")
        Hearth::Validator.validate!(input[:event_end_time], ::Time, context: "#{context}[:event_end_time]")
        Hearth::Validator.validate!(input[:event_last_replayed_time], ::Time, context: "#{context}[:event_last_replayed_time]")
        Hearth::Validator.validate!(input[:replay_start_time], ::Time, context: "#{context}[:replay_start_time]")
        Hearth::Validator.validate!(input[:replay_end_time], ::Time, context: "#{context}[:replay_end_time]")
      end
    end

    class ReplayDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplayDestination, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        ReplayDestinationFilters.validate!(input[:filter_arns], context: "#{context}[:filter_arns]") unless input[:filter_arns].nil?
      end
    end

    class ReplayDestinationFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplayList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Replay.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RetryPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryPolicy, context: context)
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
      end
    end

    class Rule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:event_pattern], ::String, context: "#{context}[:event_pattern]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:managed_by], ::String, context: "#{context}[:managed_by]")
        Hearth::Validator.validate!(input[:event_bus_name], ::String, context: "#{context}[:event_bus_name]")
      end
    end

    class RuleNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RuleResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Rule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RunCommandParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunCommandParameters, context: context)
        RunCommandTargets.validate!(input[:run_command_targets], context: "#{context}[:run_command_targets]") unless input[:run_command_targets].nil?
      end
    end

    class RunCommandTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunCommandTarget, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        RunCommandTargetValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class RunCommandTargetValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RunCommandTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RunCommandTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SageMakerPipelineParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SageMakerPipelineParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SageMakerPipelineParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SageMakerPipelineParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SageMakerPipelineParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SageMakerPipelineParameters, context: context)
        SageMakerPipelineParameterList.validate!(input[:pipeline_parameter_list], context: "#{context}[:pipeline_parameter_list]") unless input[:pipeline_parameter_list].nil?
      end
    end

    class SqsParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqsParameters, context: context)
        Hearth::Validator.validate!(input[:message_group_id], ::String, context: "#{context}[:message_group_id]")
      end
    end

    class StartReplayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplayInput, context: context)
        Hearth::Validator.validate!(input[:replay_name], ::String, context: "#{context}[:replay_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:event_start_time], ::Time, context: "#{context}[:event_start_time]")
        Hearth::Validator.validate!(input[:event_end_time], ::Time, context: "#{context}[:event_end_time]")
        ReplayDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class StartReplayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplayOutput, context: context)
        Hearth::Validator.validate!(input[:replay_arn], ::String, context: "#{context}[:replay_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:replay_start_time], ::Time, context: "#{context}[:replay_start_time]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Target
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Target, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:input_path], ::String, context: "#{context}[:input_path]")
        InputTransformer.validate!(input[:input_transformer], context: "#{context}[:input_transformer]") unless input[:input_transformer].nil?
        KinesisParameters.validate!(input[:kinesis_parameters], context: "#{context}[:kinesis_parameters]") unless input[:kinesis_parameters].nil?
        RunCommandParameters.validate!(input[:run_command_parameters], context: "#{context}[:run_command_parameters]") unless input[:run_command_parameters].nil?
        EcsParameters.validate!(input[:ecs_parameters], context: "#{context}[:ecs_parameters]") unless input[:ecs_parameters].nil?
        BatchParameters.validate!(input[:batch_parameters], context: "#{context}[:batch_parameters]") unless input[:batch_parameters].nil?
        SqsParameters.validate!(input[:sqs_parameters], context: "#{context}[:sqs_parameters]") unless input[:sqs_parameters].nil?
        HttpParameters.validate!(input[:http_parameters], context: "#{context}[:http_parameters]") unless input[:http_parameters].nil?
        RedshiftDataParameters.validate!(input[:redshift_data_parameters], context: "#{context}[:redshift_data_parameters]") unless input[:redshift_data_parameters].nil?
        SageMakerPipelineParameters.validate!(input[:sage_maker_pipeline_parameters], context: "#{context}[:sage_maker_pipeline_parameters]") unless input[:sage_maker_pipeline_parameters].nil?
        DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        RetryPolicy.validate!(input[:retry_policy], context: "#{context}[:retry_policy]") unless input[:retry_policy].nil?
      end
    end

    class TargetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Target.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestEventPatternInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestEventPatternInput, context: context)
        Hearth::Validator.validate!(input[:event_pattern], ::String, context: "#{context}[:event_pattern]")
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
      end
    end

    class TestEventPatternOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestEventPatternOutput, context: context)
        Hearth::Validator.validate!(input[:result], ::TrueClass, ::FalseClass, context: "#{context}[:result]")
      end
    end

    class TransformerPaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApiDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiDestinationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:invocation_endpoint], ::String, context: "#{context}[:invocation_endpoint]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:invocation_rate_limit_per_second], ::Integer, context: "#{context}[:invocation_rate_limit_per_second]")
      end
    end

    class UpdateApiDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:api_destination_arn], ::String, context: "#{context}[:api_destination_arn]")
        Hearth::Validator.validate!(input[:api_destination_state], ::String, context: "#{context}[:api_destination_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class UpdateArchiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateArchiveInput, context: context)
        Hearth::Validator.validate!(input[:archive_name], ::String, context: "#{context}[:archive_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_pattern], ::String, context: "#{context}[:event_pattern]")
        Hearth::Validator.validate!(input[:retention_days], ::Integer, context: "#{context}[:retention_days]")
      end
    end

    class UpdateArchiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateArchiveOutput, context: context)
        Hearth::Validator.validate!(input[:archive_arn], ::String, context: "#{context}[:archive_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class UpdateConnectionApiKeyAuthRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionApiKeyAuthRequestParameters, context: context)
        Hearth::Validator.validate!(input[:api_key_name], ::String, context: "#{context}[:api_key_name]")
        Hearth::Validator.validate!(input[:api_key_value], ::String, context: "#{context}[:api_key_value]")
      end
    end

    class UpdateConnectionAuthRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionAuthRequestParameters, context: context)
        UpdateConnectionBasicAuthRequestParameters.validate!(input[:basic_auth_parameters], context: "#{context}[:basic_auth_parameters]") unless input[:basic_auth_parameters].nil?
        UpdateConnectionOAuthRequestParameters.validate!(input[:o_auth_parameters], context: "#{context}[:o_auth_parameters]") unless input[:o_auth_parameters].nil?
        UpdateConnectionApiKeyAuthRequestParameters.validate!(input[:api_key_auth_parameters], context: "#{context}[:api_key_auth_parameters]") unless input[:api_key_auth_parameters].nil?
        ConnectionHttpParameters.validate!(input[:invocation_http_parameters], context: "#{context}[:invocation_http_parameters]") unless input[:invocation_http_parameters].nil?
      end
    end

    class UpdateConnectionBasicAuthRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionBasicAuthRequestParameters, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class UpdateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        UpdateConnectionAuthRequestParameters.validate!(input[:auth_parameters], context: "#{context}[:auth_parameters]") unless input[:auth_parameters].nil?
      end
    end

    class UpdateConnectionOAuthClientRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionOAuthClientRequestParameters, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
      end
    end

    class UpdateConnectionOAuthRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionOAuthRequestParameters, context: context)
        UpdateConnectionOAuthClientRequestParameters.validate!(input[:client_parameters], context: "#{context}[:client_parameters]") unless input[:client_parameters].nil?
        Hearth::Validator.validate!(input[:authorization_endpoint], ::String, context: "#{context}[:authorization_endpoint]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        ConnectionHttpParameters.validate!(input[:o_auth_http_parameters], context: "#{context}[:o_auth_http_parameters]") unless input[:o_auth_http_parameters].nil?
      end
    end

    class UpdateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_authorized_time], ::Time, context: "#{context}[:last_authorized_time]")
      end
    end

  end
end
