# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Imagebuilder
  module Stubs

    # Operation Stubber for CancelImageCreation
    class CancelImageCreation
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          image_build_version_arn: 'image_build_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['imageBuildVersionArn'] = stub[:image_build_version_arn] unless stub[:image_build_version_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateComponent
    class CreateComponent
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          component_build_version_arn: 'component_build_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['componentBuildVersionArn'] = stub[:component_build_version_arn] unless stub[:component_build_version_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateContainerRecipe
    class CreateContainerRecipe
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          container_recipe_arn: 'container_recipe_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['containerRecipeArn'] = stub[:container_recipe_arn] unless stub[:container_recipe_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDistributionConfiguration
    class CreateDistributionConfiguration
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          distribution_configuration_arn: 'distribution_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['distributionConfigurationArn'] = stub[:distribution_configuration_arn] unless stub[:distribution_configuration_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateImage
    class CreateImage
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          image_build_version_arn: 'image_build_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['imageBuildVersionArn'] = stub[:image_build_version_arn] unless stub[:image_build_version_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateImagePipeline
    class CreateImagePipeline
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          image_pipeline_arn: 'image_pipeline_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['imagePipelineArn'] = stub[:image_pipeline_arn] unless stub[:image_pipeline_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateImageRecipe
    class CreateImageRecipe
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          image_recipe_arn: 'image_recipe_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['imageRecipeArn'] = stub[:image_recipe_arn] unless stub[:image_recipe_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateInfrastructureConfiguration
    class CreateInfrastructureConfiguration
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          infrastructure_configuration_arn: 'infrastructure_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['infrastructureConfigurationArn'] = stub[:infrastructure_configuration_arn] unless stub[:infrastructure_configuration_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteComponent
    class DeleteComponent
      def self.default(visited=[])
        {
          request_id: 'request_id',
          component_build_version_arn: 'component_build_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['componentBuildVersionArn'] = stub[:component_build_version_arn] unless stub[:component_build_version_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteContainerRecipe
    class DeleteContainerRecipe
      def self.default(visited=[])
        {
          request_id: 'request_id',
          container_recipe_arn: 'container_recipe_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['containerRecipeArn'] = stub[:container_recipe_arn] unless stub[:container_recipe_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDistributionConfiguration
    class DeleteDistributionConfiguration
      def self.default(visited=[])
        {
          request_id: 'request_id',
          distribution_configuration_arn: 'distribution_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['distributionConfigurationArn'] = stub[:distribution_configuration_arn] unless stub[:distribution_configuration_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteImage
    class DeleteImage
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_build_version_arn: 'image_build_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageBuildVersionArn'] = stub[:image_build_version_arn] unless stub[:image_build_version_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteImagePipeline
    class DeleteImagePipeline
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_pipeline_arn: 'image_pipeline_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imagePipelineArn'] = stub[:image_pipeline_arn] unless stub[:image_pipeline_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteImageRecipe
    class DeleteImageRecipe
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_recipe_arn: 'image_recipe_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageRecipeArn'] = stub[:image_recipe_arn] unless stub[:image_recipe_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteInfrastructureConfiguration
    class DeleteInfrastructureConfiguration
      def self.default(visited=[])
        {
          request_id: 'request_id',
          infrastructure_configuration_arn: 'infrastructure_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['infrastructureConfigurationArn'] = stub[:infrastructure_configuration_arn] unless stub[:infrastructure_configuration_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetComponent
    class GetComponent
      def self.default(visited=[])
        {
          request_id: 'request_id',
          component: Stubs::Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['component'] = Stubs::Component.stub(stub[:component]) unless stub[:component].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Component
    class Component
      def self.default(visited=[])
        return nil if visited.include?('Component')
        visited = visited + ['Component']
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          description: 'description',
          change_description: 'change_description',
          type: 'type',
          platform: 'platform',
          supported_os_versions: Stubs::OsVersionList.default(visited),
          state: Stubs::ComponentState.default(visited),
          parameters: Stubs::ComponentParameterDetailList.default(visited),
          owner: 'owner',
          data: 'data',
          kms_key_id: 'kms_key_id',
          encrypted: false,
          date_created: 'date_created',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Component.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['changeDescription'] = stub[:change_description] unless stub[:change_description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['supportedOsVersions'] = Stubs::OsVersionList.stub(stub[:supported_os_versions]) unless stub[:supported_os_versions].nil?
        data['state'] = Stubs::ComponentState.stub(stub[:state]) unless stub[:state].nil?
        data['parameters'] = Stubs::ComponentParameterDetailList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['data'] = stub[:data] unless stub[:data].nil?
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
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

    # List Stubber for ComponentParameterDetailList
    class ComponentParameterDetailList
      def self.default(visited=[])
        return nil if visited.include?('ComponentParameterDetailList')
        visited = visited + ['ComponentParameterDetailList']
        [
          Stubs::ComponentParameterDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentParameterDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentParameterDetail
    class ComponentParameterDetail
      def self.default(visited=[])
        return nil if visited.include?('ComponentParameterDetail')
        visited = visited + ['ComponentParameterDetail']
        {
          name: 'name',
          type: 'type',
          default_value: Stubs::ComponentParameterValueList.default(visited),
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentParameterDetail.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['defaultValue'] = Stubs::ComponentParameterValueList.stub(stub[:default_value]) unless stub[:default_value].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # List Stubber for ComponentParameterValueList
    class ComponentParameterValueList
      def self.default(visited=[])
        return nil if visited.include?('ComponentParameterValueList')
        visited = visited + ['ComponentParameterValueList']
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

    # Structure Stubber for ComponentState
    class ComponentState
      def self.default(visited=[])
        return nil if visited.include?('ComponentState')
        visited = visited + ['ComponentState']
        {
          status: 'status',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentState.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for OsVersionList
    class OsVersionList
      def self.default(visited=[])
        return nil if visited.include?('OsVersionList')
        visited = visited + ['OsVersionList']
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

    # Operation Stubber for GetComponentPolicy
    class GetComponentPolicy
      def self.default(visited=[])
        {
          request_id: 'request_id',
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetContainerRecipe
    class GetContainerRecipe
      def self.default(visited=[])
        {
          request_id: 'request_id',
          container_recipe: Stubs::ContainerRecipe.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['containerRecipe'] = Stubs::ContainerRecipe.stub(stub[:container_recipe]) unless stub[:container_recipe].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ContainerRecipe
    class ContainerRecipe
      def self.default(visited=[])
        return nil if visited.include?('ContainerRecipe')
        visited = visited + ['ContainerRecipe']
        {
          arn: 'arn',
          container_type: 'container_type',
          name: 'name',
          description: 'description',
          platform: 'platform',
          owner: 'owner',
          version: 'version',
          components: Stubs::ComponentConfigurationList.default(visited),
          instance_configuration: Stubs::InstanceConfiguration.default(visited),
          dockerfile_template_data: 'dockerfile_template_data',
          kms_key_id: 'kms_key_id',
          encrypted: false,
          parent_image: 'parent_image',
          date_created: 'date_created',
          tags: Stubs::TagMap.default(visited),
          working_directory: 'working_directory',
          target_repository: Stubs::TargetContainerRepository.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerRecipe.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['containerType'] = stub[:container_type] unless stub[:container_type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['components'] = Stubs::ComponentConfigurationList.stub(stub[:components]) unless stub[:components].nil?
        data['instanceConfiguration'] = Stubs::InstanceConfiguration.stub(stub[:instance_configuration]) unless stub[:instance_configuration].nil?
        data['dockerfileTemplateData'] = stub[:dockerfile_template_data] unless stub[:dockerfile_template_data].nil?
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['parentImage'] = stub[:parent_image] unless stub[:parent_image].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['workingDirectory'] = stub[:working_directory] unless stub[:working_directory].nil?
        data['targetRepository'] = Stubs::TargetContainerRepository.stub(stub[:target_repository]) unless stub[:target_repository].nil?
        data
      end
    end

    # Structure Stubber for TargetContainerRepository
    class TargetContainerRepository
      def self.default(visited=[])
        return nil if visited.include?('TargetContainerRepository')
        visited = visited + ['TargetContainerRepository']
        {
          service: 'service',
          repository_name: 'repository_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetContainerRepository.new
        data = {}
        data['service'] = stub[:service] unless stub[:service].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data
      end
    end

    # Structure Stubber for InstanceConfiguration
    class InstanceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InstanceConfiguration')
        visited = visited + ['InstanceConfiguration']
        {
          image: 'image',
          block_device_mappings: Stubs::InstanceBlockDeviceMappings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceConfiguration.new
        data = {}
        data['image'] = stub[:image] unless stub[:image].nil?
        data['blockDeviceMappings'] = Stubs::InstanceBlockDeviceMappings.stub(stub[:block_device_mappings]) unless stub[:block_device_mappings].nil?
        data
      end
    end

    # List Stubber for InstanceBlockDeviceMappings
    class InstanceBlockDeviceMappings
      def self.default(visited=[])
        return nil if visited.include?('InstanceBlockDeviceMappings')
        visited = visited + ['InstanceBlockDeviceMappings']
        [
          Stubs::InstanceBlockDeviceMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceBlockDeviceMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceBlockDeviceMapping
    class InstanceBlockDeviceMapping
      def self.default(visited=[])
        return nil if visited.include?('InstanceBlockDeviceMapping')
        visited = visited + ['InstanceBlockDeviceMapping']
        {
          device_name: 'device_name',
          ebs: Stubs::EbsInstanceBlockDeviceSpecification.default(visited),
          virtual_name: 'virtual_name',
          no_device: 'no_device',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceBlockDeviceMapping.new
        data = {}
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['ebs'] = Stubs::EbsInstanceBlockDeviceSpecification.stub(stub[:ebs]) unless stub[:ebs].nil?
        data['virtualName'] = stub[:virtual_name] unless stub[:virtual_name].nil?
        data['noDevice'] = stub[:no_device] unless stub[:no_device].nil?
        data
      end
    end

    # Structure Stubber for EbsInstanceBlockDeviceSpecification
    class EbsInstanceBlockDeviceSpecification
      def self.default(visited=[])
        return nil if visited.include?('EbsInstanceBlockDeviceSpecification')
        visited = visited + ['EbsInstanceBlockDeviceSpecification']
        {
          encrypted: false,
          delete_on_termination: false,
          iops: 1,
          kms_key_id: 'kms_key_id',
          snapshot_id: 'snapshot_id',
          volume_size: 1,
          volume_type: 'volume_type',
          throughput: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EbsInstanceBlockDeviceSpecification.new
        data = {}
        data['encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['deleteOnTermination'] = stub[:delete_on_termination] unless stub[:delete_on_termination].nil?
        data['iops'] = stub[:iops] unless stub[:iops].nil?
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['snapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['volumeSize'] = stub[:volume_size] unless stub[:volume_size].nil?
        data['volumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['throughput'] = stub[:throughput] unless stub[:throughput].nil?
        data
      end
    end

    # List Stubber for ComponentConfigurationList
    class ComponentConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('ComponentConfigurationList')
        visited = visited + ['ComponentConfigurationList']
        [
          Stubs::ComponentConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentConfiguration
    class ComponentConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ComponentConfiguration')
        visited = visited + ['ComponentConfiguration']
        {
          component_arn: 'component_arn',
          parameters: Stubs::ComponentParameterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentConfiguration.new
        data = {}
        data['componentArn'] = stub[:component_arn] unless stub[:component_arn].nil?
        data['parameters'] = Stubs::ComponentParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # List Stubber for ComponentParameterList
    class ComponentParameterList
      def self.default(visited=[])
        return nil if visited.include?('ComponentParameterList')
        visited = visited + ['ComponentParameterList']
        [
          Stubs::ComponentParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentParameter
    class ComponentParameter
      def self.default(visited=[])
        return nil if visited.include?('ComponentParameter')
        visited = visited + ['ComponentParameter']
        {
          name: 'name',
          value: Stubs::ComponentParameterValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentParameter.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = Stubs::ComponentParameterValueList.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetContainerRecipePolicy
    class GetContainerRecipePolicy
      def self.default(visited=[])
        {
          request_id: 'request_id',
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDistributionConfiguration
    class GetDistributionConfiguration
      def self.default(visited=[])
        {
          request_id: 'request_id',
          distribution_configuration: Stubs::DistributionConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['distributionConfiguration'] = Stubs::DistributionConfiguration.stub(stub[:distribution_configuration]) unless stub[:distribution_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DistributionConfiguration
    class DistributionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DistributionConfiguration')
        visited = visited + ['DistributionConfiguration']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          distributions: Stubs::DistributionList.default(visited),
          timeout_minutes: 1,
          date_created: 'date_created',
          date_updated: 'date_updated',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DistributionConfiguration.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['distributions'] = Stubs::DistributionList.stub(stub[:distributions]) unless stub[:distributions].nil?
        data['timeoutMinutes'] = stub[:timeout_minutes] unless stub[:timeout_minutes].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['dateUpdated'] = stub[:date_updated] unless stub[:date_updated].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for DistributionList
    class DistributionList
      def self.default(visited=[])
        return nil if visited.include?('DistributionList')
        visited = visited + ['DistributionList']
        [
          Stubs::Distribution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Distribution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Distribution
    class Distribution
      def self.default(visited=[])
        return nil if visited.include?('Distribution')
        visited = visited + ['Distribution']
        {
          region: 'region',
          ami_distribution_configuration: Stubs::AmiDistributionConfiguration.default(visited),
          container_distribution_configuration: Stubs::ContainerDistributionConfiguration.default(visited),
          license_configuration_arns: Stubs::LicenseConfigurationArnList.default(visited),
          launch_template_configurations: Stubs::LaunchTemplateConfigurationList.default(visited),
          s3_export_configuration: Stubs::S3ExportConfiguration.default(visited),
          fast_launch_configurations: Stubs::FastLaunchConfigurationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Distribution.new
        data = {}
        data['region'] = stub[:region] unless stub[:region].nil?
        data['amiDistributionConfiguration'] = Stubs::AmiDistributionConfiguration.stub(stub[:ami_distribution_configuration]) unless stub[:ami_distribution_configuration].nil?
        data['containerDistributionConfiguration'] = Stubs::ContainerDistributionConfiguration.stub(stub[:container_distribution_configuration]) unless stub[:container_distribution_configuration].nil?
        data['licenseConfigurationArns'] = Stubs::LicenseConfigurationArnList.stub(stub[:license_configuration_arns]) unless stub[:license_configuration_arns].nil?
        data['launchTemplateConfigurations'] = Stubs::LaunchTemplateConfigurationList.stub(stub[:launch_template_configurations]) unless stub[:launch_template_configurations].nil?
        data['s3ExportConfiguration'] = Stubs::S3ExportConfiguration.stub(stub[:s3_export_configuration]) unless stub[:s3_export_configuration].nil?
        data['fastLaunchConfigurations'] = Stubs::FastLaunchConfigurationList.stub(stub[:fast_launch_configurations]) unless stub[:fast_launch_configurations].nil?
        data
      end
    end

    # List Stubber for FastLaunchConfigurationList
    class FastLaunchConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('FastLaunchConfigurationList')
        visited = visited + ['FastLaunchConfigurationList']
        [
          Stubs::FastLaunchConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FastLaunchConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FastLaunchConfiguration
    class FastLaunchConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FastLaunchConfiguration')
        visited = visited + ['FastLaunchConfiguration']
        {
          enabled: false,
          snapshot_configuration: Stubs::FastLaunchSnapshotConfiguration.default(visited),
          max_parallel_launches: 1,
          launch_template: Stubs::FastLaunchLaunchTemplateSpecification.default(visited),
          account_id: 'account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::FastLaunchConfiguration.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['snapshotConfiguration'] = Stubs::FastLaunchSnapshotConfiguration.stub(stub[:snapshot_configuration]) unless stub[:snapshot_configuration].nil?
        data['maxParallelLaunches'] = stub[:max_parallel_launches] unless stub[:max_parallel_launches].nil?
        data['launchTemplate'] = Stubs::FastLaunchLaunchTemplateSpecification.stub(stub[:launch_template]) unless stub[:launch_template].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data
      end
    end

    # Structure Stubber for FastLaunchLaunchTemplateSpecification
    class FastLaunchLaunchTemplateSpecification
      def self.default(visited=[])
        return nil if visited.include?('FastLaunchLaunchTemplateSpecification')
        visited = visited + ['FastLaunchLaunchTemplateSpecification']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          launch_template_version: 'launch_template_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::FastLaunchLaunchTemplateSpecification.new
        data = {}
        data['launchTemplateId'] = stub[:launch_template_id] unless stub[:launch_template_id].nil?
        data['launchTemplateName'] = stub[:launch_template_name] unless stub[:launch_template_name].nil?
        data['launchTemplateVersion'] = stub[:launch_template_version] unless stub[:launch_template_version].nil?
        data
      end
    end

    # Structure Stubber for FastLaunchSnapshotConfiguration
    class FastLaunchSnapshotConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FastLaunchSnapshotConfiguration')
        visited = visited + ['FastLaunchSnapshotConfiguration']
        {
          target_resource_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FastLaunchSnapshotConfiguration.new
        data = {}
        data['targetResourceCount'] = stub[:target_resource_count] unless stub[:target_resource_count].nil?
        data
      end
    end

    # Structure Stubber for S3ExportConfiguration
    class S3ExportConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3ExportConfiguration')
        visited = visited + ['S3ExportConfiguration']
        {
          role_name: 'role_name',
          disk_image_format: 'disk_image_format',
          s3_bucket: 's3_bucket',
          s3_prefix: 's3_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ExportConfiguration.new
        data = {}
        data['roleName'] = stub[:role_name] unless stub[:role_name].nil?
        data['diskImageFormat'] = stub[:disk_image_format] unless stub[:disk_image_format].nil?
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['s3Prefix'] = stub[:s3_prefix] unless stub[:s3_prefix].nil?
        data
      end
    end

    # List Stubber for LaunchTemplateConfigurationList
    class LaunchTemplateConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateConfigurationList')
        visited = visited + ['LaunchTemplateConfigurationList']
        [
          Stubs::LaunchTemplateConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LaunchTemplateConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LaunchTemplateConfiguration
    class LaunchTemplateConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateConfiguration')
        visited = visited + ['LaunchTemplateConfiguration']
        {
          launch_template_id: 'launch_template_id',
          account_id: 'account_id',
          set_default_version: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchTemplateConfiguration.new
        data = {}
        data['launchTemplateId'] = stub[:launch_template_id] unless stub[:launch_template_id].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['setDefaultVersion'] = stub[:set_default_version] unless stub[:set_default_version].nil?
        data
      end
    end

    # List Stubber for LicenseConfigurationArnList
    class LicenseConfigurationArnList
      def self.default(visited=[])
        return nil if visited.include?('LicenseConfigurationArnList')
        visited = visited + ['LicenseConfigurationArnList']
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

    # Structure Stubber for ContainerDistributionConfiguration
    class ContainerDistributionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ContainerDistributionConfiguration')
        visited = visited + ['ContainerDistributionConfiguration']
        {
          description: 'description',
          container_tags: Stubs::StringList.default(visited),
          target_repository: Stubs::TargetContainerRepository.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerDistributionConfiguration.new
        data = {}
        data['description'] = stub[:description] unless stub[:description].nil?
        data['containerTags'] = Stubs::StringList.stub(stub[:container_tags]) unless stub[:container_tags].nil?
        data['targetRepository'] = Stubs::TargetContainerRepository.stub(stub[:target_repository]) unless stub[:target_repository].nil?
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

    # Structure Stubber for AmiDistributionConfiguration
    class AmiDistributionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AmiDistributionConfiguration')
        visited = visited + ['AmiDistributionConfiguration']
        {
          name: 'name',
          description: 'description',
          target_account_ids: Stubs::AccountList.default(visited),
          ami_tags: Stubs::TagMap.default(visited),
          kms_key_id: 'kms_key_id',
          launch_permission: Stubs::LaunchPermissionConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AmiDistributionConfiguration.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['targetAccountIds'] = Stubs::AccountList.stub(stub[:target_account_ids]) unless stub[:target_account_ids].nil?
        data['amiTags'] = Stubs::TagMap.stub(stub[:ami_tags]) unless stub[:ami_tags].nil?
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['launchPermission'] = Stubs::LaunchPermissionConfiguration.stub(stub[:launch_permission]) unless stub[:launch_permission].nil?
        data
      end
    end

    # Structure Stubber for LaunchPermissionConfiguration
    class LaunchPermissionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LaunchPermissionConfiguration')
        visited = visited + ['LaunchPermissionConfiguration']
        {
          user_ids: Stubs::AccountList.default(visited),
          user_groups: Stubs::StringList.default(visited),
          organization_arns: Stubs::OrganizationArnList.default(visited),
          organizational_unit_arns: Stubs::OrganizationalUnitArnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchPermissionConfiguration.new
        data = {}
        data['userIds'] = Stubs::AccountList.stub(stub[:user_ids]) unless stub[:user_ids].nil?
        data['userGroups'] = Stubs::StringList.stub(stub[:user_groups]) unless stub[:user_groups].nil?
        data['organizationArns'] = Stubs::OrganizationArnList.stub(stub[:organization_arns]) unless stub[:organization_arns].nil?
        data['organizationalUnitArns'] = Stubs::OrganizationalUnitArnList.stub(stub[:organizational_unit_arns]) unless stub[:organizational_unit_arns].nil?
        data
      end
    end

    # List Stubber for OrganizationalUnitArnList
    class OrganizationalUnitArnList
      def self.default(visited=[])
        return nil if visited.include?('OrganizationalUnitArnList')
        visited = visited + ['OrganizationalUnitArnList']
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

    # List Stubber for OrganizationArnList
    class OrganizationArnList
      def self.default(visited=[])
        return nil if visited.include?('OrganizationArnList')
        visited = visited + ['OrganizationArnList']
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

    # List Stubber for AccountList
    class AccountList
      def self.default(visited=[])
        return nil if visited.include?('AccountList')
        visited = visited + ['AccountList']
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

    # Operation Stubber for GetImage
    class GetImage
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image: Stubs::Image.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['image'] = Stubs::Image.stub(stub[:image]) unless stub[:image].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Image
    class Image
      def self.default(visited=[])
        return nil if visited.include?('Image')
        visited = visited + ['Image']
        {
          arn: 'arn',
          type: 'type',
          name: 'name',
          version: 'version',
          platform: 'platform',
          enhanced_image_metadata_enabled: false,
          os_version: 'os_version',
          state: Stubs::ImageState.default(visited),
          image_recipe: Stubs::ImageRecipe.default(visited),
          container_recipe: Stubs::ContainerRecipe.default(visited),
          source_pipeline_name: 'source_pipeline_name',
          source_pipeline_arn: 'source_pipeline_arn',
          infrastructure_configuration: Stubs::InfrastructureConfiguration.default(visited),
          distribution_configuration: Stubs::DistributionConfiguration.default(visited),
          image_tests_configuration: Stubs::ImageTestsConfiguration.default(visited),
          date_created: 'date_created',
          output_resources: Stubs::OutputResources.default(visited),
          tags: Stubs::TagMap.default(visited),
          build_type: 'build_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Image.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['enhancedImageMetadataEnabled'] = stub[:enhanced_image_metadata_enabled] unless stub[:enhanced_image_metadata_enabled].nil?
        data['osVersion'] = stub[:os_version] unless stub[:os_version].nil?
        data['state'] = Stubs::ImageState.stub(stub[:state]) unless stub[:state].nil?
        data['imageRecipe'] = Stubs::ImageRecipe.stub(stub[:image_recipe]) unless stub[:image_recipe].nil?
        data['containerRecipe'] = Stubs::ContainerRecipe.stub(stub[:container_recipe]) unless stub[:container_recipe].nil?
        data['sourcePipelineName'] = stub[:source_pipeline_name] unless stub[:source_pipeline_name].nil?
        data['sourcePipelineArn'] = stub[:source_pipeline_arn] unless stub[:source_pipeline_arn].nil?
        data['infrastructureConfiguration'] = Stubs::InfrastructureConfiguration.stub(stub[:infrastructure_configuration]) unless stub[:infrastructure_configuration].nil?
        data['distributionConfiguration'] = Stubs::DistributionConfiguration.stub(stub[:distribution_configuration]) unless stub[:distribution_configuration].nil?
        data['imageTestsConfiguration'] = Stubs::ImageTestsConfiguration.stub(stub[:image_tests_configuration]) unless stub[:image_tests_configuration].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['outputResources'] = Stubs::OutputResources.stub(stub[:output_resources]) unless stub[:output_resources].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['buildType'] = stub[:build_type] unless stub[:build_type].nil?
        data
      end
    end

    # Structure Stubber for OutputResources
    class OutputResources
      def self.default(visited=[])
        return nil if visited.include?('OutputResources')
        visited = visited + ['OutputResources']
        {
          amis: Stubs::AmiList.default(visited),
          containers: Stubs::ContainerList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputResources.new
        data = {}
        data['amis'] = Stubs::AmiList.stub(stub[:amis]) unless stub[:amis].nil?
        data['containers'] = Stubs::ContainerList.stub(stub[:containers]) unless stub[:containers].nil?
        data
      end
    end

    # List Stubber for ContainerList
    class ContainerList
      def self.default(visited=[])
        return nil if visited.include?('ContainerList')
        visited = visited + ['ContainerList']
        [
          Stubs::Container.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Container.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Container
    class Container
      def self.default(visited=[])
        return nil if visited.include?('Container')
        visited = visited + ['Container']
        {
          region: 'region',
          image_uris: Stubs::StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Container.new
        data = {}
        data['region'] = stub[:region] unless stub[:region].nil?
        data['imageUris'] = Stubs::StringList.stub(stub[:image_uris]) unless stub[:image_uris].nil?
        data
      end
    end

    # List Stubber for AmiList
    class AmiList
      def self.default(visited=[])
        return nil if visited.include?('AmiList')
        visited = visited + ['AmiList']
        [
          Stubs::Ami.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Ami.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Ami
    class Ami
      def self.default(visited=[])
        return nil if visited.include?('Ami')
        visited = visited + ['Ami']
        {
          region: 'region',
          image: 'image',
          name: 'name',
          description: 'description',
          state: Stubs::ImageState.default(visited),
          account_id: 'account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Ami.new
        data = {}
        data['region'] = stub[:region] unless stub[:region].nil?
        data['image'] = stub[:image] unless stub[:image].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['state'] = Stubs::ImageState.stub(stub[:state]) unless stub[:state].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data
      end
    end

    # Structure Stubber for ImageState
    class ImageState
      def self.default(visited=[])
        return nil if visited.include?('ImageState')
        visited = visited + ['ImageState']
        {
          status: 'status',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageState.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Structure Stubber for ImageTestsConfiguration
    class ImageTestsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ImageTestsConfiguration')
        visited = visited + ['ImageTestsConfiguration']
        {
          image_tests_enabled: false,
          timeout_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageTestsConfiguration.new
        data = {}
        data['imageTestsEnabled'] = stub[:image_tests_enabled] unless stub[:image_tests_enabled].nil?
        data['timeoutMinutes'] = stub[:timeout_minutes] unless stub[:timeout_minutes].nil?
        data
      end
    end

    # Structure Stubber for InfrastructureConfiguration
    class InfrastructureConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InfrastructureConfiguration')
        visited = visited + ['InfrastructureConfiguration']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          instance_types: Stubs::InstanceTypeList.default(visited),
          instance_profile_name: 'instance_profile_name',
          security_group_ids: Stubs::SecurityGroupIds.default(visited),
          subnet_id: 'subnet_id',
          logging: Stubs::Logging.default(visited),
          key_pair: 'key_pair',
          terminate_instance_on_failure: false,
          sns_topic_arn: 'sns_topic_arn',
          date_created: 'date_created',
          date_updated: 'date_updated',
          resource_tags: Stubs::ResourceTagMap.default(visited),
          instance_metadata_options: Stubs::InstanceMetadataOptions.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InfrastructureConfiguration.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['instanceTypes'] = Stubs::InstanceTypeList.stub(stub[:instance_types]) unless stub[:instance_types].nil?
        data['instanceProfileName'] = stub[:instance_profile_name] unless stub[:instance_profile_name].nil?
        data['securityGroupIds'] = Stubs::SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['subnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['logging'] = Stubs::Logging.stub(stub[:logging]) unless stub[:logging].nil?
        data['keyPair'] = stub[:key_pair] unless stub[:key_pair].nil?
        data['terminateInstanceOnFailure'] = stub[:terminate_instance_on_failure] unless stub[:terminate_instance_on_failure].nil?
        data['snsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['dateUpdated'] = stub[:date_updated] unless stub[:date_updated].nil?
        data['resourceTags'] = Stubs::ResourceTagMap.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['instanceMetadataOptions'] = Stubs::InstanceMetadataOptions.stub(stub[:instance_metadata_options]) unless stub[:instance_metadata_options].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for InstanceMetadataOptions
    class InstanceMetadataOptions
      def self.default(visited=[])
        return nil if visited.include?('InstanceMetadataOptions')
        visited = visited + ['InstanceMetadataOptions']
        {
          http_tokens: 'http_tokens',
          http_put_response_hop_limit: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceMetadataOptions.new
        data = {}
        data['httpTokens'] = stub[:http_tokens] unless stub[:http_tokens].nil?
        data['httpPutResponseHopLimit'] = stub[:http_put_response_hop_limit] unless stub[:http_put_response_hop_limit].nil?
        data
      end
    end

    # Map Stubber for ResourceTagMap
    class ResourceTagMap
      def self.default(visited=[])
        return nil if visited.include?('ResourceTagMap')
        visited = visited + ['ResourceTagMap']
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

    # Structure Stubber for Logging
    class Logging
      def self.default(visited=[])
        return nil if visited.include?('Logging')
        visited = visited + ['Logging']
        {
          s3_logs: Stubs::S3Logs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Logging.new
        data = {}
        data['s3Logs'] = Stubs::S3Logs.stub(stub[:s3_logs]) unless stub[:s3_logs].nil?
        data
      end
    end

    # Structure Stubber for S3Logs
    class S3Logs
      def self.default(visited=[])
        return nil if visited.include?('S3Logs')
        visited = visited + ['S3Logs']
        {
          s3_bucket_name: 's3_bucket_name',
          s3_key_prefix: 's3_key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Logs.new
        data = {}
        data['s3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['s3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
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

    # List Stubber for InstanceTypeList
    class InstanceTypeList
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeList')
        visited = visited + ['InstanceTypeList']
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

    # Structure Stubber for ImageRecipe
    class ImageRecipe
      def self.default(visited=[])
        return nil if visited.include?('ImageRecipe')
        visited = visited + ['ImageRecipe']
        {
          arn: 'arn',
          type: 'type',
          name: 'name',
          description: 'description',
          platform: 'platform',
          owner: 'owner',
          version: 'version',
          components: Stubs::ComponentConfigurationList.default(visited),
          parent_image: 'parent_image',
          block_device_mappings: Stubs::InstanceBlockDeviceMappings.default(visited),
          date_created: 'date_created',
          tags: Stubs::TagMap.default(visited),
          working_directory: 'working_directory',
          additional_instance_configuration: Stubs::AdditionalInstanceConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageRecipe.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['components'] = Stubs::ComponentConfigurationList.stub(stub[:components]) unless stub[:components].nil?
        data['parentImage'] = stub[:parent_image] unless stub[:parent_image].nil?
        data['blockDeviceMappings'] = Stubs::InstanceBlockDeviceMappings.stub(stub[:block_device_mappings]) unless stub[:block_device_mappings].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['workingDirectory'] = stub[:working_directory] unless stub[:working_directory].nil?
        data['additionalInstanceConfiguration'] = Stubs::AdditionalInstanceConfiguration.stub(stub[:additional_instance_configuration]) unless stub[:additional_instance_configuration].nil?
        data
      end
    end

    # Structure Stubber for AdditionalInstanceConfiguration
    class AdditionalInstanceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AdditionalInstanceConfiguration')
        visited = visited + ['AdditionalInstanceConfiguration']
        {
          systems_manager_agent: Stubs::SystemsManagerAgent.default(visited),
          user_data_override: 'user_data_override',
        }
      end

      def self.stub(stub)
        stub ||= Types::AdditionalInstanceConfiguration.new
        data = {}
        data['systemsManagerAgent'] = Stubs::SystemsManagerAgent.stub(stub[:systems_manager_agent]) unless stub[:systems_manager_agent].nil?
        data['userDataOverride'] = stub[:user_data_override] unless stub[:user_data_override].nil?
        data
      end
    end

    # Structure Stubber for SystemsManagerAgent
    class SystemsManagerAgent
      def self.default(visited=[])
        return nil if visited.include?('SystemsManagerAgent')
        visited = visited + ['SystemsManagerAgent']
        {
          uninstall_after_build: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SystemsManagerAgent.new
        data = {}
        data['uninstallAfterBuild'] = stub[:uninstall_after_build] unless stub[:uninstall_after_build].nil?
        data
      end
    end

    # Operation Stubber for GetImagePipeline
    class GetImagePipeline
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_pipeline: Stubs::ImagePipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imagePipeline'] = Stubs::ImagePipeline.stub(stub[:image_pipeline]) unless stub[:image_pipeline].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ImagePipeline
    class ImagePipeline
      def self.default(visited=[])
        return nil if visited.include?('ImagePipeline')
        visited = visited + ['ImagePipeline']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          platform: 'platform',
          enhanced_image_metadata_enabled: false,
          image_recipe_arn: 'image_recipe_arn',
          container_recipe_arn: 'container_recipe_arn',
          infrastructure_configuration_arn: 'infrastructure_configuration_arn',
          distribution_configuration_arn: 'distribution_configuration_arn',
          image_tests_configuration: Stubs::ImageTestsConfiguration.default(visited),
          schedule: Stubs::Schedule.default(visited),
          status: 'status',
          date_created: 'date_created',
          date_updated: 'date_updated',
          date_last_run: 'date_last_run',
          date_next_run: 'date_next_run',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImagePipeline.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['enhancedImageMetadataEnabled'] = stub[:enhanced_image_metadata_enabled] unless stub[:enhanced_image_metadata_enabled].nil?
        data['imageRecipeArn'] = stub[:image_recipe_arn] unless stub[:image_recipe_arn].nil?
        data['containerRecipeArn'] = stub[:container_recipe_arn] unless stub[:container_recipe_arn].nil?
        data['infrastructureConfigurationArn'] = stub[:infrastructure_configuration_arn] unless stub[:infrastructure_configuration_arn].nil?
        data['distributionConfigurationArn'] = stub[:distribution_configuration_arn] unless stub[:distribution_configuration_arn].nil?
        data['imageTestsConfiguration'] = Stubs::ImageTestsConfiguration.stub(stub[:image_tests_configuration]) unless stub[:image_tests_configuration].nil?
        data['schedule'] = Stubs::Schedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['dateUpdated'] = stub[:date_updated] unless stub[:date_updated].nil?
        data['dateLastRun'] = stub[:date_last_run] unless stub[:date_last_run].nil?
        data['dateNextRun'] = stub[:date_next_run] unless stub[:date_next_run].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for Schedule
    class Schedule
      def self.default(visited=[])
        return nil if visited.include?('Schedule')
        visited = visited + ['Schedule']
        {
          schedule_expression: 'schedule_expression',
          timezone: 'timezone',
          pipeline_execution_start_condition: 'pipeline_execution_start_condition',
        }
      end

      def self.stub(stub)
        stub ||= Types::Schedule.new
        data = {}
        data['scheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['pipelineExecutionStartCondition'] = stub[:pipeline_execution_start_condition] unless stub[:pipeline_execution_start_condition].nil?
        data
      end
    end

    # Operation Stubber for GetImagePolicy
    class GetImagePolicy
      def self.default(visited=[])
        {
          request_id: 'request_id',
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetImageRecipe
    class GetImageRecipe
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_recipe: Stubs::ImageRecipe.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageRecipe'] = Stubs::ImageRecipe.stub(stub[:image_recipe]) unless stub[:image_recipe].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetImageRecipePolicy
    class GetImageRecipePolicy
      def self.default(visited=[])
        {
          request_id: 'request_id',
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetInfrastructureConfiguration
    class GetInfrastructureConfiguration
      def self.default(visited=[])
        {
          request_id: 'request_id',
          infrastructure_configuration: Stubs::InfrastructureConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['infrastructureConfiguration'] = Stubs::InfrastructureConfiguration.stub(stub[:infrastructure_configuration]) unless stub[:infrastructure_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ImportComponent
    class ImportComponent
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          component_build_version_arn: 'component_build_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['componentBuildVersionArn'] = stub[:component_build_version_arn] unless stub[:component_build_version_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ImportVmImage
    class ImportVmImage
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_arn: 'image_arn',
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListComponentBuildVersions
    class ListComponentBuildVersions
      def self.default(visited=[])
        {
          request_id: 'request_id',
          component_summary_list: Stubs::ComponentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['componentSummaryList'] = Stubs::ComponentSummaryList.stub(stub[:component_summary_list]) unless stub[:component_summary_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentSummaryList
    class ComponentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ComponentSummaryList')
        visited = visited + ['ComponentSummaryList']
        [
          Stubs::ComponentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentSummary
    class ComponentSummary
      def self.default(visited=[])
        return nil if visited.include?('ComponentSummary')
        visited = visited + ['ComponentSummary']
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          platform: 'platform',
          supported_os_versions: Stubs::OsVersionList.default(visited),
          state: Stubs::ComponentState.default(visited),
          type: 'type',
          owner: 'owner',
          description: 'description',
          change_description: 'change_description',
          date_created: 'date_created',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['supportedOsVersions'] = Stubs::OsVersionList.stub(stub[:supported_os_versions]) unless stub[:supported_os_versions].nil?
        data['state'] = Stubs::ComponentState.stub(stub[:state]) unless stub[:state].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['changeDescription'] = stub[:change_description] unless stub[:change_description].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListComponents
    class ListComponents
      def self.default(visited=[])
        {
          request_id: 'request_id',
          component_version_list: Stubs::ComponentVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['componentVersionList'] = Stubs::ComponentVersionList.stub(stub[:component_version_list]) unless stub[:component_version_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentVersionList
    class ComponentVersionList
      def self.default(visited=[])
        return nil if visited.include?('ComponentVersionList')
        visited = visited + ['ComponentVersionList']
        [
          Stubs::ComponentVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentVersion
    class ComponentVersion
      def self.default(visited=[])
        return nil if visited.include?('ComponentVersion')
        visited = visited + ['ComponentVersion']
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          description: 'description',
          platform: 'platform',
          supported_os_versions: Stubs::OsVersionList.default(visited),
          type: 'type',
          owner: 'owner',
          date_created: 'date_created',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentVersion.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['supportedOsVersions'] = Stubs::OsVersionList.stub(stub[:supported_os_versions]) unless stub[:supported_os_versions].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data
      end
    end

    # Operation Stubber for ListContainerRecipes
    class ListContainerRecipes
      def self.default(visited=[])
        {
          request_id: 'request_id',
          container_recipe_summary_list: Stubs::ContainerRecipeSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['containerRecipeSummaryList'] = Stubs::ContainerRecipeSummaryList.stub(stub[:container_recipe_summary_list]) unless stub[:container_recipe_summary_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ContainerRecipeSummaryList
    class ContainerRecipeSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ContainerRecipeSummaryList')
        visited = visited + ['ContainerRecipeSummaryList']
        [
          Stubs::ContainerRecipeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContainerRecipeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContainerRecipeSummary
    class ContainerRecipeSummary
      def self.default(visited=[])
        return nil if visited.include?('ContainerRecipeSummary')
        visited = visited + ['ContainerRecipeSummary']
        {
          arn: 'arn',
          container_type: 'container_type',
          name: 'name',
          platform: 'platform',
          owner: 'owner',
          parent_image: 'parent_image',
          date_created: 'date_created',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerRecipeSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['containerType'] = stub[:container_type] unless stub[:container_type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['parentImage'] = stub[:parent_image] unless stub[:parent_image].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListDistributionConfigurations
    class ListDistributionConfigurations
      def self.default(visited=[])
        {
          request_id: 'request_id',
          distribution_configuration_summary_list: Stubs::DistributionConfigurationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['distributionConfigurationSummaryList'] = Stubs::DistributionConfigurationSummaryList.stub(stub[:distribution_configuration_summary_list]) unless stub[:distribution_configuration_summary_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DistributionConfigurationSummaryList
    class DistributionConfigurationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DistributionConfigurationSummaryList')
        visited = visited + ['DistributionConfigurationSummaryList']
        [
          Stubs::DistributionConfigurationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DistributionConfigurationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DistributionConfigurationSummary
    class DistributionConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('DistributionConfigurationSummary')
        visited = visited + ['DistributionConfigurationSummary']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          date_created: 'date_created',
          date_updated: 'date_updated',
          tags: Stubs::TagMap.default(visited),
          regions: Stubs::RegionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DistributionConfigurationSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['dateUpdated'] = stub[:date_updated] unless stub[:date_updated].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['regions'] = Stubs::RegionList.stub(stub[:regions]) unless stub[:regions].nil?
        data
      end
    end

    # List Stubber for RegionList
    class RegionList
      def self.default(visited=[])
        return nil if visited.include?('RegionList')
        visited = visited + ['RegionList']
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

    # Operation Stubber for ListImageBuildVersions
    class ListImageBuildVersions
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_summary_list: Stubs::ImageSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageSummaryList'] = Stubs::ImageSummaryList.stub(stub[:image_summary_list]) unless stub[:image_summary_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ImageSummaryList
    class ImageSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ImageSummaryList')
        visited = visited + ['ImageSummaryList']
        [
          Stubs::ImageSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageSummary
    class ImageSummary
      def self.default(visited=[])
        return nil if visited.include?('ImageSummary')
        visited = visited + ['ImageSummary']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          version: 'version',
          platform: 'platform',
          os_version: 'os_version',
          state: Stubs::ImageState.default(visited),
          owner: 'owner',
          date_created: 'date_created',
          output_resources: Stubs::OutputResources.default(visited),
          tags: Stubs::TagMap.default(visited),
          build_type: 'build_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['osVersion'] = stub[:os_version] unless stub[:os_version].nil?
        data['state'] = Stubs::ImageState.stub(stub[:state]) unless stub[:state].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['outputResources'] = Stubs::OutputResources.stub(stub[:output_resources]) unless stub[:output_resources].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['buildType'] = stub[:build_type] unless stub[:build_type].nil?
        data
      end
    end

    # Operation Stubber for ListImagePackages
    class ListImagePackages
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_package_list: Stubs::ImagePackageList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imagePackageList'] = Stubs::ImagePackageList.stub(stub[:image_package_list]) unless stub[:image_package_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ImagePackageList
    class ImagePackageList
      def self.default(visited=[])
        return nil if visited.include?('ImagePackageList')
        visited = visited + ['ImagePackageList']
        [
          Stubs::ImagePackage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImagePackage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImagePackage
    class ImagePackage
      def self.default(visited=[])
        return nil if visited.include?('ImagePackage')
        visited = visited + ['ImagePackage']
        {
          package_name: 'package_name',
          package_version: 'package_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImagePackage.new
        data = {}
        data['packageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['packageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data
      end
    end

    # Operation Stubber for ListImagePipelineImages
    class ListImagePipelineImages
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_summary_list: Stubs::ImageSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageSummaryList'] = Stubs::ImageSummaryList.stub(stub[:image_summary_list]) unless stub[:image_summary_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListImagePipelines
    class ListImagePipelines
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_pipeline_list: Stubs::ImagePipelineList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imagePipelineList'] = Stubs::ImagePipelineList.stub(stub[:image_pipeline_list]) unless stub[:image_pipeline_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ImagePipelineList
    class ImagePipelineList
      def self.default(visited=[])
        return nil if visited.include?('ImagePipelineList')
        visited = visited + ['ImagePipelineList']
        [
          Stubs::ImagePipeline.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImagePipeline.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListImageRecipes
    class ListImageRecipes
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_recipe_summary_list: Stubs::ImageRecipeSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageRecipeSummaryList'] = Stubs::ImageRecipeSummaryList.stub(stub[:image_recipe_summary_list]) unless stub[:image_recipe_summary_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ImageRecipeSummaryList
    class ImageRecipeSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ImageRecipeSummaryList')
        visited = visited + ['ImageRecipeSummaryList']
        [
          Stubs::ImageRecipeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageRecipeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageRecipeSummary
    class ImageRecipeSummary
      def self.default(visited=[])
        return nil if visited.include?('ImageRecipeSummary')
        visited = visited + ['ImageRecipeSummary']
        {
          arn: 'arn',
          name: 'name',
          platform: 'platform',
          owner: 'owner',
          parent_image: 'parent_image',
          date_created: 'date_created',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageRecipeSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['parentImage'] = stub[:parent_image] unless stub[:parent_image].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListImages
    class ListImages
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_version_list: Stubs::ImageVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageVersionList'] = Stubs::ImageVersionList.stub(stub[:image_version_list]) unless stub[:image_version_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ImageVersionList
    class ImageVersionList
      def self.default(visited=[])
        return nil if visited.include?('ImageVersionList')
        visited = visited + ['ImageVersionList']
        [
          Stubs::ImageVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageVersion
    class ImageVersion
      def self.default(visited=[])
        return nil if visited.include?('ImageVersion')
        visited = visited + ['ImageVersion']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          version: 'version',
          platform: 'platform',
          os_version: 'os_version',
          owner: 'owner',
          date_created: 'date_created',
          build_type: 'build_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageVersion.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['osVersion'] = stub[:os_version] unless stub[:os_version].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['buildType'] = stub[:build_type] unless stub[:build_type].nil?
        data
      end
    end

    # Operation Stubber for ListInfrastructureConfigurations
    class ListInfrastructureConfigurations
      def self.default(visited=[])
        {
          request_id: 'request_id',
          infrastructure_configuration_summary_list: Stubs::InfrastructureConfigurationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['infrastructureConfigurationSummaryList'] = Stubs::InfrastructureConfigurationSummaryList.stub(stub[:infrastructure_configuration_summary_list]) unless stub[:infrastructure_configuration_summary_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InfrastructureConfigurationSummaryList
    class InfrastructureConfigurationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('InfrastructureConfigurationSummaryList')
        visited = visited + ['InfrastructureConfigurationSummaryList']
        [
          Stubs::InfrastructureConfigurationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InfrastructureConfigurationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InfrastructureConfigurationSummary
    class InfrastructureConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('InfrastructureConfigurationSummary')
        visited = visited + ['InfrastructureConfigurationSummary']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          date_created: 'date_created',
          date_updated: 'date_updated',
          resource_tags: Stubs::ResourceTagMap.default(visited),
          tags: Stubs::TagMap.default(visited),
          instance_types: Stubs::InstanceTypeList.default(visited),
          instance_profile_name: 'instance_profile_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::InfrastructureConfigurationSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['dateCreated'] = stub[:date_created] unless stub[:date_created].nil?
        data['dateUpdated'] = stub[:date_updated] unless stub[:date_updated].nil?
        data['resourceTags'] = Stubs::ResourceTagMap.stub(stub[:resource_tags]) unless stub[:resource_tags].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['instanceTypes'] = Stubs::InstanceTypeList.stub(stub[:instance_types]) unless stub[:instance_types].nil?
        data['instanceProfileName'] = stub[:instance_profile_name] unless stub[:instance_profile_name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
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

    # Operation Stubber for PutComponentPolicy
    class PutComponentPolicy
      def self.default(visited=[])
        {
          request_id: 'request_id',
          component_arn: 'component_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['componentArn'] = stub[:component_arn] unless stub[:component_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutContainerRecipePolicy
    class PutContainerRecipePolicy
      def self.default(visited=[])
        {
          request_id: 'request_id',
          container_recipe_arn: 'container_recipe_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['containerRecipeArn'] = stub[:container_recipe_arn] unless stub[:container_recipe_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutImagePolicy
    class PutImagePolicy
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_arn: 'image_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutImageRecipePolicy
    class PutImageRecipePolicy
      def self.default(visited=[])
        {
          request_id: 'request_id',
          image_recipe_arn: 'image_recipe_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['imageRecipeArn'] = stub[:image_recipe_arn] unless stub[:image_recipe_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartImagePipelineExecution
    class StartImagePipelineExecution
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          image_build_version_arn: 'image_build_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['imageBuildVersionArn'] = stub[:image_build_version_arn] unless stub[:image_build_version_arn].nil?
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

    # Operation Stubber for UpdateDistributionConfiguration
    class UpdateDistributionConfiguration
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          distribution_configuration_arn: 'distribution_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['distributionConfigurationArn'] = stub[:distribution_configuration_arn] unless stub[:distribution_configuration_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateImagePipeline
    class UpdateImagePipeline
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          image_pipeline_arn: 'image_pipeline_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['imagePipelineArn'] = stub[:image_pipeline_arn] unless stub[:image_pipeline_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateInfrastructureConfiguration
    class UpdateInfrastructureConfiguration
      def self.default(visited=[])
        {
          request_id: 'request_id',
          client_token: 'client_token',
          infrastructure_configuration_arn: 'infrastructure_configuration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['requestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['infrastructureConfigurationArn'] = stub[:infrastructure_configuration_arn] unless stub[:infrastructure_configuration_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
