# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatchEvents
  module Params

    module ActivateEventSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateEventSourceInput, context: context)
        type = Types::ActivateEventSourceInput.new
        type.name = params[:name]
        type
      end
    end

    module ActivateEventSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateEventSourceOutput, context: context)
        type = Types::ActivateEventSourceOutput.new
        type
      end
    end

    module ApiDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiDestination, context: context)
        type = Types::ApiDestination.new
        type.api_destination_arn = params[:api_destination_arn]
        type.name = params[:name]
        type.api_destination_state = params[:api_destination_state]
        type.connection_arn = params[:connection_arn]
        type.invocation_endpoint = params[:invocation_endpoint]
        type.http_method = params[:http_method]
        type.invocation_rate_limit_per_second = params[:invocation_rate_limit_per_second]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module ApiDestinationResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApiDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Archive
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Archive, context: context)
        type = Types::Archive.new
        type.archive_name = params[:archive_name]
        type.event_source_arn = params[:event_source_arn]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.retention_days = params[:retention_days]
        type.size_bytes = params[:size_bytes]
        type.event_count = params[:event_count]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module ArchiveResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Archive.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsVpcConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsVpcConfiguration, context: context)
        type = Types::AwsVpcConfiguration.new
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_groups = StringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.assign_public_ip = params[:assign_public_ip]
        type
      end
    end

    module BatchArrayProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchArrayProperties, context: context)
        type = Types::BatchArrayProperties.new
        type.size = params[:size]
        type
      end
    end

    module BatchParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchParameters, context: context)
        type = Types::BatchParameters.new
        type.job_definition = params[:job_definition]
        type.job_name = params[:job_name]
        type.array_properties = BatchArrayProperties.build(params[:array_properties], context: "#{context}[:array_properties]") unless params[:array_properties].nil?
        type.retry_strategy = BatchRetryStrategy.build(params[:retry_strategy], context: "#{context}[:retry_strategy]") unless params[:retry_strategy].nil?
        type
      end
    end

    module BatchRetryStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchRetryStrategy, context: context)
        type = Types::BatchRetryStrategy.new
        type.attempts = params[:attempts]
        type
      end
    end

    module CancelReplayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelReplayInput, context: context)
        type = Types::CancelReplayInput.new
        type.replay_name = params[:replay_name]
        type
      end
    end

    module CancelReplayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelReplayOutput, context: context)
        type = Types::CancelReplayOutput.new
        type.replay_arn = params[:replay_arn]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type
      end
    end

    module CapacityProviderStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CapacityProviderStrategyItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CapacityProviderStrategyItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityProviderStrategyItem, context: context)
        type = Types::CapacityProviderStrategyItem.new
        type.capacity_provider = params[:capacity_provider]
        type.weight = params[:weight]
        type.base = params[:base]
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module Condition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        type.type = params[:type]
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module Connection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connection, context: context)
        type = Types::Connection.new
        type.connection_arn = params[:connection_arn]
        type.name = params[:name]
        type.connection_state = params[:connection_state]
        type.state_reason = params[:state_reason]
        type.authorization_type = params[:authorization_type]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_authorized_time = params[:last_authorized_time]
        type
      end
    end

    module ConnectionApiKeyAuthResponseParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionApiKeyAuthResponseParameters, context: context)
        type = Types::ConnectionApiKeyAuthResponseParameters.new
        type.api_key_name = params[:api_key_name]
        type
      end
    end

    module ConnectionAuthResponseParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionAuthResponseParameters, context: context)
        type = Types::ConnectionAuthResponseParameters.new
        type.basic_auth_parameters = ConnectionBasicAuthResponseParameters.build(params[:basic_auth_parameters], context: "#{context}[:basic_auth_parameters]") unless params[:basic_auth_parameters].nil?
        type.o_auth_parameters = ConnectionOAuthResponseParameters.build(params[:o_auth_parameters], context: "#{context}[:o_auth_parameters]") unless params[:o_auth_parameters].nil?
        type.api_key_auth_parameters = ConnectionApiKeyAuthResponseParameters.build(params[:api_key_auth_parameters], context: "#{context}[:api_key_auth_parameters]") unless params[:api_key_auth_parameters].nil?
        type.invocation_http_parameters = ConnectionHttpParameters.build(params[:invocation_http_parameters], context: "#{context}[:invocation_http_parameters]") unless params[:invocation_http_parameters].nil?
        type
      end
    end

    module ConnectionBasicAuthResponseParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionBasicAuthResponseParameters, context: context)
        type = Types::ConnectionBasicAuthResponseParameters.new
        type.username = params[:username]
        type
      end
    end

    module ConnectionBodyParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionBodyParameter, context: context)
        type = Types::ConnectionBodyParameter.new
        type.key = params[:key]
        type.value = params[:value]
        type.is_value_secret = params[:is_value_secret]
        type
      end
    end

    module ConnectionBodyParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectionBodyParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectionHeaderParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionHeaderParameter, context: context)
        type = Types::ConnectionHeaderParameter.new
        type.key = params[:key]
        type.value = params[:value]
        type.is_value_secret = params[:is_value_secret]
        type
      end
    end

    module ConnectionHeaderParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectionHeaderParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectionHttpParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionHttpParameters, context: context)
        type = Types::ConnectionHttpParameters.new
        type.header_parameters = ConnectionHeaderParametersList.build(params[:header_parameters], context: "#{context}[:header_parameters]") unless params[:header_parameters].nil?
        type.query_string_parameters = ConnectionQueryStringParametersList.build(params[:query_string_parameters], context: "#{context}[:query_string_parameters]") unless params[:query_string_parameters].nil?
        type.body_parameters = ConnectionBodyParametersList.build(params[:body_parameters], context: "#{context}[:body_parameters]") unless params[:body_parameters].nil?
        type
      end
    end

    module ConnectionOAuthClientResponseParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionOAuthClientResponseParameters, context: context)
        type = Types::ConnectionOAuthClientResponseParameters.new
        type.client_id = params[:client_id]
        type
      end
    end

    module ConnectionOAuthResponseParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionOAuthResponseParameters, context: context)
        type = Types::ConnectionOAuthResponseParameters.new
        type.client_parameters = ConnectionOAuthClientResponseParameters.build(params[:client_parameters], context: "#{context}[:client_parameters]") unless params[:client_parameters].nil?
        type.authorization_endpoint = params[:authorization_endpoint]
        type.http_method = params[:http_method]
        type.o_auth_http_parameters = ConnectionHttpParameters.build(params[:o_auth_http_parameters], context: "#{context}[:o_auth_http_parameters]") unless params[:o_auth_http_parameters].nil?
        type
      end
    end

    module ConnectionQueryStringParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionQueryStringParameter, context: context)
        type = Types::ConnectionQueryStringParameter.new
        type.key = params[:key]
        type.value = params[:value]
        type.is_value_secret = params[:is_value_secret]
        type
      end
    end

    module ConnectionQueryStringParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectionQueryStringParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectionResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Connection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateApiDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiDestinationInput, context: context)
        type = Types::CreateApiDestinationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.connection_arn = params[:connection_arn]
        type.invocation_endpoint = params[:invocation_endpoint]
        type.http_method = params[:http_method]
        type.invocation_rate_limit_per_second = params[:invocation_rate_limit_per_second]
        type
      end
    end

    module CreateApiDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiDestinationOutput, context: context)
        type = Types::CreateApiDestinationOutput.new
        type.api_destination_arn = params[:api_destination_arn]
        type.api_destination_state = params[:api_destination_state]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module CreateArchiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateArchiveInput, context: context)
        type = Types::CreateArchiveInput.new
        type.archive_name = params[:archive_name]
        type.event_source_arn = params[:event_source_arn]
        type.description = params[:description]
        type.event_pattern = params[:event_pattern]
        type.retention_days = params[:retention_days]
        type
      end
    end

    module CreateArchiveOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateArchiveOutput, context: context)
        type = Types::CreateArchiveOutput.new
        type.archive_arn = params[:archive_arn]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module CreateConnectionApiKeyAuthRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionApiKeyAuthRequestParameters, context: context)
        type = Types::CreateConnectionApiKeyAuthRequestParameters.new
        type.api_key_name = params[:api_key_name]
        type.api_key_value = params[:api_key_value]
        type
      end
    end

    module CreateConnectionAuthRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionAuthRequestParameters, context: context)
        type = Types::CreateConnectionAuthRequestParameters.new
        type.basic_auth_parameters = CreateConnectionBasicAuthRequestParameters.build(params[:basic_auth_parameters], context: "#{context}[:basic_auth_parameters]") unless params[:basic_auth_parameters].nil?
        type.o_auth_parameters = CreateConnectionOAuthRequestParameters.build(params[:o_auth_parameters], context: "#{context}[:o_auth_parameters]") unless params[:o_auth_parameters].nil?
        type.api_key_auth_parameters = CreateConnectionApiKeyAuthRequestParameters.build(params[:api_key_auth_parameters], context: "#{context}[:api_key_auth_parameters]") unless params[:api_key_auth_parameters].nil?
        type.invocation_http_parameters = ConnectionHttpParameters.build(params[:invocation_http_parameters], context: "#{context}[:invocation_http_parameters]") unless params[:invocation_http_parameters].nil?
        type
      end
    end

    module CreateConnectionBasicAuthRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionBasicAuthRequestParameters, context: context)
        type = Types::CreateConnectionBasicAuthRequestParameters.new
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module CreateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionInput, context: context)
        type = Types::CreateConnectionInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.authorization_type = params[:authorization_type]
        type.auth_parameters = CreateConnectionAuthRequestParameters.build(params[:auth_parameters], context: "#{context}[:auth_parameters]") unless params[:auth_parameters].nil?
        type
      end
    end

    module CreateConnectionOAuthClientRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionOAuthClientRequestParameters, context: context)
        type = Types::CreateConnectionOAuthClientRequestParameters.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type
      end
    end

    module CreateConnectionOAuthRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionOAuthRequestParameters, context: context)
        type = Types::CreateConnectionOAuthRequestParameters.new
        type.client_parameters = CreateConnectionOAuthClientRequestParameters.build(params[:client_parameters], context: "#{context}[:client_parameters]") unless params[:client_parameters].nil?
        type.authorization_endpoint = params[:authorization_endpoint]
        type.http_method = params[:http_method]
        type.o_auth_http_parameters = ConnectionHttpParameters.build(params[:o_auth_http_parameters], context: "#{context}[:o_auth_http_parameters]") unless params[:o_auth_http_parameters].nil?
        type
      end
    end

    module CreateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionOutput, context: context)
        type = Types::CreateConnectionOutput.new
        type.connection_arn = params[:connection_arn]
        type.connection_state = params[:connection_state]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module CreateEventBusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventBusInput, context: context)
        type = Types::CreateEventBusInput.new
        type.name = params[:name]
        type.event_source_name = params[:event_source_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEventBusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventBusOutput, context: context)
        type = Types::CreateEventBusOutput.new
        type.event_bus_arn = params[:event_bus_arn]
        type
      end
    end

    module CreatePartnerEventSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePartnerEventSourceInput, context: context)
        type = Types::CreatePartnerEventSourceInput.new
        type.name = params[:name]
        type.account = params[:account]
        type
      end
    end

    module CreatePartnerEventSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePartnerEventSourceOutput, context: context)
        type = Types::CreatePartnerEventSourceOutput.new
        type.event_source_arn = params[:event_source_arn]
        type
      end
    end

    module DeactivateEventSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateEventSourceInput, context: context)
        type = Types::DeactivateEventSourceInput.new
        type.name = params[:name]
        type
      end
    end

    module DeactivateEventSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateEventSourceOutput, context: context)
        type = Types::DeactivateEventSourceOutput.new
        type
      end
    end

    module DeadLetterConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeadLetterConfig, context: context)
        type = Types::DeadLetterConfig.new
        type.arn = params[:arn]
        type
      end
    end

    module DeauthorizeConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeauthorizeConnectionInput, context: context)
        type = Types::DeauthorizeConnectionInput.new
        type.name = params[:name]
        type
      end
    end

    module DeauthorizeConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeauthorizeConnectionOutput, context: context)
        type = Types::DeauthorizeConnectionOutput.new
        type.connection_arn = params[:connection_arn]
        type.connection_state = params[:connection_state]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_authorized_time = params[:last_authorized_time]
        type
      end
    end

    module DeleteApiDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiDestinationInput, context: context)
        type = Types::DeleteApiDestinationInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteApiDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiDestinationOutput, context: context)
        type = Types::DeleteApiDestinationOutput.new
        type
      end
    end

    module DeleteArchiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteArchiveInput, context: context)
        type = Types::DeleteArchiveInput.new
        type.archive_name = params[:archive_name]
        type
      end
    end

    module DeleteArchiveOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteArchiveOutput, context: context)
        type = Types::DeleteArchiveOutput.new
        type
      end
    end

    module DeleteConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionInput, context: context)
        type = Types::DeleteConnectionInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionOutput, context: context)
        type = Types::DeleteConnectionOutput.new
        type.connection_arn = params[:connection_arn]
        type.connection_state = params[:connection_state]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_authorized_time = params[:last_authorized_time]
        type
      end
    end

    module DeleteEventBusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventBusInput, context: context)
        type = Types::DeleteEventBusInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteEventBusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventBusOutput, context: context)
        type = Types::DeleteEventBusOutput.new
        type
      end
    end

    module DeletePartnerEventSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePartnerEventSourceInput, context: context)
        type = Types::DeletePartnerEventSourceInput.new
        type.name = params[:name]
        type.account = params[:account]
        type
      end
    end

    module DeletePartnerEventSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePartnerEventSourceOutput, context: context)
        type = Types::DeletePartnerEventSourceOutput.new
        type
      end
    end

    module DeleteRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleInput, context: context)
        type = Types::DeleteRuleInput.new
        type.name = params[:name]
        type.event_bus_name = params[:event_bus_name]
        type.force = params[:force]
        type
      end
    end

    module DeleteRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleOutput, context: context)
        type = Types::DeleteRuleOutput.new
        type
      end
    end

    module DescribeApiDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApiDestinationInput, context: context)
        type = Types::DescribeApiDestinationInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeApiDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApiDestinationOutput, context: context)
        type = Types::DescribeApiDestinationOutput.new
        type.api_destination_arn = params[:api_destination_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.api_destination_state = params[:api_destination_state]
        type.connection_arn = params[:connection_arn]
        type.invocation_endpoint = params[:invocation_endpoint]
        type.http_method = params[:http_method]
        type.invocation_rate_limit_per_second = params[:invocation_rate_limit_per_second]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module DescribeArchiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeArchiveInput, context: context)
        type = Types::DescribeArchiveInput.new
        type.archive_name = params[:archive_name]
        type
      end
    end

    module DescribeArchiveOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeArchiveOutput, context: context)
        type = Types::DescribeArchiveOutput.new
        type.archive_arn = params[:archive_arn]
        type.archive_name = params[:archive_name]
        type.event_source_arn = params[:event_source_arn]
        type.description = params[:description]
        type.event_pattern = params[:event_pattern]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.retention_days = params[:retention_days]
        type.size_bytes = params[:size_bytes]
        type.event_count = params[:event_count]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribeConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionInput, context: context)
        type = Types::DescribeConnectionInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionOutput, context: context)
        type = Types::DescribeConnectionOutput.new
        type.connection_arn = params[:connection_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.connection_state = params[:connection_state]
        type.state_reason = params[:state_reason]
        type.authorization_type = params[:authorization_type]
        type.secret_arn = params[:secret_arn]
        type.auth_parameters = ConnectionAuthResponseParameters.build(params[:auth_parameters], context: "#{context}[:auth_parameters]") unless params[:auth_parameters].nil?
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_authorized_time = params[:last_authorized_time]
        type
      end
    end

    module DescribeEventBusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventBusInput, context: context)
        type = Types::DescribeEventBusInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeEventBusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventBusOutput, context: context)
        type = Types::DescribeEventBusOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.policy = params[:policy]
        type
      end
    end

    module DescribeEventSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSourceInput, context: context)
        type = Types::DescribeEventSourceInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeEventSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSourceOutput, context: context)
        type = Types::DescribeEventSourceOutput.new
        type.arn = params[:arn]
        type.created_by = params[:created_by]
        type.creation_time = params[:creation_time]
        type.expiration_time = params[:expiration_time]
        type.name = params[:name]
        type.state = params[:state]
        type
      end
    end

    module DescribePartnerEventSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePartnerEventSourceInput, context: context)
        type = Types::DescribePartnerEventSourceInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribePartnerEventSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePartnerEventSourceOutput, context: context)
        type = Types::DescribePartnerEventSourceOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module DescribeReplayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplayInput, context: context)
        type = Types::DescribeReplayInput.new
        type.replay_name = params[:replay_name]
        type
      end
    end

    module DescribeReplayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplayOutput, context: context)
        type = Types::DescribeReplayOutput.new
        type.replay_name = params[:replay_name]
        type.replay_arn = params[:replay_arn]
        type.description = params[:description]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.event_source_arn = params[:event_source_arn]
        type.destination = ReplayDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.event_start_time = params[:event_start_time]
        type.event_end_time = params[:event_end_time]
        type.event_last_replayed_time = params[:event_last_replayed_time]
        type.replay_start_time = params[:replay_start_time]
        type.replay_end_time = params[:replay_end_time]
        type
      end
    end

    module DescribeRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuleInput, context: context)
        type = Types::DescribeRuleInput.new
        type.name = params[:name]
        type.event_bus_name = params[:event_bus_name]
        type
      end
    end

    module DescribeRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuleOutput, context: context)
        type = Types::DescribeRuleOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.event_pattern = params[:event_pattern]
        type.schedule_expression = params[:schedule_expression]
        type.state = params[:state]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.managed_by = params[:managed_by]
        type.event_bus_name = params[:event_bus_name]
        type.created_by = params[:created_by]
        type
      end
    end

    module DisableRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableRuleInput, context: context)
        type = Types::DisableRuleInput.new
        type.name = params[:name]
        type.event_bus_name = params[:event_bus_name]
        type
      end
    end

    module DisableRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableRuleOutput, context: context)
        type = Types::DisableRuleOutput.new
        type
      end
    end

    module EcsParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EcsParameters, context: context)
        type = Types::EcsParameters.new
        type.task_definition_arn = params[:task_definition_arn]
        type.task_count = params[:task_count]
        type.launch_type = params[:launch_type]
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.platform_version = params[:platform_version]
        type.group = params[:group]
        type.capacity_provider_strategy = CapacityProviderStrategy.build(params[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless params[:capacity_provider_strategy].nil?
        type.enable_ecs_managed_tags = params[:enable_ecs_managed_tags]
        type.enable_execute_command = params[:enable_execute_command]
        type.placement_constraints = PlacementConstraints.build(params[:placement_constraints], context: "#{context}[:placement_constraints]") unless params[:placement_constraints].nil?
        type.placement_strategy = PlacementStrategies.build(params[:placement_strategy], context: "#{context}[:placement_strategy]") unless params[:placement_strategy].nil?
        type.propagate_tags = params[:propagate_tags]
        type.reference_id = params[:reference_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EnableRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableRuleInput, context: context)
        type = Types::EnableRuleInput.new
        type.name = params[:name]
        type.event_bus_name = params[:event_bus_name]
        type
      end
    end

    module EnableRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableRuleOutput, context: context)
        type = Types::EnableRuleOutput.new
        type
      end
    end

    module EventBus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventBus, context: context)
        type = Types::EventBus.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.policy = params[:policy]
        type
      end
    end

    module EventBusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventBus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSource, context: context)
        type = Types::EventSource.new
        type.arn = params[:arn]
        type.created_by = params[:created_by]
        type.creation_time = params[:creation_time]
        type.expiration_time = params[:expiration_time]
        type.name = params[:name]
        type.state = params[:state]
        type
      end
    end

    module EventSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HeaderParametersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module HttpParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpParameters, context: context)
        type = Types::HttpParameters.new
        type.path_parameter_values = PathParameterList.build(params[:path_parameter_values], context: "#{context}[:path_parameter_values]") unless params[:path_parameter_values].nil?
        type.header_parameters = HeaderParametersMap.build(params[:header_parameters], context: "#{context}[:header_parameters]") unless params[:header_parameters].nil?
        type.query_string_parameters = QueryStringParametersMap.build(params[:query_string_parameters], context: "#{context}[:query_string_parameters]") unless params[:query_string_parameters].nil?
        type
      end
    end

    module IllegalStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IllegalStatusException, context: context)
        type = Types::IllegalStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InputTransformer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputTransformer, context: context)
        type = Types::InputTransformer.new
        type.input_paths_map = TransformerPaths.build(params[:input_paths_map], context: "#{context}[:input_paths_map]") unless params[:input_paths_map].nil?
        type.input_template = params[:input_template]
        type
      end
    end

    module InternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalException, context: context)
        type = Types::InternalException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEventPatternException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEventPatternException, context: context)
        type = Types::InvalidEventPatternException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateException, context: context)
        type = Types::InvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module KinesisParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisParameters, context: context)
        type = Types::KinesisParameters.new
        type.partition_key_path = params[:partition_key_path]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListApiDestinationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApiDestinationsInput, context: context)
        type = Types::ListApiDestinationsInput.new
        type.name_prefix = params[:name_prefix]
        type.connection_arn = params[:connection_arn]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListApiDestinationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApiDestinationsOutput, context: context)
        type = Types::ListApiDestinationsOutput.new
        type.api_destinations = ApiDestinationResponseList.build(params[:api_destinations], context: "#{context}[:api_destinations]") unless params[:api_destinations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListArchivesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArchivesInput, context: context)
        type = Types::ListArchivesInput.new
        type.name_prefix = params[:name_prefix]
        type.event_source_arn = params[:event_source_arn]
        type.state = params[:state]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListArchivesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArchivesOutput, context: context)
        type = Types::ListArchivesOutput.new
        type.archives = ArchiveResponseList.build(params[:archives], context: "#{context}[:archives]") unless params[:archives].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectionsInput, context: context)
        type = Types::ListConnectionsInput.new
        type.name_prefix = params[:name_prefix]
        type.connection_state = params[:connection_state]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectionsOutput, context: context)
        type = Types::ListConnectionsOutput.new
        type.connections = ConnectionResponseList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventBusesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventBusesInput, context: context)
        type = Types::ListEventBusesInput.new
        type.name_prefix = params[:name_prefix]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListEventBusesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventBusesOutput, context: context)
        type = Types::ListEventBusesOutput.new
        type.event_buses = EventBusList.build(params[:event_buses], context: "#{context}[:event_buses]") unless params[:event_buses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventSourcesInput, context: context)
        type = Types::ListEventSourcesInput.new
        type.name_prefix = params[:name_prefix]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListEventSourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventSourcesOutput, context: context)
        type = Types::ListEventSourcesOutput.new
        type.event_sources = EventSourceList.build(params[:event_sources], context: "#{context}[:event_sources]") unless params[:event_sources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPartnerEventSourceAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPartnerEventSourceAccountsInput, context: context)
        type = Types::ListPartnerEventSourceAccountsInput.new
        type.event_source_name = params[:event_source_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListPartnerEventSourceAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPartnerEventSourceAccountsOutput, context: context)
        type = Types::ListPartnerEventSourceAccountsOutput.new
        type.partner_event_source_accounts = PartnerEventSourceAccountList.build(params[:partner_event_source_accounts], context: "#{context}[:partner_event_source_accounts]") unless params[:partner_event_source_accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPartnerEventSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPartnerEventSourcesInput, context: context)
        type = Types::ListPartnerEventSourcesInput.new
        type.name_prefix = params[:name_prefix]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListPartnerEventSourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPartnerEventSourcesOutput, context: context)
        type = Types::ListPartnerEventSourcesOutput.new
        type.partner_event_sources = PartnerEventSourceList.build(params[:partner_event_sources], context: "#{context}[:partner_event_sources]") unless params[:partner_event_sources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReplaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReplaysInput, context: context)
        type = Types::ListReplaysInput.new
        type.name_prefix = params[:name_prefix]
        type.state = params[:state]
        type.event_source_arn = params[:event_source_arn]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListReplaysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReplaysOutput, context: context)
        type = Types::ListReplaysOutput.new
        type.replays = ReplayList.build(params[:replays], context: "#{context}[:replays]") unless params[:replays].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRuleNamesByTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRuleNamesByTargetInput, context: context)
        type = Types::ListRuleNamesByTargetInput.new
        type.target_arn = params[:target_arn]
        type.event_bus_name = params[:event_bus_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListRuleNamesByTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRuleNamesByTargetOutput, context: context)
        type = Types::ListRuleNamesByTargetOutput.new
        type.rule_names = RuleNameList.build(params[:rule_names], context: "#{context}[:rule_names]") unless params[:rule_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesInput, context: context)
        type = Types::ListRulesInput.new
        type.name_prefix = params[:name_prefix]
        type.event_bus_name = params[:event_bus_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesOutput, context: context)
        type = Types::ListRulesOutput.new
        type.rules = RuleResponseList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTargetsByRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsByRuleInput, context: context)
        type = Types::ListTargetsByRuleInput.new
        type.rule = params[:rule]
        type.event_bus_name = params[:event_bus_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListTargetsByRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsByRuleOutput, context: context)
        type = Types::ListTargetsByRuleOutput.new
        type.targets = TargetList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ManagedRuleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedRuleException, context: context)
        type = Types::ManagedRuleException.new
        type.message = params[:message]
        type
      end
    end

    module NetworkConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkConfiguration, context: context)
        type = Types::NetworkConfiguration.new
        type.awsvpc_configuration = AwsVpcConfiguration.build(params[:awsvpc_configuration], context: "#{context}[:awsvpc_configuration]") unless params[:awsvpc_configuration].nil?
        type
      end
    end

    module OperationDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationDisabledException, context: context)
        type = Types::OperationDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module PartnerEventSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartnerEventSource, context: context)
        type = Types::PartnerEventSource.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module PartnerEventSourceAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartnerEventSourceAccount, context: context)
        type = Types::PartnerEventSourceAccount.new
        type.account = params[:account]
        type.creation_time = params[:creation_time]
        type.expiration_time = params[:expiration_time]
        type.state = params[:state]
        type
      end
    end

    module PartnerEventSourceAccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartnerEventSourceAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartnerEventSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartnerEventSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PathParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PlacementConstraint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementConstraint, context: context)
        type = Types::PlacementConstraint.new
        type.type = params[:type]
        type.expression = params[:expression]
        type
      end
    end

    module PlacementConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlacementConstraint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlacementStrategies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlacementStrategy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlacementStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementStrategy, context: context)
        type = Types::PlacementStrategy.new
        type.type = params[:type]
        type.field = params[:field]
        type
      end
    end

    module PolicyLengthExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyLengthExceededException, context: context)
        type = Types::PolicyLengthExceededException.new
        type.message = params[:message]
        type
      end
    end

    module PutEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsInput, context: context)
        type = Types::PutEventsInput.new
        type.entries = PutEventsRequestEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module PutEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsOutput, context: context)
        type = Types::PutEventsOutput.new
        type.failed_entry_count = params[:failed_entry_count]
        type.entries = PutEventsResultEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module PutEventsRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsRequestEntry, context: context)
        type = Types::PutEventsRequestEntry.new
        type.time = params[:time]
        type.source = params[:source]
        type.resources = EventResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.detail_type = params[:detail_type]
        type.detail = params[:detail]
        type.event_bus_name = params[:event_bus_name]
        type.trace_header = params[:trace_header]
        type
      end
    end

    module PutEventsRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutEventsRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutEventsResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsResultEntry, context: context)
        type = Types::PutEventsResultEntry.new
        type.event_id = params[:event_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module PutEventsResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutEventsResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutPartnerEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPartnerEventsInput, context: context)
        type = Types::PutPartnerEventsInput.new
        type.entries = PutPartnerEventsRequestEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module PutPartnerEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPartnerEventsOutput, context: context)
        type = Types::PutPartnerEventsOutput.new
        type.failed_entry_count = params[:failed_entry_count]
        type.entries = PutPartnerEventsResultEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module PutPartnerEventsRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPartnerEventsRequestEntry, context: context)
        type = Types::PutPartnerEventsRequestEntry.new
        type.time = params[:time]
        type.source = params[:source]
        type.resources = EventResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.detail_type = params[:detail_type]
        type.detail = params[:detail]
        type
      end
    end

    module PutPartnerEventsRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutPartnerEventsRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutPartnerEventsResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPartnerEventsResultEntry, context: context)
        type = Types::PutPartnerEventsResultEntry.new
        type.event_id = params[:event_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module PutPartnerEventsResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutPartnerEventsResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPermissionInput, context: context)
        type = Types::PutPermissionInput.new
        type.event_bus_name = params[:event_bus_name]
        type.action = params[:action]
        type.principal = params[:principal]
        type.statement_id = params[:statement_id]
        type.condition = Condition.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.policy = params[:policy]
        type
      end
    end

    module PutPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPermissionOutput, context: context)
        type = Types::PutPermissionOutput.new
        type
      end
    end

    module PutRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRuleInput, context: context)
        type = Types::PutRuleInput.new
        type.name = params[:name]
        type.schedule_expression = params[:schedule_expression]
        type.event_pattern = params[:event_pattern]
        type.state = params[:state]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.event_bus_name = params[:event_bus_name]
        type
      end
    end

    module PutRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRuleOutput, context: context)
        type = Types::PutRuleOutput.new
        type.rule_arn = params[:rule_arn]
        type
      end
    end

    module PutTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutTargetsInput, context: context)
        type = Types::PutTargetsInput.new
        type.rule = params[:rule]
        type.event_bus_name = params[:event_bus_name]
        type.targets = TargetList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type
      end
    end

    module PutTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutTargetsOutput, context: context)
        type = Types::PutTargetsOutput.new
        type.failed_entry_count = params[:failed_entry_count]
        type.failed_entries = PutTargetsResultEntryList.build(params[:failed_entries], context: "#{context}[:failed_entries]") unless params[:failed_entries].nil?
        type
      end
    end

    module PutTargetsResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutTargetsResultEntry, context: context)
        type = Types::PutTargetsResultEntry.new
        type.target_id = params[:target_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module PutTargetsResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutTargetsResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueryStringParametersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RedshiftDataParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDataParameters, context: context)
        type = Types::RedshiftDataParameters.new
        type.secret_manager_arn = params[:secret_manager_arn]
        type.database = params[:database]
        type.db_user = params[:db_user]
        type.sql = params[:sql]
        type.statement_name = params[:statement_name]
        type.with_event = params[:with_event]
        type
      end
    end

    module RemovePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemovePermissionInput, context: context)
        type = Types::RemovePermissionInput.new
        type.statement_id = params[:statement_id]
        type.remove_all_permissions = params[:remove_all_permissions]
        type.event_bus_name = params[:event_bus_name]
        type
      end
    end

    module RemovePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemovePermissionOutput, context: context)
        type = Types::RemovePermissionOutput.new
        type
      end
    end

    module RemoveTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTargetsInput, context: context)
        type = Types::RemoveTargetsInput.new
        type.rule = params[:rule]
        type.event_bus_name = params[:event_bus_name]
        type.ids = TargetIdList.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.force = params[:force]
        type
      end
    end

    module RemoveTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTargetsOutput, context: context)
        type = Types::RemoveTargetsOutput.new
        type.failed_entry_count = params[:failed_entry_count]
        type.failed_entries = RemoveTargetsResultEntryList.build(params[:failed_entries], context: "#{context}[:failed_entries]") unless params[:failed_entries].nil?
        type
      end
    end

    module RemoveTargetsResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTargetsResultEntry, context: context)
        type = Types::RemoveTargetsResultEntry.new
        type.target_id = params[:target_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module RemoveTargetsResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemoveTargetsResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Replay
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Replay, context: context)
        type = Types::Replay.new
        type.replay_name = params[:replay_name]
        type.event_source_arn = params[:event_source_arn]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.event_start_time = params[:event_start_time]
        type.event_end_time = params[:event_end_time]
        type.event_last_replayed_time = params[:event_last_replayed_time]
        type.replay_start_time = params[:replay_start_time]
        type.replay_end_time = params[:replay_end_time]
        type
      end
    end

    module ReplayDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplayDestination, context: context)
        type = Types::ReplayDestination.new
        type.arn = params[:arn]
        type.filter_arns = ReplayDestinationFilters.build(params[:filter_arns], context: "#{context}[:filter_arns]") unless params[:filter_arns].nil?
        type
      end
    end

    module ReplayDestinationFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReplayList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Replay.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RetryPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryPolicy, context: context)
        type = Types::RetryPolicy.new
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.maximum_event_age_in_seconds = params[:maximum_event_age_in_seconds]
        type
      end
    end

    module Rule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rule, context: context)
        type = Types::Rule.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.event_pattern = params[:event_pattern]
        type.state = params[:state]
        type.description = params[:description]
        type.schedule_expression = params[:schedule_expression]
        type.role_arn = params[:role_arn]
        type.managed_by = params[:managed_by]
        type.event_bus_name = params[:event_bus_name]
        type
      end
    end

    module RuleNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RuleResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Rule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RunCommandParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunCommandParameters, context: context)
        type = Types::RunCommandParameters.new
        type.run_command_targets = RunCommandTargets.build(params[:run_command_targets], context: "#{context}[:run_command_targets]") unless params[:run_command_targets].nil?
        type
      end
    end

    module RunCommandTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunCommandTarget, context: context)
        type = Types::RunCommandTarget.new
        type.key = params[:key]
        type.values = RunCommandTargetValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module RunCommandTargetValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RunCommandTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RunCommandTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SageMakerPipelineParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SageMakerPipelineParameter, context: context)
        type = Types::SageMakerPipelineParameter.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module SageMakerPipelineParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SageMakerPipelineParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SageMakerPipelineParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SageMakerPipelineParameters, context: context)
        type = Types::SageMakerPipelineParameters.new
        type.pipeline_parameter_list = SageMakerPipelineParameterList.build(params[:pipeline_parameter_list], context: "#{context}[:pipeline_parameter_list]") unless params[:pipeline_parameter_list].nil?
        type
      end
    end

    module SqsParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqsParameters, context: context)
        type = Types::SqsParameters.new
        type.message_group_id = params[:message_group_id]
        type
      end
    end

    module StartReplayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReplayInput, context: context)
        type = Types::StartReplayInput.new
        type.replay_name = params[:replay_name]
        type.description = params[:description]
        type.event_source_arn = params[:event_source_arn]
        type.event_start_time = params[:event_start_time]
        type.event_end_time = params[:event_end_time]
        type.destination = ReplayDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module StartReplayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartReplayOutput, context: context)
        type = Types::StartReplayOutput.new
        type.replay_arn = params[:replay_arn]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.replay_start_time = params[:replay_start_time]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Target
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Target, context: context)
        type = Types::Target.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.role_arn = params[:role_arn]
        type.input = params[:input]
        type.input_path = params[:input_path]
        type.input_transformer = InputTransformer.build(params[:input_transformer], context: "#{context}[:input_transformer]") unless params[:input_transformer].nil?
        type.kinesis_parameters = KinesisParameters.build(params[:kinesis_parameters], context: "#{context}[:kinesis_parameters]") unless params[:kinesis_parameters].nil?
        type.run_command_parameters = RunCommandParameters.build(params[:run_command_parameters], context: "#{context}[:run_command_parameters]") unless params[:run_command_parameters].nil?
        type.ecs_parameters = EcsParameters.build(params[:ecs_parameters], context: "#{context}[:ecs_parameters]") unless params[:ecs_parameters].nil?
        type.batch_parameters = BatchParameters.build(params[:batch_parameters], context: "#{context}[:batch_parameters]") unless params[:batch_parameters].nil?
        type.sqs_parameters = SqsParameters.build(params[:sqs_parameters], context: "#{context}[:sqs_parameters]") unless params[:sqs_parameters].nil?
        type.http_parameters = HttpParameters.build(params[:http_parameters], context: "#{context}[:http_parameters]") unless params[:http_parameters].nil?
        type.redshift_data_parameters = RedshiftDataParameters.build(params[:redshift_data_parameters], context: "#{context}[:redshift_data_parameters]") unless params[:redshift_data_parameters].nil?
        type.sage_maker_pipeline_parameters = SageMakerPipelineParameters.build(params[:sage_maker_pipeline_parameters], context: "#{context}[:sage_maker_pipeline_parameters]") unless params[:sage_maker_pipeline_parameters].nil?
        type.dead_letter_config = DeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.retry_policy = RetryPolicy.build(params[:retry_policy], context: "#{context}[:retry_policy]") unless params[:retry_policy].nil?
        type
      end
    end

    module TargetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Target.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestEventPatternInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestEventPatternInput, context: context)
        type = Types::TestEventPatternInput.new
        type.event_pattern = params[:event_pattern]
        type.event = params[:event]
        type
      end
    end

    module TestEventPatternOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestEventPatternOutput, context: context)
        type = Types::TestEventPatternOutput.new
        type.result = params[:result]
        type
      end
    end

    module TransformerPaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateApiDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiDestinationInput, context: context)
        type = Types::UpdateApiDestinationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.connection_arn = params[:connection_arn]
        type.invocation_endpoint = params[:invocation_endpoint]
        type.http_method = params[:http_method]
        type.invocation_rate_limit_per_second = params[:invocation_rate_limit_per_second]
        type
      end
    end

    module UpdateApiDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiDestinationOutput, context: context)
        type = Types::UpdateApiDestinationOutput.new
        type.api_destination_arn = params[:api_destination_arn]
        type.api_destination_state = params[:api_destination_state]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module UpdateArchiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateArchiveInput, context: context)
        type = Types::UpdateArchiveInput.new
        type.archive_name = params[:archive_name]
        type.description = params[:description]
        type.event_pattern = params[:event_pattern]
        type.retention_days = params[:retention_days]
        type
      end
    end

    module UpdateArchiveOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateArchiveOutput, context: context)
        type = Types::UpdateArchiveOutput.new
        type.archive_arn = params[:archive_arn]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module UpdateConnectionApiKeyAuthRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionApiKeyAuthRequestParameters, context: context)
        type = Types::UpdateConnectionApiKeyAuthRequestParameters.new
        type.api_key_name = params[:api_key_name]
        type.api_key_value = params[:api_key_value]
        type
      end
    end

    module UpdateConnectionAuthRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionAuthRequestParameters, context: context)
        type = Types::UpdateConnectionAuthRequestParameters.new
        type.basic_auth_parameters = UpdateConnectionBasicAuthRequestParameters.build(params[:basic_auth_parameters], context: "#{context}[:basic_auth_parameters]") unless params[:basic_auth_parameters].nil?
        type.o_auth_parameters = UpdateConnectionOAuthRequestParameters.build(params[:o_auth_parameters], context: "#{context}[:o_auth_parameters]") unless params[:o_auth_parameters].nil?
        type.api_key_auth_parameters = UpdateConnectionApiKeyAuthRequestParameters.build(params[:api_key_auth_parameters], context: "#{context}[:api_key_auth_parameters]") unless params[:api_key_auth_parameters].nil?
        type.invocation_http_parameters = ConnectionHttpParameters.build(params[:invocation_http_parameters], context: "#{context}[:invocation_http_parameters]") unless params[:invocation_http_parameters].nil?
        type
      end
    end

    module UpdateConnectionBasicAuthRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionBasicAuthRequestParameters, context: context)
        type = Types::UpdateConnectionBasicAuthRequestParameters.new
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module UpdateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionInput, context: context)
        type = Types::UpdateConnectionInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.authorization_type = params[:authorization_type]
        type.auth_parameters = UpdateConnectionAuthRequestParameters.build(params[:auth_parameters], context: "#{context}[:auth_parameters]") unless params[:auth_parameters].nil?
        type
      end
    end

    module UpdateConnectionOAuthClientRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionOAuthClientRequestParameters, context: context)
        type = Types::UpdateConnectionOAuthClientRequestParameters.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type
      end
    end

    module UpdateConnectionOAuthRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionOAuthRequestParameters, context: context)
        type = Types::UpdateConnectionOAuthRequestParameters.new
        type.client_parameters = UpdateConnectionOAuthClientRequestParameters.build(params[:client_parameters], context: "#{context}[:client_parameters]") unless params[:client_parameters].nil?
        type.authorization_endpoint = params[:authorization_endpoint]
        type.http_method = params[:http_method]
        type.o_auth_http_parameters = ConnectionHttpParameters.build(params[:o_auth_http_parameters], context: "#{context}[:o_auth_http_parameters]") unless params[:o_auth_http_parameters].nil?
        type
      end
    end

    module UpdateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionOutput, context: context)
        type = Types::UpdateConnectionOutput.new
        type.connection_arn = params[:connection_arn]
        type.connection_state = params[:connection_state]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_authorized_time = params[:last_authorized_time]
        type
      end
    end

  end
end
