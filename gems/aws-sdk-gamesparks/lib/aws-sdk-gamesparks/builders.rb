# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::GameSparks
  module Builders

    # Operation Builder for CreateGame
    class CreateGame
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/game')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GameName'] = input[:game_name] unless input[:game_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for CreateSnapshot
    class CreateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/snapshot',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateStage
    class CreateStage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/stage',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteGame
    class DeleteGame
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteStage
    class DeleteStage
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/stage/%<StageName>s',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisconnectPlayer
    class DisconnectPlayer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:player_id].to_s.empty?
          raise ArgumentError, "HTTP label :player_id cannot be nil or empty."
        end
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/runtime/game/%<GameName>s/stage/%<StageName>s/player/%<PlayerId>s/disconnect',
            PlayerId: Hearth::HTTP.uri_escape(input[:player_id].to_s),
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExportSnapshot
    class ExportSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/snapshot/%<SnapshotId>s/export',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetExtension
    class GetExtension
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/extension/%<Namespace>s/%<Name>s',
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s),
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetExtensionVersion
    class GetExtensionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:extension_version].to_s.empty?
          raise ArgumentError, "HTTP label :extension_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/extension/%<Namespace>s/%<Name>s/version/%<ExtensionVersion>s',
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s),
            Name: Hearth::HTTP.uri_escape(input[:name].to_s),
            ExtensionVersion: Hearth::HTTP.uri_escape(input[:extension_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGame
    class GetGame
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGameConfiguration
    class GetGameConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/configuration',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:sections].nil? || input[:sections].empty?
          params['Sections'] = input[:sections].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for SectionList
    class SectionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetGeneratedCodeJob
    class GetGeneratedCodeJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/snapshot/%<SnapshotId>s/generated-sdk-code-job/%<JobId>s',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s),
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPlayerConnectionStatus
    class GetPlayerConnectionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:player_id].to_s.empty?
          raise ArgumentError, "HTTP label :player_id cannot be nil or empty."
        end
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/runtime/game/%<GameName>s/stage/%<StageName>s/player/%<PlayerId>s/connection',
            PlayerId: Hearth::HTTP.uri_escape(input[:player_id].to_s),
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSnapshot
    class GetSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/snapshot/%<SnapshotId>s',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:sections].nil? || input[:sections].empty?
          params['Sections'] = input[:sections].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStage
    class GetStage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/stage/%<StageName>s',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStageDeployment
    class GetStageDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/stage/%<StageName>s/deployment',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['DeploymentId'] = input[:deployment_id].to_s unless input[:deployment_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ImportGameConfiguration
    class ImportGameConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/configuration',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ImportSource'] = ImportGameConfigurationSource.build(input[:import_source]) unless input[:import_source].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ImportGameConfigurationSource
    class ImportGameConfigurationSource
      def self.build(input)
        data = {}
        data['File'] = ::Base64::encode64(input[:file]).strip unless input[:file].nil?
        data
      end
    end

    # Operation Builder for ListExtensionVersions
    class ListExtensionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/extension/%<Namespace>s/%<Name>s/version',
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s),
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListExtensions
    class ListExtensions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/extension')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGames
    class ListGames
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/game')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGeneratedCodeJobs
    class ListGeneratedCodeJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/snapshot/%<SnapshotId>s/generated-sdk-code-jobs',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSnapshots
    class ListSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/snapshot',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListStageDeployments
    class ListStageDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/stage/%<StageName>s/deployments',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListStages
    class ListStages
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/stage',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartGeneratedCodeJob
    class StartGeneratedCodeJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/snapshot/%<SnapshotId>s/generated-sdk-code-job',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Generator'] = Generator.build(input[:generator]) unless input[:generator].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Generator
    class Generator
      def self.build(input)
        data = {}
        data['TargetPlatform'] = input[:target_platform] unless input[:target_platform].nil?
        data['Language'] = input[:language] unless input[:language].nil?
        data['GameSdkVersion'] = input[:game_sdk_version] unless input[:game_sdk_version].nil?
        data
      end
    end

    # Operation Builder for StartStageDeployment
    class StartStageDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/stage/%<StageName>s/deployment',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # Operation Builder for UpdateGame
    class UpdateGame
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGameConfiguration
    class UpdateGameConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/configuration',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Modifications'] = SectionModificationList.build(input[:modifications]) unless input[:modifications].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SectionModificationList
    class SectionModificationList
      def self.build(input)
        data = []
        input.each do |element|
          data << SectionModification.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SectionModification
    class SectionModification
      def self.build(input)
        data = {}
        data['Section'] = input[:section] unless input[:section].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Operation'] = input[:operation] unless input[:operation].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for UpdateSnapshot
    class UpdateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/snapshot/%<SnapshotId>s',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStage
    class UpdateStage
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:game_name].to_s.empty?
          raise ArgumentError, "HTTP label :game_name cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/game/%<GameName>s/stage/%<StageName>s',
            GameName: Hearth::HTTP.uri_escape(input[:game_name].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Role'] = input[:role] unless input[:role].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
