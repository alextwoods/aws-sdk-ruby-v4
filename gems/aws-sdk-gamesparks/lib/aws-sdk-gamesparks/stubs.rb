# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GameSparks
  module Stubs

    # Operation Stubber for CreateGame
    class CreateGame
      def self.default(visited=[])
        {
          game: GameDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Game'] = Stubs::GameDetails.stub(stub[:game]) unless stub[:game].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GameDetails
    class GameDetails
      def self.default(visited=[])
        return nil if visited.include?('GameDetails')
        visited = visited + ['GameDetails']
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          created: Time.now,
          last_updated: Time.now,
          state: 'state',
          enable_termination_protection: false,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GameDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_date_time(stub[:last_updated]) unless stub[:last_updated].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EnableTerminationProtection'] = stub[:enable_termination_protection] unless stub[:enable_termination_protection].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Operation Stubber for CreateSnapshot
    class CreateSnapshot
      def self.default(visited=[])
        {
          snapshot: SnapshotDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Snapshot'] = Stubs::SnapshotDetails.stub(stub[:snapshot]) unless stub[:snapshot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SnapshotDetails
    class SnapshotDetails
      def self.default(visited=[])
        return nil if visited.include?('SnapshotDetails')
        visited = visited + ['SnapshotDetails']
        {
          id: 'id',
          description: 'description',
          sections: Sections.default(visited),
          created: Time.now,
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SnapshotDetails.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Sections'] = Stubs::Sections.stub(stub[:sections]) unless stub[:sections].nil?
        data['Created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_date_time(stub[:last_updated]) unless stub[:last_updated].nil?
        data
      end
    end

    # Map Stubber for Sections
    class Sections
      def self.default(visited=[])
        return nil if visited.include?('Sections')
        visited = visited + ['Sections']
        {
          test_key: Section.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::Section.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Section
    class Section
      def self.default(visited=[])
        return nil if visited.include?('Section')
        visited = visited + ['Section']
        {
          name: 'name',
          size: 1,
          attributes: nil,
        }
      end

      def self.stub(stub)
        stub ||= Types::Section.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['Attributes'] = stub[:attributes] unless stub[:attributes].nil?
        data
      end
    end

    # Document Type Stubber for Document
    class Document
      def self.default(visited=[])
        return nil if visited.include?('Document')
        visited = visited + ['Document']
        { 'Document' => [0, 1, 2] }
      end

      def self.stub(stub = {})
        stub
      end
    end

    # Operation Stubber for CreateStage
    class CreateStage
      def self.default(visited=[])
        {
          stage: StageDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Stage'] = Stubs::StageDetails.stub(stub[:stage]) unless stub[:stage].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StageDetails
    class StageDetails
      def self.default(visited=[])
        return nil if visited.include?('StageDetails')
        visited = visited + ['StageDetails']
        {
          name: 'name',
          game_key: 'game_key',
          arn: 'arn',
          role: 'role',
          description: 'description',
          created: Time.now,
          last_updated: Time.now,
          state: 'state',
          tags: TagMap.default(visited),
          log_group: 'log_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::StageDetails.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['GameKey'] = stub[:game_key] unless stub[:game_key].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_date_time(stub[:last_updated]) unless stub[:last_updated].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['LogGroup'] = stub[:log_group] unless stub[:log_group].nil?
        data
      end
    end

    # Operation Stubber for DeleteGame
    class DeleteGame
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStage
    class DeleteStage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisconnectPlayer
    class DisconnectPlayer
      def self.default(visited=[])
        {
          disconnect_successes: ConnectionIdList.default(visited),
          disconnect_failures: ConnectionIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DisconnectSuccesses'] = Stubs::ConnectionIdList.stub(stub[:disconnect_successes]) unless stub[:disconnect_successes].nil?
        data['DisconnectFailures'] = Stubs::ConnectionIdList.stub(stub[:disconnect_failures]) unless stub[:disconnect_failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConnectionIdList
    class ConnectionIdList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionIdList')
        visited = visited + ['ConnectionIdList']
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

    # Operation Stubber for ExportSnapshot
    class ExportSnapshot
      def self.default(visited=[])
        {
          s3_url: 's3_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['S3Url'] = stub[:s3_url] unless stub[:s3_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetExtension
    class GetExtension
      def self.default(visited=[])
        {
          extension: ExtensionDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Extension'] = Stubs::ExtensionDetails.stub(stub[:extension]) unless stub[:extension].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ExtensionDetails
    class ExtensionDetails
      def self.default(visited=[])
        return nil if visited.include?('ExtensionDetails')
        visited = visited + ['ExtensionDetails']
        {
          namespace: 'namespace',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExtensionDetails.new
        data = {}
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for GetExtensionVersion
    class GetExtensionVersion
      def self.default(visited=[])
        {
          extension_version: ExtensionVersionDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ExtensionVersion'] = Stubs::ExtensionVersionDetails.stub(stub[:extension_version]) unless stub[:extension_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ExtensionVersionDetails
    class ExtensionVersionDetails
      def self.default(visited=[])
        return nil if visited.include?('ExtensionVersionDetails')
        visited = visited + ['ExtensionVersionDetails']
        {
          namespace: 'namespace',
          name: 'name',
          schema: 'schema',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExtensionVersionDetails.new
        data = {}
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Schema'] = stub[:schema] unless stub[:schema].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetGame
    class GetGame
      def self.default(visited=[])
        {
          game: GameDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Game'] = Stubs::GameDetails.stub(stub[:game]) unless stub[:game].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGameConfiguration
    class GetGameConfiguration
      def self.default(visited=[])
        {
          game_configuration: GameConfigurationDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GameConfiguration'] = Stubs::GameConfigurationDetails.stub(stub[:game_configuration]) unless stub[:game_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GameConfigurationDetails
    class GameConfigurationDetails
      def self.default(visited=[])
        return nil if visited.include?('GameConfigurationDetails')
        visited = visited + ['GameConfigurationDetails']
        {
          sections: Sections.default(visited),
          created: Time.now,
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::GameConfigurationDetails.new
        data = {}
        data['Sections'] = Stubs::Sections.stub(stub[:sections]) unless stub[:sections].nil?
        data['Created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_date_time(stub[:last_updated]) unless stub[:last_updated].nil?
        data
      end
    end

    # Operation Stubber for GetGeneratedCodeJob
    class GetGeneratedCodeJob
      def self.default(visited=[])
        {
          generated_code_job: GeneratedCodeJobDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GeneratedCodeJob'] = Stubs::GeneratedCodeJobDetails.stub(stub[:generated_code_job]) unless stub[:generated_code_job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GeneratedCodeJobDetails
    class GeneratedCodeJobDetails
      def self.default(visited=[])
        return nil if visited.include?('GeneratedCodeJobDetails')
        visited = visited + ['GeneratedCodeJobDetails']
        {
          s3_url: 's3_url',
          status: 'status',
          description: 'description',
          expiration_time: Time.now,
          generated_code_job_id: 'generated_code_job_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::GeneratedCodeJobDetails.new
        data = {}
        data['S3Url'] = stub[:s3_url] unless stub[:s3_url].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ExpirationTime'] = Hearth::TimeHelper.to_date_time(stub[:expiration_time]) unless stub[:expiration_time].nil?
        data['GeneratedCodeJobId'] = stub[:generated_code_job_id] unless stub[:generated_code_job_id].nil?
        data
      end
    end

    # Operation Stubber for GetPlayerConnectionStatus
    class GetPlayerConnectionStatus
      def self.default(visited=[])
        {
          connections: ConnectionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connections'] = Stubs::ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConnectionList
    class ConnectionList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionList')
        visited = visited + ['ConnectionList']
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
          id: 'id',
          created: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Connection.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data
      end
    end

    # Operation Stubber for GetSnapshot
    class GetSnapshot
      def self.default(visited=[])
        {
          snapshot: SnapshotDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Snapshot'] = Stubs::SnapshotDetails.stub(stub[:snapshot]) unless stub[:snapshot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStage
    class GetStage
      def self.default(visited=[])
        {
          stage: StageDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Stage'] = Stubs::StageDetails.stub(stub[:stage]) unless stub[:stage].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStageDeployment
    class GetStageDeployment
      def self.default(visited=[])
        {
          stage_deployment: StageDeploymentDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StageDeployment'] = Stubs::StageDeploymentDetails.stub(stub[:stage_deployment]) unless stub[:stage_deployment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StageDeploymentDetails
    class StageDeploymentDetails
      def self.default(visited=[])
        return nil if visited.include?('StageDeploymentDetails')
        visited = visited + ['StageDeploymentDetails']
        {
          deployment_id: 'deployment_id',
          snapshot_id: 'snapshot_id',
          deployment_action: 'deployment_action',
          deployment_state: 'deployment_state',
          created: Time.now,
          last_updated: Time.now,
          deployment_result: DeploymentResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StageDeploymentDetails.new
        data = {}
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['DeploymentAction'] = stub[:deployment_action] unless stub[:deployment_action].nil?
        data['DeploymentState'] = stub[:deployment_state] unless stub[:deployment_state].nil?
        data['Created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_date_time(stub[:last_updated]) unless stub[:last_updated].nil?
        data['DeploymentResult'] = Stubs::DeploymentResult.stub(stub[:deployment_result]) unless stub[:deployment_result].nil?
        data
      end
    end

    # Structure Stubber for DeploymentResult
    class DeploymentResult
      def self.default(visited=[])
        return nil if visited.include?('DeploymentResult')
        visited = visited + ['DeploymentResult']
        {
          result_code: 'result_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentResult.new
        data = {}
        data['ResultCode'] = stub[:result_code] unless stub[:result_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for ImportGameConfiguration
    class ImportGameConfiguration
      def self.default(visited=[])
        {
          game_configuration: GameConfigurationDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GameConfiguration'] = Stubs::GameConfigurationDetails.stub(stub[:game_configuration]) unless stub[:game_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListExtensionVersions
    class ListExtensionVersions
      def self.default(visited=[])
        {
          extension_versions: ExtensionVersionDetailsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ExtensionVersions'] = Stubs::ExtensionVersionDetailsList.stub(stub[:extension_versions]) unless stub[:extension_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ExtensionVersionDetailsList
    class ExtensionVersionDetailsList
      def self.default(visited=[])
        return nil if visited.include?('ExtensionVersionDetailsList')
        visited = visited + ['ExtensionVersionDetailsList']
        [
          ExtensionVersionDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExtensionVersionDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListExtensions
    class ListExtensions
      def self.default(visited=[])
        {
          extensions: ExtensionDetailsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Extensions'] = Stubs::ExtensionDetailsList.stub(stub[:extensions]) unless stub[:extensions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ExtensionDetailsList
    class ExtensionDetailsList
      def self.default(visited=[])
        return nil if visited.include?('ExtensionDetailsList')
        visited = visited + ['ExtensionDetailsList']
        [
          ExtensionDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExtensionDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListGames
    class ListGames
      def self.default(visited=[])
        {
          games: GameSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Games'] = Stubs::GameSummaryList.stub(stub[:games]) unless stub[:games].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GameSummaryList
    class GameSummaryList
      def self.default(visited=[])
        return nil if visited.include?('GameSummaryList')
        visited = visited + ['GameSummaryList']
        [
          GameSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GameSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GameSummary
    class GameSummary
      def self.default(visited=[])
        return nil if visited.include?('GameSummary')
        visited = visited + ['GameSummary']
        {
          name: 'name',
          description: 'description',
          state: 'state',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GameSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListGeneratedCodeJobs
    class ListGeneratedCodeJobs
      def self.default(visited=[])
        {
          generated_code_jobs: GeneratedCodeJobDetailsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GeneratedCodeJobs'] = Stubs::GeneratedCodeJobDetailsList.stub(stub[:generated_code_jobs]) unless stub[:generated_code_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GeneratedCodeJobDetailsList
    class GeneratedCodeJobDetailsList
      def self.default(visited=[])
        return nil if visited.include?('GeneratedCodeJobDetailsList')
        visited = visited + ['GeneratedCodeJobDetailsList']
        [
          GeneratedCodeJobDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GeneratedCodeJobDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSnapshots
    class ListSnapshots
      def self.default(visited=[])
        {
          snapshots: SnapshotSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Snapshots'] = Stubs::SnapshotSummaryList.stub(stub[:snapshots]) unless stub[:snapshots].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SnapshotSummaryList
    class SnapshotSummaryList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotSummaryList')
        visited = visited + ['SnapshotSummaryList']
        [
          SnapshotSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SnapshotSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SnapshotSummary
    class SnapshotSummary
      def self.default(visited=[])
        return nil if visited.include?('SnapshotSummary')
        visited = visited + ['SnapshotSummary']
        {
          id: 'id',
          description: 'description',
          created: Time.now,
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SnapshotSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Created'] = Hearth::TimeHelper.to_date_time(stub[:created]) unless stub[:created].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_date_time(stub[:last_updated]) unless stub[:last_updated].nil?
        data
      end
    end

    # Operation Stubber for ListStageDeployments
    class ListStageDeployments
      def self.default(visited=[])
        {
          stage_deployments: StageDeploymentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StageDeployments'] = Stubs::StageDeploymentList.stub(stub[:stage_deployments]) unless stub[:stage_deployments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StageDeploymentList
    class StageDeploymentList
      def self.default(visited=[])
        return nil if visited.include?('StageDeploymentList')
        visited = visited + ['StageDeploymentList']
        [
          StageDeploymentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StageDeploymentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StageDeploymentSummary
    class StageDeploymentSummary
      def self.default(visited=[])
        return nil if visited.include?('StageDeploymentSummary')
        visited = visited + ['StageDeploymentSummary']
        {
          deployment_id: 'deployment_id',
          snapshot_id: 'snapshot_id',
          deployment_action: 'deployment_action',
          deployment_state: 'deployment_state',
          last_updated: Time.now,
          deployment_result: DeploymentResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StageDeploymentSummary.new
        data = {}
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['DeploymentAction'] = stub[:deployment_action] unless stub[:deployment_action].nil?
        data['DeploymentState'] = stub[:deployment_state] unless stub[:deployment_state].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_date_time(stub[:last_updated]) unless stub[:last_updated].nil?
        data['DeploymentResult'] = Stubs::DeploymentResult.stub(stub[:deployment_result]) unless stub[:deployment_result].nil?
        data
      end
    end

    # Operation Stubber for ListStages
    class ListStages
      def self.default(visited=[])
        {
          stages: StageSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Stages'] = Stubs::StageSummaryList.stub(stub[:stages]) unless stub[:stages].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StageSummaryList
    class StageSummaryList
      def self.default(visited=[])
        return nil if visited.include?('StageSummaryList')
        visited = visited + ['StageSummaryList']
        [
          StageSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StageSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StageSummary
    class StageSummary
      def self.default(visited=[])
        return nil if visited.include?('StageSummary')
        visited = visited + ['StageSummary']
        {
          name: 'name',
          game_key: 'game_key',
          description: 'description',
          state: 'state',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StageSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['GameKey'] = stub[:game_key] unless stub[:game_key].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartGeneratedCodeJob
    class StartGeneratedCodeJob
      def self.default(visited=[])
        {
          generated_code_job_id: 'generated_code_job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GeneratedCodeJobId'] = stub[:generated_code_job_id] unless stub[:generated_code_job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartStageDeployment
    class StartStageDeployment
      def self.default(visited=[])
        {
          stage_deployment: StageDeploymentDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StageDeployment'] = Stubs::StageDeploymentDetails.stub(stub[:stage_deployment]) unless stub[:stage_deployment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGame
    class UpdateGame
      def self.default(visited=[])
        {
          game: GameDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Game'] = Stubs::GameDetails.stub(stub[:game]) unless stub[:game].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateGameConfiguration
    class UpdateGameConfiguration
      def self.default(visited=[])
        {
          game_configuration: GameConfigurationDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GameConfiguration'] = Stubs::GameConfigurationDetails.stub(stub[:game_configuration]) unless stub[:game_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSnapshot
    class UpdateSnapshot
      def self.default(visited=[])
        {
          snapshot: SnapshotDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Snapshot'] = Stubs::SnapshotDetails.stub(stub[:snapshot]) unless stub[:snapshot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateStage
    class UpdateStage
      def self.default(visited=[])
        {
          stage: StageDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Stage'] = Stubs::StageDetails.stub(stub[:stage]) unless stub[:stage].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
