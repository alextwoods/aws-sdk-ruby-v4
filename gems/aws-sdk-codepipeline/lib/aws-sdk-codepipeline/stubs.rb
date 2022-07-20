# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodePipeline
  module Stubs

    # Operation Stubber for AcknowledgeJob
    class AcknowledgeJob
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AcknowledgeThirdPartyJob
    class AcknowledgeThirdPartyJob
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCustomActionType
    class CreateCustomActionType
      def self.default(visited=[])
        {
          action_type: ActionType.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['actionType'] = Stubs::ActionType.stub(stub[:action_type]) unless stub[:action_type].nil?
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
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
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for ActionType
    class ActionType
      def self.default(visited=[])
        return nil if visited.include?('ActionType')
        visited = visited + ['ActionType']
        {
          id: ActionTypeId.default(visited),
          settings: ActionTypeSettings.default(visited),
          action_configuration_properties: ActionConfigurationPropertyList.default(visited),
          input_artifact_details: ArtifactDetails.default(visited),
          output_artifact_details: ArtifactDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionType.new
        data = {}
        data['id'] = Stubs::ActionTypeId.stub(stub[:id]) unless stub[:id].nil?
        data['settings'] = Stubs::ActionTypeSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data['actionConfigurationProperties'] = Stubs::ActionConfigurationPropertyList.stub(stub[:action_configuration_properties]) unless stub[:action_configuration_properties].nil?
        data['inputArtifactDetails'] = Stubs::ArtifactDetails.stub(stub[:input_artifact_details]) unless stub[:input_artifact_details].nil?
        data['outputArtifactDetails'] = Stubs::ArtifactDetails.stub(stub[:output_artifact_details]) unless stub[:output_artifact_details].nil?
        data
      end
    end

    # Structure Stubber for ArtifactDetails
    class ArtifactDetails
      def self.default(visited=[])
        return nil if visited.include?('ArtifactDetails')
        visited = visited + ['ArtifactDetails']
        {
          minimum_count: 1,
          maximum_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactDetails.new
        data = {}
        data['minimumCount'] = stub[:minimum_count] unless stub[:minimum_count].nil?
        data['maximumCount'] = stub[:maximum_count] unless stub[:maximum_count].nil?
        data
      end
    end

    # List Stubber for ActionConfigurationPropertyList
    class ActionConfigurationPropertyList
      def self.default(visited=[])
        return nil if visited.include?('ActionConfigurationPropertyList')
        visited = visited + ['ActionConfigurationPropertyList']
        [
          ActionConfigurationProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActionConfigurationProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionConfigurationProperty
    class ActionConfigurationProperty
      def self.default(visited=[])
        return nil if visited.include?('ActionConfigurationProperty')
        visited = visited + ['ActionConfigurationProperty']
        {
          name: 'name',
          required: false,
          key: false,
          secret: false,
          queryable: false,
          description: 'description',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionConfigurationProperty.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['required'] = stub[:required] unless stub[:required].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['secret'] = stub[:secret] unless stub[:secret].nil?
        data['queryable'] = stub[:queryable] unless stub[:queryable].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ActionTypeSettings
    class ActionTypeSettings
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeSettings')
        visited = visited + ['ActionTypeSettings']
        {
          third_party_configuration_url: 'third_party_configuration_url',
          entity_url_template: 'entity_url_template',
          execution_url_template: 'execution_url_template',
          revision_url_template: 'revision_url_template',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTypeSettings.new
        data = {}
        data['thirdPartyConfigurationUrl'] = stub[:third_party_configuration_url] unless stub[:third_party_configuration_url].nil?
        data['entityUrlTemplate'] = stub[:entity_url_template] unless stub[:entity_url_template].nil?
        data['executionUrlTemplate'] = stub[:execution_url_template] unless stub[:execution_url_template].nil?
        data['revisionUrlTemplate'] = stub[:revision_url_template] unless stub[:revision_url_template].nil?
        data
      end
    end

    # Structure Stubber for ActionTypeId
    class ActionTypeId
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeId')
        visited = visited + ['ActionTypeId']
        {
          category: 'category',
          owner: 'owner',
          provider: 'provider',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTypeId.new
        data = {}
        data['category'] = stub[:category] unless stub[:category].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['provider'] = stub[:provider] unless stub[:provider].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for CreatePipeline
    class CreatePipeline
      def self.default(visited=[])
        {
          pipeline: PipelineDeclaration.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipeline'] = Stubs::PipelineDeclaration.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PipelineDeclaration
    class PipelineDeclaration
      def self.default(visited=[])
        return nil if visited.include?('PipelineDeclaration')
        visited = visited + ['PipelineDeclaration']
        {
          name: 'name',
          role_arn: 'role_arn',
          artifact_store: ArtifactStore.default(visited),
          artifact_stores: ArtifactStoreMap.default(visited),
          stages: PipelineStageDeclarationList.default(visited),
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineDeclaration.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['artifactStore'] = Stubs::ArtifactStore.stub(stub[:artifact_store]) unless stub[:artifact_store].nil?
        data['artifactStores'] = Stubs::ArtifactStoreMap.stub(stub[:artifact_stores]) unless stub[:artifact_stores].nil?
        data['stages'] = Stubs::PipelineStageDeclarationList.stub(stub[:stages]) unless stub[:stages].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for PipelineStageDeclarationList
    class PipelineStageDeclarationList
      def self.default(visited=[])
        return nil if visited.include?('PipelineStageDeclarationList')
        visited = visited + ['PipelineStageDeclarationList']
        [
          StageDeclaration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StageDeclaration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StageDeclaration
    class StageDeclaration
      def self.default(visited=[])
        return nil if visited.include?('StageDeclaration')
        visited = visited + ['StageDeclaration']
        {
          name: 'name',
          blockers: StageBlockerDeclarationList.default(visited),
          actions: StageActionDeclarationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StageDeclaration.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['blockers'] = Stubs::StageBlockerDeclarationList.stub(stub[:blockers]) unless stub[:blockers].nil?
        data['actions'] = Stubs::StageActionDeclarationList.stub(stub[:actions]) unless stub[:actions].nil?
        data
      end
    end

    # List Stubber for StageActionDeclarationList
    class StageActionDeclarationList
      def self.default(visited=[])
        return nil if visited.include?('StageActionDeclarationList')
        visited = visited + ['StageActionDeclarationList']
        [
          ActionDeclaration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActionDeclaration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionDeclaration
    class ActionDeclaration
      def self.default(visited=[])
        return nil if visited.include?('ActionDeclaration')
        visited = visited + ['ActionDeclaration']
        {
          name: 'name',
          action_type_id: ActionTypeId.default(visited),
          run_order: 1,
          configuration: ActionConfigurationMap.default(visited),
          output_artifacts: OutputArtifactList.default(visited),
          input_artifacts: InputArtifactList.default(visited),
          role_arn: 'role_arn',
          region: 'region',
          namespace: 'namespace',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionDeclaration.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['actionTypeId'] = Stubs::ActionTypeId.stub(stub[:action_type_id]) unless stub[:action_type_id].nil?
        data['runOrder'] = stub[:run_order] unless stub[:run_order].nil?
        data['configuration'] = Stubs::ActionConfigurationMap.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['outputArtifacts'] = Stubs::OutputArtifactList.stub(stub[:output_artifacts]) unless stub[:output_artifacts].nil?
        data['inputArtifacts'] = Stubs::InputArtifactList.stub(stub[:input_artifacts]) unless stub[:input_artifacts].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data
      end
    end

    # List Stubber for InputArtifactList
    class InputArtifactList
      def self.default(visited=[])
        return nil if visited.include?('InputArtifactList')
        visited = visited + ['InputArtifactList']
        [
          InputArtifact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputArtifact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputArtifact
    class InputArtifact
      def self.default(visited=[])
        return nil if visited.include?('InputArtifact')
        visited = visited + ['InputArtifact']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputArtifact.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for OutputArtifactList
    class OutputArtifactList
      def self.default(visited=[])
        return nil if visited.include?('OutputArtifactList')
        visited = visited + ['OutputArtifactList']
        [
          OutputArtifact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputArtifact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputArtifact
    class OutputArtifact
      def self.default(visited=[])
        return nil if visited.include?('OutputArtifact')
        visited = visited + ['OutputArtifact']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputArtifact.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Map Stubber for ActionConfigurationMap
    class ActionConfigurationMap
      def self.default(visited=[])
        return nil if visited.include?('ActionConfigurationMap')
        visited = visited + ['ActionConfigurationMap']
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

    # List Stubber for StageBlockerDeclarationList
    class StageBlockerDeclarationList
      def self.default(visited=[])
        return nil if visited.include?('StageBlockerDeclarationList')
        visited = visited + ['StageBlockerDeclarationList']
        [
          BlockerDeclaration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BlockerDeclaration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BlockerDeclaration
    class BlockerDeclaration
      def self.default(visited=[])
        return nil if visited.include?('BlockerDeclaration')
        visited = visited + ['BlockerDeclaration']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::BlockerDeclaration.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Map Stubber for ArtifactStoreMap
    class ArtifactStoreMap
      def self.default(visited=[])
        return nil if visited.include?('ArtifactStoreMap')
        visited = visited + ['ArtifactStoreMap']
        {
          test_key: ArtifactStore.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ArtifactStore.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ArtifactStore
    class ArtifactStore
      def self.default(visited=[])
        return nil if visited.include?('ArtifactStore')
        visited = visited + ['ArtifactStore']
        {
          type: 'type',
          location: 'location',
          encryption_key: EncryptionKey.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactStore.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['encryptionKey'] = Stubs::EncryptionKey.stub(stub[:encryption_key]) unless stub[:encryption_key].nil?
        data
      end
    end

    # Structure Stubber for EncryptionKey
    class EncryptionKey
      def self.default(visited=[])
        return nil if visited.include?('EncryptionKey')
        visited = visited + ['EncryptionKey']
        {
          id: 'id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionKey.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for DeleteCustomActionType
    class DeleteCustomActionType
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

    # Operation Stubber for DeletePipeline
    class DeletePipeline
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

    # Operation Stubber for DeleteWebhook
    class DeleteWebhook
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

    # Operation Stubber for DeregisterWebhookWithThirdParty
    class DeregisterWebhookWithThirdParty
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

    # Operation Stubber for DisableStageTransition
    class DisableStageTransition
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

    # Operation Stubber for EnableStageTransition
    class EnableStageTransition
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

    # Operation Stubber for GetActionType
    class GetActionType
      def self.default(visited=[])
        {
          action_type: ActionTypeDeclaration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['actionType'] = Stubs::ActionTypeDeclaration.stub(stub[:action_type]) unless stub[:action_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ActionTypeDeclaration
    class ActionTypeDeclaration
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeDeclaration')
        visited = visited + ['ActionTypeDeclaration']
        {
          description: 'description',
          executor: ActionTypeExecutor.default(visited),
          id: ActionTypeIdentifier.default(visited),
          input_artifact_details: ActionTypeArtifactDetails.default(visited),
          output_artifact_details: ActionTypeArtifactDetails.default(visited),
          permissions: ActionTypePermissions.default(visited),
          properties: ActionTypeProperties.default(visited),
          urls: ActionTypeUrls.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTypeDeclaration.new
        data = {}
        data['description'] = stub[:description] unless stub[:description].nil?
        data['executor'] = Stubs::ActionTypeExecutor.stub(stub[:executor]) unless stub[:executor].nil?
        data['id'] = Stubs::ActionTypeIdentifier.stub(stub[:id]) unless stub[:id].nil?
        data['inputArtifactDetails'] = Stubs::ActionTypeArtifactDetails.stub(stub[:input_artifact_details]) unless stub[:input_artifact_details].nil?
        data['outputArtifactDetails'] = Stubs::ActionTypeArtifactDetails.stub(stub[:output_artifact_details]) unless stub[:output_artifact_details].nil?
        data['permissions'] = Stubs::ActionTypePermissions.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['properties'] = Stubs::ActionTypeProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['urls'] = Stubs::ActionTypeUrls.stub(stub[:urls]) unless stub[:urls].nil?
        data
      end
    end

    # Structure Stubber for ActionTypeUrls
    class ActionTypeUrls
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeUrls')
        visited = visited + ['ActionTypeUrls']
        {
          configuration_url: 'configuration_url',
          entity_url_template: 'entity_url_template',
          execution_url_template: 'execution_url_template',
          revision_url_template: 'revision_url_template',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTypeUrls.new
        data = {}
        data['configurationUrl'] = stub[:configuration_url] unless stub[:configuration_url].nil?
        data['entityUrlTemplate'] = stub[:entity_url_template] unless stub[:entity_url_template].nil?
        data['executionUrlTemplate'] = stub[:execution_url_template] unless stub[:execution_url_template].nil?
        data['revisionUrlTemplate'] = stub[:revision_url_template] unless stub[:revision_url_template].nil?
        data
      end
    end

    # List Stubber for ActionTypeProperties
    class ActionTypeProperties
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeProperties')
        visited = visited + ['ActionTypeProperties']
        [
          ActionTypeProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActionTypeProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionTypeProperty
    class ActionTypeProperty
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeProperty')
        visited = visited + ['ActionTypeProperty']
        {
          name: 'name',
          optional: false,
          key: false,
          no_echo: false,
          queryable: false,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTypeProperty.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['optional'] = stub[:optional] unless stub[:optional].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['noEcho'] = stub[:no_echo] unless stub[:no_echo].nil?
        data['queryable'] = stub[:queryable] unless stub[:queryable].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Structure Stubber for ActionTypePermissions
    class ActionTypePermissions
      def self.default(visited=[])
        return nil if visited.include?('ActionTypePermissions')
        visited = visited + ['ActionTypePermissions']
        {
          allowed_accounts: AllowedAccounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTypePermissions.new
        data = {}
        data['allowedAccounts'] = Stubs::AllowedAccounts.stub(stub[:allowed_accounts]) unless stub[:allowed_accounts].nil?
        data
      end
    end

    # List Stubber for AllowedAccounts
    class AllowedAccounts
      def self.default(visited=[])
        return nil if visited.include?('AllowedAccounts')
        visited = visited + ['AllowedAccounts']
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

    # Structure Stubber for ActionTypeArtifactDetails
    class ActionTypeArtifactDetails
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeArtifactDetails')
        visited = visited + ['ActionTypeArtifactDetails']
        {
          minimum_count: 1,
          maximum_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTypeArtifactDetails.new
        data = {}
        data['minimumCount'] = stub[:minimum_count] unless stub[:minimum_count].nil?
        data['maximumCount'] = stub[:maximum_count] unless stub[:maximum_count].nil?
        data
      end
    end

    # Structure Stubber for ActionTypeIdentifier
    class ActionTypeIdentifier
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeIdentifier')
        visited = visited + ['ActionTypeIdentifier']
        {
          category: 'category',
          owner: 'owner',
          provider: 'provider',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTypeIdentifier.new
        data = {}
        data['category'] = stub[:category] unless stub[:category].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['provider'] = stub[:provider] unless stub[:provider].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for ActionTypeExecutor
    class ActionTypeExecutor
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeExecutor')
        visited = visited + ['ActionTypeExecutor']
        {
          configuration: ExecutorConfiguration.default(visited),
          type: 'type',
          policy_statements_template: 'policy_statements_template',
          job_timeout: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionTypeExecutor.new
        data = {}
        data['configuration'] = Stubs::ExecutorConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['policyStatementsTemplate'] = stub[:policy_statements_template] unless stub[:policy_statements_template].nil?
        data['jobTimeout'] = stub[:job_timeout] unless stub[:job_timeout].nil?
        data
      end
    end

    # Structure Stubber for ExecutorConfiguration
    class ExecutorConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExecutorConfiguration')
        visited = visited + ['ExecutorConfiguration']
        {
          lambda_executor_configuration: LambdaExecutorConfiguration.default(visited),
          job_worker_executor_configuration: JobWorkerExecutorConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutorConfiguration.new
        data = {}
        data['lambdaExecutorConfiguration'] = Stubs::LambdaExecutorConfiguration.stub(stub[:lambda_executor_configuration]) unless stub[:lambda_executor_configuration].nil?
        data['jobWorkerExecutorConfiguration'] = Stubs::JobWorkerExecutorConfiguration.stub(stub[:job_worker_executor_configuration]) unless stub[:job_worker_executor_configuration].nil?
        data
      end
    end

    # Structure Stubber for JobWorkerExecutorConfiguration
    class JobWorkerExecutorConfiguration
      def self.default(visited=[])
        return nil if visited.include?('JobWorkerExecutorConfiguration')
        visited = visited + ['JobWorkerExecutorConfiguration']
        {
          polling_accounts: PollingAccountList.default(visited),
          polling_service_principals: PollingServicePrincipalList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobWorkerExecutorConfiguration.new
        data = {}
        data['pollingAccounts'] = Stubs::PollingAccountList.stub(stub[:polling_accounts]) unless stub[:polling_accounts].nil?
        data['pollingServicePrincipals'] = Stubs::PollingServicePrincipalList.stub(stub[:polling_service_principals]) unless stub[:polling_service_principals].nil?
        data
      end
    end

    # List Stubber for PollingServicePrincipalList
    class PollingServicePrincipalList
      def self.default(visited=[])
        return nil if visited.include?('PollingServicePrincipalList')
        visited = visited + ['PollingServicePrincipalList']
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

    # List Stubber for PollingAccountList
    class PollingAccountList
      def self.default(visited=[])
        return nil if visited.include?('PollingAccountList')
        visited = visited + ['PollingAccountList']
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

    # Structure Stubber for LambdaExecutorConfiguration
    class LambdaExecutorConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LambdaExecutorConfiguration')
        visited = visited + ['LambdaExecutorConfiguration']
        {
          lambda_function_arn: 'lambda_function_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaExecutorConfiguration.new
        data = {}
        data['lambdaFunctionArn'] = stub[:lambda_function_arn] unless stub[:lambda_function_arn].nil?
        data
      end
    end

    # Operation Stubber for GetJobDetails
    class GetJobDetails
      def self.default(visited=[])
        {
          job_details: JobDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['jobDetails'] = Stubs::JobDetails.stub(stub[:job_details]) unless stub[:job_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for JobDetails
    class JobDetails
      def self.default(visited=[])
        return nil if visited.include?('JobDetails')
        visited = visited + ['JobDetails']
        {
          id: 'id',
          data: JobData.default(visited),
          account_id: 'account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobDetails.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['data'] = Stubs::JobData.stub(stub[:data]) unless stub[:data].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data
      end
    end

    # Structure Stubber for JobData
    class JobData
      def self.default(visited=[])
        return nil if visited.include?('JobData')
        visited = visited + ['JobData']
        {
          action_type_id: ActionTypeId.default(visited),
          action_configuration: ActionConfiguration.default(visited),
          pipeline_context: PipelineContext.default(visited),
          input_artifacts: ArtifactList.default(visited),
          output_artifacts: ArtifactList.default(visited),
          artifact_credentials: AWSSessionCredentials.default(visited),
          continuation_token: 'continuation_token',
          encryption_key: EncryptionKey.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobData.new
        data = {}
        data['actionTypeId'] = Stubs::ActionTypeId.stub(stub[:action_type_id]) unless stub[:action_type_id].nil?
        data['actionConfiguration'] = Stubs::ActionConfiguration.stub(stub[:action_configuration]) unless stub[:action_configuration].nil?
        data['pipelineContext'] = Stubs::PipelineContext.stub(stub[:pipeline_context]) unless stub[:pipeline_context].nil?
        data['inputArtifacts'] = Stubs::ArtifactList.stub(stub[:input_artifacts]) unless stub[:input_artifacts].nil?
        data['outputArtifacts'] = Stubs::ArtifactList.stub(stub[:output_artifacts]) unless stub[:output_artifacts].nil?
        data['artifactCredentials'] = Stubs::AWSSessionCredentials.stub(stub[:artifact_credentials]) unless stub[:artifact_credentials].nil?
        data['continuationToken'] = stub[:continuation_token] unless stub[:continuation_token].nil?
        data['encryptionKey'] = Stubs::EncryptionKey.stub(stub[:encryption_key]) unless stub[:encryption_key].nil?
        data
      end
    end

    # Structure Stubber for AWSSessionCredentials
    class AWSSessionCredentials
      def self.default(visited=[])
        return nil if visited.include?('AWSSessionCredentials')
        visited = visited + ['AWSSessionCredentials']
        {
          access_key_id: 'access_key_id',
          secret_access_key: 'secret_access_key',
          session_token: 'session_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::AWSSessionCredentials.new
        data = {}
        data['accessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['secretAccessKey'] = stub[:secret_access_key] unless stub[:secret_access_key].nil?
        data['sessionToken'] = stub[:session_token] unless stub[:session_token].nil?
        data
      end
    end

    # List Stubber for ArtifactList
    class ArtifactList
      def self.default(visited=[])
        return nil if visited.include?('ArtifactList')
        visited = visited + ['ArtifactList']
        [
          Artifact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Artifact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Artifact
    class Artifact
      def self.default(visited=[])
        return nil if visited.include?('Artifact')
        visited = visited + ['Artifact']
        {
          name: 'name',
          revision: 'revision',
          location: ArtifactLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Artifact.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data['location'] = Stubs::ArtifactLocation.stub(stub[:location]) unless stub[:location].nil?
        data
      end
    end

    # Structure Stubber for ArtifactLocation
    class ArtifactLocation
      def self.default(visited=[])
        return nil if visited.include?('ArtifactLocation')
        visited = visited + ['ArtifactLocation']
        {
          type: 'type',
          s3_location: S3ArtifactLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactLocation.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['s3Location'] = Stubs::S3ArtifactLocation.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # Structure Stubber for S3ArtifactLocation
    class S3ArtifactLocation
      def self.default(visited=[])
        return nil if visited.include?('S3ArtifactLocation')
        visited = visited + ['S3ArtifactLocation']
        {
          bucket_name: 'bucket_name',
          object_key: 'object_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ArtifactLocation.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['objectKey'] = stub[:object_key] unless stub[:object_key].nil?
        data
      end
    end

    # Structure Stubber for PipelineContext
    class PipelineContext
      def self.default(visited=[])
        return nil if visited.include?('PipelineContext')
        visited = visited + ['PipelineContext']
        {
          pipeline_name: 'pipeline_name',
          stage: StageContext.default(visited),
          action: ActionContext.default(visited),
          pipeline_arn: 'pipeline_arn',
          pipeline_execution_id: 'pipeline_execution_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineContext.new
        data = {}
        data['pipelineName'] = stub[:pipeline_name] unless stub[:pipeline_name].nil?
        data['stage'] = Stubs::StageContext.stub(stub[:stage]) unless stub[:stage].nil?
        data['action'] = Stubs::ActionContext.stub(stub[:action]) unless stub[:action].nil?
        data['pipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        data['pipelineExecutionId'] = stub[:pipeline_execution_id] unless stub[:pipeline_execution_id].nil?
        data
      end
    end

    # Structure Stubber for ActionContext
    class ActionContext
      def self.default(visited=[])
        return nil if visited.include?('ActionContext')
        visited = visited + ['ActionContext']
        {
          name: 'name',
          action_execution_id: 'action_execution_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionContext.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['actionExecutionId'] = stub[:action_execution_id] unless stub[:action_execution_id].nil?
        data
      end
    end

    # Structure Stubber for StageContext
    class StageContext
      def self.default(visited=[])
        return nil if visited.include?('StageContext')
        visited = visited + ['StageContext']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::StageContext.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for ActionConfiguration
    class ActionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ActionConfiguration')
        visited = visited + ['ActionConfiguration']
        {
          configuration: ActionConfigurationMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionConfiguration.new
        data = {}
        data['configuration'] = Stubs::ActionConfigurationMap.stub(stub[:configuration]) unless stub[:configuration].nil?
        data
      end
    end

    # Operation Stubber for GetPipeline
    class GetPipeline
      def self.default(visited=[])
        {
          pipeline: PipelineDeclaration.default(visited),
          metadata: PipelineMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipeline'] = Stubs::PipelineDeclaration.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        data['metadata'] = Stubs::PipelineMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PipelineMetadata
    class PipelineMetadata
      def self.default(visited=[])
        return nil if visited.include?('PipelineMetadata')
        visited = visited + ['PipelineMetadata']
        {
          pipeline_arn: 'pipeline_arn',
          created: Time.now,
          updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineMetadata.new
        data = {}
        data['pipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['updated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated]).to_i unless stub[:updated].nil?
        data
      end
    end

    # Operation Stubber for GetPipelineExecution
    class GetPipelineExecution
      def self.default(visited=[])
        {
          pipeline_execution: PipelineExecution.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineExecution'] = Stubs::PipelineExecution.stub(stub[:pipeline_execution]) unless stub[:pipeline_execution].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PipelineExecution
    class PipelineExecution
      def self.default(visited=[])
        return nil if visited.include?('PipelineExecution')
        visited = visited + ['PipelineExecution']
        {
          pipeline_name: 'pipeline_name',
          pipeline_version: 1,
          pipeline_execution_id: 'pipeline_execution_id',
          status: 'status',
          status_summary: 'status_summary',
          artifact_revisions: ArtifactRevisionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineExecution.new
        data = {}
        data['pipelineName'] = stub[:pipeline_name] unless stub[:pipeline_name].nil?
        data['pipelineVersion'] = stub[:pipeline_version] unless stub[:pipeline_version].nil?
        data['pipelineExecutionId'] = stub[:pipeline_execution_id] unless stub[:pipeline_execution_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusSummary'] = stub[:status_summary] unless stub[:status_summary].nil?
        data['artifactRevisions'] = Stubs::ArtifactRevisionList.stub(stub[:artifact_revisions]) unless stub[:artifact_revisions].nil?
        data
      end
    end

    # List Stubber for ArtifactRevisionList
    class ArtifactRevisionList
      def self.default(visited=[])
        return nil if visited.include?('ArtifactRevisionList')
        visited = visited + ['ArtifactRevisionList']
        [
          ArtifactRevision.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ArtifactRevision.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ArtifactRevision
    class ArtifactRevision
      def self.default(visited=[])
        return nil if visited.include?('ArtifactRevision')
        visited = visited + ['ArtifactRevision']
        {
          name: 'name',
          revision_id: 'revision_id',
          revision_change_identifier: 'revision_change_identifier',
          revision_summary: 'revision_summary',
          created: Time.now,
          revision_url: 'revision_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactRevision.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['revisionChangeIdentifier'] = stub[:revision_change_identifier] unless stub[:revision_change_identifier].nil?
        data['revisionSummary'] = stub[:revision_summary] unless stub[:revision_summary].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['revisionUrl'] = stub[:revision_url] unless stub[:revision_url].nil?
        data
      end
    end

    # Operation Stubber for GetPipelineState
    class GetPipelineState
      def self.default(visited=[])
        {
          pipeline_name: 'pipeline_name',
          pipeline_version: 1,
          stage_states: StageStateList.default(visited),
          created: Time.now,
          updated: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineName'] = stub[:pipeline_name] unless stub[:pipeline_name].nil?
        data['pipelineVersion'] = stub[:pipeline_version] unless stub[:pipeline_version].nil?
        data['stageStates'] = Stubs::StageStateList.stub(stub[:stage_states]) unless stub[:stage_states].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['updated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated]).to_i unless stub[:updated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StageStateList
    class StageStateList
      def self.default(visited=[])
        return nil if visited.include?('StageStateList')
        visited = visited + ['StageStateList']
        [
          StageState.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StageState.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StageState
    class StageState
      def self.default(visited=[])
        return nil if visited.include?('StageState')
        visited = visited + ['StageState']
        {
          stage_name: 'stage_name',
          inbound_execution: StageExecution.default(visited),
          inbound_transition_state: TransitionState.default(visited),
          action_states: ActionStateList.default(visited),
          latest_execution: StageExecution.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StageState.new
        data = {}
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['inboundExecution'] = Stubs::StageExecution.stub(stub[:inbound_execution]) unless stub[:inbound_execution].nil?
        data['inboundTransitionState'] = Stubs::TransitionState.stub(stub[:inbound_transition_state]) unless stub[:inbound_transition_state].nil?
        data['actionStates'] = Stubs::ActionStateList.stub(stub[:action_states]) unless stub[:action_states].nil?
        data['latestExecution'] = Stubs::StageExecution.stub(stub[:latest_execution]) unless stub[:latest_execution].nil?
        data
      end
    end

    # Structure Stubber for StageExecution
    class StageExecution
      def self.default(visited=[])
        return nil if visited.include?('StageExecution')
        visited = visited + ['StageExecution']
        {
          pipeline_execution_id: 'pipeline_execution_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::StageExecution.new
        data = {}
        data['pipelineExecutionId'] = stub[:pipeline_execution_id] unless stub[:pipeline_execution_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for ActionStateList
    class ActionStateList
      def self.default(visited=[])
        return nil if visited.include?('ActionStateList')
        visited = visited + ['ActionStateList']
        [
          ActionState.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActionState.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionState
    class ActionState
      def self.default(visited=[])
        return nil if visited.include?('ActionState')
        visited = visited + ['ActionState']
        {
          action_name: 'action_name',
          current_revision: ActionRevision.default(visited),
          latest_execution: ActionExecution.default(visited),
          entity_url: 'entity_url',
          revision_url: 'revision_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionState.new
        data = {}
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['currentRevision'] = Stubs::ActionRevision.stub(stub[:current_revision]) unless stub[:current_revision].nil?
        data['latestExecution'] = Stubs::ActionExecution.stub(stub[:latest_execution]) unless stub[:latest_execution].nil?
        data['entityUrl'] = stub[:entity_url] unless stub[:entity_url].nil?
        data['revisionUrl'] = stub[:revision_url] unless stub[:revision_url].nil?
        data
      end
    end

    # Structure Stubber for ActionExecution
    class ActionExecution
      def self.default(visited=[])
        return nil if visited.include?('ActionExecution')
        visited = visited + ['ActionExecution']
        {
          action_execution_id: 'action_execution_id',
          status: 'status',
          summary: 'summary',
          last_status_change: Time.now,
          token: 'token',
          last_updated_by: 'last_updated_by',
          external_execution_id: 'external_execution_id',
          external_execution_url: 'external_execution_url',
          percent_complete: 1,
          error_details: ErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionExecution.new
        data = {}
        data['actionExecutionId'] = stub[:action_execution_id] unless stub[:action_execution_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['summary'] = stub[:summary] unless stub[:summary].nil?
        data['lastStatusChange'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_status_change]).to_i unless stub[:last_status_change].nil?
        data['token'] = stub[:token] unless stub[:token].nil?
        data['lastUpdatedBy'] = stub[:last_updated_by] unless stub[:last_updated_by].nil?
        data['externalExecutionId'] = stub[:external_execution_id] unless stub[:external_execution_id].nil?
        data['externalExecutionUrl'] = stub[:external_execution_url] unless stub[:external_execution_url].nil?
        data['percentComplete'] = stub[:percent_complete] unless stub[:percent_complete].nil?
        data['errorDetails'] = Stubs::ErrorDetails.stub(stub[:error_details]) unless stub[:error_details].nil?
        data
      end
    end

    # Structure Stubber for ErrorDetails
    class ErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetails')
        visited = visited + ['ErrorDetails']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetails.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ActionRevision
    class ActionRevision
      def self.default(visited=[])
        return nil if visited.include?('ActionRevision')
        visited = visited + ['ActionRevision']
        {
          revision_id: 'revision_id',
          revision_change_id: 'revision_change_id',
          created: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionRevision.new
        data = {}
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['revisionChangeId'] = stub[:revision_change_id] unless stub[:revision_change_id].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data
      end
    end

    # Structure Stubber for TransitionState
    class TransitionState
      def self.default(visited=[])
        return nil if visited.include?('TransitionState')
        visited = visited + ['TransitionState']
        {
          enabled: false,
          last_changed_by: 'last_changed_by',
          last_changed_at: Time.now,
          disabled_reason: 'disabled_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransitionState.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['lastChangedBy'] = stub[:last_changed_by] unless stub[:last_changed_by].nil?
        data['lastChangedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_changed_at]).to_i unless stub[:last_changed_at].nil?
        data['disabledReason'] = stub[:disabled_reason] unless stub[:disabled_reason].nil?
        data
      end
    end

    # Operation Stubber for GetThirdPartyJobDetails
    class GetThirdPartyJobDetails
      def self.default(visited=[])
        {
          job_details: ThirdPartyJobDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['jobDetails'] = Stubs::ThirdPartyJobDetails.stub(stub[:job_details]) unless stub[:job_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ThirdPartyJobDetails
    class ThirdPartyJobDetails
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyJobDetails')
        visited = visited + ['ThirdPartyJobDetails']
        {
          id: 'id',
          data: ThirdPartyJobData.default(visited),
          nonce: 'nonce',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThirdPartyJobDetails.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['data'] = Stubs::ThirdPartyJobData.stub(stub[:data]) unless stub[:data].nil?
        data['nonce'] = stub[:nonce] unless stub[:nonce].nil?
        data
      end
    end

    # Structure Stubber for ThirdPartyJobData
    class ThirdPartyJobData
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyJobData')
        visited = visited + ['ThirdPartyJobData']
        {
          action_type_id: ActionTypeId.default(visited),
          action_configuration: ActionConfiguration.default(visited),
          pipeline_context: PipelineContext.default(visited),
          input_artifacts: ArtifactList.default(visited),
          output_artifacts: ArtifactList.default(visited),
          artifact_credentials: AWSSessionCredentials.default(visited),
          continuation_token: 'continuation_token',
          encryption_key: EncryptionKey.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThirdPartyJobData.new
        data = {}
        data['actionTypeId'] = Stubs::ActionTypeId.stub(stub[:action_type_id]) unless stub[:action_type_id].nil?
        data['actionConfiguration'] = Stubs::ActionConfiguration.stub(stub[:action_configuration]) unless stub[:action_configuration].nil?
        data['pipelineContext'] = Stubs::PipelineContext.stub(stub[:pipeline_context]) unless stub[:pipeline_context].nil?
        data['inputArtifacts'] = Stubs::ArtifactList.stub(stub[:input_artifacts]) unless stub[:input_artifacts].nil?
        data['outputArtifacts'] = Stubs::ArtifactList.stub(stub[:output_artifacts]) unless stub[:output_artifacts].nil?
        data['artifactCredentials'] = Stubs::AWSSessionCredentials.stub(stub[:artifact_credentials]) unless stub[:artifact_credentials].nil?
        data['continuationToken'] = stub[:continuation_token] unless stub[:continuation_token].nil?
        data['encryptionKey'] = Stubs::EncryptionKey.stub(stub[:encryption_key]) unless stub[:encryption_key].nil?
        data
      end
    end

    # Operation Stubber for ListActionExecutions
    class ListActionExecutions
      def self.default(visited=[])
        {
          action_execution_details: ActionExecutionDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['actionExecutionDetails'] = Stubs::ActionExecutionDetailList.stub(stub[:action_execution_details]) unless stub[:action_execution_details].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ActionExecutionDetailList
    class ActionExecutionDetailList
      def self.default(visited=[])
        return nil if visited.include?('ActionExecutionDetailList')
        visited = visited + ['ActionExecutionDetailList']
        [
          ActionExecutionDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActionExecutionDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionExecutionDetail
    class ActionExecutionDetail
      def self.default(visited=[])
        return nil if visited.include?('ActionExecutionDetail')
        visited = visited + ['ActionExecutionDetail']
        {
          pipeline_execution_id: 'pipeline_execution_id',
          action_execution_id: 'action_execution_id',
          pipeline_version: 1,
          stage_name: 'stage_name',
          action_name: 'action_name',
          start_time: Time.now,
          last_update_time: Time.now,
          status: 'status',
          input: ActionExecutionInput.default(visited),
          output: ActionExecutionOutput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionExecutionDetail.new
        data = {}
        data['pipelineExecutionId'] = stub[:pipeline_execution_id] unless stub[:pipeline_execution_id].nil?
        data['actionExecutionId'] = stub[:action_execution_id] unless stub[:action_execution_id].nil?
        data['pipelineVersion'] = stub[:pipeline_version] unless stub[:pipeline_version].nil?
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['input'] = Stubs::ActionExecutionInput.stub(stub[:input]) unless stub[:input].nil?
        data['output'] = Stubs::ActionExecutionOutput.stub(stub[:output]) unless stub[:output].nil?
        data
      end
    end

    # Structure Stubber for ActionExecutionOutput
    class ActionExecutionOutput
      def self.default(visited=[])
        return nil if visited.include?('ActionExecutionOutput')
        visited = visited + ['ActionExecutionOutput']
        {
          output_artifacts: ArtifactDetailList.default(visited),
          execution_result: ActionExecutionResult.default(visited),
          output_variables: OutputVariablesMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionExecutionOutput.new
        data = {}
        data['outputArtifacts'] = Stubs::ArtifactDetailList.stub(stub[:output_artifacts]) unless stub[:output_artifacts].nil?
        data['executionResult'] = Stubs::ActionExecutionResult.stub(stub[:execution_result]) unless stub[:execution_result].nil?
        data['outputVariables'] = Stubs::OutputVariablesMap.stub(stub[:output_variables]) unless stub[:output_variables].nil?
        data
      end
    end

    # Map Stubber for OutputVariablesMap
    class OutputVariablesMap
      def self.default(visited=[])
        return nil if visited.include?('OutputVariablesMap')
        visited = visited + ['OutputVariablesMap']
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

    # Structure Stubber for ActionExecutionResult
    class ActionExecutionResult
      def self.default(visited=[])
        return nil if visited.include?('ActionExecutionResult')
        visited = visited + ['ActionExecutionResult']
        {
          external_execution_id: 'external_execution_id',
          external_execution_summary: 'external_execution_summary',
          external_execution_url: 'external_execution_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionExecutionResult.new
        data = {}
        data['externalExecutionId'] = stub[:external_execution_id] unless stub[:external_execution_id].nil?
        data['externalExecutionSummary'] = stub[:external_execution_summary] unless stub[:external_execution_summary].nil?
        data['externalExecutionUrl'] = stub[:external_execution_url] unless stub[:external_execution_url].nil?
        data
      end
    end

    # List Stubber for ArtifactDetailList
    class ArtifactDetailList
      def self.default(visited=[])
        return nil if visited.include?('ArtifactDetailList')
        visited = visited + ['ArtifactDetailList']
        [
          ArtifactDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ArtifactDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ArtifactDetail
    class ArtifactDetail
      def self.default(visited=[])
        return nil if visited.include?('ArtifactDetail')
        visited = visited + ['ArtifactDetail']
        {
          name: 'name',
          s3location: S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactDetail.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['s3location'] = Stubs::S3Location.stub(stub[:s3location]) unless stub[:s3location].nil?
        data
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for ActionExecutionInput
    class ActionExecutionInput
      def self.default(visited=[])
        return nil if visited.include?('ActionExecutionInput')
        visited = visited + ['ActionExecutionInput']
        {
          action_type_id: ActionTypeId.default(visited),
          configuration: ActionConfigurationMap.default(visited),
          resolved_configuration: ResolvedActionConfigurationMap.default(visited),
          role_arn: 'role_arn',
          region: 'region',
          input_artifacts: ArtifactDetailList.default(visited),
          namespace: 'namespace',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionExecutionInput.new
        data = {}
        data['actionTypeId'] = Stubs::ActionTypeId.stub(stub[:action_type_id]) unless stub[:action_type_id].nil?
        data['configuration'] = Stubs::ActionConfigurationMap.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['resolvedConfiguration'] = Stubs::ResolvedActionConfigurationMap.stub(stub[:resolved_configuration]) unless stub[:resolved_configuration].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['inputArtifacts'] = Stubs::ArtifactDetailList.stub(stub[:input_artifacts]) unless stub[:input_artifacts].nil?
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data
      end
    end

    # Map Stubber for ResolvedActionConfigurationMap
    class ResolvedActionConfigurationMap
      def self.default(visited=[])
        return nil if visited.include?('ResolvedActionConfigurationMap')
        visited = visited + ['ResolvedActionConfigurationMap']
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

    # Operation Stubber for ListActionTypes
    class ListActionTypes
      def self.default(visited=[])
        {
          action_types: ActionTypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['actionTypes'] = Stubs::ActionTypeList.stub(stub[:action_types]) unless stub[:action_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ActionTypeList
    class ActionTypeList
      def self.default(visited=[])
        return nil if visited.include?('ActionTypeList')
        visited = visited + ['ActionTypeList']
        [
          ActionType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActionType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPipelineExecutions
    class ListPipelineExecutions
      def self.default(visited=[])
        {
          pipeline_execution_summaries: PipelineExecutionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineExecutionSummaries'] = Stubs::PipelineExecutionSummaryList.stub(stub[:pipeline_execution_summaries]) unless stub[:pipeline_execution_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PipelineExecutionSummaryList
    class PipelineExecutionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PipelineExecutionSummaryList')
        visited = visited + ['PipelineExecutionSummaryList']
        [
          PipelineExecutionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PipelineExecutionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelineExecutionSummary
    class PipelineExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('PipelineExecutionSummary')
        visited = visited + ['PipelineExecutionSummary']
        {
          pipeline_execution_id: 'pipeline_execution_id',
          status: 'status',
          start_time: Time.now,
          last_update_time: Time.now,
          source_revisions: SourceRevisionList.default(visited),
          trigger: ExecutionTrigger.default(visited),
          stop_trigger: StopExecutionTrigger.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineExecutionSummary.new
        data = {}
        data['pipelineExecutionId'] = stub[:pipeline_execution_id] unless stub[:pipeline_execution_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['sourceRevisions'] = Stubs::SourceRevisionList.stub(stub[:source_revisions]) unless stub[:source_revisions].nil?
        data['trigger'] = Stubs::ExecutionTrigger.stub(stub[:trigger]) unless stub[:trigger].nil?
        data['stopTrigger'] = Stubs::StopExecutionTrigger.stub(stub[:stop_trigger]) unless stub[:stop_trigger].nil?
        data
      end
    end

    # Structure Stubber for StopExecutionTrigger
    class StopExecutionTrigger
      def self.default(visited=[])
        return nil if visited.include?('StopExecutionTrigger')
        visited = visited + ['StopExecutionTrigger']
        {
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::StopExecutionTrigger.new
        data = {}
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Structure Stubber for ExecutionTrigger
    class ExecutionTrigger
      def self.default(visited=[])
        return nil if visited.include?('ExecutionTrigger')
        visited = visited + ['ExecutionTrigger']
        {
          trigger_type: 'trigger_type',
          trigger_detail: 'trigger_detail',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionTrigger.new
        data = {}
        data['triggerType'] = stub[:trigger_type] unless stub[:trigger_type].nil?
        data['triggerDetail'] = stub[:trigger_detail] unless stub[:trigger_detail].nil?
        data
      end
    end

    # List Stubber for SourceRevisionList
    class SourceRevisionList
      def self.default(visited=[])
        return nil if visited.include?('SourceRevisionList')
        visited = visited + ['SourceRevisionList']
        [
          SourceRevision.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SourceRevision.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SourceRevision
    class SourceRevision
      def self.default(visited=[])
        return nil if visited.include?('SourceRevision')
        visited = visited + ['SourceRevision']
        {
          action_name: 'action_name',
          revision_id: 'revision_id',
          revision_summary: 'revision_summary',
          revision_url: 'revision_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceRevision.new
        data = {}
        data['actionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['revisionSummary'] = stub[:revision_summary] unless stub[:revision_summary].nil?
        data['revisionUrl'] = stub[:revision_url] unless stub[:revision_url].nil?
        data
      end
    end

    # Operation Stubber for ListPipelines
    class ListPipelines
      def self.default(visited=[])
        {
          pipelines: PipelineList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelines'] = Stubs::PipelineList.stub(stub[:pipelines]) unless stub[:pipelines].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PipelineList
    class PipelineList
      def self.default(visited=[])
        return nil if visited.include?('PipelineList')
        visited = visited + ['PipelineList']
        [
          PipelineSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PipelineSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelineSummary
    class PipelineSummary
      def self.default(visited=[])
        return nil if visited.include?('PipelineSummary')
        visited = visited + ['PipelineSummary']
        {
          name: 'name',
          version: 1,
          created: Time.now,
          updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['updated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated]).to_i unless stub[:updated].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListWebhooks
    class ListWebhooks
      def self.default(visited=[])
        {
          webhooks: WebhookList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['webhooks'] = Stubs::WebhookList.stub(stub[:webhooks]) unless stub[:webhooks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WebhookList
    class WebhookList
      def self.default(visited=[])
        return nil if visited.include?('WebhookList')
        visited = visited + ['WebhookList']
        [
          ListWebhookItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListWebhookItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListWebhookItem
    class ListWebhookItem
      def self.default(visited=[])
        return nil if visited.include?('ListWebhookItem')
        visited = visited + ['ListWebhookItem']
        {
          definition: WebhookDefinition.default(visited),
          url: 'url',
          error_message: 'error_message',
          error_code: 'error_code',
          last_triggered: Time.now,
          arn: 'arn',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListWebhookItem.new
        data = {}
        data['definition'] = Stubs::WebhookDefinition.stub(stub[:definition]) unless stub[:definition].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['lastTriggered'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_triggered]).to_i unless stub[:last_triggered].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for WebhookDefinition
    class WebhookDefinition
      def self.default(visited=[])
        return nil if visited.include?('WebhookDefinition')
        visited = visited + ['WebhookDefinition']
        {
          name: 'name',
          target_pipeline: 'target_pipeline',
          target_action: 'target_action',
          filters: WebhookFilters.default(visited),
          authentication: 'authentication',
          authentication_configuration: WebhookAuthConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WebhookDefinition.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['targetPipeline'] = stub[:target_pipeline] unless stub[:target_pipeline].nil?
        data['targetAction'] = stub[:target_action] unless stub[:target_action].nil?
        data['filters'] = Stubs::WebhookFilters.stub(stub[:filters]) unless stub[:filters].nil?
        data['authentication'] = stub[:authentication] unless stub[:authentication].nil?
        data['authenticationConfiguration'] = Stubs::WebhookAuthConfiguration.stub(stub[:authentication_configuration]) unless stub[:authentication_configuration].nil?
        data
      end
    end

    # Structure Stubber for WebhookAuthConfiguration
    class WebhookAuthConfiguration
      def self.default(visited=[])
        return nil if visited.include?('WebhookAuthConfiguration')
        visited = visited + ['WebhookAuthConfiguration']
        {
          allowed_ip_range: 'allowed_ip_range',
          secret_token: 'secret_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebhookAuthConfiguration.new
        data = {}
        data['AllowedIPRange'] = stub[:allowed_ip_range] unless stub[:allowed_ip_range].nil?
        data['SecretToken'] = stub[:secret_token] unless stub[:secret_token].nil?
        data
      end
    end

    # List Stubber for WebhookFilters
    class WebhookFilters
      def self.default(visited=[])
        return nil if visited.include?('WebhookFilters')
        visited = visited + ['WebhookFilters']
        [
          WebhookFilterRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WebhookFilterRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WebhookFilterRule
    class WebhookFilterRule
      def self.default(visited=[])
        return nil if visited.include?('WebhookFilterRule')
        visited = visited + ['WebhookFilterRule']
        {
          json_path: 'json_path',
          match_equals: 'match_equals',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebhookFilterRule.new
        data = {}
        data['jsonPath'] = stub[:json_path] unless stub[:json_path].nil?
        data['matchEquals'] = stub[:match_equals] unless stub[:match_equals].nil?
        data
      end
    end

    # Operation Stubber for PollForJobs
    class PollForJobs
      def self.default(visited=[])
        {
          jobs: JobList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['jobs'] = Stubs::JobList.stub(stub[:jobs]) unless stub[:jobs].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for JobList
    class JobList
      def self.default(visited=[])
        return nil if visited.include?('JobList')
        visited = visited + ['JobList']
        [
          Job.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Job.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          id: 'id',
          data: JobData.default(visited),
          nonce: 'nonce',
          account_id: 'account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['data'] = Stubs::JobData.stub(stub[:data]) unless stub[:data].nil?
        data['nonce'] = stub[:nonce] unless stub[:nonce].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data
      end
    end

    # Operation Stubber for PollForThirdPartyJobs
    class PollForThirdPartyJobs
      def self.default(visited=[])
        {
          jobs: ThirdPartyJobList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['jobs'] = Stubs::ThirdPartyJobList.stub(stub[:jobs]) unless stub[:jobs].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ThirdPartyJobList
    class ThirdPartyJobList
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyJobList')
        visited = visited + ['ThirdPartyJobList']
        [
          ThirdPartyJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ThirdPartyJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThirdPartyJob
    class ThirdPartyJob
      def self.default(visited=[])
        return nil if visited.include?('ThirdPartyJob')
        visited = visited + ['ThirdPartyJob']
        {
          client_id: 'client_id',
          job_id: 'job_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThirdPartyJob.new
        data = {}
        data['clientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data
      end
    end

    # Operation Stubber for PutActionRevision
    class PutActionRevision
      def self.default(visited=[])
        {
          new_revision: false,
          pipeline_execution_id: 'pipeline_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['newRevision'] = stub[:new_revision] unless stub[:new_revision].nil?
        data['pipelineExecutionId'] = stub[:pipeline_execution_id] unless stub[:pipeline_execution_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutApprovalResult
    class PutApprovalResult
      def self.default(visited=[])
        {
          approved_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:approved_at]).to_i unless stub[:approved_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutJobFailureResult
    class PutJobFailureResult
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

    # Operation Stubber for PutJobSuccessResult
    class PutJobSuccessResult
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

    # Operation Stubber for PutThirdPartyJobFailureResult
    class PutThirdPartyJobFailureResult
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

    # Operation Stubber for PutThirdPartyJobSuccessResult
    class PutThirdPartyJobSuccessResult
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

    # Operation Stubber for PutWebhook
    class PutWebhook
      def self.default(visited=[])
        {
          webhook: ListWebhookItem.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['webhook'] = Stubs::ListWebhookItem.stub(stub[:webhook]) unless stub[:webhook].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterWebhookWithThirdParty
    class RegisterWebhookWithThirdParty
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

    # Operation Stubber for RetryStageExecution
    class RetryStageExecution
      def self.default(visited=[])
        {
          pipeline_execution_id: 'pipeline_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineExecutionId'] = stub[:pipeline_execution_id] unless stub[:pipeline_execution_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartPipelineExecution
    class StartPipelineExecution
      def self.default(visited=[])
        {
          pipeline_execution_id: 'pipeline_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineExecutionId'] = stub[:pipeline_execution_id] unless stub[:pipeline_execution_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopPipelineExecution
    class StopPipelineExecution
      def self.default(visited=[])
        {
          pipeline_execution_id: 'pipeline_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineExecutionId'] = stub[:pipeline_execution_id] unless stub[:pipeline_execution_id].nil?
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

    # Operation Stubber for UpdateActionType
    class UpdateActionType
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

    # Operation Stubber for UpdatePipeline
    class UpdatePipeline
      def self.default(visited=[])
        {
          pipeline: PipelineDeclaration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipeline'] = Stubs::PipelineDeclaration.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
