# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Connect
  module Builders

    # Operation Builder for AssociateApprovedOrigin
    class AssociateApprovedOrigin
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/approved-origin',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Origin'] = input[:origin] unless input[:origin].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateBot
    class AssociateBot
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/bot',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LexBot'] = Builders::LexBot.build(input[:lex_bot]) unless input[:lex_bot].nil?
        data['LexV2Bot'] = Builders::LexV2Bot.build(input[:lex_v2_bot]) unless input[:lex_v2_bot].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LexV2Bot
    class LexV2Bot
      def self.build(input)
        data = {}
        data['AliasArn'] = input[:alias_arn] unless input[:alias_arn].nil?
        data
      end
    end

    # Structure Builder for LexBot
    class LexBot
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['LexRegion'] = input[:lex_region] unless input[:lex_region].nil?
        data
      end
    end

    # Operation Builder for AssociateDefaultVocabulary
    class AssociateDefaultVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:language_code].to_s.empty?
          raise ArgumentError, "HTTP label :language_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/default-vocabulary/%<InstanceId>s/%<LanguageCode>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            LanguageCode: Hearth::HTTP.uri_escape(input[:language_code].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['VocabularyId'] = input[:vocabulary_id] unless input[:vocabulary_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateInstanceStorageConfig
    class AssociateInstanceStorageConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/storage-config',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['StorageConfig'] = Builders::InstanceStorageConfig.build(input[:storage_config]) unless input[:storage_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InstanceStorageConfig
    class InstanceStorageConfig
      def self.build(input)
        data = {}
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['StorageType'] = input[:storage_type] unless input[:storage_type].nil?
        data['S3Config'] = Builders::S3Config.build(input[:s3_config]) unless input[:s3_config].nil?
        data['KinesisVideoStreamConfig'] = Builders::KinesisVideoStreamConfig.build(input[:kinesis_video_stream_config]) unless input[:kinesis_video_stream_config].nil?
        data['KinesisStreamConfig'] = Builders::KinesisStreamConfig.build(input[:kinesis_stream_config]) unless input[:kinesis_stream_config].nil?
        data['KinesisFirehoseConfig'] = Builders::KinesisFirehoseConfig.build(input[:kinesis_firehose_config]) unless input[:kinesis_firehose_config].nil?
        data
      end
    end

    # Structure Builder for KinesisFirehoseConfig
    class KinesisFirehoseConfig
      def self.build(input)
        data = {}
        data['FirehoseArn'] = input[:firehose_arn] unless input[:firehose_arn].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamConfig
    class KinesisStreamConfig
      def self.build(input)
        data = {}
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        data
      end
    end

    # Structure Builder for KinesisVideoStreamConfig
    class KinesisVideoStreamConfig
      def self.build(input)
        data = {}
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['RetentionPeriodHours'] = input[:retention_period_hours] unless input[:retention_period_hours].nil?
        data['EncryptionConfig'] = Builders::EncryptionConfig.build(input[:encryption_config]) unless input[:encryption_config].nil?
        data
      end
    end

    # Structure Builder for EncryptionConfig
    class EncryptionConfig
      def self.build(input)
        data = {}
        data['EncryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data
      end
    end

    # Structure Builder for S3Config
    class S3Config
      def self.build(input)
        data = {}
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['BucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['EncryptionConfig'] = Builders::EncryptionConfig.build(input[:encryption_config]) unless input[:encryption_config].nil?
        data
      end
    end

    # Operation Builder for AssociateLambdaFunction
    class AssociateLambdaFunction
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/lambda-function',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FunctionArn'] = input[:function_arn] unless input[:function_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateLexBot
    class AssociateLexBot
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/lex-bot',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LexBot'] = Builders::LexBot.build(input[:lex_bot]) unless input[:lex_bot].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociatePhoneNumberContactFlow
    class AssociatePhoneNumberContactFlow
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:phone_number_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-number/%<PhoneNumberId>s/contact-flow',
            PhoneNumberId: Hearth::HTTP.uri_escape(input[:phone_number_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactFlowId'] = input[:contact_flow_id] unless input[:contact_flow_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateQueueQuickConnects
    class AssociateQueueQuickConnects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:queue_id].to_s.empty?
          raise ArgumentError, "HTTP label :queue_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s/%<QueueId>s/associate-quick-connects',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QueueId: Hearth::HTTP.uri_escape(input[:queue_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QuickConnectIds'] = Builders::QuickConnectsList.build(input[:quick_connect_ids]) unless input[:quick_connect_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for QuickConnectsList
    class QuickConnectsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AssociateRoutingProfileQueues
    class AssociateRoutingProfileQueues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:routing_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :routing_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles/%<InstanceId>s/%<RoutingProfileId>s/associate-queues',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            RoutingProfileId: Hearth::HTTP.uri_escape(input[:routing_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QueueConfigs'] = Builders::RoutingProfileQueueConfigList.build(input[:queue_configs]) unless input[:queue_configs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RoutingProfileQueueConfigList
    class RoutingProfileQueueConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RoutingProfileQueueConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RoutingProfileQueueConfig
    class RoutingProfileQueueConfig
      def self.build(input)
        data = {}
        data['QueueReference'] = Builders::RoutingProfileQueueReference.build(input[:queue_reference]) unless input[:queue_reference].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Delay'] = input[:delay] unless input[:delay].nil?
        data
      end
    end

    # Structure Builder for RoutingProfileQueueReference
    class RoutingProfileQueueReference
      def self.build(input)
        data = {}
        data['QueueId'] = input[:queue_id] unless input[:queue_id].nil?
        data['Channel'] = input[:channel] unless input[:channel].nil?
        data
      end
    end

    # Operation Builder for AssociateSecurityKey
    class AssociateSecurityKey
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/security-key',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ClaimPhoneNumber
    class ClaimPhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/phone-number/claim')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['PhoneNumberDescription'] = input[:phone_number_description] unless input[:phone_number_description].nil?
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

    # Operation Builder for CreateAgentStatus
    class CreateAgentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/agent-status/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['DisplayOrder'] = input[:display_order] unless input[:display_order].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateContactFlow
    class CreateContactFlow
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flows/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateContactFlowModule
    class CreateContactFlowModule
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flow-modules/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateHoursOfOperation
    class CreateHoursOfOperation
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/hours-of-operations/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['TimeZone'] = input[:time_zone] unless input[:time_zone].nil?
        data['Config'] = Builders::HoursOfOperationConfigList.build(input[:config]) unless input[:config].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for HoursOfOperationConfigList
    class HoursOfOperationConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HoursOfOperationConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HoursOfOperationConfig
    class HoursOfOperationConfig
      def self.build(input)
        data = {}
        data['Day'] = input[:day] unless input[:day].nil?
        data['StartTime'] = Builders::HoursOfOperationTimeSlice.build(input[:start_time]) unless input[:start_time].nil?
        data['EndTime'] = Builders::HoursOfOperationTimeSlice.build(input[:end_time]) unless input[:end_time].nil?
        data
      end
    end

    # Structure Builder for HoursOfOperationTimeSlice
    class HoursOfOperationTimeSlice
      def self.build(input)
        data = {}
        data['Hours'] = input[:hours] unless input[:hours].nil?
        data['Minutes'] = input[:minutes] unless input[:minutes].nil?
        data
      end
    end

    # Operation Builder for CreateInstance
    class CreateInstance
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/instance')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['IdentityManagementType'] = input[:identity_management_type] unless input[:identity_management_type].nil?
        data['InstanceAlias'] = input[:instance_alias] unless input[:instance_alias].nil?
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['InboundCallsEnabled'] = input[:inbound_calls_enabled] unless input[:inbound_calls_enabled].nil?
        data['OutboundCallsEnabled'] = input[:outbound_calls_enabled] unless input[:outbound_calls_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateIntegrationAssociation
    class CreateIntegrationAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/integration-associations',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IntegrationType'] = input[:integration_type] unless input[:integration_type].nil?
        data['IntegrationArn'] = input[:integration_arn] unless input[:integration_arn].nil?
        data['SourceApplicationUrl'] = input[:source_application_url] unless input[:source_application_url].nil?
        data['SourceApplicationName'] = input[:source_application_name] unless input[:source_application_name].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateQueue
    class CreateQueue
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['OutboundCallerConfig'] = Builders::OutboundCallerConfig.build(input[:outbound_caller_config]) unless input[:outbound_caller_config].nil?
        data['HoursOfOperationId'] = input[:hours_of_operation_id] unless input[:hours_of_operation_id].nil?
        data['MaxContacts'] = input[:max_contacts] unless input[:max_contacts].nil?
        data['QuickConnectIds'] = Builders::QuickConnectsList.build(input[:quick_connect_ids]) unless input[:quick_connect_ids].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OutboundCallerConfig
    class OutboundCallerConfig
      def self.build(input)
        data = {}
        data['OutboundCallerIdName'] = input[:outbound_caller_id_name] unless input[:outbound_caller_id_name].nil?
        data['OutboundCallerIdNumberId'] = input[:outbound_caller_id_number_id] unless input[:outbound_caller_id_number_id].nil?
        data['OutboundFlowId'] = input[:outbound_flow_id] unless input[:outbound_flow_id].nil?
        data
      end
    end

    # Operation Builder for CreateQuickConnect
    class CreateQuickConnect
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/quick-connects/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['QuickConnectConfig'] = Builders::QuickConnectConfig.build(input[:quick_connect_config]) unless input[:quick_connect_config].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for QuickConnectConfig
    class QuickConnectConfig
      def self.build(input)
        data = {}
        data['QuickConnectType'] = input[:quick_connect_type] unless input[:quick_connect_type].nil?
        data['UserConfig'] = Builders::UserQuickConnectConfig.build(input[:user_config]) unless input[:user_config].nil?
        data['QueueConfig'] = Builders::QueueQuickConnectConfig.build(input[:queue_config]) unless input[:queue_config].nil?
        data['PhoneConfig'] = Builders::PhoneNumberQuickConnectConfig.build(input[:phone_config]) unless input[:phone_config].nil?
        data
      end
    end

    # Structure Builder for PhoneNumberQuickConnectConfig
    class PhoneNumberQuickConnectConfig
      def self.build(input)
        data = {}
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data
      end
    end

    # Structure Builder for QueueQuickConnectConfig
    class QueueQuickConnectConfig
      def self.build(input)
        data = {}
        data['QueueId'] = input[:queue_id] unless input[:queue_id].nil?
        data['ContactFlowId'] = input[:contact_flow_id] unless input[:contact_flow_id].nil?
        data
      end
    end

    # Structure Builder for UserQuickConnectConfig
    class UserQuickConnectConfig
      def self.build(input)
        data = {}
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['ContactFlowId'] = input[:contact_flow_id] unless input[:contact_flow_id].nil?
        data
      end
    end

    # Operation Builder for CreateRoutingProfile
    class CreateRoutingProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DefaultOutboundQueueId'] = input[:default_outbound_queue_id] unless input[:default_outbound_queue_id].nil?
        data['QueueConfigs'] = Builders::RoutingProfileQueueConfigList.build(input[:queue_configs]) unless input[:queue_configs].nil?
        data['MediaConcurrencies'] = Builders::MediaConcurrencies.build(input[:media_concurrencies]) unless input[:media_concurrencies].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MediaConcurrencies
    class MediaConcurrencies
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MediaConcurrency.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MediaConcurrency
    class MediaConcurrency
      def self.build(input)
        data = {}
        data['Channel'] = input[:channel] unless input[:channel].nil?
        data['Concurrency'] = input[:concurrency] unless input[:concurrency].nil?
        data
      end
    end

    # Operation Builder for CreateSecurityProfile
    class CreateSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SecurityProfileName'] = input[:security_profile_name] unless input[:security_profile_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Permissions'] = Builders::PermissionsList.build(input[:permissions]) unless input[:permissions].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PermissionsList
    class PermissionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateTaskTemplate
    class CreateTaskTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/task/template',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ContactFlowId'] = input[:contact_flow_id] unless input[:contact_flow_id].nil?
        data['Constraints'] = Builders::TaskTemplateConstraints.build(input[:constraints]) unless input[:constraints].nil?
        data['Defaults'] = Builders::TaskTemplateDefaults.build(input[:defaults]) unless input[:defaults].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Fields'] = Builders::TaskTemplateFields.build(input[:fields]) unless input[:fields].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TaskTemplateFields
    class TaskTemplateFields
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TaskTemplateField.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TaskTemplateField
    class TaskTemplateField
      def self.build(input)
        data = {}
        data['Id'] = Builders::TaskTemplateFieldIdentifier.build(input[:id]) unless input[:id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['SingleSelectOptions'] = Builders::SingleSelectOptions.build(input[:single_select_options]) unless input[:single_select_options].nil?
        data
      end
    end

    # List Builder for SingleSelectOptions
    class SingleSelectOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TaskTemplateFieldIdentifier
    class TaskTemplateFieldIdentifier
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for TaskTemplateDefaults
    class TaskTemplateDefaults
      def self.build(input)
        data = {}
        data['DefaultFieldValues'] = Builders::TaskTemplateDefaultFieldValueList.build(input[:default_field_values]) unless input[:default_field_values].nil?
        data
      end
    end

    # List Builder for TaskTemplateDefaultFieldValueList
    class TaskTemplateDefaultFieldValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TaskTemplateDefaultFieldValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TaskTemplateDefaultFieldValue
    class TaskTemplateDefaultFieldValue
      def self.build(input)
        data = {}
        data['Id'] = Builders::TaskTemplateFieldIdentifier.build(input[:id]) unless input[:id].nil?
        data['DefaultValue'] = input[:default_value] unless input[:default_value].nil?
        data
      end
    end

    # Structure Builder for TaskTemplateConstraints
    class TaskTemplateConstraints
      def self.build(input)
        data = {}
        data['RequiredFields'] = Builders::RequiredTaskTemplateFields.build(input[:required_fields]) unless input[:required_fields].nil?
        data['ReadOnlyFields'] = Builders::ReadOnlyTaskTemplateFields.build(input[:read_only_fields]) unless input[:read_only_fields].nil?
        data['InvisibleFields'] = Builders::InvisibleTaskTemplateFields.build(input[:invisible_fields]) unless input[:invisible_fields].nil?
        data
      end
    end

    # List Builder for InvisibleTaskTemplateFields
    class InvisibleTaskTemplateFields
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InvisibleFieldInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InvisibleFieldInfo
    class InvisibleFieldInfo
      def self.build(input)
        data = {}
        data['Id'] = Builders::TaskTemplateFieldIdentifier.build(input[:id]) unless input[:id].nil?
        data
      end
    end

    # List Builder for ReadOnlyTaskTemplateFields
    class ReadOnlyTaskTemplateFields
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReadOnlyFieldInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReadOnlyFieldInfo
    class ReadOnlyFieldInfo
      def self.build(input)
        data = {}
        data['Id'] = Builders::TaskTemplateFieldIdentifier.build(input[:id]) unless input[:id].nil?
        data
      end
    end

    # List Builder for RequiredTaskTemplateFields
    class RequiredTaskTemplateFields
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RequiredFieldInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RequiredFieldInfo
    class RequiredFieldInfo
      def self.build(input)
        data = {}
        data['Id'] = Builders::TaskTemplateFieldIdentifier.build(input[:id]) unless input[:id].nil?
        data
      end
    end

    # Operation Builder for CreateUseCase
    class CreateUseCase
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:integration_association_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_association_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/integration-associations/%<IntegrationAssociationId>s/use-cases',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            IntegrationAssociationId: Hearth::HTTP.uri_escape(input[:integration_association_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['UseCaseType'] = input[:use_case_type] unless input[:use_case_type].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['IdentityInfo'] = Builders::UserIdentityInfo.build(input[:identity_info]) unless input[:identity_info].nil?
        data['PhoneConfig'] = Builders::UserPhoneConfig.build(input[:phone_config]) unless input[:phone_config].nil?
        data['DirectoryUserId'] = input[:directory_user_id] unless input[:directory_user_id].nil?
        data['SecurityProfileIds'] = Builders::SecurityProfileIds.build(input[:security_profile_ids]) unless input[:security_profile_ids].nil?
        data['RoutingProfileId'] = input[:routing_profile_id] unless input[:routing_profile_id].nil?
        data['HierarchyGroupId'] = input[:hierarchy_group_id] unless input[:hierarchy_group_id].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SecurityProfileIds
    class SecurityProfileIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UserPhoneConfig
    class UserPhoneConfig
      def self.build(input)
        data = {}
        data['PhoneType'] = input[:phone_type] unless input[:phone_type].nil?
        data['AutoAccept'] = input[:auto_accept] unless input[:auto_accept].nil?
        data['AfterContactWorkTimeLimit'] = input[:after_contact_work_time_limit] unless input[:after_contact_work_time_limit].nil?
        data['DeskPhoneNumber'] = input[:desk_phone_number] unless input[:desk_phone_number].nil?
        data
      end
    end

    # Structure Builder for UserIdentityInfo
    class UserIdentityInfo
      def self.build(input)
        data = {}
        data['FirstName'] = input[:first_name] unless input[:first_name].nil?
        data['LastName'] = input[:last_name] unless input[:last_name].nil?
        data['Email'] = input[:email] unless input[:email].nil?
        data
      end
    end

    # Operation Builder for CreateUserHierarchyGroup
    class CreateUserHierarchyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user-hierarchy-groups/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ParentGroupId'] = input[:parent_group_id] unless input[:parent_group_id].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVocabulary
    class CreateVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/vocabulary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteContactFlow
    class DeleteContactFlow
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_flow_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_flow_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flows/%<InstanceId>s/%<ContactFlowId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactFlowId: Hearth::HTTP.uri_escape(input[:contact_flow_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteContactFlowModule
    class DeleteContactFlowModule
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_flow_module_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_flow_module_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flow-modules/%<InstanceId>s/%<ContactFlowModuleId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactFlowModuleId: Hearth::HTTP.uri_escape(input[:contact_flow_module_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteHoursOfOperation
    class DeleteHoursOfOperation
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:hours_of_operation_id].to_s.empty?
          raise ArgumentError, "HTTP label :hours_of_operation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/hours-of-operations/%<InstanceId>s/%<HoursOfOperationId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            HoursOfOperationId: Hearth::HTTP.uri_escape(input[:hours_of_operation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInstance
    class DeleteInstance
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIntegrationAssociation
    class DeleteIntegrationAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:integration_association_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_association_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/integration-associations/%<IntegrationAssociationId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            IntegrationAssociationId: Hearth::HTTP.uri_escape(input[:integration_association_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteQuickConnect
    class DeleteQuickConnect
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:quick_connect_id].to_s.empty?
          raise ArgumentError, "HTTP label :quick_connect_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/quick-connects/%<InstanceId>s/%<QuickConnectId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QuickConnectId: Hearth::HTTP.uri_escape(input[:quick_connect_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSecurityProfile
    class DeleteSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:security_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<InstanceId>s/%<SecurityProfileId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            SecurityProfileId: Hearth::HTTP.uri_escape(input[:security_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTaskTemplate
    class DeleteTaskTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:task_template_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/task/template/%<TaskTemplateId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            TaskTemplateId: Hearth::HTTP.uri_escape(input[:task_template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUseCase
    class DeleteUseCase
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:integration_association_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_association_id cannot be nil or empty."
        end
        if input[:use_case_id].to_s.empty?
          raise ArgumentError, "HTTP label :use_case_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/integration-associations/%<IntegrationAssociationId>s/use-cases/%<UseCaseId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            IntegrationAssociationId: Hearth::HTTP.uri_escape(input[:integration_association_id].to_s),
            UseCaseId: Hearth::HTTP.uri_escape(input[:use_case_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users/%<InstanceId>s/%<UserId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUserHierarchyGroup
    class DeleteUserHierarchyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:hierarchy_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :hierarchy_group_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user-hierarchy-groups/%<InstanceId>s/%<HierarchyGroupId>s',
            HierarchyGroupId: Hearth::HTTP.uri_escape(input[:hierarchy_group_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVocabulary
    class DeleteVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:vocabulary_id].to_s.empty?
          raise ArgumentError, "HTTP label :vocabulary_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/vocabulary-remove/%<InstanceId>s/%<VocabularyId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            VocabularyId: Hearth::HTTP.uri_escape(input[:vocabulary_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAgentStatus
    class DescribeAgentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:agent_status_id].to_s.empty?
          raise ArgumentError, "HTTP label :agent_status_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/agent-status/%<InstanceId>s/%<AgentStatusId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            AgentStatusId: Hearth::HTTP.uri_escape(input[:agent_status_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeContact
    class DescribeContact
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contacts/%<InstanceId>s/%<ContactId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactId: Hearth::HTTP.uri_escape(input[:contact_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeContactFlow
    class DescribeContactFlow
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_flow_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_flow_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flows/%<InstanceId>s/%<ContactFlowId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactFlowId: Hearth::HTTP.uri_escape(input[:contact_flow_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeContactFlowModule
    class DescribeContactFlowModule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_flow_module_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_flow_module_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flow-modules/%<InstanceId>s/%<ContactFlowModuleId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactFlowModuleId: Hearth::HTTP.uri_escape(input[:contact_flow_module_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeHoursOfOperation
    class DescribeHoursOfOperation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:hours_of_operation_id].to_s.empty?
          raise ArgumentError, "HTTP label :hours_of_operation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/hours-of-operations/%<InstanceId>s/%<HoursOfOperationId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            HoursOfOperationId: Hearth::HTTP.uri_escape(input[:hours_of_operation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeInstance
    class DescribeInstance
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeInstanceAttribute
    class DescribeInstanceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:attribute_type].to_s.empty?
          raise ArgumentError, "HTTP label :attribute_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/attribute/%<AttributeType>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            AttributeType: Hearth::HTTP.uri_escape(input[:attribute_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeInstanceStorageConfig
    class DescribeInstanceStorageConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:association_id].to_s.empty?
          raise ArgumentError, "HTTP label :association_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/storage-config/%<AssociationId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            AssociationId: Hearth::HTTP.uri_escape(input[:association_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePhoneNumber
    class DescribePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:phone_number_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-number/%<PhoneNumberId>s',
            PhoneNumberId: Hearth::HTTP.uri_escape(input[:phone_number_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeQueue
    class DescribeQueue
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:queue_id].to_s.empty?
          raise ArgumentError, "HTTP label :queue_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s/%<QueueId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QueueId: Hearth::HTTP.uri_escape(input[:queue_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeQuickConnect
    class DescribeQuickConnect
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:quick_connect_id].to_s.empty?
          raise ArgumentError, "HTTP label :quick_connect_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/quick-connects/%<InstanceId>s/%<QuickConnectId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QuickConnectId: Hearth::HTTP.uri_escape(input[:quick_connect_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRoutingProfile
    class DescribeRoutingProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:routing_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :routing_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles/%<InstanceId>s/%<RoutingProfileId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            RoutingProfileId: Hearth::HTTP.uri_escape(input[:routing_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSecurityProfile
    class DescribeSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:security_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<InstanceId>s/%<SecurityProfileId>s',
            SecurityProfileId: Hearth::HTTP.uri_escape(input[:security_profile_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeUser
    class DescribeUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users/%<InstanceId>s/%<UserId>s',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeUserHierarchyGroup
    class DescribeUserHierarchyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:hierarchy_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :hierarchy_group_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user-hierarchy-groups/%<InstanceId>s/%<HierarchyGroupId>s',
            HierarchyGroupId: Hearth::HTTP.uri_escape(input[:hierarchy_group_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeUserHierarchyStructure
    class DescribeUserHierarchyStructure
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user-hierarchy-structure/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeVocabulary
    class DescribeVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:vocabulary_id].to_s.empty?
          raise ArgumentError, "HTTP label :vocabulary_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/vocabulary/%<InstanceId>s/%<VocabularyId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            VocabularyId: Hearth::HTTP.uri_escape(input[:vocabulary_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateApprovedOrigin
    class DisassociateApprovedOrigin
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/approved-origin',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['origin'] = input[:origin].to_s unless input[:origin].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateBot
    class DisassociateBot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/bot',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LexBot'] = Builders::LexBot.build(input[:lex_bot]) unless input[:lex_bot].nil?
        data['LexV2Bot'] = Builders::LexV2Bot.build(input[:lex_v2_bot]) unless input[:lex_v2_bot].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateInstanceStorageConfig
    class DisassociateInstanceStorageConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:association_id].to_s.empty?
          raise ArgumentError, "HTTP label :association_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/storage-config/%<AssociationId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            AssociationId: Hearth::HTTP.uri_escape(input[:association_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateLambdaFunction
    class DisassociateLambdaFunction
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/lambda-function',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['functionArn'] = input[:function_arn].to_s unless input[:function_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateLexBot
    class DisassociateLexBot
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/lex-bot',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['botName'] = input[:bot_name].to_s unless input[:bot_name].nil?
        params['lexRegion'] = input[:lex_region].to_s unless input[:lex_region].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociatePhoneNumberContactFlow
    class DisassociatePhoneNumberContactFlow
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:phone_number_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-number/%<PhoneNumberId>s/contact-flow',
            PhoneNumberId: Hearth::HTTP.uri_escape(input[:phone_number_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['instanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateQueueQuickConnects
    class DisassociateQueueQuickConnects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:queue_id].to_s.empty?
          raise ArgumentError, "HTTP label :queue_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s/%<QueueId>s/disassociate-quick-connects',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QueueId: Hearth::HTTP.uri_escape(input[:queue_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QuickConnectIds'] = Builders::QuickConnectsList.build(input[:quick_connect_ids]) unless input[:quick_connect_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateRoutingProfileQueues
    class DisassociateRoutingProfileQueues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:routing_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :routing_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles/%<InstanceId>s/%<RoutingProfileId>s/disassociate-queues',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            RoutingProfileId: Hearth::HTTP.uri_escape(input[:routing_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QueueReferences'] = Builders::RoutingProfileQueueReferenceList.build(input[:queue_references]) unless input[:queue_references].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RoutingProfileQueueReferenceList
    class RoutingProfileQueueReferenceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RoutingProfileQueueReference.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DisassociateSecurityKey
    class DisassociateSecurityKey
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:association_id].to_s.empty?
          raise ArgumentError, "HTTP label :association_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/security-key/%<AssociationId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            AssociationId: Hearth::HTTP.uri_escape(input[:association_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetContactAttributes
    class GetContactAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:initial_contact_id].to_s.empty?
          raise ArgumentError, "HTTP label :initial_contact_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact/attributes/%<InstanceId>s/%<InitialContactId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            InitialContactId: Hearth::HTTP.uri_escape(input[:initial_contact_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCurrentMetricData
    class GetCurrentMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/metrics/current/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['Groupings'] = Builders::Groupings.build(input[:groupings]) unless input[:groupings].nil?
        data['CurrentMetrics'] = Builders::CurrentMetrics.build(input[:current_metrics]) unless input[:current_metrics].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CurrentMetrics
    class CurrentMetrics
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CurrentMetric.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CurrentMetric
    class CurrentMetric
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # List Builder for Groupings
    class Groupings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filters
    class Filters
      def self.build(input)
        data = {}
        data['Queues'] = Builders::Queues.build(input[:queues]) unless input[:queues].nil?
        data['Channels'] = Builders::Channels.build(input[:channels]) unless input[:channels].nil?
        data
      end
    end

    # List Builder for Channels
    class Channels
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Queues
    class Queues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetCurrentUserData
    class GetCurrentUserData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/metrics/userdata/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::UserDataFilters.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UserDataFilters
    class UserDataFilters
      def self.build(input)
        data = {}
        data['Queues'] = Builders::Queues.build(input[:queues]) unless input[:queues].nil?
        data['ContactFilter'] = Builders::ContactFilter.build(input[:contact_filter]) unless input[:contact_filter].nil?
        data
      end
    end

    # Structure Builder for ContactFilter
    class ContactFilter
      def self.build(input)
        data = {}
        data['ContactStates'] = Builders::ContactStates.build(input[:contact_states]) unless input[:contact_states].nil?
        data
      end
    end

    # List Builder for ContactStates
    class ContactStates
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetFederationToken
    class GetFederationToken
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user/federate/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMetricData
    class GetMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/metrics/historical/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['Groupings'] = Builders::Groupings.build(input[:groupings]) unless input[:groupings].nil?
        data['HistoricalMetrics'] = Builders::HistoricalMetrics.build(input[:historical_metrics]) unless input[:historical_metrics].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for HistoricalMetrics
    class HistoricalMetrics
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HistoricalMetric.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HistoricalMetric
    class HistoricalMetric
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Threshold'] = Builders::Threshold.build(input[:threshold]) unless input[:threshold].nil?
        data['Statistic'] = input[:statistic] unless input[:statistic].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Structure Builder for Threshold
    class Threshold
      def self.build(input)
        data = {}
        data['Comparison'] = input[:comparison] unless input[:comparison].nil?
        data['ThresholdValue'] = Hearth::NumberHelper.serialize(input[:threshold_value]) unless input[:threshold_value].nil?
        data
      end
    end

    # Operation Builder for GetTaskTemplate
    class GetTaskTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:task_template_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/task/template/%<TaskTemplateId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            TaskTemplateId: Hearth::HTTP.uri_escape(input[:task_template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['snapshotVersion'] = input[:snapshot_version].to_s unless input[:snapshot_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAgentStatuses
    class ListAgentStatuses
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/agent-status/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:agent_status_types].nil? || input[:agent_status_types].empty?
          params['AgentStatusTypes'] = input[:agent_status_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for AgentStatusTypes
    class AgentStatusTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListApprovedOrigins
    class ListApprovedOrigins
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/approved-origins',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBots
    class ListBots
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/bots',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['lexVersion'] = input[:lex_version].to_s unless input[:lex_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListContactFlowModules
    class ListContactFlowModules
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flow-modules-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['state'] = input[:contact_flow_module_state].to_s unless input[:contact_flow_module_state].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListContactFlows
    class ListContactFlows
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flows-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:contact_flow_types].nil? || input[:contact_flow_types].empty?
          params['contactFlowTypes'] = input[:contact_flow_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for ContactFlowTypes
    class ContactFlowTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListContactReferences
    class ListContactReferences
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact/references/%<InstanceId>s/%<ContactId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactId: Hearth::HTTP.uri_escape(input[:contact_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:reference_types].nil? || input[:reference_types].empty?
          params['referenceTypes'] = input[:reference_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for ReferenceTypes
    class ReferenceTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListDefaultVocabularies
    class ListDefaultVocabularies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/default-vocabulary-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListHoursOfOperations
    class ListHoursOfOperations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/hours-of-operations-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInstanceAttributes
    class ListInstanceAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/attributes',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInstanceStorageConfigs
    class ListInstanceStorageConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/storage-configs',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInstances
    class ListInstances
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/instance')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIntegrationAssociations
    class ListIntegrationAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/integration-associations',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['integrationType'] = input[:integration_type].to_s unless input[:integration_type].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLambdaFunctions
    class ListLambdaFunctions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/lambda-functions',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLexBots
    class ListLexBots
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/lex-bots',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPhoneNumbers
    class ListPhoneNumbers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-numbers-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:phone_number_types].nil? || input[:phone_number_types].empty?
          params['phoneNumberTypes'] = input[:phone_number_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:phone_number_country_codes].nil? || input[:phone_number_country_codes].empty?
          params['phoneNumberCountryCodes'] = input[:phone_number_country_codes].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for PhoneNumberCountryCodes
    class PhoneNumberCountryCodes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PhoneNumberTypes
    class PhoneNumberTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListPhoneNumbersV2
    class ListPhoneNumbersV2
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/phone-number/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['PhoneNumberCountryCodes'] = Builders::PhoneNumberCountryCodes.build(input[:phone_number_country_codes]) unless input[:phone_number_country_codes].nil?
        data['PhoneNumberTypes'] = Builders::PhoneNumberTypes.build(input[:phone_number_types]) unless input[:phone_number_types].nil?
        data['PhoneNumberPrefix'] = input[:phone_number_prefix] unless input[:phone_number_prefix].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPrompts
    class ListPrompts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/prompts-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListQueueQuickConnects
    class ListQueueQuickConnects
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:queue_id].to_s.empty?
          raise ArgumentError, "HTTP label :queue_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s/%<QueueId>s/quick-connects',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QueueId: Hearth::HTTP.uri_escape(input[:queue_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListQueues
    class ListQueues
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:queue_types].nil? || input[:queue_types].empty?
          params['queueTypes'] = input[:queue_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for QueueTypes
    class QueueTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListQuickConnects
    class ListQuickConnects
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/quick-connects/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:quick_connect_types].nil? || input[:quick_connect_types].empty?
          params['QuickConnectTypes'] = input[:quick_connect_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for QuickConnectTypes
    class QuickConnectTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListRoutingProfileQueues
    class ListRoutingProfileQueues
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:routing_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :routing_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles/%<InstanceId>s/%<RoutingProfileId>s/queues',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            RoutingProfileId: Hearth::HTTP.uri_escape(input[:routing_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRoutingProfiles
    class ListRoutingProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSecurityKeys
    class ListSecurityKeys
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/security-keys',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSecurityProfilePermissions
    class ListSecurityProfilePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:security_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles-permissions/%<InstanceId>s/%<SecurityProfileId>s',
            SecurityProfileId: Hearth::HTTP.uri_escape(input[:security_profile_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSecurityProfiles
    class ListSecurityProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
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

    # Operation Builder for ListTaskTemplates
    class ListTaskTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/task/template',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['name'] = input[:name].to_s unless input[:name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListUseCases
    class ListUseCases
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:integration_association_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_association_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/integration-associations/%<IntegrationAssociationId>s/use-cases',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            IntegrationAssociationId: Hearth::HTTP.uri_escape(input[:integration_association_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListUserHierarchyGroups
    class ListUserHierarchyGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user-hierarchy-groups-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutUserStatus
    class PutUserStatus
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users/%<InstanceId>s/%<UserId>s/status',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AgentStatusId'] = input[:agent_status_id] unless input[:agent_status_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReleasePhoneNumber
    class ReleasePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:phone_number_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-number/%<PhoneNumberId>s',
            PhoneNumberId: Hearth::HTTP.uri_escape(input[:phone_number_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ResumeContactRecording
    class ResumeContactRecording
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/resume-recording')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['InitialContactId'] = input[:initial_contact_id] unless input[:initial_contact_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchAvailablePhoneNumbers
    class SearchAvailablePhoneNumbers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/phone-number/search-available')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['PhoneNumberCountryCode'] = input[:phone_number_country_code] unless input[:phone_number_country_code].nil?
        data['PhoneNumberType'] = input[:phone_number_type] unless input[:phone_number_type].nil?
        data['PhoneNumberPrefix'] = input[:phone_number_prefix] unless input[:phone_number_prefix].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchUsers
    class SearchUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/search-users')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SearchFilter'] = Builders::UserSearchFilter.build(input[:search_filter]) unless input[:search_filter].nil?
        data['SearchCriteria'] = Builders::UserSearchCriteria.build(input[:search_criteria]) unless input[:search_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UserSearchCriteria
    class UserSearchCriteria
      def self.build(input)
        data = {}
        data['OrConditions'] = Builders::UserSearchConditionList.build(input[:or_conditions]) unless input[:or_conditions].nil?
        data['AndConditions'] = Builders::UserSearchConditionList.build(input[:and_conditions]) unless input[:and_conditions].nil?
        data['StringCondition'] = Builders::StringCondition.build(input[:string_condition]) unless input[:string_condition].nil?
        data['HierarchyGroupCondition'] = Builders::HierarchyGroupCondition.build(input[:hierarchy_group_condition]) unless input[:hierarchy_group_condition].nil?
        data
      end
    end

    # Structure Builder for HierarchyGroupCondition
    class HierarchyGroupCondition
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data['HierarchyGroupMatchType'] = input[:hierarchy_group_match_type] unless input[:hierarchy_group_match_type].nil?
        data
      end
    end

    # Structure Builder for StringCondition
    class StringCondition
      def self.build(input)
        data = {}
        data['FieldName'] = input[:field_name] unless input[:field_name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['ComparisonType'] = input[:comparison_type] unless input[:comparison_type].nil?
        data
      end
    end

    # List Builder for UserSearchConditionList
    class UserSearchConditionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UserSearchCriteria.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UserSearchFilter
    class UserSearchFilter
      def self.build(input)
        data = {}
        data['TagFilter'] = Builders::ControlPlaneTagFilter.build(input[:tag_filter]) unless input[:tag_filter].nil?
        data
      end
    end

    # Structure Builder for ControlPlaneTagFilter
    class ControlPlaneTagFilter
      def self.build(input)
        data = {}
        data['OrConditions'] = Builders::TagOrConditionList.build(input[:or_conditions]) unless input[:or_conditions].nil?
        data['AndConditions'] = Builders::TagAndConditionList.build(input[:and_conditions]) unless input[:and_conditions].nil?
        data['TagCondition'] = Builders::TagCondition.build(input[:tag_condition]) unless input[:tag_condition].nil?
        data
      end
    end

    # Structure Builder for TagCondition
    class TagCondition
      def self.build(input)
        data = {}
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['TagValue'] = input[:tag_value] unless input[:tag_value].nil?
        data
      end
    end

    # List Builder for TagAndConditionList
    class TagAndConditionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagCondition.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for TagOrConditionList
    class TagOrConditionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagAndConditionList.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchVocabularies
    class SearchVocabularies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/vocabulary-summary/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['NameStartsWith'] = input[:name_starts_with] unless input[:name_starts_with].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartChatContact
    class StartChatContact
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/contact/chat')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactFlowId'] = input[:contact_flow_id] unless input[:contact_flow_id].nil?
        data['Attributes'] = Builders::Attributes.build(input[:attributes]) unless input[:attributes].nil?
        data['ParticipantDetails'] = Builders::ParticipantDetails.build(input[:participant_details]) unless input[:participant_details].nil?
        data['InitialMessage'] = Builders::ChatMessage.build(input[:initial_message]) unless input[:initial_message].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['ChatDurationInMinutes'] = input[:chat_duration_in_minutes] unless input[:chat_duration_in_minutes].nil?
        data['SupportedMessagingContentTypes'] = Builders::SupportedMessagingContentTypes.build(input[:supported_messaging_content_types]) unless input[:supported_messaging_content_types].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SupportedMessagingContentTypes
    class SupportedMessagingContentTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ChatMessage
    class ChatMessage
      def self.build(input)
        data = {}
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data
      end
    end

    # Structure Builder for ParticipantDetails
    class ParticipantDetails
      def self.build(input)
        data = {}
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data
      end
    end

    # Map Builder for Attributes
    class Attributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for StartContactRecording
    class StartContactRecording
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/start-recording')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['InitialContactId'] = input[:initial_contact_id] unless input[:initial_contact_id].nil?
        data['VoiceRecordingConfiguration'] = Builders::VoiceRecordingConfiguration.build(input[:voice_recording_configuration]) unless input[:voice_recording_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VoiceRecordingConfiguration
    class VoiceRecordingConfiguration
      def self.build(input)
        data = {}
        data['VoiceRecordingTrack'] = input[:voice_recording_track] unless input[:voice_recording_track].nil?
        data
      end
    end

    # Operation Builder for StartContactStreaming
    class StartContactStreaming
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/start-streaming')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['ChatStreamingConfiguration'] = Builders::ChatStreamingConfiguration.build(input[:chat_streaming_configuration]) unless input[:chat_streaming_configuration].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ChatStreamingConfiguration
    class ChatStreamingConfiguration
      def self.build(input)
        data = {}
        data['StreamingEndpointArn'] = input[:streaming_endpoint_arn] unless input[:streaming_endpoint_arn].nil?
        data
      end
    end

    # Operation Builder for StartOutboundVoiceContact
    class StartOutboundVoiceContact
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/contact/outbound-voice')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DestinationPhoneNumber'] = input[:destination_phone_number] unless input[:destination_phone_number].nil?
        data['ContactFlowId'] = input[:contact_flow_id] unless input[:contact_flow_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['SourcePhoneNumber'] = input[:source_phone_number] unless input[:source_phone_number].nil?
        data['QueueId'] = input[:queue_id] unless input[:queue_id].nil?
        data['Attributes'] = Builders::Attributes.build(input[:attributes]) unless input[:attributes].nil?
        data['AnswerMachineDetectionConfig'] = Builders::AnswerMachineDetectionConfig.build(input[:answer_machine_detection_config]) unless input[:answer_machine_detection_config].nil?
        data['CampaignId'] = input[:campaign_id] unless input[:campaign_id].nil?
        data['TrafficType'] = input[:traffic_type] unless input[:traffic_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AnswerMachineDetectionConfig
    class AnswerMachineDetectionConfig
      def self.build(input)
        data = {}
        data['EnableAnswerMachineDetection'] = input[:enable_answer_machine_detection] unless input[:enable_answer_machine_detection].nil?
        data['AwaitAnswerMachinePrompt'] = input[:await_answer_machine_prompt] unless input[:await_answer_machine_prompt].nil?
        data
      end
    end

    # Operation Builder for StartTaskContact
    class StartTaskContact
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/contact/task')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['PreviousContactId'] = input[:previous_contact_id] unless input[:previous_contact_id].nil?
        data['ContactFlowId'] = input[:contact_flow_id] unless input[:contact_flow_id].nil?
        data['Attributes'] = Builders::Attributes.build(input[:attributes]) unless input[:attributes].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['References'] = Builders::ContactReferences.build(input[:references]) unless input[:references].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['ScheduledTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:scheduled_time]).to_i unless input[:scheduled_time].nil?
        data['TaskTemplateId'] = input[:task_template_id] unless input[:task_template_id].nil?
        data['QuickConnectId'] = input[:quick_connect_id] unless input[:quick_connect_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ContactReferences
    class ContactReferences
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Reference.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Reference
    class Reference
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for StopContact
    class StopContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/stop')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopContactRecording
    class StopContactRecording
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/stop-recording')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['InitialContactId'] = input[:initial_contact_id] unless input[:initial_contact_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopContactStreaming
    class StopContactStreaming
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/stop-streaming')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['StreamingId'] = input[:streaming_id] unless input[:streaming_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SuspendContactRecording
    class SuspendContactRecording
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/suspend-recording')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['InitialContactId'] = input[:initial_contact_id] unless input[:initial_contact_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for TransferContact
    class TransferContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/transfer')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['QueueId'] = input[:queue_id] unless input[:queue_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['ContactFlowId'] = input[:contact_flow_id] unless input[:contact_flow_id].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
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

    # Operation Builder for UpdateAgentStatus
    class UpdateAgentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:agent_status_id].to_s.empty?
          raise ArgumentError, "HTTP label :agent_status_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/agent-status/%<InstanceId>s/%<AgentStatusId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            AgentStatusId: Hearth::HTTP.uri_escape(input[:agent_status_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['DisplayOrder'] = input[:display_order] unless input[:display_order].nil?
        data['ResetOrderNumber'] = input[:reset_order_number] unless input[:reset_order_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContact
    class UpdateContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contacts/%<InstanceId>s/%<ContactId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactId: Hearth::HTTP.uri_escape(input[:contact_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['References'] = Builders::ContactReferences.build(input[:references]) unless input[:references].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContactAttributes
    class UpdateContactAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/attributes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InitialContactId'] = input[:initial_contact_id] unless input[:initial_contact_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Attributes'] = Builders::Attributes.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContactFlowContent
    class UpdateContactFlowContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_flow_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_flow_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flows/%<InstanceId>s/%<ContactFlowId>s/content',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactFlowId: Hearth::HTTP.uri_escape(input[:contact_flow_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContactFlowMetadata
    class UpdateContactFlowMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_flow_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_flow_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flows/%<InstanceId>s/%<ContactFlowId>s/metadata',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactFlowId: Hearth::HTTP.uri_escape(input[:contact_flow_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ContactFlowState'] = input[:contact_flow_state] unless input[:contact_flow_state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContactFlowModuleContent
    class UpdateContactFlowModuleContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_flow_module_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_flow_module_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flow-modules/%<InstanceId>s/%<ContactFlowModuleId>s/content',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactFlowModuleId: Hearth::HTTP.uri_escape(input[:contact_flow_module_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContactFlowModuleMetadata
    class UpdateContactFlowModuleMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_flow_module_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_flow_module_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flow-modules/%<InstanceId>s/%<ContactFlowModuleId>s/metadata',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactFlowModuleId: Hearth::HTTP.uri_escape(input[:contact_flow_module_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['State'] = input[:state] unless input[:state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContactFlowName
    class UpdateContactFlowName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:contact_flow_id].to_s.empty?
          raise ArgumentError, "HTTP label :contact_flow_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/contact-flows/%<InstanceId>s/%<ContactFlowId>s/name',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            ContactFlowId: Hearth::HTTP.uri_escape(input[:contact_flow_id].to_s)
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

    # Operation Builder for UpdateContactSchedule
    class UpdateContactSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/contact/schedule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['ScheduledTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:scheduled_time]).to_i unless input[:scheduled_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateHoursOfOperation
    class UpdateHoursOfOperation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:hours_of_operation_id].to_s.empty?
          raise ArgumentError, "HTTP label :hours_of_operation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/hours-of-operations/%<InstanceId>s/%<HoursOfOperationId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            HoursOfOperationId: Hearth::HTTP.uri_escape(input[:hours_of_operation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['TimeZone'] = input[:time_zone] unless input[:time_zone].nil?
        data['Config'] = Builders::HoursOfOperationConfigList.build(input[:config]) unless input[:config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateInstanceAttribute
    class UpdateInstanceAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:attribute_type].to_s.empty?
          raise ArgumentError, "HTTP label :attribute_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/attribute/%<AttributeType>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            AttributeType: Hearth::HTTP.uri_escape(input[:attribute_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateInstanceStorageConfig
    class UpdateInstanceStorageConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:association_id].to_s.empty?
          raise ArgumentError, "HTTP label :association_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/storage-config/%<AssociationId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            AssociationId: Hearth::HTTP.uri_escape(input[:association_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StorageConfig'] = Builders::InstanceStorageConfig.build(input[:storage_config]) unless input[:storage_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePhoneNumber
    class UpdatePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:phone_number_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-number/%<PhoneNumberId>s',
            PhoneNumberId: Hearth::HTTP.uri_escape(input[:phone_number_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateQueueHoursOfOperation
    class UpdateQueueHoursOfOperation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:queue_id].to_s.empty?
          raise ArgumentError, "HTTP label :queue_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s/%<QueueId>s/hours-of-operation',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QueueId: Hearth::HTTP.uri_escape(input[:queue_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['HoursOfOperationId'] = input[:hours_of_operation_id] unless input[:hours_of_operation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateQueueMaxContacts
    class UpdateQueueMaxContacts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:queue_id].to_s.empty?
          raise ArgumentError, "HTTP label :queue_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s/%<QueueId>s/max-contacts',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QueueId: Hearth::HTTP.uri_escape(input[:queue_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxContacts'] = input[:max_contacts] unless input[:max_contacts].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateQueueName
    class UpdateQueueName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:queue_id].to_s.empty?
          raise ArgumentError, "HTTP label :queue_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s/%<QueueId>s/name',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QueueId: Hearth::HTTP.uri_escape(input[:queue_id].to_s)
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

    # Operation Builder for UpdateQueueOutboundCallerConfig
    class UpdateQueueOutboundCallerConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:queue_id].to_s.empty?
          raise ArgumentError, "HTTP label :queue_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s/%<QueueId>s/outbound-caller-config',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QueueId: Hearth::HTTP.uri_escape(input[:queue_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['OutboundCallerConfig'] = Builders::OutboundCallerConfig.build(input[:outbound_caller_config]) unless input[:outbound_caller_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateQueueStatus
    class UpdateQueueStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:queue_id].to_s.empty?
          raise ArgumentError, "HTTP label :queue_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/queues/%<InstanceId>s/%<QueueId>s/status',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QueueId: Hearth::HTTP.uri_escape(input[:queue_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateQuickConnectConfig
    class UpdateQuickConnectConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:quick_connect_id].to_s.empty?
          raise ArgumentError, "HTTP label :quick_connect_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/quick-connects/%<InstanceId>s/%<QuickConnectId>s/config',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QuickConnectId: Hearth::HTTP.uri_escape(input[:quick_connect_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QuickConnectConfig'] = Builders::QuickConnectConfig.build(input[:quick_connect_config]) unless input[:quick_connect_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateQuickConnectName
    class UpdateQuickConnectName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:quick_connect_id].to_s.empty?
          raise ArgumentError, "HTTP label :quick_connect_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/quick-connects/%<InstanceId>s/%<QuickConnectId>s/name',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            QuickConnectId: Hearth::HTTP.uri_escape(input[:quick_connect_id].to_s)
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

    # Operation Builder for UpdateRoutingProfileConcurrency
    class UpdateRoutingProfileConcurrency
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:routing_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :routing_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles/%<InstanceId>s/%<RoutingProfileId>s/concurrency',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            RoutingProfileId: Hearth::HTTP.uri_escape(input[:routing_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MediaConcurrencies'] = Builders::MediaConcurrencies.build(input[:media_concurrencies]) unless input[:media_concurrencies].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRoutingProfileDefaultOutboundQueue
    class UpdateRoutingProfileDefaultOutboundQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:routing_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :routing_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles/%<InstanceId>s/%<RoutingProfileId>s/default-outbound-queue',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            RoutingProfileId: Hearth::HTTP.uri_escape(input[:routing_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DefaultOutboundQueueId'] = input[:default_outbound_queue_id] unless input[:default_outbound_queue_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRoutingProfileName
    class UpdateRoutingProfileName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:routing_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :routing_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles/%<InstanceId>s/%<RoutingProfileId>s/name',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            RoutingProfileId: Hearth::HTTP.uri_escape(input[:routing_profile_id].to_s)
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

    # Operation Builder for UpdateRoutingProfileQueues
    class UpdateRoutingProfileQueues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        if input[:routing_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :routing_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routing-profiles/%<InstanceId>s/%<RoutingProfileId>s/queues',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s),
            RoutingProfileId: Hearth::HTTP.uri_escape(input[:routing_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QueueConfigs'] = Builders::RoutingProfileQueueConfigList.build(input[:queue_configs]) unless input[:queue_configs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSecurityProfile
    class UpdateSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:security_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<InstanceId>s/%<SecurityProfileId>s',
            SecurityProfileId: Hearth::HTTP.uri_escape(input[:security_profile_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Permissions'] = Builders::PermissionsList.build(input[:permissions]) unless input[:permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTaskTemplate
    class UpdateTaskTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:task_template_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_template_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/instance/%<InstanceId>s/task/template/%<TaskTemplateId>s',
            TaskTemplateId: Hearth::HTTP.uri_escape(input[:task_template_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ContactFlowId'] = input[:contact_flow_id] unless input[:contact_flow_id].nil?
        data['Constraints'] = Builders::TaskTemplateConstraints.build(input[:constraints]) unless input[:constraints].nil?
        data['Defaults'] = Builders::TaskTemplateDefaults.build(input[:defaults]) unless input[:defaults].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Fields'] = Builders::TaskTemplateFields.build(input[:fields]) unless input[:fields].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserHierarchy
    class UpdateUserHierarchy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users/%<InstanceId>s/%<UserId>s/hierarchy',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['HierarchyGroupId'] = input[:hierarchy_group_id] unless input[:hierarchy_group_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserHierarchyGroupName
    class UpdateUserHierarchyGroupName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hierarchy_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :hierarchy_group_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user-hierarchy-groups/%<InstanceId>s/%<HierarchyGroupId>s/name',
            HierarchyGroupId: Hearth::HTTP.uri_escape(input[:hierarchy_group_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserHierarchyStructure
    class UpdateUserHierarchyStructure
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user-hierarchy-structure/%<InstanceId>s',
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['HierarchyStructure'] = Builders::HierarchyStructureUpdate.build(input[:hierarchy_structure]) unless input[:hierarchy_structure].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HierarchyStructureUpdate
    class HierarchyStructureUpdate
      def self.build(input)
        data = {}
        data['LevelOne'] = Builders::HierarchyLevelUpdate.build(input[:level_one]) unless input[:level_one].nil?
        data['LevelTwo'] = Builders::HierarchyLevelUpdate.build(input[:level_two]) unless input[:level_two].nil?
        data['LevelThree'] = Builders::HierarchyLevelUpdate.build(input[:level_three]) unless input[:level_three].nil?
        data['LevelFour'] = Builders::HierarchyLevelUpdate.build(input[:level_four]) unless input[:level_four].nil?
        data['LevelFive'] = Builders::HierarchyLevelUpdate.build(input[:level_five]) unless input[:level_five].nil?
        data
      end
    end

    # Structure Builder for HierarchyLevelUpdate
    class HierarchyLevelUpdate
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Operation Builder for UpdateUserIdentityInfo
    class UpdateUserIdentityInfo
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users/%<InstanceId>s/%<UserId>s/identity-info',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IdentityInfo'] = Builders::UserIdentityInfo.build(input[:identity_info]) unless input[:identity_info].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserPhoneConfig
    class UpdateUserPhoneConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users/%<InstanceId>s/%<UserId>s/phone-config',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PhoneConfig'] = Builders::UserPhoneConfig.build(input[:phone_config]) unless input[:phone_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserRoutingProfile
    class UpdateUserRoutingProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users/%<InstanceId>s/%<UserId>s/routing-profile',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RoutingProfileId'] = input[:routing_profile_id] unless input[:routing_profile_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserSecurityProfiles
    class UpdateUserSecurityProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        if input[:instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/users/%<InstanceId>s/%<UserId>s/security-profiles',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s),
            InstanceId: Hearth::HTTP.uri_escape(input[:instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SecurityProfileIds'] = Builders::SecurityProfileIds.build(input[:security_profile_ids]) unless input[:security_profile_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
