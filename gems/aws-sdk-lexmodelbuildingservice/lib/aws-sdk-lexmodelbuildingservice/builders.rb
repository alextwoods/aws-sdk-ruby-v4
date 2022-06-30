# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LexModelBuildingService
  module Builders

    # Operation Builder for CreateBotVersion
    class CreateBotVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<name>s/versions',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['checksum'] = input[:checksum] unless input[:checksum].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateIntentVersion
    class CreateIntentVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/intents/%<name>s/versions',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['checksum'] = input[:checksum] unless input[:checksum].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSlotTypeVersion
    class CreateSlotTypeVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/slottypes/%<name>s/versions',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['checksum'] = input[:checksum] unless input[:checksum].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBot
    class DeleteBot
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBotAlias
    class DeleteBotAlias
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botName>s/aliases/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBotChannelAssociation
    class DeleteBotChannelAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        if input[:bot_alias].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botName>s/aliases/%<botAlias>s/channels/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s),
            botAlias: Hearth::HTTP.uri_escape(input[:bot_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBotVersion
    class DeleteBotVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<name>s/versions/%<version>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIntent
    class DeleteIntent
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/intents/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIntentVersion
    class DeleteIntentVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/intents/%<name>s/versions/%<version>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSlotType
    class DeleteSlotType
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/slottypes/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSlotTypeVersion
    class DeleteSlotTypeVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/slottypes/%<name>s/version/%<version>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUtterances
    class DeleteUtterances
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botName>s/utterances/%<userId>s',
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s),
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBot
    class GetBot
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:version_or_alias].to_s.empty?
          raise ArgumentError, "HTTP label :version_or_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<name>s/versions/%<versionOrAlias>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            versionOrAlias: Hearth::HTTP.uri_escape(input[:version_or_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBotAlias
    class GetBotAlias
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botName>s/aliases/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBotAliases
    class GetBotAliases
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botName>s/aliases',
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nameContains'] = input[:name_contains].to_s unless input[:name_contains].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBotChannelAssociation
    class GetBotChannelAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        if input[:bot_alias].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botName>s/aliases/%<botAlias>s/channels/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s),
            botAlias: Hearth::HTTP.uri_escape(input[:bot_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBotChannelAssociations
    class GetBotChannelAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        if input[:bot_alias].to_s.empty?
          raise ArgumentError, "HTTP label :bot_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botName>s/aliases/%<botAlias>s/channels',
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s),
            botAlias: Hearth::HTTP.uri_escape(input[:bot_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nameContains'] = input[:name_contains].to_s unless input[:name_contains].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBotVersions
    class GetBotVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<name>s/versions',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBots
    class GetBots
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/bots')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nameContains'] = input[:name_contains].to_s unless input[:name_contains].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBuiltinIntent
    class GetBuiltinIntent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:signature].to_s.empty?
          raise ArgumentError, "HTTP label :signature cannot be nil or empty."
        end
        http_req.append_path(format(
            '/builtins/intents/%<signature>s',
            signature: Hearth::HTTP.uri_escape(input[:signature].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBuiltinIntents
    class GetBuiltinIntents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/builtins/intents')
        params = Hearth::Query::ParamList.new
        params['locale'] = input[:locale].to_s unless input[:locale].nil?
        params['signatureContains'] = input[:signature_contains].to_s unless input[:signature_contains].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBuiltinSlotTypes
    class GetBuiltinSlotTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/builtins/slottypes')
        params = Hearth::Query::ParamList.new
        params['locale'] = input[:locale].to_s unless input[:locale].nil?
        params['signatureContains'] = input[:signature_contains].to_s unless input[:signature_contains].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetExport
    class GetExport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/exports')
        params = Hearth::Query::ParamList.new
        params['name'] = input[:name].to_s unless input[:name].nil?
        params['version'] = input[:version].to_s unless input[:version].nil?
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['exportType'] = input[:export_type].to_s unless input[:export_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetImport
    class GetImport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:import_id].to_s.empty?
          raise ArgumentError, "HTTP label :import_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/imports/%<importId>s',
            importId: Hearth::HTTP.uri_escape(input[:import_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntent
    class GetIntent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/intents/%<name>s/versions/%<version>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntentVersions
    class GetIntentVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/intents/%<name>s/versions',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntents
    class GetIntents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/intents')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nameContains'] = input[:name_contains].to_s unless input[:name_contains].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMigration
    class GetMigration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:migration_id].to_s.empty?
          raise ArgumentError, "HTTP label :migration_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/migrations/%<migrationId>s',
            migrationId: Hearth::HTTP.uri_escape(input[:migration_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMigrations
    class GetMigrations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/migrations')
        params = Hearth::Query::ParamList.new
        params['sortByAttribute'] = input[:sort_by_attribute].to_s unless input[:sort_by_attribute].nil?
        params['sortByOrder'] = input[:sort_by_order].to_s unless input[:sort_by_order].nil?
        params['v1BotNameContains'] = input[:v1_bot_name_contains].to_s unless input[:v1_bot_name_contains].nil?
        params['migrationStatusEquals'] = input[:migration_status_equals].to_s unless input[:migration_status_equals].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSlotType
    class GetSlotType
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/slottypes/%<name>s/versions/%<version>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSlotTypeVersions
    class GetSlotTypeVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/slottypes/%<name>s/versions',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSlotTypes
    class GetSlotTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/slottypes')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nameContains'] = input[:name_contains].to_s unless input[:name_contains].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUtterancesView
    class GetUtterancesView
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('view=aggregation').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botName>s/utterances',
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:bot_versions].nil? || input[:bot_versions].empty?
          params['bot_versions'] = input[:bot_versions].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['status_type'] = input[:status_type].to_s unless input[:status_type].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for BotVersions
    class BotVersions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
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

    # Operation Builder for PutBot
    class PutBot
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<name>s/versions/$LATEST',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['intents'] = Builders::IntentList.build(input[:intents]) unless input[:intents].nil?
        data['enableModelImprovements'] = input[:enable_model_improvements] unless input[:enable_model_improvements].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(input[:nlu_intent_confidence_threshold]) unless input[:nlu_intent_confidence_threshold].nil?
        data['clarificationPrompt'] = Builders::Prompt.build(input[:clarification_prompt]) unless input[:clarification_prompt].nil?
        data['abortStatement'] = Builders::Statement.build(input[:abort_statement]) unless input[:abort_statement].nil?
        data['idleSessionTTLInSeconds'] = input[:idle_session_ttl_in_seconds] unless input[:idle_session_ttl_in_seconds].nil?
        data['voiceId'] = input[:voice_id] unless input[:voice_id].nil?
        data['checksum'] = input[:checksum] unless input[:checksum].nil?
        data['processBehavior'] = input[:process_behavior] unless input[:process_behavior].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        data['childDirected'] = input[:child_directed] unless input[:child_directed].nil?
        data['detectSentiment'] = input[:detect_sentiment] unless input[:detect_sentiment].nil?
        data['createVersion'] = input[:create_version] unless input[:create_version].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
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
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for Statement
    class Statement
      def self.build(input)
        data = {}
        data['messages'] = Builders::MessageList.build(input[:messages]) unless input[:messages].nil?
        data['responseCard'] = input[:response_card] unless input[:response_card].nil?
        data
      end
    end

    # List Builder for MessageList
    class MessageList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Message.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Message
    class Message
      def self.build(input)
        data = {}
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data['content'] = input[:content] unless input[:content].nil?
        data['groupNumber'] = input[:group_number] unless input[:group_number].nil?
        data
      end
    end

    # Structure Builder for Prompt
    class Prompt
      def self.build(input)
        data = {}
        data['messages'] = Builders::MessageList.build(input[:messages]) unless input[:messages].nil?
        data['maxAttempts'] = input[:max_attempts] unless input[:max_attempts].nil?
        data['responseCard'] = input[:response_card] unless input[:response_card].nil?
        data
      end
    end

    # List Builder for IntentList
    class IntentList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Intent.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Intent
    class Intent
      def self.build(input)
        data = {}
        data['intentName'] = input[:intent_name] unless input[:intent_name].nil?
        data['intentVersion'] = input[:intent_version] unless input[:intent_version].nil?
        data
      end
    end

    # Operation Builder for PutBotAlias
    class PutBotAlias
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:bot_name].to_s.empty?
          raise ArgumentError, "HTTP label :bot_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/bots/%<botName>s/aliases/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s),
            botName: Hearth::HTTP.uri_escape(input[:bot_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['botVersion'] = input[:bot_version] unless input[:bot_version].nil?
        data['checksum'] = input[:checksum] unless input[:checksum].nil?
        data['conversationLogs'] = Builders::ConversationLogsRequest.build(input[:conversation_logs]) unless input[:conversation_logs].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConversationLogsRequest
    class ConversationLogsRequest
      def self.build(input)
        data = {}
        data['logSettings'] = Builders::LogSettingsRequestList.build(input[:log_settings]) unless input[:log_settings].nil?
        data['iamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data
      end
    end

    # List Builder for LogSettingsRequestList
    class LogSettingsRequestList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LogSettingsRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LogSettingsRequest
    class LogSettingsRequest
      def self.build(input)
        data = {}
        data['logType'] = input[:log_type] unless input[:log_type].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Operation Builder for PutIntent
    class PutIntent
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/intents/%<name>s/versions/$LATEST',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['slots'] = Builders::SlotList.build(input[:slots]) unless input[:slots].nil?
        data['sampleUtterances'] = Builders::IntentUtteranceList.build(input[:sample_utterances]) unless input[:sample_utterances].nil?
        data['confirmationPrompt'] = Builders::Prompt.build(input[:confirmation_prompt]) unless input[:confirmation_prompt].nil?
        data['rejectionStatement'] = Builders::Statement.build(input[:rejection_statement]) unless input[:rejection_statement].nil?
        data['followUpPrompt'] = Builders::FollowUpPrompt.build(input[:follow_up_prompt]) unless input[:follow_up_prompt].nil?
        data['conclusionStatement'] = Builders::Statement.build(input[:conclusion_statement]) unless input[:conclusion_statement].nil?
        data['dialogCodeHook'] = Builders::CodeHook.build(input[:dialog_code_hook]) unless input[:dialog_code_hook].nil?
        data['fulfillmentActivity'] = Builders::FulfillmentActivity.build(input[:fulfillment_activity]) unless input[:fulfillment_activity].nil?
        data['parentIntentSignature'] = input[:parent_intent_signature] unless input[:parent_intent_signature].nil?
        data['checksum'] = input[:checksum] unless input[:checksum].nil?
        data['createVersion'] = input[:create_version] unless input[:create_version].nil?
        data['kendraConfiguration'] = Builders::KendraConfiguration.build(input[:kendra_configuration]) unless input[:kendra_configuration].nil?
        data['inputContexts'] = Builders::InputContextList.build(input[:input_contexts]) unless input[:input_contexts].nil?
        data['outputContexts'] = Builders::OutputContextList.build(input[:output_contexts]) unless input[:output_contexts].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OutputContextList
    class OutputContextList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OutputContext.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputContext
    class OutputContext
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['timeToLiveInSeconds'] = input[:time_to_live_in_seconds] unless input[:time_to_live_in_seconds].nil?
        data['turnsToLive'] = input[:turns_to_live] unless input[:turns_to_live].nil?
        data
      end
    end

    # List Builder for InputContextList
    class InputContextList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputContext.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputContext
    class InputContext
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for KendraConfiguration
    class KendraConfiguration
      def self.build(input)
        data = {}
        data['kendraIndex'] = input[:kendra_index] unless input[:kendra_index].nil?
        data['queryFilterString'] = input[:query_filter_string] unless input[:query_filter_string].nil?
        data['role'] = input[:role] unless input[:role].nil?
        data
      end
    end

    # Structure Builder for FulfillmentActivity
    class FulfillmentActivity
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['codeHook'] = Builders::CodeHook.build(input[:code_hook]) unless input[:code_hook].nil?
        data
      end
    end

    # Structure Builder for CodeHook
    class CodeHook
      def self.build(input)
        data = {}
        data['uri'] = input[:uri] unless input[:uri].nil?
        data['messageVersion'] = input[:message_version] unless input[:message_version].nil?
        data
      end
    end

    # Structure Builder for FollowUpPrompt
    class FollowUpPrompt
      def self.build(input)
        data = {}
        data['prompt'] = Builders::Prompt.build(input[:prompt]) unless input[:prompt].nil?
        data['rejectionStatement'] = Builders::Statement.build(input[:rejection_statement]) unless input[:rejection_statement].nil?
        data
      end
    end

    # List Builder for IntentUtteranceList
    class IntentUtteranceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SlotList
    class SlotList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Slot.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Slot
    class Slot
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['slotConstraint'] = input[:slot_constraint] unless input[:slot_constraint].nil?
        data['slotType'] = input[:slot_type] unless input[:slot_type].nil?
        data['slotTypeVersion'] = input[:slot_type_version] unless input[:slot_type_version].nil?
        data['valueElicitationPrompt'] = Builders::Prompt.build(input[:value_elicitation_prompt]) unless input[:value_elicitation_prompt].nil?
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['sampleUtterances'] = Builders::SlotUtteranceList.build(input[:sample_utterances]) unless input[:sample_utterances].nil?
        data['responseCard'] = input[:response_card] unless input[:response_card].nil?
        data['obfuscationSetting'] = input[:obfuscation_setting] unless input[:obfuscation_setting].nil?
        data['defaultValueSpec'] = Builders::SlotDefaultValueSpec.build(input[:default_value_spec]) unless input[:default_value_spec].nil?
        data
      end
    end

    # Structure Builder for SlotDefaultValueSpec
    class SlotDefaultValueSpec
      def self.build(input)
        data = {}
        data['defaultValueList'] = Builders::SlotDefaultValueList.build(input[:default_value_list]) unless input[:default_value_list].nil?
        data
      end
    end

    # List Builder for SlotDefaultValueList
    class SlotDefaultValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SlotDefaultValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SlotDefaultValue
    class SlotDefaultValue
      def self.build(input)
        data = {}
        data['defaultValue'] = input[:default_value] unless input[:default_value].nil?
        data
      end
    end

    # List Builder for SlotUtteranceList
    class SlotUtteranceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutSlotType
    class PutSlotType
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/slottypes/%<name>s/versions/$LATEST',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['enumerationValues'] = Builders::EnumerationValues.build(input[:enumeration_values]) unless input[:enumeration_values].nil?
        data['checksum'] = input[:checksum] unless input[:checksum].nil?
        data['valueSelectionStrategy'] = input[:value_selection_strategy] unless input[:value_selection_strategy].nil?
        data['createVersion'] = input[:create_version] unless input[:create_version].nil?
        data['parentSlotTypeSignature'] = input[:parent_slot_type_signature] unless input[:parent_slot_type_signature].nil?
        data['slotTypeConfigurations'] = Builders::SlotTypeConfigurations.build(input[:slot_type_configurations]) unless input[:slot_type_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SlotTypeConfigurations
    class SlotTypeConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SlotTypeConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SlotTypeConfiguration
    class SlotTypeConfiguration
      def self.build(input)
        data = {}
        data['regexConfiguration'] = Builders::SlotTypeRegexConfiguration.build(input[:regex_configuration]) unless input[:regex_configuration].nil?
        data
      end
    end

    # Structure Builder for SlotTypeRegexConfiguration
    class SlotTypeRegexConfiguration
      def self.build(input)
        data = {}
        data['pattern'] = input[:pattern] unless input[:pattern].nil?
        data
      end
    end

    # List Builder for EnumerationValues
    class EnumerationValues
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EnumerationValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EnumerationValue
    class EnumerationValue
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data['synonyms'] = Builders::SynonymList.build(input[:synonyms]) unless input[:synonyms].nil?
        data
      end
    end

    # List Builder for SynonymList
    class SynonymList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartImport
    class StartImport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/imports')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['payload'] = Base64::encode64(input[:payload]).strip unless input[:payload].nil?
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['mergeStrategy'] = input[:merge_strategy] unless input[:merge_strategy].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartMigration
    class StartMigration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/migrations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['v1BotName'] = input[:v1_bot_name] unless input[:v1_bot_name].nil?
        data['v1BotVersion'] = input[:v1_bot_version] unless input[:v1_bot_version].nil?
        data['v2BotName'] = input[:v2_bot_name] unless input[:v2_bot_name].nil?
        data['v2BotRole'] = input[:v2_bot_role] unless input[:v2_bot_role].nil?
        data['migrationStrategy'] = input[:migration_strategy] unless input[:migration_strategy].nil?
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
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
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
  end
end
