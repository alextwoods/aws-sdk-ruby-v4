# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GameSparks
  module Parsers

    # Operation Parser for CreateGame
    class CreateGame
      def self.parse(http_resp)
        data = Types::CreateGameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.game = (GameDetails.parse(map['Game']) unless map['Game'].nil?)
        data
      end
    end

    class GameDetails
      def self.parse(map)
        data = Types::GameDetails.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.created = Time.parse(map['Created']) if map['Created']
        data.last_updated = Time.parse(map['LastUpdated']) if map['LastUpdated']
        data.state = map['State']
        data.enable_termination_protection = map['EnableTerminationProtection']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateSnapshot
    class CreateSnapshot
      def self.parse(http_resp)
        data = Types::CreateSnapshotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.snapshot = (SnapshotDetails.parse(map['Snapshot']) unless map['Snapshot'].nil?)
        data
      end
    end

    class SnapshotDetails
      def self.parse(map)
        data = Types::SnapshotDetails.new
        data.id = map['Id']
        data.description = map['Description']
        data.sections = (Sections.parse(map['Sections']) unless map['Sections'].nil?)
        data.created = Time.parse(map['Created']) if map['Created']
        data.last_updated = Time.parse(map['LastUpdated']) if map['LastUpdated']
        return data
      end
    end

    class Sections
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Section.parse(value) unless value.nil?
        end
        data
      end
    end

    class Section
      def self.parse(map)
        data = Types::Section.new
        data.name = map['Name']
        data.size = map['Size']
        data.attributes = map['Attributes']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateStage
    class CreateStage
      def self.parse(http_resp)
        data = Types::CreateStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stage = (StageDetails.parse(map['Stage']) unless map['Stage'].nil?)
        data
      end
    end

    class StageDetails
      def self.parse(map)
        data = Types::StageDetails.new
        data.name = map['Name']
        data.game_key = map['GameKey']
        data.arn = map['Arn']
        data.role = map['Role']
        data.description = map['Description']
        data.created = Time.parse(map['Created']) if map['Created']
        data.last_updated = Time.parse(map['LastUpdated']) if map['LastUpdated']
        data.state = map['State']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.log_group = map['LogGroup']
        return data
      end
    end

    # Operation Parser for DeleteGame
    class DeleteGame
      def self.parse(http_resp)
        data = Types::DeleteGameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteStage
    class DeleteStage
      def self.parse(http_resp)
        data = Types::DeleteStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisconnectPlayer
    class DisconnectPlayer
      def self.parse(http_resp)
        data = Types::DisconnectPlayerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.disconnect_successes = (ConnectionIdList.parse(map['DisconnectSuccesses']) unless map['DisconnectSuccesses'].nil?)
        data.disconnect_failures = (ConnectionIdList.parse(map['DisconnectFailures']) unless map['DisconnectFailures'].nil?)
        data
      end
    end

    class ConnectionIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ExportSnapshot
    class ExportSnapshot
      def self.parse(http_resp)
        data = Types::ExportSnapshotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.s3_url = map['S3Url']
        data
      end
    end

    # Operation Parser for GetExtension
    class GetExtension
      def self.parse(http_resp)
        data = Types::GetExtensionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.extension = (ExtensionDetails.parse(map['Extension']) unless map['Extension'].nil?)
        data
      end
    end

    class ExtensionDetails
      def self.parse(map)
        data = Types::ExtensionDetails.new
        data.namespace = map['Namespace']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for GetExtensionVersion
    class GetExtensionVersion
      def self.parse(http_resp)
        data = Types::GetExtensionVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.extension_version = (ExtensionVersionDetails.parse(map['ExtensionVersion']) unless map['ExtensionVersion'].nil?)
        data
      end
    end

    class ExtensionVersionDetails
      def self.parse(map)
        data = Types::ExtensionVersionDetails.new
        data.namespace = map['Namespace']
        data.name = map['Name']
        data.schema = map['Schema']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for GetGame
    class GetGame
      def self.parse(http_resp)
        data = Types::GetGameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.game = (GameDetails.parse(map['Game']) unless map['Game'].nil?)
        data
      end
    end

    # Operation Parser for GetGameConfiguration
    class GetGameConfiguration
      def self.parse(http_resp)
        data = Types::GetGameConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.game_configuration = (GameConfigurationDetails.parse(map['GameConfiguration']) unless map['GameConfiguration'].nil?)
        data
      end
    end

    class GameConfigurationDetails
      def self.parse(map)
        data = Types::GameConfigurationDetails.new
        data.sections = (Sections.parse(map['Sections']) unless map['Sections'].nil?)
        data.created = Time.parse(map['Created']) if map['Created']
        data.last_updated = Time.parse(map['LastUpdated']) if map['LastUpdated']
        return data
      end
    end

    # Operation Parser for GetGeneratedCodeJob
    class GetGeneratedCodeJob
      def self.parse(http_resp)
        data = Types::GetGeneratedCodeJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.generated_code_job = (GeneratedCodeJobDetails.parse(map['GeneratedCodeJob']) unless map['GeneratedCodeJob'].nil?)
        data
      end
    end

    class GeneratedCodeJobDetails
      def self.parse(map)
        data = Types::GeneratedCodeJobDetails.new
        data.s3_url = map['S3Url']
        data.status = map['Status']
        data.description = map['Description']
        data.expiration_time = Time.parse(map['ExpirationTime']) if map['ExpirationTime']
        data.generated_code_job_id = map['GeneratedCodeJobId']
        return data
      end
    end

    # Operation Parser for GetPlayerConnectionStatus
    class GetPlayerConnectionStatus
      def self.parse(http_resp)
        data = Types::GetPlayerConnectionStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connections = (ConnectionList.parse(map['Connections']) unless map['Connections'].nil?)
        data
      end
    end

    class ConnectionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Connection.parse(value) unless value.nil?
        end
        data
      end
    end

    class Connection
      def self.parse(map)
        data = Types::Connection.new
        data.id = map['Id']
        data.created = Time.parse(map['Created']) if map['Created']
        return data
      end
    end

    # Operation Parser for GetSnapshot
    class GetSnapshot
      def self.parse(http_resp)
        data = Types::GetSnapshotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.snapshot = (SnapshotDetails.parse(map['Snapshot']) unless map['Snapshot'].nil?)
        data
      end
    end

    # Operation Parser for GetStage
    class GetStage
      def self.parse(http_resp)
        data = Types::GetStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stage = (StageDetails.parse(map['Stage']) unless map['Stage'].nil?)
        data
      end
    end

    # Operation Parser for GetStageDeployment
    class GetStageDeployment
      def self.parse(http_resp)
        data = Types::GetStageDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stage_deployment = (StageDeploymentDetails.parse(map['StageDeployment']) unless map['StageDeployment'].nil?)
        data
      end
    end

    class StageDeploymentDetails
      def self.parse(map)
        data = Types::StageDeploymentDetails.new
        data.deployment_id = map['DeploymentId']
        data.snapshot_id = map['SnapshotId']
        data.deployment_action = map['DeploymentAction']
        data.deployment_state = map['DeploymentState']
        data.created = Time.parse(map['Created']) if map['Created']
        data.last_updated = Time.parse(map['LastUpdated']) if map['LastUpdated']
        data.deployment_result = (DeploymentResult.parse(map['DeploymentResult']) unless map['DeploymentResult'].nil?)
        return data
      end
    end

    class DeploymentResult
      def self.parse(map)
        data = Types::DeploymentResult.new
        data.result_code = map['ResultCode']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for ImportGameConfiguration
    class ImportGameConfiguration
      def self.parse(http_resp)
        data = Types::ImportGameConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.game_configuration = (GameConfigurationDetails.parse(map['GameConfiguration']) unless map['GameConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for ListExtensionVersions
    class ListExtensionVersions
      def self.parse(http_resp)
        data = Types::ListExtensionVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.extension_versions = (ExtensionVersionDetailsList.parse(map['ExtensionVersions']) unless map['ExtensionVersions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ExtensionVersionDetailsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ExtensionVersionDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListExtensions
    class ListExtensions
      def self.parse(http_resp)
        data = Types::ListExtensionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.extensions = (ExtensionDetailsList.parse(map['Extensions']) unless map['Extensions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ExtensionDetailsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ExtensionDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListGames
    class ListGames
      def self.parse(http_resp)
        data = Types::ListGamesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.games = (GameSummaryList.parse(map['Games']) unless map['Games'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GameSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << GameSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class GameSummary
      def self.parse(map)
        data = Types::GameSummary.new
        data.name = map['Name']
        data.description = map['Description']
        data.state = map['State']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListGeneratedCodeJobs
    class ListGeneratedCodeJobs
      def self.parse(http_resp)
        data = Types::ListGeneratedCodeJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.generated_code_jobs = (GeneratedCodeJobDetailsList.parse(map['GeneratedCodeJobs']) unless map['GeneratedCodeJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GeneratedCodeJobDetailsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << GeneratedCodeJobDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListSnapshots
    class ListSnapshots
      def self.parse(http_resp)
        data = Types::ListSnapshotsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.snapshots = (SnapshotSummaryList.parse(map['Snapshots']) unless map['Snapshots'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SnapshotSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SnapshotSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SnapshotSummary
      def self.parse(map)
        data = Types::SnapshotSummary.new
        data.id = map['Id']
        data.description = map['Description']
        data.created = Time.parse(map['Created']) if map['Created']
        data.last_updated = Time.parse(map['LastUpdated']) if map['LastUpdated']
        return data
      end
    end

    # Operation Parser for ListStageDeployments
    class ListStageDeployments
      def self.parse(http_resp)
        data = Types::ListStageDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stage_deployments = (StageDeploymentList.parse(map['StageDeployments']) unless map['StageDeployments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StageDeploymentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << StageDeploymentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class StageDeploymentSummary
      def self.parse(map)
        data = Types::StageDeploymentSummary.new
        data.deployment_id = map['DeploymentId']
        data.snapshot_id = map['SnapshotId']
        data.deployment_action = map['DeploymentAction']
        data.deployment_state = map['DeploymentState']
        data.last_updated = Time.parse(map['LastUpdated']) if map['LastUpdated']
        data.deployment_result = (DeploymentResult.parse(map['DeploymentResult']) unless map['DeploymentResult'].nil?)
        return data
      end
    end

    # Operation Parser for ListStages
    class ListStages
      def self.parse(http_resp)
        data = Types::ListStagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stages = (StageSummaryList.parse(map['Stages']) unless map['Stages'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StageSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << StageSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class StageSummary
      def self.parse(map)
        data = Types::StageSummary.new
        data.name = map['Name']
        data.game_key = map['GameKey']
        data.description = map['Description']
        data.state = map['State']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for StartGeneratedCodeJob
    class StartGeneratedCodeJob
      def self.parse(http_resp)
        data = Types::StartGeneratedCodeJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.generated_code_job_id = map['GeneratedCodeJobId']
        data
      end
    end

    # Operation Parser for StartStageDeployment
    class StartStageDeployment
      def self.parse(http_resp)
        data = Types::StartStageDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stage_deployment = (StageDeploymentDetails.parse(map['StageDeployment']) unless map['StageDeployment'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateGame
    class UpdateGame
      def self.parse(http_resp)
        data = Types::UpdateGameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.game = (GameDetails.parse(map['Game']) unless map['Game'].nil?)
        data
      end
    end

    # Operation Parser for UpdateGameConfiguration
    class UpdateGameConfiguration
      def self.parse(http_resp)
        data = Types::UpdateGameConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.game_configuration = (GameConfigurationDetails.parse(map['GameConfiguration']) unless map['GameConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSnapshot
    class UpdateSnapshot
      def self.parse(http_resp)
        data = Types::UpdateSnapshotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.snapshot = (SnapshotDetails.parse(map['Snapshot']) unless map['Snapshot'].nil?)
        data
      end
    end

    # Operation Parser for UpdateStage
    class UpdateStage
      def self.parse(http_resp)
        data = Types::UpdateStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stage = (StageDetails.parse(map['Stage']) unless map['Stage'].nil?)
        data
      end
    end
  end
end
