# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SageMaker
  module Stubs

    # Operation Stubber for AddAssociation
    class AddAssociation
      def self.default(visited=[])
        {
          source_arn: 'source_arn',
          destination_arn: 'destination_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['DestinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddTags
    class AddTags
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << Tag.stub(element) unless element.nil?
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

    # Operation Stubber for AssociateTrialComponent
    class AssociateTrialComponent
      def self.default(visited=[])
        {
          trial_component_arn: 'trial_component_arn',
          trial_arn: 'trial_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialComponentArn'] = stub[:trial_component_arn] unless stub[:trial_component_arn].nil?
        data['TrialArn'] = stub[:trial_arn] unless stub[:trial_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchDescribeModelPackage
    class BatchDescribeModelPackage
      def self.default(visited=[])
        {
          model_package_summaries: ModelPackageSummaries.default(visited),
          batch_describe_model_package_error_map: BatchDescribeModelPackageErrorMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelPackageSummaries'] = ModelPackageSummaries.stub(stub[:model_package_summaries]) unless stub[:model_package_summaries].nil?
        data['BatchDescribeModelPackageErrorMap'] = BatchDescribeModelPackageErrorMap.stub(stub[:batch_describe_model_package_error_map]) unless stub[:batch_describe_model_package_error_map].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for BatchDescribeModelPackageErrorMap
    class BatchDescribeModelPackageErrorMap
      def self.default(visited=[])
        return nil if visited.include?('BatchDescribeModelPackageErrorMap')
        visited = visited + ['BatchDescribeModelPackageErrorMap']
        {
          test_key: BatchDescribeModelPackageError.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = BatchDescribeModelPackageError.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDescribeModelPackageError
    class BatchDescribeModelPackageError
      def self.default(visited=[])
        return nil if visited.include?('BatchDescribeModelPackageError')
        visited = visited + ['BatchDescribeModelPackageError']
        {
          error_code: 'error_code',
          error_response: 'error_response',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDescribeModelPackageError.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorResponse'] = stub[:error_response] unless stub[:error_response].nil?
        data
      end
    end

    # Map Stubber for ModelPackageSummaries
    class ModelPackageSummaries
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageSummaries')
        visited = visited + ['ModelPackageSummaries']
        {
          test_key: BatchDescribeModelPackageSummary.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = BatchDescribeModelPackageSummary.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDescribeModelPackageSummary
    class BatchDescribeModelPackageSummary
      def self.default(visited=[])
        return nil if visited.include?('BatchDescribeModelPackageSummary')
        visited = visited + ['BatchDescribeModelPackageSummary']
        {
          model_package_group_name: 'model_package_group_name',
          model_package_version: 1,
          model_package_arn: 'model_package_arn',
          model_package_description: 'model_package_description',
          creation_time: Time.now,
          inference_specification: InferenceSpecification.default(visited),
          model_package_status: 'model_package_status',
          model_approval_status: 'model_approval_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDescribeModelPackageSummary.new
        data = {}
        data['ModelPackageGroupName'] = stub[:model_package_group_name] unless stub[:model_package_group_name].nil?
        data['ModelPackageVersion'] = stub[:model_package_version] unless stub[:model_package_version].nil?
        data['ModelPackageArn'] = stub[:model_package_arn] unless stub[:model_package_arn].nil?
        data['ModelPackageDescription'] = stub[:model_package_description] unless stub[:model_package_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['InferenceSpecification'] = InferenceSpecification.stub(stub[:inference_specification]) unless stub[:inference_specification].nil?
        data['ModelPackageStatus'] = stub[:model_package_status] unless stub[:model_package_status].nil?
        data['ModelApprovalStatus'] = stub[:model_approval_status] unless stub[:model_approval_status].nil?
        data
      end
    end

    # Structure Stubber for InferenceSpecification
    class InferenceSpecification
      def self.default(visited=[])
        return nil if visited.include?('InferenceSpecification')
        visited = visited + ['InferenceSpecification']
        {
          containers: ModelPackageContainerDefinitionList.default(visited),
          supported_transform_instance_types: TransformInstanceTypes.default(visited),
          supported_realtime_inference_instance_types: RealtimeInferenceInstanceTypes.default(visited),
          supported_content_types: ContentTypes.default(visited),
          supported_response_mime_types: ResponseMIMETypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceSpecification.new
        data = {}
        data['Containers'] = ModelPackageContainerDefinitionList.stub(stub[:containers]) unless stub[:containers].nil?
        data['SupportedTransformInstanceTypes'] = TransformInstanceTypes.stub(stub[:supported_transform_instance_types]) unless stub[:supported_transform_instance_types].nil?
        data['SupportedRealtimeInferenceInstanceTypes'] = RealtimeInferenceInstanceTypes.stub(stub[:supported_realtime_inference_instance_types]) unless stub[:supported_realtime_inference_instance_types].nil?
        data['SupportedContentTypes'] = ContentTypes.stub(stub[:supported_content_types]) unless stub[:supported_content_types].nil?
        data['SupportedResponseMIMETypes'] = ResponseMIMETypes.stub(stub[:supported_response_mime_types]) unless stub[:supported_response_mime_types].nil?
        data
      end
    end

    # List Stubber for ResponseMIMETypes
    class ResponseMIMETypes
      def self.default(visited=[])
        return nil if visited.include?('ResponseMIMETypes')
        visited = visited + ['ResponseMIMETypes']
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

    # List Stubber for ContentTypes
    class ContentTypes
      def self.default(visited=[])
        return nil if visited.include?('ContentTypes')
        visited = visited + ['ContentTypes']
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

    # List Stubber for RealtimeInferenceInstanceTypes
    class RealtimeInferenceInstanceTypes
      def self.default(visited=[])
        return nil if visited.include?('RealtimeInferenceInstanceTypes')
        visited = visited + ['RealtimeInferenceInstanceTypes']
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

    # List Stubber for TransformInstanceTypes
    class TransformInstanceTypes
      def self.default(visited=[])
        return nil if visited.include?('TransformInstanceTypes')
        visited = visited + ['TransformInstanceTypes']
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

    # List Stubber for ModelPackageContainerDefinitionList
    class ModelPackageContainerDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageContainerDefinitionList')
        visited = visited + ['ModelPackageContainerDefinitionList']
        [
          ModelPackageContainerDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelPackageContainerDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelPackageContainerDefinition
    class ModelPackageContainerDefinition
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageContainerDefinition')
        visited = visited + ['ModelPackageContainerDefinition']
        {
          container_hostname: 'container_hostname',
          image: 'image',
          image_digest: 'image_digest',
          model_data_url: 'model_data_url',
          product_id: 'product_id',
          environment: EnvironmentMap.default(visited),
          model_input: ModelInput.default(visited),
          framework: 'framework',
          framework_version: 'framework_version',
          nearest_model_name: 'nearest_model_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackageContainerDefinition.new
        data = {}
        data['ContainerHostname'] = stub[:container_hostname] unless stub[:container_hostname].nil?
        data['Image'] = stub[:image] unless stub[:image].nil?
        data['ImageDigest'] = stub[:image_digest] unless stub[:image_digest].nil?
        data['ModelDataUrl'] = stub[:model_data_url] unless stub[:model_data_url].nil?
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['Environment'] = EnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data['ModelInput'] = ModelInput.stub(stub[:model_input]) unless stub[:model_input].nil?
        data['Framework'] = stub[:framework] unless stub[:framework].nil?
        data['FrameworkVersion'] = stub[:framework_version] unless stub[:framework_version].nil?
        data['NearestModelName'] = stub[:nearest_model_name] unless stub[:nearest_model_name].nil?
        data
      end
    end

    # Structure Stubber for ModelInput
    class ModelInput
      def self.default(visited=[])
        return nil if visited.include?('ModelInput')
        visited = visited + ['ModelInput']
        {
          data_input_config: 'data_input_config',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelInput.new
        data = {}
        data['DataInputConfig'] = stub[:data_input_config] unless stub[:data_input_config].nil?
        data
      end
    end

    # Map Stubber for EnvironmentMap
    class EnvironmentMap
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentMap')
        visited = visited + ['EnvironmentMap']
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

    # Operation Stubber for CreateAction
    class CreateAction
      def self.default(visited=[])
        {
          action_arn: 'action_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ActionArn'] = stub[:action_arn] unless stub[:action_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAlgorithm
    class CreateAlgorithm
      def self.default(visited=[])
        {
          algorithm_arn: 'algorithm_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AlgorithmArn'] = stub[:algorithm_arn] unless stub[:algorithm_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateApp
    class CreateApp
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAppImageConfig
    class CreateAppImageConfig
      def self.default(visited=[])
        {
          app_image_config_arn: 'app_image_config_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppImageConfigArn'] = stub[:app_image_config_arn] unless stub[:app_image_config_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateArtifact
    class CreateArtifact
      def self.default(visited=[])
        {
          artifact_arn: 'artifact_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ArtifactArn'] = stub[:artifact_arn] unless stub[:artifact_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAutoMLJob
    class CreateAutoMLJob
      def self.default(visited=[])
        {
          auto_ml_job_arn: 'auto_ml_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutoMLJobArn'] = stub[:auto_ml_job_arn] unless stub[:auto_ml_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCodeRepository
    class CreateCodeRepository
      def self.default(visited=[])
        {
          code_repository_arn: 'code_repository_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CodeRepositoryArn'] = stub[:code_repository_arn] unless stub[:code_repository_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCompilationJob
    class CreateCompilationJob
      def self.default(visited=[])
        {
          compilation_job_arn: 'compilation_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CompilationJobArn'] = stub[:compilation_job_arn] unless stub[:compilation_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateContext
    class CreateContext
      def self.default(visited=[])
        {
          context_arn: 'context_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContextArn'] = stub[:context_arn] unless stub[:context_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDataQualityJobDefinition
    class CreateDataQualityJobDefinition
      def self.default(visited=[])
        {
          job_definition_arn: 'job_definition_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDeviceFleet
    class CreateDeviceFleet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDomain
    class CreateDomain
      def self.default(visited=[])
        {
          domain_arn: 'domain_arn',
          url: 'url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DomainArn'] = stub[:domain_arn] unless stub[:domain_arn].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEdgePackagingJob
    class CreateEdgePackagingJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEndpoint
    class CreateEndpoint
      def self.default(visited=[])
        {
          endpoint_arn: 'endpoint_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEndpointConfig
    class CreateEndpointConfig
      def self.default(visited=[])
        {
          endpoint_config_arn: 'endpoint_config_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointConfigArn'] = stub[:endpoint_config_arn] unless stub[:endpoint_config_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateExperiment
    class CreateExperiment
      def self.default(visited=[])
        {
          experiment_arn: 'experiment_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExperimentArn'] = stub[:experiment_arn] unless stub[:experiment_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateFeatureGroup
    class CreateFeatureGroup
      def self.default(visited=[])
        {
          feature_group_arn: 'feature_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FeatureGroupArn'] = stub[:feature_group_arn] unless stub[:feature_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateFlowDefinition
    class CreateFlowDefinition
      def self.default(visited=[])
        {
          flow_definition_arn: 'flow_definition_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FlowDefinitionArn'] = stub[:flow_definition_arn] unless stub[:flow_definition_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateHumanTaskUi
    class CreateHumanTaskUi
      def self.default(visited=[])
        {
          human_task_ui_arn: 'human_task_ui_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HumanTaskUiArn'] = stub[:human_task_ui_arn] unless stub[:human_task_ui_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateHyperParameterTuningJob
    class CreateHyperParameterTuningJob
      def self.default(visited=[])
        {
          hyper_parameter_tuning_job_arn: 'hyper_parameter_tuning_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HyperParameterTuningJobArn'] = stub[:hyper_parameter_tuning_job_arn] unless stub[:hyper_parameter_tuning_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateImage
    class CreateImage
      def self.default(visited=[])
        {
          image_arn: 'image_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateImageVersion
    class CreateImageVersion
      def self.default(visited=[])
        {
          image_version_arn: 'image_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageVersionArn'] = stub[:image_version_arn] unless stub[:image_version_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateInferenceRecommendationsJob
    class CreateInferenceRecommendationsJob
      def self.default(visited=[])
        {
          job_arn: 'job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLabelingJob
    class CreateLabelingJob
      def self.default(visited=[])
        {
          labeling_job_arn: 'labeling_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LabelingJobArn'] = stub[:labeling_job_arn] unless stub[:labeling_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateModel
    class CreateModel
      def self.default(visited=[])
        {
          model_arn: 'model_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateModelBiasJobDefinition
    class CreateModelBiasJobDefinition
      def self.default(visited=[])
        {
          job_definition_arn: 'job_definition_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateModelExplainabilityJobDefinition
    class CreateModelExplainabilityJobDefinition
      def self.default(visited=[])
        {
          job_definition_arn: 'job_definition_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateModelPackage
    class CreateModelPackage
      def self.default(visited=[])
        {
          model_package_arn: 'model_package_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelPackageArn'] = stub[:model_package_arn] unless stub[:model_package_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateModelPackageGroup
    class CreateModelPackageGroup
      def self.default(visited=[])
        {
          model_package_group_arn: 'model_package_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelPackageGroupArn'] = stub[:model_package_group_arn] unless stub[:model_package_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateModelQualityJobDefinition
    class CreateModelQualityJobDefinition
      def self.default(visited=[])
        {
          job_definition_arn: 'job_definition_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateMonitoringSchedule
    class CreateMonitoringSchedule
      def self.default(visited=[])
        {
          monitoring_schedule_arn: 'monitoring_schedule_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonitoringScheduleArn'] = stub[:monitoring_schedule_arn] unless stub[:monitoring_schedule_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateNotebookInstance
    class CreateNotebookInstance
      def self.default(visited=[])
        {
          notebook_instance_arn: 'notebook_instance_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NotebookInstanceArn'] = stub[:notebook_instance_arn] unless stub[:notebook_instance_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateNotebookInstanceLifecycleConfig
    class CreateNotebookInstanceLifecycleConfig
      def self.default(visited=[])
        {
          notebook_instance_lifecycle_config_arn: 'notebook_instance_lifecycle_config_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NotebookInstanceLifecycleConfigArn'] = stub[:notebook_instance_lifecycle_config_arn] unless stub[:notebook_instance_lifecycle_config_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePipeline
    class CreatePipeline
      def self.default(visited=[])
        {
          pipeline_arn: 'pipeline_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePresignedDomainUrl
    class CreatePresignedDomainUrl
      def self.default(visited=[])
        {
          authorized_url: 'authorized_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AuthorizedUrl'] = stub[:authorized_url] unless stub[:authorized_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePresignedNotebookInstanceUrl
    class CreatePresignedNotebookInstanceUrl
      def self.default(visited=[])
        {
          authorized_url: 'authorized_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AuthorizedUrl'] = stub[:authorized_url] unless stub[:authorized_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProcessingJob
    class CreateProcessingJob
      def self.default(visited=[])
        {
          processing_job_arn: 'processing_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProcessingJobArn'] = stub[:processing_job_arn] unless stub[:processing_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          project_arn: 'project_arn',
          project_id: 'project_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data['ProjectId'] = stub[:project_id] unless stub[:project_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStudioLifecycleConfig
    class CreateStudioLifecycleConfig
      def self.default(visited=[])
        {
          studio_lifecycle_config_arn: 'studio_lifecycle_config_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StudioLifecycleConfigArn'] = stub[:studio_lifecycle_config_arn] unless stub[:studio_lifecycle_config_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTrainingJob
    class CreateTrainingJob
      def self.default(visited=[])
        {
          training_job_arn: 'training_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrainingJobArn'] = stub[:training_job_arn] unless stub[:training_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTransformJob
    class CreateTransformJob
      def self.default(visited=[])
        {
          transform_job_arn: 'transform_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformJobArn'] = stub[:transform_job_arn] unless stub[:transform_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTrial
    class CreateTrial
      def self.default(visited=[])
        {
          trial_arn: 'trial_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialArn'] = stub[:trial_arn] unless stub[:trial_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTrialComponent
    class CreateTrialComponent
      def self.default(visited=[])
        {
          trial_component_arn: 'trial_component_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialComponentArn'] = stub[:trial_component_arn] unless stub[:trial_component_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUserProfile
    class CreateUserProfile
      def self.default(visited=[])
        {
          user_profile_arn: 'user_profile_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserProfileArn'] = stub[:user_profile_arn] unless stub[:user_profile_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateWorkforce
    class CreateWorkforce
      def self.default(visited=[])
        {
          workforce_arn: 'workforce_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WorkforceArn'] = stub[:workforce_arn] unless stub[:workforce_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateWorkteam
    class CreateWorkteam
      def self.default(visited=[])
        {
          workteam_arn: 'workteam_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WorkteamArn'] = stub[:workteam_arn] unless stub[:workteam_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAction
    class DeleteAction
      def self.default(visited=[])
        {
          action_arn: 'action_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ActionArn'] = stub[:action_arn] unless stub[:action_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAlgorithm
    class DeleteAlgorithm
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApp
    class DeleteApp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAppImageConfig
    class DeleteAppImageConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteArtifact
    class DeleteArtifact
      def self.default(visited=[])
        {
          artifact_arn: 'artifact_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ArtifactArn'] = stub[:artifact_arn] unless stub[:artifact_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAssociation
    class DeleteAssociation
      def self.default(visited=[])
        {
          source_arn: 'source_arn',
          destination_arn: 'destination_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['DestinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCodeRepository
    class DeleteCodeRepository
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteContext
    class DeleteContext
      def self.default(visited=[])
        {
          context_arn: 'context_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContextArn'] = stub[:context_arn] unless stub[:context_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataQualityJobDefinition
    class DeleteDataQualityJobDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDeviceFleet
    class DeleteDeviceFleet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDomain
    class DeleteDomain
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEndpoint
    class DeleteEndpoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEndpointConfig
    class DeleteEndpointConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteExperiment
    class DeleteExperiment
      def self.default(visited=[])
        {
          experiment_arn: 'experiment_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExperimentArn'] = stub[:experiment_arn] unless stub[:experiment_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFeatureGroup
    class DeleteFeatureGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFlowDefinition
    class DeleteFlowDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHumanTaskUi
    class DeleteHumanTaskUi
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteImage
    class DeleteImage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteImageVersion
    class DeleteImageVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModel
    class DeleteModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModelBiasJobDefinition
    class DeleteModelBiasJobDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModelExplainabilityJobDefinition
    class DeleteModelExplainabilityJobDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModelPackage
    class DeleteModelPackage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModelPackageGroup
    class DeleteModelPackageGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModelPackageGroupPolicy
    class DeleteModelPackageGroupPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModelQualityJobDefinition
    class DeleteModelQualityJobDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMonitoringSchedule
    class DeleteMonitoringSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteNotebookInstance
    class DeleteNotebookInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteNotebookInstanceLifecycleConfig
    class DeleteNotebookInstanceLifecycleConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePipeline
    class DeletePipeline
      def self.default(visited=[])
        {
          pipeline_arn: 'pipeline_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStudioLifecycleConfig
    class DeleteStudioLifecycleConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTags
    class DeleteTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTrial
    class DeleteTrial
      def self.default(visited=[])
        {
          trial_arn: 'trial_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialArn'] = stub[:trial_arn] unless stub[:trial_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTrialComponent
    class DeleteTrialComponent
      def self.default(visited=[])
        {
          trial_component_arn: 'trial_component_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialComponentArn'] = stub[:trial_component_arn] unless stub[:trial_component_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserProfile
    class DeleteUserProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWorkforce
    class DeleteWorkforce
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWorkteam
    class DeleteWorkteam
      def self.default(visited=[])
        {
          success: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Success'] = stub[:success] unless stub[:success].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterDevices
    class DeregisterDevices
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAction
    class DescribeAction
      def self.default(visited=[])
        {
          action_name: 'action_name',
          action_arn: 'action_arn',
          source: ActionSource.default(visited),
          action_type: 'action_type',
          description: 'description',
          status: 'status',
          properties: LineageEntityParameters.default(visited),
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          metadata_properties: MetadataProperties.default(visited),
          lineage_group_arn: 'lineage_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ActionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['ActionArn'] = stub[:action_arn] unless stub[:action_arn].nil?
        data['Source'] = ActionSource.stub(stub[:source]) unless stub[:source].nil?
        data['ActionType'] = stub[:action_type] unless stub[:action_type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Properties'] = LineageEntityParameters.stub(stub[:properties]) unless stub[:properties].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['MetadataProperties'] = MetadataProperties.stub(stub[:metadata_properties]) unless stub[:metadata_properties].nil?
        data['LineageGroupArn'] = stub[:lineage_group_arn] unless stub[:lineage_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MetadataProperties
    class MetadataProperties
      def self.default(visited=[])
        return nil if visited.include?('MetadataProperties')
        visited = visited + ['MetadataProperties']
        {
          commit_id: 'commit_id',
          repository: 'repository',
          generated_by: 'generated_by',
          project_id: 'project_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetadataProperties.new
        data = {}
        data['CommitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['Repository'] = stub[:repository] unless stub[:repository].nil?
        data['GeneratedBy'] = stub[:generated_by] unless stub[:generated_by].nil?
        data['ProjectId'] = stub[:project_id] unless stub[:project_id].nil?
        data
      end
    end

    # Structure Stubber for UserContext
    class UserContext
      def self.default(visited=[])
        return nil if visited.include?('UserContext')
        visited = visited + ['UserContext']
        {
          user_profile_arn: 'user_profile_arn',
          user_profile_name: 'user_profile_name',
          domain_id: 'domain_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserContext.new
        data = {}
        data['UserProfileArn'] = stub[:user_profile_arn] unless stub[:user_profile_arn].nil?
        data['UserProfileName'] = stub[:user_profile_name] unless stub[:user_profile_name].nil?
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data
      end
    end

    # Map Stubber for LineageEntityParameters
    class LineageEntityParameters
      def self.default(visited=[])
        return nil if visited.include?('LineageEntityParameters')
        visited = visited + ['LineageEntityParameters']
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

    # Structure Stubber for ActionSource
    class ActionSource
      def self.default(visited=[])
        return nil if visited.include?('ActionSource')
        visited = visited + ['ActionSource']
        {
          source_uri: 'source_uri',
          source_type: 'source_type',
          source_id: 'source_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionSource.new
        data = {}
        data['SourceUri'] = stub[:source_uri] unless stub[:source_uri].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeAlgorithm
    class DescribeAlgorithm
      def self.default(visited=[])
        {
          algorithm_name: 'algorithm_name',
          algorithm_arn: 'algorithm_arn',
          algorithm_description: 'algorithm_description',
          creation_time: Time.now,
          training_specification: TrainingSpecification.default(visited),
          inference_specification: InferenceSpecification.default(visited),
          validation_specification: AlgorithmValidationSpecification.default(visited),
          algorithm_status: 'algorithm_status',
          algorithm_status_details: AlgorithmStatusDetails.default(visited),
          product_id: 'product_id',
          certify_for_marketplace: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AlgorithmName'] = stub[:algorithm_name] unless stub[:algorithm_name].nil?
        data['AlgorithmArn'] = stub[:algorithm_arn] unless stub[:algorithm_arn].nil?
        data['AlgorithmDescription'] = stub[:algorithm_description] unless stub[:algorithm_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TrainingSpecification'] = TrainingSpecification.stub(stub[:training_specification]) unless stub[:training_specification].nil?
        data['InferenceSpecification'] = InferenceSpecification.stub(stub[:inference_specification]) unless stub[:inference_specification].nil?
        data['ValidationSpecification'] = AlgorithmValidationSpecification.stub(stub[:validation_specification]) unless stub[:validation_specification].nil?
        data['AlgorithmStatus'] = stub[:algorithm_status] unless stub[:algorithm_status].nil?
        data['AlgorithmStatusDetails'] = AlgorithmStatusDetails.stub(stub[:algorithm_status_details]) unless stub[:algorithm_status_details].nil?
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['CertifyForMarketplace'] = stub[:certify_for_marketplace] unless stub[:certify_for_marketplace].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AlgorithmStatusDetails
    class AlgorithmStatusDetails
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmStatusDetails')
        visited = visited + ['AlgorithmStatusDetails']
        {
          validation_statuses: AlgorithmStatusItemList.default(visited),
          image_scan_statuses: AlgorithmStatusItemList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlgorithmStatusDetails.new
        data = {}
        data['ValidationStatuses'] = AlgorithmStatusItemList.stub(stub[:validation_statuses]) unless stub[:validation_statuses].nil?
        data['ImageScanStatuses'] = AlgorithmStatusItemList.stub(stub[:image_scan_statuses]) unless stub[:image_scan_statuses].nil?
        data
      end
    end

    # List Stubber for AlgorithmStatusItemList
    class AlgorithmStatusItemList
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmStatusItemList')
        visited = visited + ['AlgorithmStatusItemList']
        [
          AlgorithmStatusItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AlgorithmStatusItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlgorithmStatusItem
    class AlgorithmStatusItem
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmStatusItem')
        visited = visited + ['AlgorithmStatusItem']
        {
          name: 'name',
          status: 'status',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlgorithmStatusItem.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Structure Stubber for AlgorithmValidationSpecification
    class AlgorithmValidationSpecification
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmValidationSpecification')
        visited = visited + ['AlgorithmValidationSpecification']
        {
          validation_role: 'validation_role',
          validation_profiles: AlgorithmValidationProfiles.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlgorithmValidationSpecification.new
        data = {}
        data['ValidationRole'] = stub[:validation_role] unless stub[:validation_role].nil?
        data['ValidationProfiles'] = AlgorithmValidationProfiles.stub(stub[:validation_profiles]) unless stub[:validation_profiles].nil?
        data
      end
    end

    # List Stubber for AlgorithmValidationProfiles
    class AlgorithmValidationProfiles
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmValidationProfiles')
        visited = visited + ['AlgorithmValidationProfiles']
        [
          AlgorithmValidationProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AlgorithmValidationProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlgorithmValidationProfile
    class AlgorithmValidationProfile
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmValidationProfile')
        visited = visited + ['AlgorithmValidationProfile']
        {
          profile_name: 'profile_name',
          training_job_definition: TrainingJobDefinition.default(visited),
          transform_job_definition: TransformJobDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlgorithmValidationProfile.new
        data = {}
        data['ProfileName'] = stub[:profile_name] unless stub[:profile_name].nil?
        data['TrainingJobDefinition'] = TrainingJobDefinition.stub(stub[:training_job_definition]) unless stub[:training_job_definition].nil?
        data['TransformJobDefinition'] = TransformJobDefinition.stub(stub[:transform_job_definition]) unless stub[:transform_job_definition].nil?
        data
      end
    end

    # Structure Stubber for TransformJobDefinition
    class TransformJobDefinition
      def self.default(visited=[])
        return nil if visited.include?('TransformJobDefinition')
        visited = visited + ['TransformJobDefinition']
        {
          max_concurrent_transforms: 1,
          max_payload_in_mb: 1,
          batch_strategy: 'batch_strategy',
          environment: TransformEnvironmentMap.default(visited),
          transform_input: TransformInput.default(visited),
          transform_output: TransformOutput.default(visited),
          transform_resources: TransformResources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformJobDefinition.new
        data = {}
        data['MaxConcurrentTransforms'] = stub[:max_concurrent_transforms] unless stub[:max_concurrent_transforms].nil?
        data['MaxPayloadInMB'] = stub[:max_payload_in_mb] unless stub[:max_payload_in_mb].nil?
        data['BatchStrategy'] = stub[:batch_strategy] unless stub[:batch_strategy].nil?
        data['Environment'] = TransformEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data['TransformInput'] = TransformInput.stub(stub[:transform_input]) unless stub[:transform_input].nil?
        data['TransformOutput'] = TransformOutput.stub(stub[:transform_output]) unless stub[:transform_output].nil?
        data['TransformResources'] = TransformResources.stub(stub[:transform_resources]) unless stub[:transform_resources].nil?
        data
      end
    end

    # Structure Stubber for TransformResources
    class TransformResources
      def self.default(visited=[])
        return nil if visited.include?('TransformResources')
        visited = visited + ['TransformResources']
        {
          instance_type: 'instance_type',
          instance_count: 1,
          volume_kms_key_id: 'volume_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformResources.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for TransformOutput
    class TransformOutput
      def self.default(visited=[])
        return nil if visited.include?('TransformOutput')
        visited = visited + ['TransformOutput']
        {
          s3_output_path: 's3_output_path',
          accept: 'accept',
          assemble_with: 'assemble_with',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformOutput.new
        data = {}
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data['Accept'] = stub[:accept] unless stub[:accept].nil?
        data['AssembleWith'] = stub[:assemble_with] unless stub[:assemble_with].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for TransformInput
    class TransformInput
      def self.default(visited=[])
        return nil if visited.include?('TransformInput')
        visited = visited + ['TransformInput']
        {
          data_source: TransformDataSource.default(visited),
          content_type: 'content_type',
          compression_type: 'compression_type',
          split_type: 'split_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformInput.new
        data = {}
        data['DataSource'] = TransformDataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['CompressionType'] = stub[:compression_type] unless stub[:compression_type].nil?
        data['SplitType'] = stub[:split_type] unless stub[:split_type].nil?
        data
      end
    end

    # Structure Stubber for TransformDataSource
    class TransformDataSource
      def self.default(visited=[])
        return nil if visited.include?('TransformDataSource')
        visited = visited + ['TransformDataSource']
        {
          s3_data_source: TransformS3DataSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformDataSource.new
        data = {}
        data['S3DataSource'] = TransformS3DataSource.stub(stub[:s3_data_source]) unless stub[:s3_data_source].nil?
        data
      end
    end

    # Structure Stubber for TransformS3DataSource
    class TransformS3DataSource
      def self.default(visited=[])
        return nil if visited.include?('TransformS3DataSource')
        visited = visited + ['TransformS3DataSource']
        {
          s3_data_type: 's3_data_type',
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformS3DataSource.new
        data = {}
        data['S3DataType'] = stub[:s3_data_type] unless stub[:s3_data_type].nil?
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Map Stubber for TransformEnvironmentMap
    class TransformEnvironmentMap
      def self.default(visited=[])
        return nil if visited.include?('TransformEnvironmentMap')
        visited = visited + ['TransformEnvironmentMap']
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

    # Structure Stubber for TrainingJobDefinition
    class TrainingJobDefinition
      def self.default(visited=[])
        return nil if visited.include?('TrainingJobDefinition')
        visited = visited + ['TrainingJobDefinition']
        {
          training_input_mode: 'training_input_mode',
          hyper_parameters: HyperParameters.default(visited),
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          resource_config: ResourceConfig.default(visited),
          stopping_condition: StoppingCondition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingJobDefinition.new
        data = {}
        data['TrainingInputMode'] = stub[:training_input_mode] unless stub[:training_input_mode].nil?
        data['HyperParameters'] = HyperParameters.stub(stub[:hyper_parameters]) unless stub[:hyper_parameters].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['ResourceConfig'] = ResourceConfig.stub(stub[:resource_config]) unless stub[:resource_config].nil?
        data['StoppingCondition'] = StoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        data
      end
    end

    # Structure Stubber for StoppingCondition
    class StoppingCondition
      def self.default(visited=[])
        return nil if visited.include?('StoppingCondition')
        visited = visited + ['StoppingCondition']
        {
          max_runtime_in_seconds: 1,
          max_wait_time_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StoppingCondition.new
        data = {}
        data['MaxRuntimeInSeconds'] = stub[:max_runtime_in_seconds] unless stub[:max_runtime_in_seconds].nil?
        data['MaxWaitTimeInSeconds'] = stub[:max_wait_time_in_seconds] unless stub[:max_wait_time_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for ResourceConfig
    class ResourceConfig
      def self.default(visited=[])
        return nil if visited.include?('ResourceConfig')
        visited = visited + ['ResourceConfig']
        {
          instance_type: 'instance_type',
          instance_count: 1,
          volume_size_in_gb: 1,
          volume_kms_key_id: 'volume_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceConfig.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['VolumeSizeInGB'] = stub[:volume_size_in_gb] unless stub[:volume_size_in_gb].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for OutputDataConfig
    class OutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('OutputDataConfig')
        visited = visited + ['OutputDataConfig']
        {
          kms_key_id: 'kms_key_id',
          s3_output_path: 's3_output_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputDataConfig.new
        data = {}
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data
      end
    end

    # List Stubber for InputDataConfig
    class InputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('InputDataConfig')
        visited = visited + ['InputDataConfig']
        [
          Channel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Channel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Channel
    class Channel
      def self.default(visited=[])
        return nil if visited.include?('Channel')
        visited = visited + ['Channel']
        {
          channel_name: 'channel_name',
          data_source: DataSource.default(visited),
          content_type: 'content_type',
          compression_type: 'compression_type',
          record_wrapper_type: 'record_wrapper_type',
          input_mode: 'input_mode',
          shuffle_config: ShuffleConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Channel.new
        data = {}
        data['ChannelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['DataSource'] = DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['CompressionType'] = stub[:compression_type] unless stub[:compression_type].nil?
        data['RecordWrapperType'] = stub[:record_wrapper_type] unless stub[:record_wrapper_type].nil?
        data['InputMode'] = stub[:input_mode] unless stub[:input_mode].nil?
        data['ShuffleConfig'] = ShuffleConfig.stub(stub[:shuffle_config]) unless stub[:shuffle_config].nil?
        data
      end
    end

    # Structure Stubber for ShuffleConfig
    class ShuffleConfig
      def self.default(visited=[])
        return nil if visited.include?('ShuffleConfig')
        visited = visited + ['ShuffleConfig']
        {
          seed: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ShuffleConfig.new
        data = {}
        data['Seed'] = stub[:seed] unless stub[:seed].nil?
        data
      end
    end

    # Structure Stubber for DataSource
    class DataSource
      def self.default(visited=[])
        return nil if visited.include?('DataSource')
        visited = visited + ['DataSource']
        {
          s3_data_source: S3DataSource.default(visited),
          file_system_data_source: FileSystemDataSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSource.new
        data = {}
        data['S3DataSource'] = S3DataSource.stub(stub[:s3_data_source]) unless stub[:s3_data_source].nil?
        data['FileSystemDataSource'] = FileSystemDataSource.stub(stub[:file_system_data_source]) unless stub[:file_system_data_source].nil?
        data
      end
    end

    # Structure Stubber for FileSystemDataSource
    class FileSystemDataSource
      def self.default(visited=[])
        return nil if visited.include?('FileSystemDataSource')
        visited = visited + ['FileSystemDataSource']
        {
          file_system_id: 'file_system_id',
          file_system_access_mode: 'file_system_access_mode',
          file_system_type: 'file_system_type',
          directory_path: 'directory_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemDataSource.new
        data = {}
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['FileSystemAccessMode'] = stub[:file_system_access_mode] unless stub[:file_system_access_mode].nil?
        data['FileSystemType'] = stub[:file_system_type] unless stub[:file_system_type].nil?
        data['DirectoryPath'] = stub[:directory_path] unless stub[:directory_path].nil?
        data
      end
    end

    # Structure Stubber for S3DataSource
    class S3DataSource
      def self.default(visited=[])
        return nil if visited.include?('S3DataSource')
        visited = visited + ['S3DataSource']
        {
          s3_data_type: 's3_data_type',
          s3_uri: 's3_uri',
          s3_data_distribution_type: 's3_data_distribution_type',
          attribute_names: AttributeNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DataSource.new
        data = {}
        data['S3DataType'] = stub[:s3_data_type] unless stub[:s3_data_type].nil?
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['S3DataDistributionType'] = stub[:s3_data_distribution_type] unless stub[:s3_data_distribution_type].nil?
        data['AttributeNames'] = AttributeNames.stub(stub[:attribute_names]) unless stub[:attribute_names].nil?
        data
      end
    end

    # List Stubber for AttributeNames
    class AttributeNames
      def self.default(visited=[])
        return nil if visited.include?('AttributeNames')
        visited = visited + ['AttributeNames']
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

    # Map Stubber for HyperParameters
    class HyperParameters
      def self.default(visited=[])
        return nil if visited.include?('HyperParameters')
        visited = visited + ['HyperParameters']
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

    # Structure Stubber for TrainingSpecification
    class TrainingSpecification
      def self.default(visited=[])
        return nil if visited.include?('TrainingSpecification')
        visited = visited + ['TrainingSpecification']
        {
          training_image: 'training_image',
          training_image_digest: 'training_image_digest',
          supported_hyper_parameters: HyperParameterSpecifications.default(visited),
          supported_training_instance_types: TrainingInstanceTypes.default(visited),
          supports_distributed_training: false,
          metric_definitions: MetricDefinitionList.default(visited),
          training_channels: ChannelSpecifications.default(visited),
          supported_tuning_job_objective_metrics: HyperParameterTuningJobObjectives.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingSpecification.new
        data = {}
        data['TrainingImage'] = stub[:training_image] unless stub[:training_image].nil?
        data['TrainingImageDigest'] = stub[:training_image_digest] unless stub[:training_image_digest].nil?
        data['SupportedHyperParameters'] = HyperParameterSpecifications.stub(stub[:supported_hyper_parameters]) unless stub[:supported_hyper_parameters].nil?
        data['SupportedTrainingInstanceTypes'] = TrainingInstanceTypes.stub(stub[:supported_training_instance_types]) unless stub[:supported_training_instance_types].nil?
        data['SupportsDistributedTraining'] = stub[:supports_distributed_training] unless stub[:supports_distributed_training].nil?
        data['MetricDefinitions'] = MetricDefinitionList.stub(stub[:metric_definitions]) unless stub[:metric_definitions].nil?
        data['TrainingChannels'] = ChannelSpecifications.stub(stub[:training_channels]) unless stub[:training_channels].nil?
        data['SupportedTuningJobObjectiveMetrics'] = HyperParameterTuningJobObjectives.stub(stub[:supported_tuning_job_objective_metrics]) unless stub[:supported_tuning_job_objective_metrics].nil?
        data
      end
    end

    # List Stubber for HyperParameterTuningJobObjectives
    class HyperParameterTuningJobObjectives
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTuningJobObjectives')
        visited = visited + ['HyperParameterTuningJobObjectives']
        [
          HyperParameterTuningJobObjective.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HyperParameterTuningJobObjective.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HyperParameterTuningJobObjective
    class HyperParameterTuningJobObjective
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTuningJobObjective')
        visited = visited + ['HyperParameterTuningJobObjective']
        {
          type: 'type',
          metric_name: 'metric_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterTuningJobObjective.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data
      end
    end

    # List Stubber for ChannelSpecifications
    class ChannelSpecifications
      def self.default(visited=[])
        return nil if visited.include?('ChannelSpecifications')
        visited = visited + ['ChannelSpecifications']
        [
          ChannelSpecification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ChannelSpecification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelSpecification
    class ChannelSpecification
      def self.default(visited=[])
        return nil if visited.include?('ChannelSpecification')
        visited = visited + ['ChannelSpecification']
        {
          name: 'name',
          description: 'description',
          is_required: false,
          supported_content_types: ContentTypes.default(visited),
          supported_compression_types: CompressionTypes.default(visited),
          supported_input_modes: InputModes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelSpecification.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['IsRequired'] = stub[:is_required] unless stub[:is_required].nil?
        data['SupportedContentTypes'] = ContentTypes.stub(stub[:supported_content_types]) unless stub[:supported_content_types].nil?
        data['SupportedCompressionTypes'] = CompressionTypes.stub(stub[:supported_compression_types]) unless stub[:supported_compression_types].nil?
        data['SupportedInputModes'] = InputModes.stub(stub[:supported_input_modes]) unless stub[:supported_input_modes].nil?
        data
      end
    end

    # List Stubber for InputModes
    class InputModes
      def self.default(visited=[])
        return nil if visited.include?('InputModes')
        visited = visited + ['InputModes']
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

    # List Stubber for CompressionTypes
    class CompressionTypes
      def self.default(visited=[])
        return nil if visited.include?('CompressionTypes')
        visited = visited + ['CompressionTypes']
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

    # List Stubber for MetricDefinitionList
    class MetricDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('MetricDefinitionList')
        visited = visited + ['MetricDefinitionList']
        [
          MetricDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricDefinition
    class MetricDefinition
      def self.default(visited=[])
        return nil if visited.include?('MetricDefinition')
        visited = visited + ['MetricDefinition']
        {
          name: 'name',
          regex: 'regex',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDefinition.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Regex'] = stub[:regex] unless stub[:regex].nil?
        data
      end
    end

    # List Stubber for TrainingInstanceTypes
    class TrainingInstanceTypes
      def self.default(visited=[])
        return nil if visited.include?('TrainingInstanceTypes')
        visited = visited + ['TrainingInstanceTypes']
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

    # List Stubber for HyperParameterSpecifications
    class HyperParameterSpecifications
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterSpecifications')
        visited = visited + ['HyperParameterSpecifications']
        [
          HyperParameterSpecification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HyperParameterSpecification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HyperParameterSpecification
    class HyperParameterSpecification
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterSpecification')
        visited = visited + ['HyperParameterSpecification']
        {
          name: 'name',
          description: 'description',
          type: 'type',
          range: ParameterRange.default(visited),
          is_tunable: false,
          is_required: false,
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterSpecification.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Range'] = ParameterRange.stub(stub[:range]) unless stub[:range].nil?
        data['IsTunable'] = stub[:is_tunable] unless stub[:is_tunable].nil?
        data['IsRequired'] = stub[:is_required] unless stub[:is_required].nil?
        data['DefaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # Structure Stubber for ParameterRange
    class ParameterRange
      def self.default(visited=[])
        return nil if visited.include?('ParameterRange')
        visited = visited + ['ParameterRange']
        {
          integer_parameter_range_specification: IntegerParameterRangeSpecification.default(visited),
          continuous_parameter_range_specification: ContinuousParameterRangeSpecification.default(visited),
          categorical_parameter_range_specification: CategoricalParameterRangeSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterRange.new
        data = {}
        data['IntegerParameterRangeSpecification'] = IntegerParameterRangeSpecification.stub(stub[:integer_parameter_range_specification]) unless stub[:integer_parameter_range_specification].nil?
        data['ContinuousParameterRangeSpecification'] = ContinuousParameterRangeSpecification.stub(stub[:continuous_parameter_range_specification]) unless stub[:continuous_parameter_range_specification].nil?
        data['CategoricalParameterRangeSpecification'] = CategoricalParameterRangeSpecification.stub(stub[:categorical_parameter_range_specification]) unless stub[:categorical_parameter_range_specification].nil?
        data
      end
    end

    # Structure Stubber for CategoricalParameterRangeSpecification
    class CategoricalParameterRangeSpecification
      def self.default(visited=[])
        return nil if visited.include?('CategoricalParameterRangeSpecification')
        visited = visited + ['CategoricalParameterRangeSpecification']
        {
          values: ParameterValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CategoricalParameterRangeSpecification.new
        data = {}
        data['Values'] = ParameterValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for ParameterValues
    class ParameterValues
      def self.default(visited=[])
        return nil if visited.include?('ParameterValues')
        visited = visited + ['ParameterValues']
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

    # Structure Stubber for ContinuousParameterRangeSpecification
    class ContinuousParameterRangeSpecification
      def self.default(visited=[])
        return nil if visited.include?('ContinuousParameterRangeSpecification')
        visited = visited + ['ContinuousParameterRangeSpecification']
        {
          min_value: 'min_value',
          max_value: 'max_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContinuousParameterRangeSpecification.new
        data = {}
        data['MinValue'] = stub[:min_value] unless stub[:min_value].nil?
        data['MaxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data
      end
    end

    # Structure Stubber for IntegerParameterRangeSpecification
    class IntegerParameterRangeSpecification
      def self.default(visited=[])
        return nil if visited.include?('IntegerParameterRangeSpecification')
        visited = visited + ['IntegerParameterRangeSpecification']
        {
          min_value: 'min_value',
          max_value: 'max_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::IntegerParameterRangeSpecification.new
        data = {}
        data['MinValue'] = stub[:min_value] unless stub[:min_value].nil?
        data['MaxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data
      end
    end

    # Operation Stubber for DescribeApp
    class DescribeApp
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_type: 'app_type',
          app_name: 'app_name',
          domain_id: 'domain_id',
          user_profile_name: 'user_profile_name',
          status: 'status',
          last_health_check_timestamp: Time.now,
          last_user_activity_timestamp: Time.now,
          creation_time: Time.now,
          failure_reason: 'failure_reason',
          resource_spec: ResourceSpec.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['AppType'] = stub[:app_type] unless stub[:app_type].nil?
        data['AppName'] = stub[:app_name] unless stub[:app_name].nil?
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['UserProfileName'] = stub[:user_profile_name] unless stub[:user_profile_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastHealthCheckTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_health_check_timestamp]).to_i unless stub[:last_health_check_timestamp].nil?
        data['LastUserActivityTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_user_activity_timestamp]).to_i unless stub[:last_user_activity_timestamp].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ResourceSpec'] = ResourceSpec.stub(stub[:resource_spec]) unless stub[:resource_spec].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResourceSpec
    class ResourceSpec
      def self.default(visited=[])
        return nil if visited.include?('ResourceSpec')
        visited = visited + ['ResourceSpec']
        {
          sage_maker_image_arn: 'sage_maker_image_arn',
          sage_maker_image_version_arn: 'sage_maker_image_version_arn',
          instance_type: 'instance_type',
          lifecycle_config_arn: 'lifecycle_config_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceSpec.new
        data = {}
        data['SageMakerImageArn'] = stub[:sage_maker_image_arn] unless stub[:sage_maker_image_arn].nil?
        data['SageMakerImageVersionArn'] = stub[:sage_maker_image_version_arn] unless stub[:sage_maker_image_version_arn].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['LifecycleConfigArn'] = stub[:lifecycle_config_arn] unless stub[:lifecycle_config_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeAppImageConfig
    class DescribeAppImageConfig
      def self.default(visited=[])
        {
          app_image_config_arn: 'app_image_config_arn',
          app_image_config_name: 'app_image_config_name',
          creation_time: Time.now,
          last_modified_time: Time.now,
          kernel_gateway_image_config: KernelGatewayImageConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppImageConfigArn'] = stub[:app_image_config_arn] unless stub[:app_image_config_arn].nil?
        data['AppImageConfigName'] = stub[:app_image_config_name] unless stub[:app_image_config_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['KernelGatewayImageConfig'] = KernelGatewayImageConfig.stub(stub[:kernel_gateway_image_config]) unless stub[:kernel_gateway_image_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for KernelGatewayImageConfig
    class KernelGatewayImageConfig
      def self.default(visited=[])
        return nil if visited.include?('KernelGatewayImageConfig')
        visited = visited + ['KernelGatewayImageConfig']
        {
          kernel_specs: KernelSpecs.default(visited),
          file_system_config: FileSystemConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KernelGatewayImageConfig.new
        data = {}
        data['KernelSpecs'] = KernelSpecs.stub(stub[:kernel_specs]) unless stub[:kernel_specs].nil?
        data['FileSystemConfig'] = FileSystemConfig.stub(stub[:file_system_config]) unless stub[:file_system_config].nil?
        data
      end
    end

    # Structure Stubber for FileSystemConfig
    class FileSystemConfig
      def self.default(visited=[])
        return nil if visited.include?('FileSystemConfig')
        visited = visited + ['FileSystemConfig']
        {
          mount_path: 'mount_path',
          default_uid: 1,
          default_gid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemConfig.new
        data = {}
        data['MountPath'] = stub[:mount_path] unless stub[:mount_path].nil?
        data['DefaultUid'] = stub[:default_uid] unless stub[:default_uid].nil?
        data['DefaultGid'] = stub[:default_gid] unless stub[:default_gid].nil?
        data
      end
    end

    # List Stubber for KernelSpecs
    class KernelSpecs
      def self.default(visited=[])
        return nil if visited.include?('KernelSpecs')
        visited = visited + ['KernelSpecs']
        [
          KernelSpec.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KernelSpec.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KernelSpec
    class KernelSpec
      def self.default(visited=[])
        return nil if visited.include?('KernelSpec')
        visited = visited + ['KernelSpec']
        {
          name: 'name',
          display_name: 'display_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::KernelSpec.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeArtifact
    class DescribeArtifact
      def self.default(visited=[])
        {
          artifact_name: 'artifact_name',
          artifact_arn: 'artifact_arn',
          source: ArtifactSource.default(visited),
          artifact_type: 'artifact_type',
          properties: LineageEntityParameters.default(visited),
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          metadata_properties: MetadataProperties.default(visited),
          lineage_group_arn: 'lineage_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ArtifactName'] = stub[:artifact_name] unless stub[:artifact_name].nil?
        data['ArtifactArn'] = stub[:artifact_arn] unless stub[:artifact_arn].nil?
        data['Source'] = ArtifactSource.stub(stub[:source]) unless stub[:source].nil?
        data['ArtifactType'] = stub[:artifact_type] unless stub[:artifact_type].nil?
        data['Properties'] = LineageEntityParameters.stub(stub[:properties]) unless stub[:properties].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['MetadataProperties'] = MetadataProperties.stub(stub[:metadata_properties]) unless stub[:metadata_properties].nil?
        data['LineageGroupArn'] = stub[:lineage_group_arn] unless stub[:lineage_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ArtifactSource
    class ArtifactSource
      def self.default(visited=[])
        return nil if visited.include?('ArtifactSource')
        visited = visited + ['ArtifactSource']
        {
          source_uri: 'source_uri',
          source_types: ArtifactSourceTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactSource.new
        data = {}
        data['SourceUri'] = stub[:source_uri] unless stub[:source_uri].nil?
        data['SourceTypes'] = ArtifactSourceTypes.stub(stub[:source_types]) unless stub[:source_types].nil?
        data
      end
    end

    # List Stubber for ArtifactSourceTypes
    class ArtifactSourceTypes
      def self.default(visited=[])
        return nil if visited.include?('ArtifactSourceTypes')
        visited = visited + ['ArtifactSourceTypes']
        [
          ArtifactSourceType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ArtifactSourceType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ArtifactSourceType
    class ArtifactSourceType
      def self.default(visited=[])
        return nil if visited.include?('ArtifactSourceType')
        visited = visited + ['ArtifactSourceType']
        {
          source_id_type: 'source_id_type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactSourceType.new
        data = {}
        data['SourceIdType'] = stub[:source_id_type] unless stub[:source_id_type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeAutoMLJob
    class DescribeAutoMLJob
      def self.default(visited=[])
        {
          auto_ml_job_name: 'auto_ml_job_name',
          auto_ml_job_arn: 'auto_ml_job_arn',
          input_data_config: AutoMLInputDataConfig.default(visited),
          output_data_config: AutoMLOutputDataConfig.default(visited),
          role_arn: 'role_arn',
          auto_ml_job_objective: AutoMLJobObjective.default(visited),
          problem_type: 'problem_type',
          auto_ml_job_config: AutoMLJobConfig.default(visited),
          creation_time: Time.now,
          end_time: Time.now,
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
          partial_failure_reasons: AutoMLPartialFailureReasons.default(visited),
          best_candidate: AutoMLCandidate.default(visited),
          auto_ml_job_status: 'auto_ml_job_status',
          auto_ml_job_secondary_status: 'auto_ml_job_secondary_status',
          generate_candidate_definitions_only: false,
          auto_ml_job_artifacts: AutoMLJobArtifacts.default(visited),
          resolved_attributes: ResolvedAttributes.default(visited),
          model_deploy_config: ModelDeployConfig.default(visited),
          model_deploy_result: ModelDeployResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutoMLJobName'] = stub[:auto_ml_job_name] unless stub[:auto_ml_job_name].nil?
        data['AutoMLJobArn'] = stub[:auto_ml_job_arn] unless stub[:auto_ml_job_arn].nil?
        data['InputDataConfig'] = AutoMLInputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = AutoMLOutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['AutoMLJobObjective'] = AutoMLJobObjective.stub(stub[:auto_ml_job_objective]) unless stub[:auto_ml_job_objective].nil?
        data['ProblemType'] = stub[:problem_type] unless stub[:problem_type].nil?
        data['AutoMLJobConfig'] = AutoMLJobConfig.stub(stub[:auto_ml_job_config]) unless stub[:auto_ml_job_config].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['PartialFailureReasons'] = AutoMLPartialFailureReasons.stub(stub[:partial_failure_reasons]) unless stub[:partial_failure_reasons].nil?
        data['BestCandidate'] = AutoMLCandidate.stub(stub[:best_candidate]) unless stub[:best_candidate].nil?
        data['AutoMLJobStatus'] = stub[:auto_ml_job_status] unless stub[:auto_ml_job_status].nil?
        data['AutoMLJobSecondaryStatus'] = stub[:auto_ml_job_secondary_status] unless stub[:auto_ml_job_secondary_status].nil?
        data['GenerateCandidateDefinitionsOnly'] = stub[:generate_candidate_definitions_only] unless stub[:generate_candidate_definitions_only].nil?
        data['AutoMLJobArtifacts'] = AutoMLJobArtifacts.stub(stub[:auto_ml_job_artifacts]) unless stub[:auto_ml_job_artifacts].nil?
        data['ResolvedAttributes'] = ResolvedAttributes.stub(stub[:resolved_attributes]) unless stub[:resolved_attributes].nil?
        data['ModelDeployConfig'] = ModelDeployConfig.stub(stub[:model_deploy_config]) unless stub[:model_deploy_config].nil?
        data['ModelDeployResult'] = ModelDeployResult.stub(stub[:model_deploy_result]) unless stub[:model_deploy_result].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ModelDeployResult
    class ModelDeployResult
      def self.default(visited=[])
        return nil if visited.include?('ModelDeployResult')
        visited = visited + ['ModelDeployResult']
        {
          endpoint_name: 'endpoint_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelDeployResult.new
        data = {}
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data
      end
    end

    # Structure Stubber for ModelDeployConfig
    class ModelDeployConfig
      def self.default(visited=[])
        return nil if visited.include?('ModelDeployConfig')
        visited = visited + ['ModelDeployConfig']
        {
          auto_generate_endpoint_name: false,
          endpoint_name: 'endpoint_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelDeployConfig.new
        data = {}
        data['AutoGenerateEndpointName'] = stub[:auto_generate_endpoint_name] unless stub[:auto_generate_endpoint_name].nil?
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data
      end
    end

    # Structure Stubber for ResolvedAttributes
    class ResolvedAttributes
      def self.default(visited=[])
        return nil if visited.include?('ResolvedAttributes')
        visited = visited + ['ResolvedAttributes']
        {
          auto_ml_job_objective: AutoMLJobObjective.default(visited),
          problem_type: 'problem_type',
          completion_criteria: AutoMLJobCompletionCriteria.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolvedAttributes.new
        data = {}
        data['AutoMLJobObjective'] = AutoMLJobObjective.stub(stub[:auto_ml_job_objective]) unless stub[:auto_ml_job_objective].nil?
        data['ProblemType'] = stub[:problem_type] unless stub[:problem_type].nil?
        data['CompletionCriteria'] = AutoMLJobCompletionCriteria.stub(stub[:completion_criteria]) unless stub[:completion_criteria].nil?
        data
      end
    end

    # Structure Stubber for AutoMLJobCompletionCriteria
    class AutoMLJobCompletionCriteria
      def self.default(visited=[])
        return nil if visited.include?('AutoMLJobCompletionCriteria')
        visited = visited + ['AutoMLJobCompletionCriteria']
        {
          max_candidates: 1,
          max_runtime_per_training_job_in_seconds: 1,
          max_auto_ml_job_runtime_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLJobCompletionCriteria.new
        data = {}
        data['MaxCandidates'] = stub[:max_candidates] unless stub[:max_candidates].nil?
        data['MaxRuntimePerTrainingJobInSeconds'] = stub[:max_runtime_per_training_job_in_seconds] unless stub[:max_runtime_per_training_job_in_seconds].nil?
        data['MaxAutoMLJobRuntimeInSeconds'] = stub[:max_auto_ml_job_runtime_in_seconds] unless stub[:max_auto_ml_job_runtime_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for AutoMLJobObjective
    class AutoMLJobObjective
      def self.default(visited=[])
        return nil if visited.include?('AutoMLJobObjective')
        visited = visited + ['AutoMLJobObjective']
        {
          metric_name: 'metric_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLJobObjective.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data
      end
    end

    # Structure Stubber for AutoMLJobArtifacts
    class AutoMLJobArtifacts
      def self.default(visited=[])
        return nil if visited.include?('AutoMLJobArtifacts')
        visited = visited + ['AutoMLJobArtifacts']
        {
          candidate_definition_notebook_location: 'candidate_definition_notebook_location',
          data_exploration_notebook_location: 'data_exploration_notebook_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLJobArtifacts.new
        data = {}
        data['CandidateDefinitionNotebookLocation'] = stub[:candidate_definition_notebook_location] unless stub[:candidate_definition_notebook_location].nil?
        data['DataExplorationNotebookLocation'] = stub[:data_exploration_notebook_location] unless stub[:data_exploration_notebook_location].nil?
        data
      end
    end

    # Structure Stubber for AutoMLCandidate
    class AutoMLCandidate
      def self.default(visited=[])
        return nil if visited.include?('AutoMLCandidate')
        visited = visited + ['AutoMLCandidate']
        {
          candidate_name: 'candidate_name',
          final_auto_ml_job_objective_metric: FinalAutoMLJobObjectiveMetric.default(visited),
          objective_status: 'objective_status',
          candidate_steps: CandidateSteps.default(visited),
          candidate_status: 'candidate_status',
          inference_containers: AutoMLContainerDefinitions.default(visited),
          creation_time: Time.now,
          end_time: Time.now,
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
          candidate_properties: CandidateProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLCandidate.new
        data = {}
        data['CandidateName'] = stub[:candidate_name] unless stub[:candidate_name].nil?
        data['FinalAutoMLJobObjectiveMetric'] = FinalAutoMLJobObjectiveMetric.stub(stub[:final_auto_ml_job_objective_metric]) unless stub[:final_auto_ml_job_objective_metric].nil?
        data['ObjectiveStatus'] = stub[:objective_status] unless stub[:objective_status].nil?
        data['CandidateSteps'] = CandidateSteps.stub(stub[:candidate_steps]) unless stub[:candidate_steps].nil?
        data['CandidateStatus'] = stub[:candidate_status] unless stub[:candidate_status].nil?
        data['InferenceContainers'] = AutoMLContainerDefinitions.stub(stub[:inference_containers]) unless stub[:inference_containers].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CandidateProperties'] = CandidateProperties.stub(stub[:candidate_properties]) unless stub[:candidate_properties].nil?
        data
      end
    end

    # Structure Stubber for CandidateProperties
    class CandidateProperties
      def self.default(visited=[])
        return nil if visited.include?('CandidateProperties')
        visited = visited + ['CandidateProperties']
        {
          candidate_artifact_locations: CandidateArtifactLocations.default(visited),
          candidate_metrics: MetricDataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CandidateProperties.new
        data = {}
        data['CandidateArtifactLocations'] = CandidateArtifactLocations.stub(stub[:candidate_artifact_locations]) unless stub[:candidate_artifact_locations].nil?
        data['CandidateMetrics'] = MetricDataList.stub(stub[:candidate_metrics]) unless stub[:candidate_metrics].nil?
        data
      end
    end

    # List Stubber for MetricDataList
    class MetricDataList
      def self.default(visited=[])
        return nil if visited.include?('MetricDataList')
        visited = visited + ['MetricDataList']
        [
          MetricDatum.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricDatum.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricDatum
    class MetricDatum
      def self.default(visited=[])
        return nil if visited.include?('MetricDatum')
        visited = visited + ['MetricDatum']
        {
          metric_name: 'metric_name',
          value: 1.0,
          set: 'set',
          standard_metric_name: 'standard_metric_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDatum.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['Set'] = stub[:set] unless stub[:set].nil?
        data['StandardMetricName'] = stub[:standard_metric_name] unless stub[:standard_metric_name].nil?
        data
      end
    end

    # Structure Stubber for CandidateArtifactLocations
    class CandidateArtifactLocations
      def self.default(visited=[])
        return nil if visited.include?('CandidateArtifactLocations')
        visited = visited + ['CandidateArtifactLocations']
        {
          explainability: 'explainability',
          model_insights: 'model_insights',
        }
      end

      def self.stub(stub)
        stub ||= Types::CandidateArtifactLocations.new
        data = {}
        data['Explainability'] = stub[:explainability] unless stub[:explainability].nil?
        data['ModelInsights'] = stub[:model_insights] unless stub[:model_insights].nil?
        data
      end
    end

    # List Stubber for AutoMLContainerDefinitions
    class AutoMLContainerDefinitions
      def self.default(visited=[])
        return nil if visited.include?('AutoMLContainerDefinitions')
        visited = visited + ['AutoMLContainerDefinitions']
        [
          AutoMLContainerDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoMLContainerDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoMLContainerDefinition
    class AutoMLContainerDefinition
      def self.default(visited=[])
        return nil if visited.include?('AutoMLContainerDefinition')
        visited = visited + ['AutoMLContainerDefinition']
        {
          image: 'image',
          model_data_url: 'model_data_url',
          environment: EnvironmentMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLContainerDefinition.new
        data = {}
        data['Image'] = stub[:image] unless stub[:image].nil?
        data['ModelDataUrl'] = stub[:model_data_url] unless stub[:model_data_url].nil?
        data['Environment'] = EnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data
      end
    end

    # List Stubber for CandidateSteps
    class CandidateSteps
      def self.default(visited=[])
        return nil if visited.include?('CandidateSteps')
        visited = visited + ['CandidateSteps']
        [
          AutoMLCandidateStep.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoMLCandidateStep.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoMLCandidateStep
    class AutoMLCandidateStep
      def self.default(visited=[])
        return nil if visited.include?('AutoMLCandidateStep')
        visited = visited + ['AutoMLCandidateStep']
        {
          candidate_step_type: 'candidate_step_type',
          candidate_step_arn: 'candidate_step_arn',
          candidate_step_name: 'candidate_step_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLCandidateStep.new
        data = {}
        data['CandidateStepType'] = stub[:candidate_step_type] unless stub[:candidate_step_type].nil?
        data['CandidateStepArn'] = stub[:candidate_step_arn] unless stub[:candidate_step_arn].nil?
        data['CandidateStepName'] = stub[:candidate_step_name] unless stub[:candidate_step_name].nil?
        data
      end
    end

    # Structure Stubber for FinalAutoMLJobObjectiveMetric
    class FinalAutoMLJobObjectiveMetric
      def self.default(visited=[])
        return nil if visited.include?('FinalAutoMLJobObjectiveMetric')
        visited = visited + ['FinalAutoMLJobObjectiveMetric']
        {
          type: 'type',
          metric_name: 'metric_name',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::FinalAutoMLJobObjectiveMetric.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # List Stubber for AutoMLPartialFailureReasons
    class AutoMLPartialFailureReasons
      def self.default(visited=[])
        return nil if visited.include?('AutoMLPartialFailureReasons')
        visited = visited + ['AutoMLPartialFailureReasons']
        [
          AutoMLPartialFailureReason.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoMLPartialFailureReason.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoMLPartialFailureReason
    class AutoMLPartialFailureReason
      def self.default(visited=[])
        return nil if visited.include?('AutoMLPartialFailureReason')
        visited = visited + ['AutoMLPartialFailureReason']
        {
          partial_failure_message: 'partial_failure_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLPartialFailureReason.new
        data = {}
        data['PartialFailureMessage'] = stub[:partial_failure_message] unless stub[:partial_failure_message].nil?
        data
      end
    end

    # Structure Stubber for AutoMLJobConfig
    class AutoMLJobConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoMLJobConfig')
        visited = visited + ['AutoMLJobConfig']
        {
          completion_criteria: AutoMLJobCompletionCriteria.default(visited),
          security_config: AutoMLSecurityConfig.default(visited),
          data_split_config: AutoMLDataSplitConfig.default(visited),
          candidate_generation_config: AutoMLCandidateGenerationConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLJobConfig.new
        data = {}
        data['CompletionCriteria'] = AutoMLJobCompletionCriteria.stub(stub[:completion_criteria]) unless stub[:completion_criteria].nil?
        data['SecurityConfig'] = AutoMLSecurityConfig.stub(stub[:security_config]) unless stub[:security_config].nil?
        data['DataSplitConfig'] = AutoMLDataSplitConfig.stub(stub[:data_split_config]) unless stub[:data_split_config].nil?
        data['CandidateGenerationConfig'] = AutoMLCandidateGenerationConfig.stub(stub[:candidate_generation_config]) unless stub[:candidate_generation_config].nil?
        data
      end
    end

    # Structure Stubber for AutoMLCandidateGenerationConfig
    class AutoMLCandidateGenerationConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoMLCandidateGenerationConfig')
        visited = visited + ['AutoMLCandidateGenerationConfig']
        {
          feature_specification_s3_uri: 'feature_specification_s3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLCandidateGenerationConfig.new
        data = {}
        data['FeatureSpecificationS3Uri'] = stub[:feature_specification_s3_uri] unless stub[:feature_specification_s3_uri].nil?
        data
      end
    end

    # Structure Stubber for AutoMLDataSplitConfig
    class AutoMLDataSplitConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoMLDataSplitConfig')
        visited = visited + ['AutoMLDataSplitConfig']
        {
          validation_fraction: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLDataSplitConfig.new
        data = {}
        data['ValidationFraction'] = Hearth::NumberHelper.serialize(stub[:validation_fraction])
        data
      end
    end

    # Structure Stubber for AutoMLSecurityConfig
    class AutoMLSecurityConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoMLSecurityConfig')
        visited = visited + ['AutoMLSecurityConfig']
        {
          volume_kms_key_id: 'volume_kms_key_id',
          enable_inter_container_traffic_encryption: false,
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLSecurityConfig.new
        data = {}
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['EnableInterContainerTrafficEncryption'] = stub[:enable_inter_container_traffic_encryption] unless stub[:enable_inter_container_traffic_encryption].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Structure Stubber for VpcConfig
    class VpcConfig
      def self.default(visited=[])
        return nil if visited.include?('VpcConfig')
        visited = visited + ['VpcConfig']
        {
          security_group_ids: VpcSecurityGroupIds.default(visited),
          subnets: Subnets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfig.new
        data = {}
        data['SecurityGroupIds'] = VpcSecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['Subnets'] = Subnets.stub(stub[:subnets]) unless stub[:subnets].nil?
        data
      end
    end

    # List Stubber for Subnets
    class Subnets
      def self.default(visited=[])
        return nil if visited.include?('Subnets')
        visited = visited + ['Subnets']
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

    # List Stubber for VpcSecurityGroupIds
    class VpcSecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('VpcSecurityGroupIds')
        visited = visited + ['VpcSecurityGroupIds']
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

    # Structure Stubber for AutoMLOutputDataConfig
    class AutoMLOutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoMLOutputDataConfig')
        visited = visited + ['AutoMLOutputDataConfig']
        {
          kms_key_id: 'kms_key_id',
          s3_output_path: 's3_output_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLOutputDataConfig.new
        data = {}
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data
      end
    end

    # List Stubber for AutoMLInputDataConfig
    class AutoMLInputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoMLInputDataConfig')
        visited = visited + ['AutoMLInputDataConfig']
        [
          AutoMLChannel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoMLChannel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoMLChannel
    class AutoMLChannel
      def self.default(visited=[])
        return nil if visited.include?('AutoMLChannel')
        visited = visited + ['AutoMLChannel']
        {
          data_source: AutoMLDataSource.default(visited),
          compression_type: 'compression_type',
          target_attribute_name: 'target_attribute_name',
          content_type: 'content_type',
          channel_type: 'channel_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLChannel.new
        data = {}
        data['DataSource'] = AutoMLDataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['CompressionType'] = stub[:compression_type] unless stub[:compression_type].nil?
        data['TargetAttributeName'] = stub[:target_attribute_name] unless stub[:target_attribute_name].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['ChannelType'] = stub[:channel_type] unless stub[:channel_type].nil?
        data
      end
    end

    # Structure Stubber for AutoMLDataSource
    class AutoMLDataSource
      def self.default(visited=[])
        return nil if visited.include?('AutoMLDataSource')
        visited = visited + ['AutoMLDataSource']
        {
          s3_data_source: AutoMLS3DataSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLDataSource.new
        data = {}
        data['S3DataSource'] = AutoMLS3DataSource.stub(stub[:s3_data_source]) unless stub[:s3_data_source].nil?
        data
      end
    end

    # Structure Stubber for AutoMLS3DataSource
    class AutoMLS3DataSource
      def self.default(visited=[])
        return nil if visited.include?('AutoMLS3DataSource')
        visited = visited + ['AutoMLS3DataSource']
        {
          s3_data_type: 's3_data_type',
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLS3DataSource.new
        data = {}
        data['S3DataType'] = stub[:s3_data_type] unless stub[:s3_data_type].nil?
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Operation Stubber for DescribeCodeRepository
    class DescribeCodeRepository
      def self.default(visited=[])
        {
          code_repository_name: 'code_repository_name',
          code_repository_arn: 'code_repository_arn',
          creation_time: Time.now,
          last_modified_time: Time.now,
          git_config: GitConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CodeRepositoryName'] = stub[:code_repository_name] unless stub[:code_repository_name].nil?
        data['CodeRepositoryArn'] = stub[:code_repository_arn] unless stub[:code_repository_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['GitConfig'] = GitConfig.stub(stub[:git_config]) unless stub[:git_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GitConfig
    class GitConfig
      def self.default(visited=[])
        return nil if visited.include?('GitConfig')
        visited = visited + ['GitConfig']
        {
          repository_url: 'repository_url',
          branch: 'branch',
          secret_arn: 'secret_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::GitConfig.new
        data = {}
        data['RepositoryUrl'] = stub[:repository_url] unless stub[:repository_url].nil?
        data['Branch'] = stub[:branch] unless stub[:branch].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeCompilationJob
    class DescribeCompilationJob
      def self.default(visited=[])
        {
          compilation_job_name: 'compilation_job_name',
          compilation_job_arn: 'compilation_job_arn',
          compilation_job_status: 'compilation_job_status',
          compilation_start_time: Time.now,
          compilation_end_time: Time.now,
          stopping_condition: StoppingCondition.default(visited),
          inference_image: 'inference_image',
          model_package_version_arn: 'model_package_version_arn',
          creation_time: Time.now,
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
          model_artifacts: ModelArtifacts.default(visited),
          model_digests: ModelDigests.default(visited),
          role_arn: 'role_arn',
          input_config: InputConfig.default(visited),
          output_config: OutputConfig.default(visited),
          vpc_config: NeoVpcConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CompilationJobName'] = stub[:compilation_job_name] unless stub[:compilation_job_name].nil?
        data['CompilationJobArn'] = stub[:compilation_job_arn] unless stub[:compilation_job_arn].nil?
        data['CompilationJobStatus'] = stub[:compilation_job_status] unless stub[:compilation_job_status].nil?
        data['CompilationStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:compilation_start_time]).to_i unless stub[:compilation_start_time].nil?
        data['CompilationEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:compilation_end_time]).to_i unless stub[:compilation_end_time].nil?
        data['StoppingCondition'] = StoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        data['InferenceImage'] = stub[:inference_image] unless stub[:inference_image].nil?
        data['ModelPackageVersionArn'] = stub[:model_package_version_arn] unless stub[:model_package_version_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ModelArtifacts'] = ModelArtifacts.stub(stub[:model_artifacts]) unless stub[:model_artifacts].nil?
        data['ModelDigests'] = ModelDigests.stub(stub[:model_digests]) unless stub[:model_digests].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['InputConfig'] = InputConfig.stub(stub[:input_config]) unless stub[:input_config].nil?
        data['OutputConfig'] = OutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data['VpcConfig'] = NeoVpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for NeoVpcConfig
    class NeoVpcConfig
      def self.default(visited=[])
        return nil if visited.include?('NeoVpcConfig')
        visited = visited + ['NeoVpcConfig']
        {
          security_group_ids: NeoVpcSecurityGroupIds.default(visited),
          subnets: NeoVpcSubnets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NeoVpcConfig.new
        data = {}
        data['SecurityGroupIds'] = NeoVpcSecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['Subnets'] = NeoVpcSubnets.stub(stub[:subnets]) unless stub[:subnets].nil?
        data
      end
    end

    # List Stubber for NeoVpcSubnets
    class NeoVpcSubnets
      def self.default(visited=[])
        return nil if visited.include?('NeoVpcSubnets')
        visited = visited + ['NeoVpcSubnets']
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

    # List Stubber for NeoVpcSecurityGroupIds
    class NeoVpcSecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('NeoVpcSecurityGroupIds')
        visited = visited + ['NeoVpcSecurityGroupIds']
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

    # Structure Stubber for OutputConfig
    class OutputConfig
      def self.default(visited=[])
        return nil if visited.include?('OutputConfig')
        visited = visited + ['OutputConfig']
        {
          s3_output_location: 's3_output_location',
          target_device: 'target_device',
          target_platform: TargetPlatform.default(visited),
          compiler_options: 'compiler_options',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputConfig.new
        data = {}
        data['S3OutputLocation'] = stub[:s3_output_location] unless stub[:s3_output_location].nil?
        data['TargetDevice'] = stub[:target_device] unless stub[:target_device].nil?
        data['TargetPlatform'] = TargetPlatform.stub(stub[:target_platform]) unless stub[:target_platform].nil?
        data['CompilerOptions'] = stub[:compiler_options] unless stub[:compiler_options].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for TargetPlatform
    class TargetPlatform
      def self.default(visited=[])
        return nil if visited.include?('TargetPlatform')
        visited = visited + ['TargetPlatform']
        {
          os: 'os',
          arch: 'arch',
          accelerator: 'accelerator',
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetPlatform.new
        data = {}
        data['Os'] = stub[:os] unless stub[:os].nil?
        data['Arch'] = stub[:arch] unless stub[:arch].nil?
        data['Accelerator'] = stub[:accelerator] unless stub[:accelerator].nil?
        data
      end
    end

    # Structure Stubber for InputConfig
    class InputConfig
      def self.default(visited=[])
        return nil if visited.include?('InputConfig')
        visited = visited + ['InputConfig']
        {
          s3_uri: 's3_uri',
          data_input_config: 'data_input_config',
          framework: 'framework',
          framework_version: 'framework_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['DataInputConfig'] = stub[:data_input_config] unless stub[:data_input_config].nil?
        data['Framework'] = stub[:framework] unless stub[:framework].nil?
        data['FrameworkVersion'] = stub[:framework_version] unless stub[:framework_version].nil?
        data
      end
    end

    # Structure Stubber for ModelDigests
    class ModelDigests
      def self.default(visited=[])
        return nil if visited.include?('ModelDigests')
        visited = visited + ['ModelDigests']
        {
          artifact_digest: 'artifact_digest',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelDigests.new
        data = {}
        data['ArtifactDigest'] = stub[:artifact_digest] unless stub[:artifact_digest].nil?
        data
      end
    end

    # Structure Stubber for ModelArtifacts
    class ModelArtifacts
      def self.default(visited=[])
        return nil if visited.include?('ModelArtifacts')
        visited = visited + ['ModelArtifacts']
        {
          s3_model_artifacts: 's3_model_artifacts',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelArtifacts.new
        data = {}
        data['S3ModelArtifacts'] = stub[:s3_model_artifacts] unless stub[:s3_model_artifacts].nil?
        data
      end
    end

    # Operation Stubber for DescribeContext
    class DescribeContext
      def self.default(visited=[])
        {
          context_name: 'context_name',
          context_arn: 'context_arn',
          source: ContextSource.default(visited),
          context_type: 'context_type',
          description: 'description',
          properties: LineageEntityParameters.default(visited),
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          lineage_group_arn: 'lineage_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContextName'] = stub[:context_name] unless stub[:context_name].nil?
        data['ContextArn'] = stub[:context_arn] unless stub[:context_arn].nil?
        data['Source'] = ContextSource.stub(stub[:source]) unless stub[:source].nil?
        data['ContextType'] = stub[:context_type] unless stub[:context_type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Properties'] = LineageEntityParameters.stub(stub[:properties]) unless stub[:properties].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['LineageGroupArn'] = stub[:lineage_group_arn] unless stub[:lineage_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ContextSource
    class ContextSource
      def self.default(visited=[])
        return nil if visited.include?('ContextSource')
        visited = visited + ['ContextSource']
        {
          source_uri: 'source_uri',
          source_type: 'source_type',
          source_id: 'source_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContextSource.new
        data = {}
        data['SourceUri'] = stub[:source_uri] unless stub[:source_uri].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeDataQualityJobDefinition
    class DescribeDataQualityJobDefinition
      def self.default(visited=[])
        {
          job_definition_arn: 'job_definition_arn',
          job_definition_name: 'job_definition_name',
          creation_time: Time.now,
          data_quality_baseline_config: DataQualityBaselineConfig.default(visited),
          data_quality_app_specification: DataQualityAppSpecification.default(visited),
          data_quality_job_input: DataQualityJobInput.default(visited),
          data_quality_job_output_config: MonitoringOutputConfig.default(visited),
          job_resources: MonitoringResources.default(visited),
          network_config: MonitoringNetworkConfig.default(visited),
          role_arn: 'role_arn',
          stopping_condition: MonitoringStoppingCondition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        data['JobDefinitionName'] = stub[:job_definition_name] unless stub[:job_definition_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['DataQualityBaselineConfig'] = DataQualityBaselineConfig.stub(stub[:data_quality_baseline_config]) unless stub[:data_quality_baseline_config].nil?
        data['DataQualityAppSpecification'] = DataQualityAppSpecification.stub(stub[:data_quality_app_specification]) unless stub[:data_quality_app_specification].nil?
        data['DataQualityJobInput'] = DataQualityJobInput.stub(stub[:data_quality_job_input]) unless stub[:data_quality_job_input].nil?
        data['DataQualityJobOutputConfig'] = MonitoringOutputConfig.stub(stub[:data_quality_job_output_config]) unless stub[:data_quality_job_output_config].nil?
        data['JobResources'] = MonitoringResources.stub(stub[:job_resources]) unless stub[:job_resources].nil?
        data['NetworkConfig'] = MonitoringNetworkConfig.stub(stub[:network_config]) unless stub[:network_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['StoppingCondition'] = MonitoringStoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MonitoringStoppingCondition
    class MonitoringStoppingCondition
      def self.default(visited=[])
        return nil if visited.include?('MonitoringStoppingCondition')
        visited = visited + ['MonitoringStoppingCondition']
        {
          max_runtime_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringStoppingCondition.new
        data = {}
        data['MaxRuntimeInSeconds'] = stub[:max_runtime_in_seconds] unless stub[:max_runtime_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for MonitoringNetworkConfig
    class MonitoringNetworkConfig
      def self.default(visited=[])
        return nil if visited.include?('MonitoringNetworkConfig')
        visited = visited + ['MonitoringNetworkConfig']
        {
          enable_inter_container_traffic_encryption: false,
          enable_network_isolation: false,
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringNetworkConfig.new
        data = {}
        data['EnableInterContainerTrafficEncryption'] = stub[:enable_inter_container_traffic_encryption] unless stub[:enable_inter_container_traffic_encryption].nil?
        data['EnableNetworkIsolation'] = stub[:enable_network_isolation] unless stub[:enable_network_isolation].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Structure Stubber for MonitoringResources
    class MonitoringResources
      def self.default(visited=[])
        return nil if visited.include?('MonitoringResources')
        visited = visited + ['MonitoringResources']
        {
          cluster_config: MonitoringClusterConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringResources.new
        data = {}
        data['ClusterConfig'] = MonitoringClusterConfig.stub(stub[:cluster_config]) unless stub[:cluster_config].nil?
        data
      end
    end

    # Structure Stubber for MonitoringClusterConfig
    class MonitoringClusterConfig
      def self.default(visited=[])
        return nil if visited.include?('MonitoringClusterConfig')
        visited = visited + ['MonitoringClusterConfig']
        {
          instance_count: 1,
          instance_type: 'instance_type',
          volume_size_in_gb: 1,
          volume_kms_key_id: 'volume_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringClusterConfig.new
        data = {}
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['VolumeSizeInGB'] = stub[:volume_size_in_gb] unless stub[:volume_size_in_gb].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for MonitoringOutputConfig
    class MonitoringOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('MonitoringOutputConfig')
        visited = visited + ['MonitoringOutputConfig']
        {
          monitoring_outputs: MonitoringOutputs.default(visited),
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringOutputConfig.new
        data = {}
        data['MonitoringOutputs'] = MonitoringOutputs.stub(stub[:monitoring_outputs]) unless stub[:monitoring_outputs].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # List Stubber for MonitoringOutputs
    class MonitoringOutputs
      def self.default(visited=[])
        return nil if visited.include?('MonitoringOutputs')
        visited = visited + ['MonitoringOutputs']
        [
          MonitoringOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MonitoringOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MonitoringOutput
    class MonitoringOutput
      def self.default(visited=[])
        return nil if visited.include?('MonitoringOutput')
        visited = visited + ['MonitoringOutput']
        {
          s3_output: MonitoringS3Output.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringOutput.new
        data = {}
        data['S3Output'] = MonitoringS3Output.stub(stub[:s3_output]) unless stub[:s3_output].nil?
        data
      end
    end

    # Structure Stubber for MonitoringS3Output
    class MonitoringS3Output
      def self.default(visited=[])
        return nil if visited.include?('MonitoringS3Output')
        visited = visited + ['MonitoringS3Output']
        {
          s3_uri: 's3_uri',
          local_path: 'local_path',
          s3_upload_mode: 's3_upload_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringS3Output.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['S3UploadMode'] = stub[:s3_upload_mode] unless stub[:s3_upload_mode].nil?
        data
      end
    end

    # Structure Stubber for DataQualityJobInput
    class DataQualityJobInput
      def self.default(visited=[])
        return nil if visited.include?('DataQualityJobInput')
        visited = visited + ['DataQualityJobInput']
        {
          endpoint_input: EndpointInput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataQualityJobInput.new
        data = {}
        data['EndpointInput'] = EndpointInput.stub(stub[:endpoint_input]) unless stub[:endpoint_input].nil?
        data
      end
    end

    # Structure Stubber for EndpointInput
    class EndpointInput
      def self.default(visited=[])
        return nil if visited.include?('EndpointInput')
        visited = visited + ['EndpointInput']
        {
          endpoint_name: 'endpoint_name',
          local_path: 'local_path',
          s3_input_mode: 's3_input_mode',
          s3_data_distribution_type: 's3_data_distribution_type',
          features_attribute: 'features_attribute',
          inference_attribute: 'inference_attribute',
          probability_attribute: 'probability_attribute',
          probability_threshold_attribute: 1.0,
          start_time_offset: 'start_time_offset',
          end_time_offset: 'end_time_offset',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointInput.new
        data = {}
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['S3InputMode'] = stub[:s3_input_mode] unless stub[:s3_input_mode].nil?
        data['S3DataDistributionType'] = stub[:s3_data_distribution_type] unless stub[:s3_data_distribution_type].nil?
        data['FeaturesAttribute'] = stub[:features_attribute] unless stub[:features_attribute].nil?
        data['InferenceAttribute'] = stub[:inference_attribute] unless stub[:inference_attribute].nil?
        data['ProbabilityAttribute'] = stub[:probability_attribute] unless stub[:probability_attribute].nil?
        data['ProbabilityThresholdAttribute'] = Hearth::NumberHelper.serialize(stub[:probability_threshold_attribute])
        data['StartTimeOffset'] = stub[:start_time_offset] unless stub[:start_time_offset].nil?
        data['EndTimeOffset'] = stub[:end_time_offset] unless stub[:end_time_offset].nil?
        data
      end
    end

    # Structure Stubber for DataQualityAppSpecification
    class DataQualityAppSpecification
      def self.default(visited=[])
        return nil if visited.include?('DataQualityAppSpecification')
        visited = visited + ['DataQualityAppSpecification']
        {
          image_uri: 'image_uri',
          container_entrypoint: ContainerEntrypoint.default(visited),
          container_arguments: MonitoringContainerArguments.default(visited),
          record_preprocessor_source_uri: 'record_preprocessor_source_uri',
          post_analytics_processor_source_uri: 'post_analytics_processor_source_uri',
          environment: MonitoringEnvironmentMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataQualityAppSpecification.new
        data = {}
        data['ImageUri'] = stub[:image_uri] unless stub[:image_uri].nil?
        data['ContainerEntrypoint'] = ContainerEntrypoint.stub(stub[:container_entrypoint]) unless stub[:container_entrypoint].nil?
        data['ContainerArguments'] = MonitoringContainerArguments.stub(stub[:container_arguments]) unless stub[:container_arguments].nil?
        data['RecordPreprocessorSourceUri'] = stub[:record_preprocessor_source_uri] unless stub[:record_preprocessor_source_uri].nil?
        data['PostAnalyticsProcessorSourceUri'] = stub[:post_analytics_processor_source_uri] unless stub[:post_analytics_processor_source_uri].nil?
        data['Environment'] = MonitoringEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data
      end
    end

    # Map Stubber for MonitoringEnvironmentMap
    class MonitoringEnvironmentMap
      def self.default(visited=[])
        return nil if visited.include?('MonitoringEnvironmentMap')
        visited = visited + ['MonitoringEnvironmentMap']
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

    # List Stubber for MonitoringContainerArguments
    class MonitoringContainerArguments
      def self.default(visited=[])
        return nil if visited.include?('MonitoringContainerArguments')
        visited = visited + ['MonitoringContainerArguments']
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

    # List Stubber for ContainerEntrypoint
    class ContainerEntrypoint
      def self.default(visited=[])
        return nil if visited.include?('ContainerEntrypoint')
        visited = visited + ['ContainerEntrypoint']
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

    # Structure Stubber for DataQualityBaselineConfig
    class DataQualityBaselineConfig
      def self.default(visited=[])
        return nil if visited.include?('DataQualityBaselineConfig')
        visited = visited + ['DataQualityBaselineConfig']
        {
          baselining_job_name: 'baselining_job_name',
          constraints_resource: MonitoringConstraintsResource.default(visited),
          statistics_resource: MonitoringStatisticsResource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataQualityBaselineConfig.new
        data = {}
        data['BaseliningJobName'] = stub[:baselining_job_name] unless stub[:baselining_job_name].nil?
        data['ConstraintsResource'] = MonitoringConstraintsResource.stub(stub[:constraints_resource]) unless stub[:constraints_resource].nil?
        data['StatisticsResource'] = MonitoringStatisticsResource.stub(stub[:statistics_resource]) unless stub[:statistics_resource].nil?
        data
      end
    end

    # Structure Stubber for MonitoringStatisticsResource
    class MonitoringStatisticsResource
      def self.default(visited=[])
        return nil if visited.include?('MonitoringStatisticsResource')
        visited = visited + ['MonitoringStatisticsResource']
        {
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringStatisticsResource.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Structure Stubber for MonitoringConstraintsResource
    class MonitoringConstraintsResource
      def self.default(visited=[])
        return nil if visited.include?('MonitoringConstraintsResource')
        visited = visited + ['MonitoringConstraintsResource']
        {
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringConstraintsResource.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Operation Stubber for DescribeDevice
    class DescribeDevice
      def self.default(visited=[])
        {
          device_arn: 'device_arn',
          device_name: 'device_name',
          description: 'description',
          device_fleet_name: 'device_fleet_name',
          iot_thing_name: 'iot_thing_name',
          registration_time: Time.now,
          latest_heartbeat: Time.now,
          models: EdgeModels.default(visited),
          max_models: 1,
          next_token: 'next_token',
          agent_version: 'agent_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DeviceFleetName'] = stub[:device_fleet_name] unless stub[:device_fleet_name].nil?
        data['IotThingName'] = stub[:iot_thing_name] unless stub[:iot_thing_name].nil?
        data['RegistrationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registration_time]).to_i unless stub[:registration_time].nil?
        data['LatestHeartbeat'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_heartbeat]).to_i unless stub[:latest_heartbeat].nil?
        data['Models'] = EdgeModels.stub(stub[:models]) unless stub[:models].nil?
        data['MaxModels'] = stub[:max_models] unless stub[:max_models].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['AgentVersion'] = stub[:agent_version] unless stub[:agent_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EdgeModels
    class EdgeModels
      def self.default(visited=[])
        return nil if visited.include?('EdgeModels')
        visited = visited + ['EdgeModels']
        [
          EdgeModel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EdgeModel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EdgeModel
    class EdgeModel
      def self.default(visited=[])
        return nil if visited.include?('EdgeModel')
        visited = visited + ['EdgeModel']
        {
          model_name: 'model_name',
          model_version: 'model_version',
          latest_sample_time: Time.now,
          latest_inference: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EdgeModel.new
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['LatestSampleTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_sample_time]).to_i unless stub[:latest_sample_time].nil?
        data['LatestInference'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_inference]).to_i unless stub[:latest_inference].nil?
        data
      end
    end

    # Operation Stubber for DescribeDeviceFleet
    class DescribeDeviceFleet
      def self.default(visited=[])
        {
          device_fleet_name: 'device_fleet_name',
          device_fleet_arn: 'device_fleet_arn',
          output_config: EdgeOutputConfig.default(visited),
          description: 'description',
          creation_time: Time.now,
          last_modified_time: Time.now,
          role_arn: 'role_arn',
          iot_role_alias: 'iot_role_alias',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeviceFleetName'] = stub[:device_fleet_name] unless stub[:device_fleet_name].nil?
        data['DeviceFleetArn'] = stub[:device_fleet_arn] unless stub[:device_fleet_arn].nil?
        data['OutputConfig'] = EdgeOutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['IotRoleAlias'] = stub[:iot_role_alias] unless stub[:iot_role_alias].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EdgeOutputConfig
    class EdgeOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('EdgeOutputConfig')
        visited = visited + ['EdgeOutputConfig']
        {
          s3_output_location: 's3_output_location',
          kms_key_id: 'kms_key_id',
          preset_deployment_type: 'preset_deployment_type',
          preset_deployment_config: 'preset_deployment_config',
        }
      end

      def self.stub(stub)
        stub ||= Types::EdgeOutputConfig.new
        data = {}
        data['S3OutputLocation'] = stub[:s3_output_location] unless stub[:s3_output_location].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['PresetDeploymentType'] = stub[:preset_deployment_type] unless stub[:preset_deployment_type].nil?
        data['PresetDeploymentConfig'] = stub[:preset_deployment_config] unless stub[:preset_deployment_config].nil?
        data
      end
    end

    # Operation Stubber for DescribeDomain
    class DescribeDomain
      def self.default(visited=[])
        {
          domain_arn: 'domain_arn',
          domain_id: 'domain_id',
          domain_name: 'domain_name',
          home_efs_file_system_id: 'home_efs_file_system_id',
          single_sign_on_managed_application_instance_id: 'single_sign_on_managed_application_instance_id',
          status: 'status',
          creation_time: Time.now,
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
          auth_mode: 'auth_mode',
          default_user_settings: UserSettings.default(visited),
          app_network_access_type: 'app_network_access_type',
          home_efs_file_system_kms_key_id: 'home_efs_file_system_kms_key_id',
          subnet_ids: Subnets.default(visited),
          url: 'url',
          vpc_id: 'vpc_id',
          kms_key_id: 'kms_key_id',
          domain_settings: DomainSettings.default(visited),
          app_security_group_management: 'app_security_group_management',
          security_group_id_for_domain_boundary: 'security_group_id_for_domain_boundary',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DomainArn'] = stub[:domain_arn] unless stub[:domain_arn].nil?
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['HomeEfsFileSystemId'] = stub[:home_efs_file_system_id] unless stub[:home_efs_file_system_id].nil?
        data['SingleSignOnManagedApplicationInstanceId'] = stub[:single_sign_on_managed_application_instance_id] unless stub[:single_sign_on_managed_application_instance_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['AuthMode'] = stub[:auth_mode] unless stub[:auth_mode].nil?
        data['DefaultUserSettings'] = UserSettings.stub(stub[:default_user_settings]) unless stub[:default_user_settings].nil?
        data['AppNetworkAccessType'] = stub[:app_network_access_type] unless stub[:app_network_access_type].nil?
        data['HomeEfsFileSystemKmsKeyId'] = stub[:home_efs_file_system_kms_key_id] unless stub[:home_efs_file_system_kms_key_id].nil?
        data['SubnetIds'] = Subnets.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['DomainSettings'] = DomainSettings.stub(stub[:domain_settings]) unless stub[:domain_settings].nil?
        data['AppSecurityGroupManagement'] = stub[:app_security_group_management] unless stub[:app_security_group_management].nil?
        data['SecurityGroupIdForDomainBoundary'] = stub[:security_group_id_for_domain_boundary] unless stub[:security_group_id_for_domain_boundary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DomainSettings
    class DomainSettings
      def self.default(visited=[])
        return nil if visited.include?('DomainSettings')
        visited = visited + ['DomainSettings']
        {
          security_group_ids: DomainSecurityGroupIds.default(visited),
          r_studio_server_pro_domain_settings: RStudioServerProDomainSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainSettings.new
        data = {}
        data['SecurityGroupIds'] = DomainSecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['RStudioServerProDomainSettings'] = RStudioServerProDomainSettings.stub(stub[:r_studio_server_pro_domain_settings]) unless stub[:r_studio_server_pro_domain_settings].nil?
        data
      end
    end

    # Structure Stubber for RStudioServerProDomainSettings
    class RStudioServerProDomainSettings
      def self.default(visited=[])
        return nil if visited.include?('RStudioServerProDomainSettings')
        visited = visited + ['RStudioServerProDomainSettings']
        {
          domain_execution_role_arn: 'domain_execution_role_arn',
          r_studio_connect_url: 'r_studio_connect_url',
          r_studio_package_manager_url: 'r_studio_package_manager_url',
          default_resource_spec: ResourceSpec.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RStudioServerProDomainSettings.new
        data = {}
        data['DomainExecutionRoleArn'] = stub[:domain_execution_role_arn] unless stub[:domain_execution_role_arn].nil?
        data['RStudioConnectUrl'] = stub[:r_studio_connect_url] unless stub[:r_studio_connect_url].nil?
        data['RStudioPackageManagerUrl'] = stub[:r_studio_package_manager_url] unless stub[:r_studio_package_manager_url].nil?
        data['DefaultResourceSpec'] = ResourceSpec.stub(stub[:default_resource_spec]) unless stub[:default_resource_spec].nil?
        data
      end
    end

    # List Stubber for DomainSecurityGroupIds
    class DomainSecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('DomainSecurityGroupIds')
        visited = visited + ['DomainSecurityGroupIds']
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

    # Structure Stubber for UserSettings
    class UserSettings
      def self.default(visited=[])
        return nil if visited.include?('UserSettings')
        visited = visited + ['UserSettings']
        {
          execution_role: 'execution_role',
          security_groups: SecurityGroupIds.default(visited),
          sharing_settings: SharingSettings.default(visited),
          jupyter_server_app_settings: JupyterServerAppSettings.default(visited),
          kernel_gateway_app_settings: KernelGatewayAppSettings.default(visited),
          tensor_board_app_settings: TensorBoardAppSettings.default(visited),
          r_studio_server_pro_app_settings: RStudioServerProAppSettings.default(visited),
          r_session_app_settings: RSessionAppSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserSettings.new
        data = {}
        data['ExecutionRole'] = stub[:execution_role] unless stub[:execution_role].nil?
        data['SecurityGroups'] = SecurityGroupIds.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['SharingSettings'] = SharingSettings.stub(stub[:sharing_settings]) unless stub[:sharing_settings].nil?
        data['JupyterServerAppSettings'] = JupyterServerAppSettings.stub(stub[:jupyter_server_app_settings]) unless stub[:jupyter_server_app_settings].nil?
        data['KernelGatewayAppSettings'] = KernelGatewayAppSettings.stub(stub[:kernel_gateway_app_settings]) unless stub[:kernel_gateway_app_settings].nil?
        data['TensorBoardAppSettings'] = TensorBoardAppSettings.stub(stub[:tensor_board_app_settings]) unless stub[:tensor_board_app_settings].nil?
        data['RStudioServerProAppSettings'] = RStudioServerProAppSettings.stub(stub[:r_studio_server_pro_app_settings]) unless stub[:r_studio_server_pro_app_settings].nil?
        data['RSessionAppSettings'] = RSessionAppSettings.stub(stub[:r_session_app_settings]) unless stub[:r_session_app_settings].nil?
        data
      end
    end

    # Structure Stubber for RSessionAppSettings
    class RSessionAppSettings
      def self.default(visited=[])
        return nil if visited.include?('RSessionAppSettings')
        visited = visited + ['RSessionAppSettings']
        {
          default_resource_spec: ResourceSpec.default(visited),
          custom_images: CustomImages.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RSessionAppSettings.new
        data = {}
        data['DefaultResourceSpec'] = ResourceSpec.stub(stub[:default_resource_spec]) unless stub[:default_resource_spec].nil?
        data['CustomImages'] = CustomImages.stub(stub[:custom_images]) unless stub[:custom_images].nil?
        data
      end
    end

    # List Stubber for CustomImages
    class CustomImages
      def self.default(visited=[])
        return nil if visited.include?('CustomImages')
        visited = visited + ['CustomImages']
        [
          CustomImage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomImage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomImage
    class CustomImage
      def self.default(visited=[])
        return nil if visited.include?('CustomImage')
        visited = visited + ['CustomImage']
        {
          image_name: 'image_name',
          image_version_number: 1,
          app_image_config_name: 'app_image_config_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomImage.new
        data = {}
        data['ImageName'] = stub[:image_name] unless stub[:image_name].nil?
        data['ImageVersionNumber'] = stub[:image_version_number] unless stub[:image_version_number].nil?
        data['AppImageConfigName'] = stub[:app_image_config_name] unless stub[:app_image_config_name].nil?
        data
      end
    end

    # Structure Stubber for RStudioServerProAppSettings
    class RStudioServerProAppSettings
      def self.default(visited=[])
        return nil if visited.include?('RStudioServerProAppSettings')
        visited = visited + ['RStudioServerProAppSettings']
        {
          access_status: 'access_status',
          user_group: 'user_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::RStudioServerProAppSettings.new
        data = {}
        data['AccessStatus'] = stub[:access_status] unless stub[:access_status].nil?
        data['UserGroup'] = stub[:user_group] unless stub[:user_group].nil?
        data
      end
    end

    # Structure Stubber for TensorBoardAppSettings
    class TensorBoardAppSettings
      def self.default(visited=[])
        return nil if visited.include?('TensorBoardAppSettings')
        visited = visited + ['TensorBoardAppSettings']
        {
          default_resource_spec: ResourceSpec.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TensorBoardAppSettings.new
        data = {}
        data['DefaultResourceSpec'] = ResourceSpec.stub(stub[:default_resource_spec]) unless stub[:default_resource_spec].nil?
        data
      end
    end

    # Structure Stubber for KernelGatewayAppSettings
    class KernelGatewayAppSettings
      def self.default(visited=[])
        return nil if visited.include?('KernelGatewayAppSettings')
        visited = visited + ['KernelGatewayAppSettings']
        {
          default_resource_spec: ResourceSpec.default(visited),
          custom_images: CustomImages.default(visited),
          lifecycle_config_arns: LifecycleConfigArns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KernelGatewayAppSettings.new
        data = {}
        data['DefaultResourceSpec'] = ResourceSpec.stub(stub[:default_resource_spec]) unless stub[:default_resource_spec].nil?
        data['CustomImages'] = CustomImages.stub(stub[:custom_images]) unless stub[:custom_images].nil?
        data['LifecycleConfigArns'] = LifecycleConfigArns.stub(stub[:lifecycle_config_arns]) unless stub[:lifecycle_config_arns].nil?
        data
      end
    end

    # List Stubber for LifecycleConfigArns
    class LifecycleConfigArns
      def self.default(visited=[])
        return nil if visited.include?('LifecycleConfigArns')
        visited = visited + ['LifecycleConfigArns']
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

    # Structure Stubber for JupyterServerAppSettings
    class JupyterServerAppSettings
      def self.default(visited=[])
        return nil if visited.include?('JupyterServerAppSettings')
        visited = visited + ['JupyterServerAppSettings']
        {
          default_resource_spec: ResourceSpec.default(visited),
          lifecycle_config_arns: LifecycleConfigArns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JupyterServerAppSettings.new
        data = {}
        data['DefaultResourceSpec'] = ResourceSpec.stub(stub[:default_resource_spec]) unless stub[:default_resource_spec].nil?
        data['LifecycleConfigArns'] = LifecycleConfigArns.stub(stub[:lifecycle_config_arns]) unless stub[:lifecycle_config_arns].nil?
        data
      end
    end

    # Structure Stubber for SharingSettings
    class SharingSettings
      def self.default(visited=[])
        return nil if visited.include?('SharingSettings')
        visited = visited + ['SharingSettings']
        {
          notebook_output_option: 'notebook_output_option',
          s3_output_path: 's3_output_path',
          s3_kms_key_id: 's3_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SharingSettings.new
        data = {}
        data['NotebookOutputOption'] = stub[:notebook_output_option] unless stub[:notebook_output_option].nil?
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data['S3KmsKeyId'] = stub[:s3_kms_key_id] unless stub[:s3_kms_key_id].nil?
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

    # Operation Stubber for DescribeEdgePackagingJob
    class DescribeEdgePackagingJob
      def self.default(visited=[])
        {
          edge_packaging_job_arn: 'edge_packaging_job_arn',
          edge_packaging_job_name: 'edge_packaging_job_name',
          compilation_job_name: 'compilation_job_name',
          model_name: 'model_name',
          model_version: 'model_version',
          role_arn: 'role_arn',
          output_config: EdgeOutputConfig.default(visited),
          resource_key: 'resource_key',
          edge_packaging_job_status: 'edge_packaging_job_status',
          edge_packaging_job_status_message: 'edge_packaging_job_status_message',
          creation_time: Time.now,
          last_modified_time: Time.now,
          model_artifact: 'model_artifact',
          model_signature: 'model_signature',
          preset_deployment_output: EdgePresetDeploymentOutput.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EdgePackagingJobArn'] = stub[:edge_packaging_job_arn] unless stub[:edge_packaging_job_arn].nil?
        data['EdgePackagingJobName'] = stub[:edge_packaging_job_name] unless stub[:edge_packaging_job_name].nil?
        data['CompilationJobName'] = stub[:compilation_job_name] unless stub[:compilation_job_name].nil?
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['OutputConfig'] = EdgeOutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data['ResourceKey'] = stub[:resource_key] unless stub[:resource_key].nil?
        data['EdgePackagingJobStatus'] = stub[:edge_packaging_job_status] unless stub[:edge_packaging_job_status].nil?
        data['EdgePackagingJobStatusMessage'] = stub[:edge_packaging_job_status_message] unless stub[:edge_packaging_job_status_message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['ModelArtifact'] = stub[:model_artifact] unless stub[:model_artifact].nil?
        data['ModelSignature'] = stub[:model_signature] unless stub[:model_signature].nil?
        data['PresetDeploymentOutput'] = EdgePresetDeploymentOutput.stub(stub[:preset_deployment_output]) unless stub[:preset_deployment_output].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EdgePresetDeploymentOutput
    class EdgePresetDeploymentOutput
      def self.default(visited=[])
        return nil if visited.include?('EdgePresetDeploymentOutput')
        visited = visited + ['EdgePresetDeploymentOutput']
        {
          type: 'type',
          artifact: 'artifact',
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::EdgePresetDeploymentOutput.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Artifact'] = stub[:artifact] unless stub[:artifact].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
      end
    end

    # Operation Stubber for DescribeEndpoint
    class DescribeEndpoint
      def self.default(visited=[])
        {
          endpoint_name: 'endpoint_name',
          endpoint_arn: 'endpoint_arn',
          endpoint_config_name: 'endpoint_config_name',
          production_variants: ProductionVariantSummaryList.default(visited),
          data_capture_config: DataCaptureConfigSummary.default(visited),
          endpoint_status: 'endpoint_status',
          failure_reason: 'failure_reason',
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_deployment_config: DeploymentConfig.default(visited),
          async_inference_config: AsyncInferenceConfig.default(visited),
          pending_deployment_summary: PendingDeploymentSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        data['EndpointConfigName'] = stub[:endpoint_config_name] unless stub[:endpoint_config_name].nil?
        data['ProductionVariants'] = ProductionVariantSummaryList.stub(stub[:production_variants]) unless stub[:production_variants].nil?
        data['DataCaptureConfig'] = DataCaptureConfigSummary.stub(stub[:data_capture_config]) unless stub[:data_capture_config].nil?
        data['EndpointStatus'] = stub[:endpoint_status] unless stub[:endpoint_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastDeploymentConfig'] = DeploymentConfig.stub(stub[:last_deployment_config]) unless stub[:last_deployment_config].nil?
        data['AsyncInferenceConfig'] = AsyncInferenceConfig.stub(stub[:async_inference_config]) unless stub[:async_inference_config].nil?
        data['PendingDeploymentSummary'] = PendingDeploymentSummary.stub(stub[:pending_deployment_summary]) unless stub[:pending_deployment_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PendingDeploymentSummary
    class PendingDeploymentSummary
      def self.default(visited=[])
        return nil if visited.include?('PendingDeploymentSummary')
        visited = visited + ['PendingDeploymentSummary']
        {
          endpoint_config_name: 'endpoint_config_name',
          production_variants: PendingProductionVariantSummaryList.default(visited),
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingDeploymentSummary.new
        data = {}
        data['EndpointConfigName'] = stub[:endpoint_config_name] unless stub[:endpoint_config_name].nil?
        data['ProductionVariants'] = PendingProductionVariantSummaryList.stub(stub[:production_variants]) unless stub[:production_variants].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data
      end
    end

    # List Stubber for PendingProductionVariantSummaryList
    class PendingProductionVariantSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PendingProductionVariantSummaryList')
        visited = visited + ['PendingProductionVariantSummaryList']
        [
          PendingProductionVariantSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PendingProductionVariantSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PendingProductionVariantSummary
    class PendingProductionVariantSummary
      def self.default(visited=[])
        return nil if visited.include?('PendingProductionVariantSummary')
        visited = visited + ['PendingProductionVariantSummary']
        {
          variant_name: 'variant_name',
          deployed_images: DeployedImages.default(visited),
          current_weight: 1.0,
          desired_weight: 1.0,
          current_instance_count: 1,
          desired_instance_count: 1,
          instance_type: 'instance_type',
          accelerator_type: 'accelerator_type',
          variant_status: ProductionVariantStatusList.default(visited),
          current_serverless_config: ProductionVariantServerlessConfig.default(visited),
          desired_serverless_config: ProductionVariantServerlessConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingProductionVariantSummary.new
        data = {}
        data['VariantName'] = stub[:variant_name] unless stub[:variant_name].nil?
        data['DeployedImages'] = DeployedImages.stub(stub[:deployed_images]) unless stub[:deployed_images].nil?
        data['CurrentWeight'] = Hearth::NumberHelper.serialize(stub[:current_weight])
        data['DesiredWeight'] = Hearth::NumberHelper.serialize(stub[:desired_weight])
        data['CurrentInstanceCount'] = stub[:current_instance_count] unless stub[:current_instance_count].nil?
        data['DesiredInstanceCount'] = stub[:desired_instance_count] unless stub[:desired_instance_count].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['AcceleratorType'] = stub[:accelerator_type] unless stub[:accelerator_type].nil?
        data['VariantStatus'] = ProductionVariantStatusList.stub(stub[:variant_status]) unless stub[:variant_status].nil?
        data['CurrentServerlessConfig'] = ProductionVariantServerlessConfig.stub(stub[:current_serverless_config]) unless stub[:current_serverless_config].nil?
        data['DesiredServerlessConfig'] = ProductionVariantServerlessConfig.stub(stub[:desired_serverless_config]) unless stub[:desired_serverless_config].nil?
        data
      end
    end

    # Structure Stubber for ProductionVariantServerlessConfig
    class ProductionVariantServerlessConfig
      def self.default(visited=[])
        return nil if visited.include?('ProductionVariantServerlessConfig')
        visited = visited + ['ProductionVariantServerlessConfig']
        {
          memory_size_in_mb: 1,
          max_concurrency: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductionVariantServerlessConfig.new
        data = {}
        data['MemorySizeInMB'] = stub[:memory_size_in_mb] unless stub[:memory_size_in_mb].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data
      end
    end

    # List Stubber for ProductionVariantStatusList
    class ProductionVariantStatusList
      def self.default(visited=[])
        return nil if visited.include?('ProductionVariantStatusList')
        visited = visited + ['ProductionVariantStatusList']
        [
          ProductionVariantStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProductionVariantStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProductionVariantStatus
    class ProductionVariantStatus
      def self.default(visited=[])
        return nil if visited.include?('ProductionVariantStatus')
        visited = visited + ['ProductionVariantStatus']
        {
          status: 'status',
          status_message: 'status_message',
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductionVariantStatus.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data
      end
    end

    # List Stubber for DeployedImages
    class DeployedImages
      def self.default(visited=[])
        return nil if visited.include?('DeployedImages')
        visited = visited + ['DeployedImages']
        [
          DeployedImage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeployedImage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeployedImage
    class DeployedImage
      def self.default(visited=[])
        return nil if visited.include?('DeployedImage')
        visited = visited + ['DeployedImage']
        {
          specified_image: 'specified_image',
          resolved_image: 'resolved_image',
          resolution_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeployedImage.new
        data = {}
        data['SpecifiedImage'] = stub[:specified_image] unless stub[:specified_image].nil?
        data['ResolvedImage'] = stub[:resolved_image] unless stub[:resolved_image].nil?
        data['ResolutionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:resolution_time]).to_i unless stub[:resolution_time].nil?
        data
      end
    end

    # Structure Stubber for AsyncInferenceConfig
    class AsyncInferenceConfig
      def self.default(visited=[])
        return nil if visited.include?('AsyncInferenceConfig')
        visited = visited + ['AsyncInferenceConfig']
        {
          client_config: AsyncInferenceClientConfig.default(visited),
          output_config: AsyncInferenceOutputConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AsyncInferenceConfig.new
        data = {}
        data['ClientConfig'] = AsyncInferenceClientConfig.stub(stub[:client_config]) unless stub[:client_config].nil?
        data['OutputConfig'] = AsyncInferenceOutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data
      end
    end

    # Structure Stubber for AsyncInferenceOutputConfig
    class AsyncInferenceOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('AsyncInferenceOutputConfig')
        visited = visited + ['AsyncInferenceOutputConfig']
        {
          kms_key_id: 'kms_key_id',
          s3_output_path: 's3_output_path',
          notification_config: AsyncInferenceNotificationConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AsyncInferenceOutputConfig.new
        data = {}
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data['NotificationConfig'] = AsyncInferenceNotificationConfig.stub(stub[:notification_config]) unless stub[:notification_config].nil?
        data
      end
    end

    # Structure Stubber for AsyncInferenceNotificationConfig
    class AsyncInferenceNotificationConfig
      def self.default(visited=[])
        return nil if visited.include?('AsyncInferenceNotificationConfig')
        visited = visited + ['AsyncInferenceNotificationConfig']
        {
          success_topic: 'success_topic',
          error_topic: 'error_topic',
        }
      end

      def self.stub(stub)
        stub ||= Types::AsyncInferenceNotificationConfig.new
        data = {}
        data['SuccessTopic'] = stub[:success_topic] unless stub[:success_topic].nil?
        data['ErrorTopic'] = stub[:error_topic] unless stub[:error_topic].nil?
        data
      end
    end

    # Structure Stubber for AsyncInferenceClientConfig
    class AsyncInferenceClientConfig
      def self.default(visited=[])
        return nil if visited.include?('AsyncInferenceClientConfig')
        visited = visited + ['AsyncInferenceClientConfig']
        {
          max_concurrent_invocations_per_instance: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AsyncInferenceClientConfig.new
        data = {}
        data['MaxConcurrentInvocationsPerInstance'] = stub[:max_concurrent_invocations_per_instance] unless stub[:max_concurrent_invocations_per_instance].nil?
        data
      end
    end

    # Structure Stubber for DeploymentConfig
    class DeploymentConfig
      def self.default(visited=[])
        return nil if visited.include?('DeploymentConfig')
        visited = visited + ['DeploymentConfig']
        {
          blue_green_update_policy: BlueGreenUpdatePolicy.default(visited),
          auto_rollback_configuration: AutoRollbackConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentConfig.new
        data = {}
        data['BlueGreenUpdatePolicy'] = BlueGreenUpdatePolicy.stub(stub[:blue_green_update_policy]) unless stub[:blue_green_update_policy].nil?
        data['AutoRollbackConfiguration'] = AutoRollbackConfig.stub(stub[:auto_rollback_configuration]) unless stub[:auto_rollback_configuration].nil?
        data
      end
    end

    # Structure Stubber for AutoRollbackConfig
    class AutoRollbackConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoRollbackConfig')
        visited = visited + ['AutoRollbackConfig']
        {
          alarms: AlarmList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoRollbackConfig.new
        data = {}
        data['Alarms'] = AlarmList.stub(stub[:alarms]) unless stub[:alarms].nil?
        data
      end
    end

    # List Stubber for AlarmList
    class AlarmList
      def self.default(visited=[])
        return nil if visited.include?('AlarmList')
        visited = visited + ['AlarmList']
        [
          Alarm.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Alarm.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Alarm
    class Alarm
      def self.default(visited=[])
        return nil if visited.include?('Alarm')
        visited = visited + ['Alarm']
        {
          alarm_name: 'alarm_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Alarm.new
        data = {}
        data['AlarmName'] = stub[:alarm_name] unless stub[:alarm_name].nil?
        data
      end
    end

    # Structure Stubber for BlueGreenUpdatePolicy
    class BlueGreenUpdatePolicy
      def self.default(visited=[])
        return nil if visited.include?('BlueGreenUpdatePolicy')
        visited = visited + ['BlueGreenUpdatePolicy']
        {
          traffic_routing_configuration: TrafficRoutingConfig.default(visited),
          termination_wait_in_seconds: 1,
          maximum_execution_timeout_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BlueGreenUpdatePolicy.new
        data = {}
        data['TrafficRoutingConfiguration'] = TrafficRoutingConfig.stub(stub[:traffic_routing_configuration]) unless stub[:traffic_routing_configuration].nil?
        data['TerminationWaitInSeconds'] = stub[:termination_wait_in_seconds] unless stub[:termination_wait_in_seconds].nil?
        data['MaximumExecutionTimeoutInSeconds'] = stub[:maximum_execution_timeout_in_seconds] unless stub[:maximum_execution_timeout_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for TrafficRoutingConfig
    class TrafficRoutingConfig
      def self.default(visited=[])
        return nil if visited.include?('TrafficRoutingConfig')
        visited = visited + ['TrafficRoutingConfig']
        {
          type: 'type',
          wait_interval_in_seconds: 1,
          canary_size: CapacitySize.default(visited),
          linear_step_size: CapacitySize.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrafficRoutingConfig.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['WaitIntervalInSeconds'] = stub[:wait_interval_in_seconds] unless stub[:wait_interval_in_seconds].nil?
        data['CanarySize'] = CapacitySize.stub(stub[:canary_size]) unless stub[:canary_size].nil?
        data['LinearStepSize'] = CapacitySize.stub(stub[:linear_step_size]) unless stub[:linear_step_size].nil?
        data
      end
    end

    # Structure Stubber for CapacitySize
    class CapacitySize
      def self.default(visited=[])
        return nil if visited.include?('CapacitySize')
        visited = visited + ['CapacitySize']
        {
          type: 'type',
          value: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CapacitySize.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for DataCaptureConfigSummary
    class DataCaptureConfigSummary
      def self.default(visited=[])
        return nil if visited.include?('DataCaptureConfigSummary')
        visited = visited + ['DataCaptureConfigSummary']
        {
          enable_capture: false,
          capture_status: 'capture_status',
          current_sampling_percentage: 1,
          destination_s3_uri: 'destination_s3_uri',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCaptureConfigSummary.new
        data = {}
        data['EnableCapture'] = stub[:enable_capture] unless stub[:enable_capture].nil?
        data['CaptureStatus'] = stub[:capture_status] unless stub[:capture_status].nil?
        data['CurrentSamplingPercentage'] = stub[:current_sampling_percentage] unless stub[:current_sampling_percentage].nil?
        data['DestinationS3Uri'] = stub[:destination_s3_uri] unless stub[:destination_s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # List Stubber for ProductionVariantSummaryList
    class ProductionVariantSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ProductionVariantSummaryList')
        visited = visited + ['ProductionVariantSummaryList']
        [
          ProductionVariantSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProductionVariantSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProductionVariantSummary
    class ProductionVariantSummary
      def self.default(visited=[])
        return nil if visited.include?('ProductionVariantSummary')
        visited = visited + ['ProductionVariantSummary']
        {
          variant_name: 'variant_name',
          deployed_images: DeployedImages.default(visited),
          current_weight: 1.0,
          desired_weight: 1.0,
          current_instance_count: 1,
          desired_instance_count: 1,
          variant_status: ProductionVariantStatusList.default(visited),
          current_serverless_config: ProductionVariantServerlessConfig.default(visited),
          desired_serverless_config: ProductionVariantServerlessConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductionVariantSummary.new
        data = {}
        data['VariantName'] = stub[:variant_name] unless stub[:variant_name].nil?
        data['DeployedImages'] = DeployedImages.stub(stub[:deployed_images]) unless stub[:deployed_images].nil?
        data['CurrentWeight'] = Hearth::NumberHelper.serialize(stub[:current_weight])
        data['DesiredWeight'] = Hearth::NumberHelper.serialize(stub[:desired_weight])
        data['CurrentInstanceCount'] = stub[:current_instance_count] unless stub[:current_instance_count].nil?
        data['DesiredInstanceCount'] = stub[:desired_instance_count] unless stub[:desired_instance_count].nil?
        data['VariantStatus'] = ProductionVariantStatusList.stub(stub[:variant_status]) unless stub[:variant_status].nil?
        data['CurrentServerlessConfig'] = ProductionVariantServerlessConfig.stub(stub[:current_serverless_config]) unless stub[:current_serverless_config].nil?
        data['DesiredServerlessConfig'] = ProductionVariantServerlessConfig.stub(stub[:desired_serverless_config]) unless stub[:desired_serverless_config].nil?
        data
      end
    end

    # Operation Stubber for DescribeEndpointConfig
    class DescribeEndpointConfig
      def self.default(visited=[])
        {
          endpoint_config_name: 'endpoint_config_name',
          endpoint_config_arn: 'endpoint_config_arn',
          production_variants: ProductionVariantList.default(visited),
          data_capture_config: DataCaptureConfig.default(visited),
          kms_key_id: 'kms_key_id',
          creation_time: Time.now,
          async_inference_config: AsyncInferenceConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointConfigName'] = stub[:endpoint_config_name] unless stub[:endpoint_config_name].nil?
        data['EndpointConfigArn'] = stub[:endpoint_config_arn] unless stub[:endpoint_config_arn].nil?
        data['ProductionVariants'] = ProductionVariantList.stub(stub[:production_variants]) unless stub[:production_variants].nil?
        data['DataCaptureConfig'] = DataCaptureConfig.stub(stub[:data_capture_config]) unless stub[:data_capture_config].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['AsyncInferenceConfig'] = AsyncInferenceConfig.stub(stub[:async_inference_config]) unless stub[:async_inference_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DataCaptureConfig
    class DataCaptureConfig
      def self.default(visited=[])
        return nil if visited.include?('DataCaptureConfig')
        visited = visited + ['DataCaptureConfig']
        {
          enable_capture: false,
          initial_sampling_percentage: 1,
          destination_s3_uri: 'destination_s3_uri',
          kms_key_id: 'kms_key_id',
          capture_options: CaptureOptionList.default(visited),
          capture_content_type_header: CaptureContentTypeHeader.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCaptureConfig.new
        data = {}
        data['EnableCapture'] = stub[:enable_capture] unless stub[:enable_capture].nil?
        data['InitialSamplingPercentage'] = stub[:initial_sampling_percentage] unless stub[:initial_sampling_percentage].nil?
        data['DestinationS3Uri'] = stub[:destination_s3_uri] unless stub[:destination_s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['CaptureOptions'] = CaptureOptionList.stub(stub[:capture_options]) unless stub[:capture_options].nil?
        data['CaptureContentTypeHeader'] = CaptureContentTypeHeader.stub(stub[:capture_content_type_header]) unless stub[:capture_content_type_header].nil?
        data
      end
    end

    # Structure Stubber for CaptureContentTypeHeader
    class CaptureContentTypeHeader
      def self.default(visited=[])
        return nil if visited.include?('CaptureContentTypeHeader')
        visited = visited + ['CaptureContentTypeHeader']
        {
          csv_content_types: CsvContentTypes.default(visited),
          json_content_types: JsonContentTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptureContentTypeHeader.new
        data = {}
        data['CsvContentTypes'] = CsvContentTypes.stub(stub[:csv_content_types]) unless stub[:csv_content_types].nil?
        data['JsonContentTypes'] = JsonContentTypes.stub(stub[:json_content_types]) unless stub[:json_content_types].nil?
        data
      end
    end

    # List Stubber for JsonContentTypes
    class JsonContentTypes
      def self.default(visited=[])
        return nil if visited.include?('JsonContentTypes')
        visited = visited + ['JsonContentTypes']
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

    # List Stubber for CsvContentTypes
    class CsvContentTypes
      def self.default(visited=[])
        return nil if visited.include?('CsvContentTypes')
        visited = visited + ['CsvContentTypes']
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

    # List Stubber for CaptureOptionList
    class CaptureOptionList
      def self.default(visited=[])
        return nil if visited.include?('CaptureOptionList')
        visited = visited + ['CaptureOptionList']
        [
          CaptureOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CaptureOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CaptureOption
    class CaptureOption
      def self.default(visited=[])
        return nil if visited.include?('CaptureOption')
        visited = visited + ['CaptureOption']
        {
          capture_mode: 'capture_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptureOption.new
        data = {}
        data['CaptureMode'] = stub[:capture_mode] unless stub[:capture_mode].nil?
        data
      end
    end

    # List Stubber for ProductionVariantList
    class ProductionVariantList
      def self.default(visited=[])
        return nil if visited.include?('ProductionVariantList')
        visited = visited + ['ProductionVariantList']
        [
          ProductionVariant.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProductionVariant.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProductionVariant
    class ProductionVariant
      def self.default(visited=[])
        return nil if visited.include?('ProductionVariant')
        visited = visited + ['ProductionVariant']
        {
          variant_name: 'variant_name',
          model_name: 'model_name',
          initial_instance_count: 1,
          instance_type: 'instance_type',
          initial_variant_weight: 1.0,
          accelerator_type: 'accelerator_type',
          core_dump_config: ProductionVariantCoreDumpConfig.default(visited),
          serverless_config: ProductionVariantServerlessConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductionVariant.new
        data = {}
        data['VariantName'] = stub[:variant_name] unless stub[:variant_name].nil?
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['InitialInstanceCount'] = stub[:initial_instance_count] unless stub[:initial_instance_count].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['InitialVariantWeight'] = Hearth::NumberHelper.serialize(stub[:initial_variant_weight])
        data['AcceleratorType'] = stub[:accelerator_type] unless stub[:accelerator_type].nil?
        data['CoreDumpConfig'] = ProductionVariantCoreDumpConfig.stub(stub[:core_dump_config]) unless stub[:core_dump_config].nil?
        data['ServerlessConfig'] = ProductionVariantServerlessConfig.stub(stub[:serverless_config]) unless stub[:serverless_config].nil?
        data
      end
    end

    # Structure Stubber for ProductionVariantCoreDumpConfig
    class ProductionVariantCoreDumpConfig
      def self.default(visited=[])
        return nil if visited.include?('ProductionVariantCoreDumpConfig')
        visited = visited + ['ProductionVariantCoreDumpConfig']
        {
          destination_s3_uri: 'destination_s3_uri',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductionVariantCoreDumpConfig.new
        data = {}
        data['DestinationS3Uri'] = stub[:destination_s3_uri] unless stub[:destination_s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeExperiment
    class DescribeExperiment
      def self.default(visited=[])
        {
          experiment_name: 'experiment_name',
          experiment_arn: 'experiment_arn',
          display_name: 'display_name',
          source: ExperimentSource.default(visited),
          description: 'description',
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExperimentName'] = stub[:experiment_name] unless stub[:experiment_name].nil?
        data['ExperimentArn'] = stub[:experiment_arn] unless stub[:experiment_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Source'] = ExperimentSource.stub(stub[:source]) unless stub[:source].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ExperimentSource
    class ExperimentSource
      def self.default(visited=[])
        return nil if visited.include?('ExperimentSource')
        visited = visited + ['ExperimentSource']
        {
          source_arn: 'source_arn',
          source_type: 'source_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentSource.new
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeFeatureGroup
    class DescribeFeatureGroup
      def self.default(visited=[])
        {
          feature_group_arn: 'feature_group_arn',
          feature_group_name: 'feature_group_name',
          record_identifier_feature_name: 'record_identifier_feature_name',
          event_time_feature_name: 'event_time_feature_name',
          feature_definitions: FeatureDefinitions.default(visited),
          creation_time: Time.now,
          online_store_config: OnlineStoreConfig.default(visited),
          offline_store_config: OfflineStoreConfig.default(visited),
          role_arn: 'role_arn',
          feature_group_status: 'feature_group_status',
          offline_store_status: OfflineStoreStatus.default(visited),
          failure_reason: 'failure_reason',
          description: 'description',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FeatureGroupArn'] = stub[:feature_group_arn] unless stub[:feature_group_arn].nil?
        data['FeatureGroupName'] = stub[:feature_group_name] unless stub[:feature_group_name].nil?
        data['RecordIdentifierFeatureName'] = stub[:record_identifier_feature_name] unless stub[:record_identifier_feature_name].nil?
        data['EventTimeFeatureName'] = stub[:event_time_feature_name] unless stub[:event_time_feature_name].nil?
        data['FeatureDefinitions'] = FeatureDefinitions.stub(stub[:feature_definitions]) unless stub[:feature_definitions].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['OnlineStoreConfig'] = OnlineStoreConfig.stub(stub[:online_store_config]) unless stub[:online_store_config].nil?
        data['OfflineStoreConfig'] = OfflineStoreConfig.stub(stub[:offline_store_config]) unless stub[:offline_store_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['FeatureGroupStatus'] = stub[:feature_group_status] unless stub[:feature_group_status].nil?
        data['OfflineStoreStatus'] = OfflineStoreStatus.stub(stub[:offline_store_status]) unless stub[:offline_store_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for OfflineStoreStatus
    class OfflineStoreStatus
      def self.default(visited=[])
        return nil if visited.include?('OfflineStoreStatus')
        visited = visited + ['OfflineStoreStatus']
        {
          status: 'status',
          blocked_reason: 'blocked_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::OfflineStoreStatus.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['BlockedReason'] = stub[:blocked_reason] unless stub[:blocked_reason].nil?
        data
      end
    end

    # Structure Stubber for OfflineStoreConfig
    class OfflineStoreConfig
      def self.default(visited=[])
        return nil if visited.include?('OfflineStoreConfig')
        visited = visited + ['OfflineStoreConfig']
        {
          s3_storage_config: S3StorageConfig.default(visited),
          disable_glue_table_creation: false,
          data_catalog_config: DataCatalogConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OfflineStoreConfig.new
        data = {}
        data['S3StorageConfig'] = S3StorageConfig.stub(stub[:s3_storage_config]) unless stub[:s3_storage_config].nil?
        data['DisableGlueTableCreation'] = stub[:disable_glue_table_creation] unless stub[:disable_glue_table_creation].nil?
        data['DataCatalogConfig'] = DataCatalogConfig.stub(stub[:data_catalog_config]) unless stub[:data_catalog_config].nil?
        data
      end
    end

    # Structure Stubber for DataCatalogConfig
    class DataCatalogConfig
      def self.default(visited=[])
        return nil if visited.include?('DataCatalogConfig')
        visited = visited + ['DataCatalogConfig']
        {
          table_name: 'table_name',
          catalog: 'catalog',
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCatalogConfig.new
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['Catalog'] = stub[:catalog] unless stub[:catalog].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for S3StorageConfig
    class S3StorageConfig
      def self.default(visited=[])
        return nil if visited.include?('S3StorageConfig')
        visited = visited + ['S3StorageConfig']
        {
          s3_uri: 's3_uri',
          kms_key_id: 'kms_key_id',
          resolved_output_s3_uri: 'resolved_output_s3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3StorageConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ResolvedOutputS3Uri'] = stub[:resolved_output_s3_uri] unless stub[:resolved_output_s3_uri].nil?
        data
      end
    end

    # Structure Stubber for OnlineStoreConfig
    class OnlineStoreConfig
      def self.default(visited=[])
        return nil if visited.include?('OnlineStoreConfig')
        visited = visited + ['OnlineStoreConfig']
        {
          security_config: OnlineStoreSecurityConfig.default(visited),
          enable_online_store: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::OnlineStoreConfig.new
        data = {}
        data['SecurityConfig'] = OnlineStoreSecurityConfig.stub(stub[:security_config]) unless stub[:security_config].nil?
        data['EnableOnlineStore'] = stub[:enable_online_store] unless stub[:enable_online_store].nil?
        data
      end
    end

    # Structure Stubber for OnlineStoreSecurityConfig
    class OnlineStoreSecurityConfig
      def self.default(visited=[])
        return nil if visited.include?('OnlineStoreSecurityConfig')
        visited = visited + ['OnlineStoreSecurityConfig']
        {
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OnlineStoreSecurityConfig.new
        data = {}
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # List Stubber for FeatureDefinitions
    class FeatureDefinitions
      def self.default(visited=[])
        return nil if visited.include?('FeatureDefinitions')
        visited = visited + ['FeatureDefinitions']
        [
          FeatureDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FeatureDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FeatureDefinition
    class FeatureDefinition
      def self.default(visited=[])
        return nil if visited.include?('FeatureDefinition')
        visited = visited + ['FeatureDefinition']
        {
          feature_name: 'feature_name',
          feature_type: 'feature_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::FeatureDefinition.new
        data = {}
        data['FeatureName'] = stub[:feature_name] unless stub[:feature_name].nil?
        data['FeatureType'] = stub[:feature_type] unless stub[:feature_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeFlowDefinition
    class DescribeFlowDefinition
      def self.default(visited=[])
        {
          flow_definition_arn: 'flow_definition_arn',
          flow_definition_name: 'flow_definition_name',
          flow_definition_status: 'flow_definition_status',
          creation_time: Time.now,
          human_loop_request_source: HumanLoopRequestSource.default(visited),
          human_loop_activation_config: HumanLoopActivationConfig.default(visited),
          human_loop_config: HumanLoopConfig.default(visited),
          output_config: FlowDefinitionOutputConfig.default(visited),
          role_arn: 'role_arn',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FlowDefinitionArn'] = stub[:flow_definition_arn] unless stub[:flow_definition_arn].nil?
        data['FlowDefinitionName'] = stub[:flow_definition_name] unless stub[:flow_definition_name].nil?
        data['FlowDefinitionStatus'] = stub[:flow_definition_status] unless stub[:flow_definition_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HumanLoopRequestSource'] = HumanLoopRequestSource.stub(stub[:human_loop_request_source]) unless stub[:human_loop_request_source].nil?
        data['HumanLoopActivationConfig'] = HumanLoopActivationConfig.stub(stub[:human_loop_activation_config]) unless stub[:human_loop_activation_config].nil?
        data['HumanLoopConfig'] = HumanLoopConfig.stub(stub[:human_loop_config]) unless stub[:human_loop_config].nil?
        data['OutputConfig'] = FlowDefinitionOutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FlowDefinitionOutputConfig
    class FlowDefinitionOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('FlowDefinitionOutputConfig')
        visited = visited + ['FlowDefinitionOutputConfig']
        {
          s3_output_path: 's3_output_path',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::FlowDefinitionOutputConfig.new
        data = {}
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for HumanLoopConfig
    class HumanLoopConfig
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopConfig')
        visited = visited + ['HumanLoopConfig']
        {
          workteam_arn: 'workteam_arn',
          human_task_ui_arn: 'human_task_ui_arn',
          task_title: 'task_title',
          task_description: 'task_description',
          task_count: 1,
          task_availability_lifetime_in_seconds: 1,
          task_time_limit_in_seconds: 1,
          task_keywords: FlowDefinitionTaskKeywords.default(visited),
          public_workforce_task_price: PublicWorkforceTaskPrice.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanLoopConfig.new
        data = {}
        data['WorkteamArn'] = stub[:workteam_arn] unless stub[:workteam_arn].nil?
        data['HumanTaskUiArn'] = stub[:human_task_ui_arn] unless stub[:human_task_ui_arn].nil?
        data['TaskTitle'] = stub[:task_title] unless stub[:task_title].nil?
        data['TaskDescription'] = stub[:task_description] unless stub[:task_description].nil?
        data['TaskCount'] = stub[:task_count] unless stub[:task_count].nil?
        data['TaskAvailabilityLifetimeInSeconds'] = stub[:task_availability_lifetime_in_seconds] unless stub[:task_availability_lifetime_in_seconds].nil?
        data['TaskTimeLimitInSeconds'] = stub[:task_time_limit_in_seconds] unless stub[:task_time_limit_in_seconds].nil?
        data['TaskKeywords'] = FlowDefinitionTaskKeywords.stub(stub[:task_keywords]) unless stub[:task_keywords].nil?
        data['PublicWorkforceTaskPrice'] = PublicWorkforceTaskPrice.stub(stub[:public_workforce_task_price]) unless stub[:public_workforce_task_price].nil?
        data
      end
    end

    # Structure Stubber for PublicWorkforceTaskPrice
    class PublicWorkforceTaskPrice
      def self.default(visited=[])
        return nil if visited.include?('PublicWorkforceTaskPrice')
        visited = visited + ['PublicWorkforceTaskPrice']
        {
          amount_in_usd: USD.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PublicWorkforceTaskPrice.new
        data = {}
        data['AmountInUsd'] = USD.stub(stub[:amount_in_usd]) unless stub[:amount_in_usd].nil?
        data
      end
    end

    # Structure Stubber for USD
    class USD
      def self.default(visited=[])
        return nil if visited.include?('USD')
        visited = visited + ['USD']
        {
          dollars: 1,
          cents: 1,
          tenth_fractions_of_a_cent: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::USD.new
        data = {}
        data['Dollars'] = stub[:dollars] unless stub[:dollars].nil?
        data['Cents'] = stub[:cents] unless stub[:cents].nil?
        data['TenthFractionsOfACent'] = stub[:tenth_fractions_of_a_cent] unless stub[:tenth_fractions_of_a_cent].nil?
        data
      end
    end

    # List Stubber for FlowDefinitionTaskKeywords
    class FlowDefinitionTaskKeywords
      def self.default(visited=[])
        return nil if visited.include?('FlowDefinitionTaskKeywords')
        visited = visited + ['FlowDefinitionTaskKeywords']
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

    # Structure Stubber for HumanLoopActivationConfig
    class HumanLoopActivationConfig
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopActivationConfig')
        visited = visited + ['HumanLoopActivationConfig']
        {
          human_loop_activation_conditions_config: HumanLoopActivationConditionsConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanLoopActivationConfig.new
        data = {}
        data['HumanLoopActivationConditionsConfig'] = HumanLoopActivationConditionsConfig.stub(stub[:human_loop_activation_conditions_config]) unless stub[:human_loop_activation_conditions_config].nil?
        data
      end
    end

    # Structure Stubber for HumanLoopActivationConditionsConfig
    class HumanLoopActivationConditionsConfig
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopActivationConditionsConfig')
        visited = visited + ['HumanLoopActivationConditionsConfig']
        {
          human_loop_activation_conditions: 'human_loop_activation_conditions',
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanLoopActivationConditionsConfig.new
        data = {}
        data['HumanLoopActivationConditions'] = stub[:human_loop_activation_conditions] unless stub[:human_loop_activation_conditions].nil?
        data
      end
    end

    # Structure Stubber for HumanLoopRequestSource
    class HumanLoopRequestSource
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopRequestSource')
        visited = visited + ['HumanLoopRequestSource']
        {
          aws_managed_human_loop_request_source: 'aws_managed_human_loop_request_source',
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanLoopRequestSource.new
        data = {}
        data['AwsManagedHumanLoopRequestSource'] = stub[:aws_managed_human_loop_request_source] unless stub[:aws_managed_human_loop_request_source].nil?
        data
      end
    end

    # Operation Stubber for DescribeHumanTaskUi
    class DescribeHumanTaskUi
      def self.default(visited=[])
        {
          human_task_ui_arn: 'human_task_ui_arn',
          human_task_ui_name: 'human_task_ui_name',
          human_task_ui_status: 'human_task_ui_status',
          creation_time: Time.now,
          ui_template: UiTemplateInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HumanTaskUiArn'] = stub[:human_task_ui_arn] unless stub[:human_task_ui_arn].nil?
        data['HumanTaskUiName'] = stub[:human_task_ui_name] unless stub[:human_task_ui_name].nil?
        data['HumanTaskUiStatus'] = stub[:human_task_ui_status] unless stub[:human_task_ui_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['UiTemplate'] = UiTemplateInfo.stub(stub[:ui_template]) unless stub[:ui_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for UiTemplateInfo
    class UiTemplateInfo
      def self.default(visited=[])
        return nil if visited.include?('UiTemplateInfo')
        visited = visited + ['UiTemplateInfo']
        {
          url: 'url',
          content_sha256: 'content_sha256',
        }
      end

      def self.stub(stub)
        stub ||= Types::UiTemplateInfo.new
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['ContentSha256'] = stub[:content_sha256] unless stub[:content_sha256].nil?
        data
      end
    end

    # Operation Stubber for DescribeHyperParameterTuningJob
    class DescribeHyperParameterTuningJob
      def self.default(visited=[])
        {
          hyper_parameter_tuning_job_name: 'hyper_parameter_tuning_job_name',
          hyper_parameter_tuning_job_arn: 'hyper_parameter_tuning_job_arn',
          hyper_parameter_tuning_job_config: HyperParameterTuningJobConfig.default(visited),
          training_job_definition: HyperParameterTrainingJobDefinition.default(visited),
          training_job_definitions: HyperParameterTrainingJobDefinitions.default(visited),
          hyper_parameter_tuning_job_status: 'hyper_parameter_tuning_job_status',
          creation_time: Time.now,
          hyper_parameter_tuning_end_time: Time.now,
          last_modified_time: Time.now,
          training_job_status_counters: TrainingJobStatusCounters.default(visited),
          objective_status_counters: ObjectiveStatusCounters.default(visited),
          best_training_job: HyperParameterTrainingJobSummary.default(visited),
          overall_best_training_job: HyperParameterTrainingJobSummary.default(visited),
          warm_start_config: HyperParameterTuningJobWarmStartConfig.default(visited),
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HyperParameterTuningJobName'] = stub[:hyper_parameter_tuning_job_name] unless stub[:hyper_parameter_tuning_job_name].nil?
        data['HyperParameterTuningJobArn'] = stub[:hyper_parameter_tuning_job_arn] unless stub[:hyper_parameter_tuning_job_arn].nil?
        data['HyperParameterTuningJobConfig'] = HyperParameterTuningJobConfig.stub(stub[:hyper_parameter_tuning_job_config]) unless stub[:hyper_parameter_tuning_job_config].nil?
        data['TrainingJobDefinition'] = HyperParameterTrainingJobDefinition.stub(stub[:training_job_definition]) unless stub[:training_job_definition].nil?
        data['TrainingJobDefinitions'] = HyperParameterTrainingJobDefinitions.stub(stub[:training_job_definitions]) unless stub[:training_job_definitions].nil?
        data['HyperParameterTuningJobStatus'] = stub[:hyper_parameter_tuning_job_status] unless stub[:hyper_parameter_tuning_job_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HyperParameterTuningEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:hyper_parameter_tuning_end_time]).to_i unless stub[:hyper_parameter_tuning_end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['TrainingJobStatusCounters'] = TrainingJobStatusCounters.stub(stub[:training_job_status_counters]) unless stub[:training_job_status_counters].nil?
        data['ObjectiveStatusCounters'] = ObjectiveStatusCounters.stub(stub[:objective_status_counters]) unless stub[:objective_status_counters].nil?
        data['BestTrainingJob'] = HyperParameterTrainingJobSummary.stub(stub[:best_training_job]) unless stub[:best_training_job].nil?
        data['OverallBestTrainingJob'] = HyperParameterTrainingJobSummary.stub(stub[:overall_best_training_job]) unless stub[:overall_best_training_job].nil?
        data['WarmStartConfig'] = HyperParameterTuningJobWarmStartConfig.stub(stub[:warm_start_config]) unless stub[:warm_start_config].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for HyperParameterTuningJobWarmStartConfig
    class HyperParameterTuningJobWarmStartConfig
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTuningJobWarmStartConfig')
        visited = visited + ['HyperParameterTuningJobWarmStartConfig']
        {
          parent_hyper_parameter_tuning_jobs: ParentHyperParameterTuningJobs.default(visited),
          warm_start_type: 'warm_start_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterTuningJobWarmStartConfig.new
        data = {}
        data['ParentHyperParameterTuningJobs'] = ParentHyperParameterTuningJobs.stub(stub[:parent_hyper_parameter_tuning_jobs]) unless stub[:parent_hyper_parameter_tuning_jobs].nil?
        data['WarmStartType'] = stub[:warm_start_type] unless stub[:warm_start_type].nil?
        data
      end
    end

    # List Stubber for ParentHyperParameterTuningJobs
    class ParentHyperParameterTuningJobs
      def self.default(visited=[])
        return nil if visited.include?('ParentHyperParameterTuningJobs')
        visited = visited + ['ParentHyperParameterTuningJobs']
        [
          ParentHyperParameterTuningJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ParentHyperParameterTuningJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParentHyperParameterTuningJob
    class ParentHyperParameterTuningJob
      def self.default(visited=[])
        return nil if visited.include?('ParentHyperParameterTuningJob')
        visited = visited + ['ParentHyperParameterTuningJob']
        {
          hyper_parameter_tuning_job_name: 'hyper_parameter_tuning_job_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParentHyperParameterTuningJob.new
        data = {}
        data['HyperParameterTuningJobName'] = stub[:hyper_parameter_tuning_job_name] unless stub[:hyper_parameter_tuning_job_name].nil?
        data
      end
    end

    # Structure Stubber for HyperParameterTrainingJobSummary
    class HyperParameterTrainingJobSummary
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTrainingJobSummary')
        visited = visited + ['HyperParameterTrainingJobSummary']
        {
          training_job_definition_name: 'training_job_definition_name',
          training_job_name: 'training_job_name',
          training_job_arn: 'training_job_arn',
          tuning_job_name: 'tuning_job_name',
          creation_time: Time.now,
          training_start_time: Time.now,
          training_end_time: Time.now,
          training_job_status: 'training_job_status',
          tuned_hyper_parameters: HyperParameters.default(visited),
          failure_reason: 'failure_reason',
          final_hyper_parameter_tuning_job_objective_metric: FinalHyperParameterTuningJobObjectiveMetric.default(visited),
          objective_status: 'objective_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterTrainingJobSummary.new
        data = {}
        data['TrainingJobDefinitionName'] = stub[:training_job_definition_name] unless stub[:training_job_definition_name].nil?
        data['TrainingJobName'] = stub[:training_job_name] unless stub[:training_job_name].nil?
        data['TrainingJobArn'] = stub[:training_job_arn] unless stub[:training_job_arn].nil?
        data['TuningJobName'] = stub[:tuning_job_name] unless stub[:tuning_job_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TrainingStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_start_time]).to_i unless stub[:training_start_time].nil?
        data['TrainingEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_end_time]).to_i unless stub[:training_end_time].nil?
        data['TrainingJobStatus'] = stub[:training_job_status] unless stub[:training_job_status].nil?
        data['TunedHyperParameters'] = HyperParameters.stub(stub[:tuned_hyper_parameters]) unless stub[:tuned_hyper_parameters].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['FinalHyperParameterTuningJobObjectiveMetric'] = FinalHyperParameterTuningJobObjectiveMetric.stub(stub[:final_hyper_parameter_tuning_job_objective_metric]) unless stub[:final_hyper_parameter_tuning_job_objective_metric].nil?
        data['ObjectiveStatus'] = stub[:objective_status] unless stub[:objective_status].nil?
        data
      end
    end

    # Structure Stubber for FinalHyperParameterTuningJobObjectiveMetric
    class FinalHyperParameterTuningJobObjectiveMetric
      def self.default(visited=[])
        return nil if visited.include?('FinalHyperParameterTuningJobObjectiveMetric')
        visited = visited + ['FinalHyperParameterTuningJobObjectiveMetric']
        {
          type: 'type',
          metric_name: 'metric_name',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::FinalHyperParameterTuningJobObjectiveMetric.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Structure Stubber for ObjectiveStatusCounters
    class ObjectiveStatusCounters
      def self.default(visited=[])
        return nil if visited.include?('ObjectiveStatusCounters')
        visited = visited + ['ObjectiveStatusCounters']
        {
          succeeded: 1,
          pending: 1,
          failed: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ObjectiveStatusCounters.new
        data = {}
        data['Succeeded'] = stub[:succeeded] unless stub[:succeeded].nil?
        data['Pending'] = stub[:pending] unless stub[:pending].nil?
        data['Failed'] = stub[:failed] unless stub[:failed].nil?
        data
      end
    end

    # Structure Stubber for TrainingJobStatusCounters
    class TrainingJobStatusCounters
      def self.default(visited=[])
        return nil if visited.include?('TrainingJobStatusCounters')
        visited = visited + ['TrainingJobStatusCounters']
        {
          completed: 1,
          in_progress: 1,
          retryable_error: 1,
          non_retryable_error: 1,
          stopped: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingJobStatusCounters.new
        data = {}
        data['Completed'] = stub[:completed] unless stub[:completed].nil?
        data['InProgress'] = stub[:in_progress] unless stub[:in_progress].nil?
        data['RetryableError'] = stub[:retryable_error] unless stub[:retryable_error].nil?
        data['NonRetryableError'] = stub[:non_retryable_error] unless stub[:non_retryable_error].nil?
        data['Stopped'] = stub[:stopped] unless stub[:stopped].nil?
        data
      end
    end

    # List Stubber for HyperParameterTrainingJobDefinitions
    class HyperParameterTrainingJobDefinitions
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTrainingJobDefinitions')
        visited = visited + ['HyperParameterTrainingJobDefinitions']
        [
          HyperParameterTrainingJobDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HyperParameterTrainingJobDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HyperParameterTrainingJobDefinition
    class HyperParameterTrainingJobDefinition
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTrainingJobDefinition')
        visited = visited + ['HyperParameterTrainingJobDefinition']
        {
          definition_name: 'definition_name',
          tuning_objective: HyperParameterTuningJobObjective.default(visited),
          hyper_parameter_ranges: ParameterRanges.default(visited),
          static_hyper_parameters: HyperParameters.default(visited),
          algorithm_specification: HyperParameterAlgorithmSpecification.default(visited),
          role_arn: 'role_arn',
          input_data_config: InputDataConfig.default(visited),
          vpc_config: VpcConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          resource_config: ResourceConfig.default(visited),
          stopping_condition: StoppingCondition.default(visited),
          enable_network_isolation: false,
          enable_inter_container_traffic_encryption: false,
          enable_managed_spot_training: false,
          checkpoint_config: CheckpointConfig.default(visited),
          retry_strategy: RetryStrategy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterTrainingJobDefinition.new
        data = {}
        data['DefinitionName'] = stub[:definition_name] unless stub[:definition_name].nil?
        data['TuningObjective'] = HyperParameterTuningJobObjective.stub(stub[:tuning_objective]) unless stub[:tuning_objective].nil?
        data['HyperParameterRanges'] = ParameterRanges.stub(stub[:hyper_parameter_ranges]) unless stub[:hyper_parameter_ranges].nil?
        data['StaticHyperParameters'] = HyperParameters.stub(stub[:static_hyper_parameters]) unless stub[:static_hyper_parameters].nil?
        data['AlgorithmSpecification'] = HyperParameterAlgorithmSpecification.stub(stub[:algorithm_specification]) unless stub[:algorithm_specification].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['ResourceConfig'] = ResourceConfig.stub(stub[:resource_config]) unless stub[:resource_config].nil?
        data['StoppingCondition'] = StoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        data['EnableNetworkIsolation'] = stub[:enable_network_isolation] unless stub[:enable_network_isolation].nil?
        data['EnableInterContainerTrafficEncryption'] = stub[:enable_inter_container_traffic_encryption] unless stub[:enable_inter_container_traffic_encryption].nil?
        data['EnableManagedSpotTraining'] = stub[:enable_managed_spot_training] unless stub[:enable_managed_spot_training].nil?
        data['CheckpointConfig'] = CheckpointConfig.stub(stub[:checkpoint_config]) unless stub[:checkpoint_config].nil?
        data['RetryStrategy'] = RetryStrategy.stub(stub[:retry_strategy]) unless stub[:retry_strategy].nil?
        data
      end
    end

    # Structure Stubber for RetryStrategy
    class RetryStrategy
      def self.default(visited=[])
        return nil if visited.include?('RetryStrategy')
        visited = visited + ['RetryStrategy']
        {
          maximum_retry_attempts: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RetryStrategy.new
        data = {}
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data
      end
    end

    # Structure Stubber for CheckpointConfig
    class CheckpointConfig
      def self.default(visited=[])
        return nil if visited.include?('CheckpointConfig')
        visited = visited + ['CheckpointConfig']
        {
          s3_uri: 's3_uri',
          local_path: 'local_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::CheckpointConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data
      end
    end

    # Structure Stubber for HyperParameterAlgorithmSpecification
    class HyperParameterAlgorithmSpecification
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterAlgorithmSpecification')
        visited = visited + ['HyperParameterAlgorithmSpecification']
        {
          training_image: 'training_image',
          training_input_mode: 'training_input_mode',
          algorithm_name: 'algorithm_name',
          metric_definitions: MetricDefinitionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterAlgorithmSpecification.new
        data = {}
        data['TrainingImage'] = stub[:training_image] unless stub[:training_image].nil?
        data['TrainingInputMode'] = stub[:training_input_mode] unless stub[:training_input_mode].nil?
        data['AlgorithmName'] = stub[:algorithm_name] unless stub[:algorithm_name].nil?
        data['MetricDefinitions'] = MetricDefinitionList.stub(stub[:metric_definitions]) unless stub[:metric_definitions].nil?
        data
      end
    end

    # Structure Stubber for ParameterRanges
    class ParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('ParameterRanges')
        visited = visited + ['ParameterRanges']
        {
          integer_parameter_ranges: IntegerParameterRanges.default(visited),
          continuous_parameter_ranges: ContinuousParameterRanges.default(visited),
          categorical_parameter_ranges: CategoricalParameterRanges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterRanges.new
        data = {}
        data['IntegerParameterRanges'] = IntegerParameterRanges.stub(stub[:integer_parameter_ranges]) unless stub[:integer_parameter_ranges].nil?
        data['ContinuousParameterRanges'] = ContinuousParameterRanges.stub(stub[:continuous_parameter_ranges]) unless stub[:continuous_parameter_ranges].nil?
        data['CategoricalParameterRanges'] = CategoricalParameterRanges.stub(stub[:categorical_parameter_ranges]) unless stub[:categorical_parameter_ranges].nil?
        data
      end
    end

    # List Stubber for CategoricalParameterRanges
    class CategoricalParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('CategoricalParameterRanges')
        visited = visited + ['CategoricalParameterRanges']
        [
          CategoricalParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CategoricalParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CategoricalParameterRange
    class CategoricalParameterRange
      def self.default(visited=[])
        return nil if visited.include?('CategoricalParameterRange')
        visited = visited + ['CategoricalParameterRange']
        {
          name: 'name',
          values: ParameterValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CategoricalParameterRange.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Values'] = ParameterValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for ContinuousParameterRanges
    class ContinuousParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('ContinuousParameterRanges')
        visited = visited + ['ContinuousParameterRanges']
        [
          ContinuousParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContinuousParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContinuousParameterRange
    class ContinuousParameterRange
      def self.default(visited=[])
        return nil if visited.include?('ContinuousParameterRange')
        visited = visited + ['ContinuousParameterRange']
        {
          name: 'name',
          min_value: 'min_value',
          max_value: 'max_value',
          scaling_type: 'scaling_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContinuousParameterRange.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MinValue'] = stub[:min_value] unless stub[:min_value].nil?
        data['MaxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data['ScalingType'] = stub[:scaling_type] unless stub[:scaling_type].nil?
        data
      end
    end

    # List Stubber for IntegerParameterRanges
    class IntegerParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('IntegerParameterRanges')
        visited = visited + ['IntegerParameterRanges']
        [
          IntegerParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IntegerParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IntegerParameterRange
    class IntegerParameterRange
      def self.default(visited=[])
        return nil if visited.include?('IntegerParameterRange')
        visited = visited + ['IntegerParameterRange']
        {
          name: 'name',
          min_value: 'min_value',
          max_value: 'max_value',
          scaling_type: 'scaling_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::IntegerParameterRange.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MinValue'] = stub[:min_value] unless stub[:min_value].nil?
        data['MaxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data['ScalingType'] = stub[:scaling_type] unless stub[:scaling_type].nil?
        data
      end
    end

    # Structure Stubber for HyperParameterTuningJobConfig
    class HyperParameterTuningJobConfig
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTuningJobConfig')
        visited = visited + ['HyperParameterTuningJobConfig']
        {
          strategy: 'strategy',
          hyper_parameter_tuning_job_objective: HyperParameterTuningJobObjective.default(visited),
          resource_limits: ResourceLimits.default(visited),
          parameter_ranges: ParameterRanges.default(visited),
          training_job_early_stopping_type: 'training_job_early_stopping_type',
          tuning_job_completion_criteria: TuningJobCompletionCriteria.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterTuningJobConfig.new
        data = {}
        data['Strategy'] = stub[:strategy] unless stub[:strategy].nil?
        data['HyperParameterTuningJobObjective'] = HyperParameterTuningJobObjective.stub(stub[:hyper_parameter_tuning_job_objective]) unless stub[:hyper_parameter_tuning_job_objective].nil?
        data['ResourceLimits'] = ResourceLimits.stub(stub[:resource_limits]) unless stub[:resource_limits].nil?
        data['ParameterRanges'] = ParameterRanges.stub(stub[:parameter_ranges]) unless stub[:parameter_ranges].nil?
        data['TrainingJobEarlyStoppingType'] = stub[:training_job_early_stopping_type] unless stub[:training_job_early_stopping_type].nil?
        data['TuningJobCompletionCriteria'] = TuningJobCompletionCriteria.stub(stub[:tuning_job_completion_criteria]) unless stub[:tuning_job_completion_criteria].nil?
        data
      end
    end

    # Structure Stubber for TuningJobCompletionCriteria
    class TuningJobCompletionCriteria
      def self.default(visited=[])
        return nil if visited.include?('TuningJobCompletionCriteria')
        visited = visited + ['TuningJobCompletionCriteria']
        {
          target_objective_metric_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::TuningJobCompletionCriteria.new
        data = {}
        data['TargetObjectiveMetricValue'] = Hearth::NumberHelper.serialize(stub[:target_objective_metric_value])
        data
      end
    end

    # Structure Stubber for ResourceLimits
    class ResourceLimits
      def self.default(visited=[])
        return nil if visited.include?('ResourceLimits')
        visited = visited + ['ResourceLimits']
        {
          max_number_of_training_jobs: 1,
          max_parallel_training_jobs: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceLimits.new
        data = {}
        data['MaxNumberOfTrainingJobs'] = stub[:max_number_of_training_jobs] unless stub[:max_number_of_training_jobs].nil?
        data['MaxParallelTrainingJobs'] = stub[:max_parallel_training_jobs] unless stub[:max_parallel_training_jobs].nil?
        data
      end
    end

    # Operation Stubber for DescribeImage
    class DescribeImage
      def self.default(visited=[])
        {
          creation_time: Time.now,
          description: 'description',
          display_name: 'display_name',
          failure_reason: 'failure_reason',
          image_arn: 'image_arn',
          image_name: 'image_name',
          image_status: 'image_status',
          last_modified_time: Time.now,
          role_arn: 'role_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ImageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        data['ImageName'] = stub[:image_name] unless stub[:image_name].nil?
        data['ImageStatus'] = stub[:image_status] unless stub[:image_status].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeImageVersion
    class DescribeImageVersion
      def self.default(visited=[])
        {
          base_image: 'base_image',
          container_image: 'container_image',
          creation_time: Time.now,
          failure_reason: 'failure_reason',
          image_arn: 'image_arn',
          image_version_arn: 'image_version_arn',
          image_version_status: 'image_version_status',
          last_modified_time: Time.now,
          version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaseImage'] = stub[:base_image] unless stub[:base_image].nil?
        data['ContainerImage'] = stub[:container_image] unless stub[:container_image].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ImageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        data['ImageVersionArn'] = stub[:image_version_arn] unless stub[:image_version_arn].nil?
        data['ImageVersionStatus'] = stub[:image_version_status] unless stub[:image_version_status].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeInferenceRecommendationsJob
    class DescribeInferenceRecommendationsJob
      def self.default(visited=[])
        {
          job_name: 'job_name',
          job_description: 'job_description',
          job_type: 'job_type',
          job_arn: 'job_arn',
          role_arn: 'role_arn',
          status: 'status',
          creation_time: Time.now,
          completion_time: Time.now,
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
          input_config: RecommendationJobInputConfig.default(visited),
          stopping_conditions: RecommendationJobStoppingConditions.default(visited),
          inference_recommendations: InferenceRecommendations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobDescription'] = stub[:job_description] unless stub[:job_description].nil?
        data['JobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['InputConfig'] = RecommendationJobInputConfig.stub(stub[:input_config]) unless stub[:input_config].nil?
        data['StoppingConditions'] = RecommendationJobStoppingConditions.stub(stub[:stopping_conditions]) unless stub[:stopping_conditions].nil?
        data['InferenceRecommendations'] = InferenceRecommendations.stub(stub[:inference_recommendations]) unless stub[:inference_recommendations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InferenceRecommendations
    class InferenceRecommendations
      def self.default(visited=[])
        return nil if visited.include?('InferenceRecommendations')
        visited = visited + ['InferenceRecommendations']
        [
          InferenceRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InferenceRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InferenceRecommendation
    class InferenceRecommendation
      def self.default(visited=[])
        return nil if visited.include?('InferenceRecommendation')
        visited = visited + ['InferenceRecommendation']
        {
          metrics: RecommendationMetrics.default(visited),
          endpoint_configuration: EndpointOutputConfiguration.default(visited),
          model_configuration: ModelConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceRecommendation.new
        data = {}
        data['Metrics'] = RecommendationMetrics.stub(stub[:metrics]) unless stub[:metrics].nil?
        data['EndpointConfiguration'] = EndpointOutputConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['ModelConfiguration'] = ModelConfiguration.stub(stub[:model_configuration]) unless stub[:model_configuration].nil?
        data
      end
    end

    # Structure Stubber for ModelConfiguration
    class ModelConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ModelConfiguration')
        visited = visited + ['ModelConfiguration']
        {
          inference_specification_name: 'inference_specification_name',
          environment_parameters: EnvironmentParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelConfiguration.new
        data = {}
        data['InferenceSpecificationName'] = stub[:inference_specification_name] unless stub[:inference_specification_name].nil?
        data['EnvironmentParameters'] = EnvironmentParameters.stub(stub[:environment_parameters]) unless stub[:environment_parameters].nil?
        data
      end
    end

    # List Stubber for EnvironmentParameters
    class EnvironmentParameters
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentParameters')
        visited = visited + ['EnvironmentParameters']
        [
          EnvironmentParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentParameter
    class EnvironmentParameter
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentParameter')
        visited = visited + ['EnvironmentParameter']
        {
          key: 'key',
          value_type: 'value_type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentParameter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['ValueType'] = stub[:value_type] unless stub[:value_type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for EndpointOutputConfiguration
    class EndpointOutputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EndpointOutputConfiguration')
        visited = visited + ['EndpointOutputConfiguration']
        {
          endpoint_name: 'endpoint_name',
          variant_name: 'variant_name',
          instance_type: 'instance_type',
          initial_instance_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointOutputConfiguration.new
        data = {}
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['VariantName'] = stub[:variant_name] unless stub[:variant_name].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['InitialInstanceCount'] = stub[:initial_instance_count] unless stub[:initial_instance_count].nil?
        data
      end
    end

    # Structure Stubber for RecommendationMetrics
    class RecommendationMetrics
      def self.default(visited=[])
        return nil if visited.include?('RecommendationMetrics')
        visited = visited + ['RecommendationMetrics']
        {
          cost_per_hour: 1.0,
          cost_per_inference: 1.0,
          max_invocations: 1,
          model_latency: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationMetrics.new
        data = {}
        data['CostPerHour'] = Hearth::NumberHelper.serialize(stub[:cost_per_hour])
        data['CostPerInference'] = Hearth::NumberHelper.serialize(stub[:cost_per_inference])
        data['MaxInvocations'] = stub[:max_invocations] unless stub[:max_invocations].nil?
        data['ModelLatency'] = stub[:model_latency] unless stub[:model_latency].nil?
        data
      end
    end

    # Structure Stubber for RecommendationJobStoppingConditions
    class RecommendationJobStoppingConditions
      def self.default(visited=[])
        return nil if visited.include?('RecommendationJobStoppingConditions')
        visited = visited + ['RecommendationJobStoppingConditions']
        {
          max_invocations: 1,
          model_latency_thresholds: ModelLatencyThresholds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationJobStoppingConditions.new
        data = {}
        data['MaxInvocations'] = stub[:max_invocations] unless stub[:max_invocations].nil?
        data['ModelLatencyThresholds'] = ModelLatencyThresholds.stub(stub[:model_latency_thresholds]) unless stub[:model_latency_thresholds].nil?
        data
      end
    end

    # List Stubber for ModelLatencyThresholds
    class ModelLatencyThresholds
      def self.default(visited=[])
        return nil if visited.include?('ModelLatencyThresholds')
        visited = visited + ['ModelLatencyThresholds']
        [
          ModelLatencyThreshold.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelLatencyThreshold.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelLatencyThreshold
    class ModelLatencyThreshold
      def self.default(visited=[])
        return nil if visited.include?('ModelLatencyThreshold')
        visited = visited + ['ModelLatencyThreshold']
        {
          percentile: 'percentile',
          value_in_milliseconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelLatencyThreshold.new
        data = {}
        data['Percentile'] = stub[:percentile] unless stub[:percentile].nil?
        data['ValueInMilliseconds'] = stub[:value_in_milliseconds] unless stub[:value_in_milliseconds].nil?
        data
      end
    end

    # Structure Stubber for RecommendationJobInputConfig
    class RecommendationJobInputConfig
      def self.default(visited=[])
        return nil if visited.include?('RecommendationJobInputConfig')
        visited = visited + ['RecommendationJobInputConfig']
        {
          model_package_version_arn: 'model_package_version_arn',
          job_duration_in_seconds: 1,
          traffic_pattern: TrafficPattern.default(visited),
          resource_limit: RecommendationJobResourceLimit.default(visited),
          endpoint_configurations: EndpointInputConfigurations.default(visited),
          volume_kms_key_id: 'volume_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationJobInputConfig.new
        data = {}
        data['ModelPackageVersionArn'] = stub[:model_package_version_arn] unless stub[:model_package_version_arn].nil?
        data['JobDurationInSeconds'] = stub[:job_duration_in_seconds] unless stub[:job_duration_in_seconds].nil?
        data['TrafficPattern'] = TrafficPattern.stub(stub[:traffic_pattern]) unless stub[:traffic_pattern].nil?
        data['ResourceLimit'] = RecommendationJobResourceLimit.stub(stub[:resource_limit]) unless stub[:resource_limit].nil?
        data['EndpointConfigurations'] = EndpointInputConfigurations.stub(stub[:endpoint_configurations]) unless stub[:endpoint_configurations].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data
      end
    end

    # List Stubber for EndpointInputConfigurations
    class EndpointInputConfigurations
      def self.default(visited=[])
        return nil if visited.include?('EndpointInputConfigurations')
        visited = visited + ['EndpointInputConfigurations']
        [
          EndpointInputConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EndpointInputConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EndpointInputConfiguration
    class EndpointInputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EndpointInputConfiguration')
        visited = visited + ['EndpointInputConfiguration']
        {
          instance_type: 'instance_type',
          inference_specification_name: 'inference_specification_name',
          environment_parameter_ranges: EnvironmentParameterRanges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointInputConfiguration.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['InferenceSpecificationName'] = stub[:inference_specification_name] unless stub[:inference_specification_name].nil?
        data['EnvironmentParameterRanges'] = EnvironmentParameterRanges.stub(stub[:environment_parameter_ranges]) unless stub[:environment_parameter_ranges].nil?
        data
      end
    end

    # Structure Stubber for EnvironmentParameterRanges
    class EnvironmentParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentParameterRanges')
        visited = visited + ['EnvironmentParameterRanges']
        {
          categorical_parameter_ranges: CategoricalParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentParameterRanges.new
        data = {}
        data['CategoricalParameterRanges'] = CategoricalParameters.stub(stub[:categorical_parameter_ranges]) unless stub[:categorical_parameter_ranges].nil?
        data
      end
    end

    # List Stubber for CategoricalParameters
    class CategoricalParameters
      def self.default(visited=[])
        return nil if visited.include?('CategoricalParameters')
        visited = visited + ['CategoricalParameters']
        [
          CategoricalParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CategoricalParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CategoricalParameter
    class CategoricalParameter
      def self.default(visited=[])
        return nil if visited.include?('CategoricalParameter')
        visited = visited + ['CategoricalParameter']
        {
          name: 'name',
          value: CategoricalParameterRangeValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CategoricalParameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = CategoricalParameterRangeValues.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # List Stubber for CategoricalParameterRangeValues
    class CategoricalParameterRangeValues
      def self.default(visited=[])
        return nil if visited.include?('CategoricalParameterRangeValues')
        visited = visited + ['CategoricalParameterRangeValues']
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

    # Structure Stubber for RecommendationJobResourceLimit
    class RecommendationJobResourceLimit
      def self.default(visited=[])
        return nil if visited.include?('RecommendationJobResourceLimit')
        visited = visited + ['RecommendationJobResourceLimit']
        {
          max_number_of_tests: 1,
          max_parallel_of_tests: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationJobResourceLimit.new
        data = {}
        data['MaxNumberOfTests'] = stub[:max_number_of_tests] unless stub[:max_number_of_tests].nil?
        data['MaxParallelOfTests'] = stub[:max_parallel_of_tests] unless stub[:max_parallel_of_tests].nil?
        data
      end
    end

    # Structure Stubber for TrafficPattern
    class TrafficPattern
      def self.default(visited=[])
        return nil if visited.include?('TrafficPattern')
        visited = visited + ['TrafficPattern']
        {
          traffic_type: 'traffic_type',
          phases: Phases.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrafficPattern.new
        data = {}
        data['TrafficType'] = stub[:traffic_type] unless stub[:traffic_type].nil?
        data['Phases'] = Phases.stub(stub[:phases]) unless stub[:phases].nil?
        data
      end
    end

    # List Stubber for Phases
    class Phases
      def self.default(visited=[])
        return nil if visited.include?('Phases')
        visited = visited + ['Phases']
        [
          Phase.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Phase.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Phase
    class Phase
      def self.default(visited=[])
        return nil if visited.include?('Phase')
        visited = visited + ['Phase']
        {
          initial_number_of_users: 1,
          spawn_rate: 1,
          duration_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Phase.new
        data = {}
        data['InitialNumberOfUsers'] = stub[:initial_number_of_users] unless stub[:initial_number_of_users].nil?
        data['SpawnRate'] = stub[:spawn_rate] unless stub[:spawn_rate].nil?
        data['DurationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data
      end
    end

    # Operation Stubber for DescribeLabelingJob
    class DescribeLabelingJob
      def self.default(visited=[])
        {
          labeling_job_status: 'labeling_job_status',
          label_counters: LabelCounters.default(visited),
          failure_reason: 'failure_reason',
          creation_time: Time.now,
          last_modified_time: Time.now,
          job_reference_code: 'job_reference_code',
          labeling_job_name: 'labeling_job_name',
          labeling_job_arn: 'labeling_job_arn',
          label_attribute_name: 'label_attribute_name',
          input_config: LabelingJobInputConfig.default(visited),
          output_config: LabelingJobOutputConfig.default(visited),
          role_arn: 'role_arn',
          label_category_config_s3_uri: 'label_category_config_s3_uri',
          stopping_conditions: LabelingJobStoppingConditions.default(visited),
          labeling_job_algorithms_config: LabelingJobAlgorithmsConfig.default(visited),
          human_task_config: HumanTaskConfig.default(visited),
          tags: TagList.default(visited),
          labeling_job_output: LabelingJobOutput.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LabelingJobStatus'] = stub[:labeling_job_status] unless stub[:labeling_job_status].nil?
        data['LabelCounters'] = LabelCounters.stub(stub[:label_counters]) unless stub[:label_counters].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['JobReferenceCode'] = stub[:job_reference_code] unless stub[:job_reference_code].nil?
        data['LabelingJobName'] = stub[:labeling_job_name] unless stub[:labeling_job_name].nil?
        data['LabelingJobArn'] = stub[:labeling_job_arn] unless stub[:labeling_job_arn].nil?
        data['LabelAttributeName'] = stub[:label_attribute_name] unless stub[:label_attribute_name].nil?
        data['InputConfig'] = LabelingJobInputConfig.stub(stub[:input_config]) unless stub[:input_config].nil?
        data['OutputConfig'] = LabelingJobOutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['LabelCategoryConfigS3Uri'] = stub[:label_category_config_s3_uri] unless stub[:label_category_config_s3_uri].nil?
        data['StoppingConditions'] = LabelingJobStoppingConditions.stub(stub[:stopping_conditions]) unless stub[:stopping_conditions].nil?
        data['LabelingJobAlgorithmsConfig'] = LabelingJobAlgorithmsConfig.stub(stub[:labeling_job_algorithms_config]) unless stub[:labeling_job_algorithms_config].nil?
        data['HumanTaskConfig'] = HumanTaskConfig.stub(stub[:human_task_config]) unless stub[:human_task_config].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['LabelingJobOutput'] = LabelingJobOutput.stub(stub[:labeling_job_output]) unless stub[:labeling_job_output].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LabelingJobOutput
    class LabelingJobOutput
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobOutput')
        visited = visited + ['LabelingJobOutput']
        {
          output_dataset_s3_uri: 'output_dataset_s3_uri',
          final_active_learning_model_arn: 'final_active_learning_model_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobOutput.new
        data = {}
        data['OutputDatasetS3Uri'] = stub[:output_dataset_s3_uri] unless stub[:output_dataset_s3_uri].nil?
        data['FinalActiveLearningModelArn'] = stub[:final_active_learning_model_arn] unless stub[:final_active_learning_model_arn].nil?
        data
      end
    end

    # Structure Stubber for HumanTaskConfig
    class HumanTaskConfig
      def self.default(visited=[])
        return nil if visited.include?('HumanTaskConfig')
        visited = visited + ['HumanTaskConfig']
        {
          workteam_arn: 'workteam_arn',
          ui_config: UiConfig.default(visited),
          pre_human_task_lambda_arn: 'pre_human_task_lambda_arn',
          task_keywords: TaskKeywords.default(visited),
          task_title: 'task_title',
          task_description: 'task_description',
          number_of_human_workers_per_data_object: 1,
          task_time_limit_in_seconds: 1,
          task_availability_lifetime_in_seconds: 1,
          max_concurrent_task_count: 1,
          annotation_consolidation_config: AnnotationConsolidationConfig.default(visited),
          public_workforce_task_price: PublicWorkforceTaskPrice.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanTaskConfig.new
        data = {}
        data['WorkteamArn'] = stub[:workteam_arn] unless stub[:workteam_arn].nil?
        data['UiConfig'] = UiConfig.stub(stub[:ui_config]) unless stub[:ui_config].nil?
        data['PreHumanTaskLambdaArn'] = stub[:pre_human_task_lambda_arn] unless stub[:pre_human_task_lambda_arn].nil?
        data['TaskKeywords'] = TaskKeywords.stub(stub[:task_keywords]) unless stub[:task_keywords].nil?
        data['TaskTitle'] = stub[:task_title] unless stub[:task_title].nil?
        data['TaskDescription'] = stub[:task_description] unless stub[:task_description].nil?
        data['NumberOfHumanWorkersPerDataObject'] = stub[:number_of_human_workers_per_data_object] unless stub[:number_of_human_workers_per_data_object].nil?
        data['TaskTimeLimitInSeconds'] = stub[:task_time_limit_in_seconds] unless stub[:task_time_limit_in_seconds].nil?
        data['TaskAvailabilityLifetimeInSeconds'] = stub[:task_availability_lifetime_in_seconds] unless stub[:task_availability_lifetime_in_seconds].nil?
        data['MaxConcurrentTaskCount'] = stub[:max_concurrent_task_count] unless stub[:max_concurrent_task_count].nil?
        data['AnnotationConsolidationConfig'] = AnnotationConsolidationConfig.stub(stub[:annotation_consolidation_config]) unless stub[:annotation_consolidation_config].nil?
        data['PublicWorkforceTaskPrice'] = PublicWorkforceTaskPrice.stub(stub[:public_workforce_task_price]) unless stub[:public_workforce_task_price].nil?
        data
      end
    end

    # Structure Stubber for AnnotationConsolidationConfig
    class AnnotationConsolidationConfig
      def self.default(visited=[])
        return nil if visited.include?('AnnotationConsolidationConfig')
        visited = visited + ['AnnotationConsolidationConfig']
        {
          annotation_consolidation_lambda_arn: 'annotation_consolidation_lambda_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnnotationConsolidationConfig.new
        data = {}
        data['AnnotationConsolidationLambdaArn'] = stub[:annotation_consolidation_lambda_arn] unless stub[:annotation_consolidation_lambda_arn].nil?
        data
      end
    end

    # List Stubber for TaskKeywords
    class TaskKeywords
      def self.default(visited=[])
        return nil if visited.include?('TaskKeywords')
        visited = visited + ['TaskKeywords']
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

    # Structure Stubber for UiConfig
    class UiConfig
      def self.default(visited=[])
        return nil if visited.include?('UiConfig')
        visited = visited + ['UiConfig']
        {
          ui_template_s3_uri: 'ui_template_s3_uri',
          human_task_ui_arn: 'human_task_ui_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::UiConfig.new
        data = {}
        data['UiTemplateS3Uri'] = stub[:ui_template_s3_uri] unless stub[:ui_template_s3_uri].nil?
        data['HumanTaskUiArn'] = stub[:human_task_ui_arn] unless stub[:human_task_ui_arn].nil?
        data
      end
    end

    # Structure Stubber for LabelingJobAlgorithmsConfig
    class LabelingJobAlgorithmsConfig
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobAlgorithmsConfig')
        visited = visited + ['LabelingJobAlgorithmsConfig']
        {
          labeling_job_algorithm_specification_arn: 'labeling_job_algorithm_specification_arn',
          initial_active_learning_model_arn: 'initial_active_learning_model_arn',
          labeling_job_resource_config: LabelingJobResourceConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobAlgorithmsConfig.new
        data = {}
        data['LabelingJobAlgorithmSpecificationArn'] = stub[:labeling_job_algorithm_specification_arn] unless stub[:labeling_job_algorithm_specification_arn].nil?
        data['InitialActiveLearningModelArn'] = stub[:initial_active_learning_model_arn] unless stub[:initial_active_learning_model_arn].nil?
        data['LabelingJobResourceConfig'] = LabelingJobResourceConfig.stub(stub[:labeling_job_resource_config]) unless stub[:labeling_job_resource_config].nil?
        data
      end
    end

    # Structure Stubber for LabelingJobResourceConfig
    class LabelingJobResourceConfig
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobResourceConfig')
        visited = visited + ['LabelingJobResourceConfig']
        {
          volume_kms_key_id: 'volume_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobResourceConfig.new
        data = {}
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for LabelingJobStoppingConditions
    class LabelingJobStoppingConditions
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobStoppingConditions')
        visited = visited + ['LabelingJobStoppingConditions']
        {
          max_human_labeled_object_count: 1,
          max_percentage_of_input_dataset_labeled: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobStoppingConditions.new
        data = {}
        data['MaxHumanLabeledObjectCount'] = stub[:max_human_labeled_object_count] unless stub[:max_human_labeled_object_count].nil?
        data['MaxPercentageOfInputDatasetLabeled'] = stub[:max_percentage_of_input_dataset_labeled] unless stub[:max_percentage_of_input_dataset_labeled].nil?
        data
      end
    end

    # Structure Stubber for LabelingJobOutputConfig
    class LabelingJobOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobOutputConfig')
        visited = visited + ['LabelingJobOutputConfig']
        {
          s3_output_path: 's3_output_path',
          kms_key_id: 'kms_key_id',
          sns_topic_arn: 'sns_topic_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobOutputConfig.new
        data = {}
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data
      end
    end

    # Structure Stubber for LabelingJobInputConfig
    class LabelingJobInputConfig
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobInputConfig')
        visited = visited + ['LabelingJobInputConfig']
        {
          data_source: LabelingJobDataSource.default(visited),
          data_attributes: LabelingJobDataAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobInputConfig.new
        data = {}
        data['DataSource'] = LabelingJobDataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['DataAttributes'] = LabelingJobDataAttributes.stub(stub[:data_attributes]) unless stub[:data_attributes].nil?
        data
      end
    end

    # Structure Stubber for LabelingJobDataAttributes
    class LabelingJobDataAttributes
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobDataAttributes')
        visited = visited + ['LabelingJobDataAttributes']
        {
          content_classifiers: ContentClassifiers.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobDataAttributes.new
        data = {}
        data['ContentClassifiers'] = ContentClassifiers.stub(stub[:content_classifiers]) unless stub[:content_classifiers].nil?
        data
      end
    end

    # List Stubber for ContentClassifiers
    class ContentClassifiers
      def self.default(visited=[])
        return nil if visited.include?('ContentClassifiers')
        visited = visited + ['ContentClassifiers']
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

    # Structure Stubber for LabelingJobDataSource
    class LabelingJobDataSource
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobDataSource')
        visited = visited + ['LabelingJobDataSource']
        {
          s3_data_source: LabelingJobS3DataSource.default(visited),
          sns_data_source: LabelingJobSnsDataSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobDataSource.new
        data = {}
        data['S3DataSource'] = LabelingJobS3DataSource.stub(stub[:s3_data_source]) unless stub[:s3_data_source].nil?
        data['SnsDataSource'] = LabelingJobSnsDataSource.stub(stub[:sns_data_source]) unless stub[:sns_data_source].nil?
        data
      end
    end

    # Structure Stubber for LabelingJobSnsDataSource
    class LabelingJobSnsDataSource
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobSnsDataSource')
        visited = visited + ['LabelingJobSnsDataSource']
        {
          sns_topic_arn: 'sns_topic_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobSnsDataSource.new
        data = {}
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data
      end
    end

    # Structure Stubber for LabelingJobS3DataSource
    class LabelingJobS3DataSource
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobS3DataSource')
        visited = visited + ['LabelingJobS3DataSource']
        {
          manifest_s3_uri: 'manifest_s3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobS3DataSource.new
        data = {}
        data['ManifestS3Uri'] = stub[:manifest_s3_uri] unless stub[:manifest_s3_uri].nil?
        data
      end
    end

    # Structure Stubber for LabelCounters
    class LabelCounters
      def self.default(visited=[])
        return nil if visited.include?('LabelCounters')
        visited = visited + ['LabelCounters']
        {
          total_labeled: 1,
          human_labeled: 1,
          machine_labeled: 1,
          failed_non_retryable_error: 1,
          unlabeled: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelCounters.new
        data = {}
        data['TotalLabeled'] = stub[:total_labeled] unless stub[:total_labeled].nil?
        data['HumanLabeled'] = stub[:human_labeled] unless stub[:human_labeled].nil?
        data['MachineLabeled'] = stub[:machine_labeled] unless stub[:machine_labeled].nil?
        data['FailedNonRetryableError'] = stub[:failed_non_retryable_error] unless stub[:failed_non_retryable_error].nil?
        data['Unlabeled'] = stub[:unlabeled] unless stub[:unlabeled].nil?
        data
      end
    end

    # Operation Stubber for DescribeLineageGroup
    class DescribeLineageGroup
      def self.default(visited=[])
        {
          lineage_group_name: 'lineage_group_name',
          lineage_group_arn: 'lineage_group_arn',
          display_name: 'display_name',
          description: 'description',
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LineageGroupName'] = stub[:lineage_group_name] unless stub[:lineage_group_name].nil?
        data['LineageGroupArn'] = stub[:lineage_group_arn] unless stub[:lineage_group_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeModel
    class DescribeModel
      def self.default(visited=[])
        {
          model_name: 'model_name',
          primary_container: ContainerDefinition.default(visited),
          containers: ContainerDefinitionList.default(visited),
          inference_execution_config: InferenceExecutionConfig.default(visited),
          execution_role_arn: 'execution_role_arn',
          vpc_config: VpcConfig.default(visited),
          creation_time: Time.now,
          model_arn: 'model_arn',
          enable_network_isolation: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['PrimaryContainer'] = ContainerDefinition.stub(stub[:primary_container]) unless stub[:primary_container].nil?
        data['Containers'] = ContainerDefinitionList.stub(stub[:containers]) unless stub[:containers].nil?
        data['InferenceExecutionConfig'] = InferenceExecutionConfig.stub(stub[:inference_execution_config]) unless stub[:inference_execution_config].nil?
        data['ExecutionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['EnableNetworkIsolation'] = stub[:enable_network_isolation] unless stub[:enable_network_isolation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InferenceExecutionConfig
    class InferenceExecutionConfig
      def self.default(visited=[])
        return nil if visited.include?('InferenceExecutionConfig')
        visited = visited + ['InferenceExecutionConfig']
        {
          mode: 'mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceExecutionConfig.new
        data = {}
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data
      end
    end

    # List Stubber for ContainerDefinitionList
    class ContainerDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('ContainerDefinitionList')
        visited = visited + ['ContainerDefinitionList']
        [
          ContainerDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContainerDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContainerDefinition
    class ContainerDefinition
      def self.default(visited=[])
        return nil if visited.include?('ContainerDefinition')
        visited = visited + ['ContainerDefinition']
        {
          container_hostname: 'container_hostname',
          image: 'image',
          image_config: ImageConfig.default(visited),
          mode: 'mode',
          model_data_url: 'model_data_url',
          environment: EnvironmentMap.default(visited),
          model_package_name: 'model_package_name',
          inference_specification_name: 'inference_specification_name',
          multi_model_config: MultiModelConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerDefinition.new
        data = {}
        data['ContainerHostname'] = stub[:container_hostname] unless stub[:container_hostname].nil?
        data['Image'] = stub[:image] unless stub[:image].nil?
        data['ImageConfig'] = ImageConfig.stub(stub[:image_config]) unless stub[:image_config].nil?
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['ModelDataUrl'] = stub[:model_data_url] unless stub[:model_data_url].nil?
        data['Environment'] = EnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data['ModelPackageName'] = stub[:model_package_name] unless stub[:model_package_name].nil?
        data['InferenceSpecificationName'] = stub[:inference_specification_name] unless stub[:inference_specification_name].nil?
        data['MultiModelConfig'] = MultiModelConfig.stub(stub[:multi_model_config]) unless stub[:multi_model_config].nil?
        data
      end
    end

    # Structure Stubber for MultiModelConfig
    class MultiModelConfig
      def self.default(visited=[])
        return nil if visited.include?('MultiModelConfig')
        visited = visited + ['MultiModelConfig']
        {
          model_cache_setting: 'model_cache_setting',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiModelConfig.new
        data = {}
        data['ModelCacheSetting'] = stub[:model_cache_setting] unless stub[:model_cache_setting].nil?
        data
      end
    end

    # Structure Stubber for ImageConfig
    class ImageConfig
      def self.default(visited=[])
        return nil if visited.include?('ImageConfig')
        visited = visited + ['ImageConfig']
        {
          repository_access_mode: 'repository_access_mode',
          repository_auth_config: RepositoryAuthConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageConfig.new
        data = {}
        data['RepositoryAccessMode'] = stub[:repository_access_mode] unless stub[:repository_access_mode].nil?
        data['RepositoryAuthConfig'] = RepositoryAuthConfig.stub(stub[:repository_auth_config]) unless stub[:repository_auth_config].nil?
        data
      end
    end

    # Structure Stubber for RepositoryAuthConfig
    class RepositoryAuthConfig
      def self.default(visited=[])
        return nil if visited.include?('RepositoryAuthConfig')
        visited = visited + ['RepositoryAuthConfig']
        {
          repository_credentials_provider_arn: 'repository_credentials_provider_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryAuthConfig.new
        data = {}
        data['RepositoryCredentialsProviderArn'] = stub[:repository_credentials_provider_arn] unless stub[:repository_credentials_provider_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeModelBiasJobDefinition
    class DescribeModelBiasJobDefinition
      def self.default(visited=[])
        {
          job_definition_arn: 'job_definition_arn',
          job_definition_name: 'job_definition_name',
          creation_time: Time.now,
          model_bias_baseline_config: ModelBiasBaselineConfig.default(visited),
          model_bias_app_specification: ModelBiasAppSpecification.default(visited),
          model_bias_job_input: ModelBiasJobInput.default(visited),
          model_bias_job_output_config: MonitoringOutputConfig.default(visited),
          job_resources: MonitoringResources.default(visited),
          network_config: MonitoringNetworkConfig.default(visited),
          role_arn: 'role_arn',
          stopping_condition: MonitoringStoppingCondition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        data['JobDefinitionName'] = stub[:job_definition_name] unless stub[:job_definition_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ModelBiasBaselineConfig'] = ModelBiasBaselineConfig.stub(stub[:model_bias_baseline_config]) unless stub[:model_bias_baseline_config].nil?
        data['ModelBiasAppSpecification'] = ModelBiasAppSpecification.stub(stub[:model_bias_app_specification]) unless stub[:model_bias_app_specification].nil?
        data['ModelBiasJobInput'] = ModelBiasJobInput.stub(stub[:model_bias_job_input]) unless stub[:model_bias_job_input].nil?
        data['ModelBiasJobOutputConfig'] = MonitoringOutputConfig.stub(stub[:model_bias_job_output_config]) unless stub[:model_bias_job_output_config].nil?
        data['JobResources'] = MonitoringResources.stub(stub[:job_resources]) unless stub[:job_resources].nil?
        data['NetworkConfig'] = MonitoringNetworkConfig.stub(stub[:network_config]) unless stub[:network_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['StoppingCondition'] = MonitoringStoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ModelBiasJobInput
    class ModelBiasJobInput
      def self.default(visited=[])
        return nil if visited.include?('ModelBiasJobInput')
        visited = visited + ['ModelBiasJobInput']
        {
          endpoint_input: EndpointInput.default(visited),
          ground_truth_s3_input: MonitoringGroundTruthS3Input.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelBiasJobInput.new
        data = {}
        data['EndpointInput'] = EndpointInput.stub(stub[:endpoint_input]) unless stub[:endpoint_input].nil?
        data['GroundTruthS3Input'] = MonitoringGroundTruthS3Input.stub(stub[:ground_truth_s3_input]) unless stub[:ground_truth_s3_input].nil?
        data
      end
    end

    # Structure Stubber for MonitoringGroundTruthS3Input
    class MonitoringGroundTruthS3Input
      def self.default(visited=[])
        return nil if visited.include?('MonitoringGroundTruthS3Input')
        visited = visited + ['MonitoringGroundTruthS3Input']
        {
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringGroundTruthS3Input.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Structure Stubber for ModelBiasAppSpecification
    class ModelBiasAppSpecification
      def self.default(visited=[])
        return nil if visited.include?('ModelBiasAppSpecification')
        visited = visited + ['ModelBiasAppSpecification']
        {
          image_uri: 'image_uri',
          config_uri: 'config_uri',
          environment: MonitoringEnvironmentMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelBiasAppSpecification.new
        data = {}
        data['ImageUri'] = stub[:image_uri] unless stub[:image_uri].nil?
        data['ConfigUri'] = stub[:config_uri] unless stub[:config_uri].nil?
        data['Environment'] = MonitoringEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data
      end
    end

    # Structure Stubber for ModelBiasBaselineConfig
    class ModelBiasBaselineConfig
      def self.default(visited=[])
        return nil if visited.include?('ModelBiasBaselineConfig')
        visited = visited + ['ModelBiasBaselineConfig']
        {
          baselining_job_name: 'baselining_job_name',
          constraints_resource: MonitoringConstraintsResource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelBiasBaselineConfig.new
        data = {}
        data['BaseliningJobName'] = stub[:baselining_job_name] unless stub[:baselining_job_name].nil?
        data['ConstraintsResource'] = MonitoringConstraintsResource.stub(stub[:constraints_resource]) unless stub[:constraints_resource].nil?
        data
      end
    end

    # Operation Stubber for DescribeModelExplainabilityJobDefinition
    class DescribeModelExplainabilityJobDefinition
      def self.default(visited=[])
        {
          job_definition_arn: 'job_definition_arn',
          job_definition_name: 'job_definition_name',
          creation_time: Time.now,
          model_explainability_baseline_config: ModelExplainabilityBaselineConfig.default(visited),
          model_explainability_app_specification: ModelExplainabilityAppSpecification.default(visited),
          model_explainability_job_input: ModelExplainabilityJobInput.default(visited),
          model_explainability_job_output_config: MonitoringOutputConfig.default(visited),
          job_resources: MonitoringResources.default(visited),
          network_config: MonitoringNetworkConfig.default(visited),
          role_arn: 'role_arn',
          stopping_condition: MonitoringStoppingCondition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        data['JobDefinitionName'] = stub[:job_definition_name] unless stub[:job_definition_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ModelExplainabilityBaselineConfig'] = ModelExplainabilityBaselineConfig.stub(stub[:model_explainability_baseline_config]) unless stub[:model_explainability_baseline_config].nil?
        data['ModelExplainabilityAppSpecification'] = ModelExplainabilityAppSpecification.stub(stub[:model_explainability_app_specification]) unless stub[:model_explainability_app_specification].nil?
        data['ModelExplainabilityJobInput'] = ModelExplainabilityJobInput.stub(stub[:model_explainability_job_input]) unless stub[:model_explainability_job_input].nil?
        data['ModelExplainabilityJobOutputConfig'] = MonitoringOutputConfig.stub(stub[:model_explainability_job_output_config]) unless stub[:model_explainability_job_output_config].nil?
        data['JobResources'] = MonitoringResources.stub(stub[:job_resources]) unless stub[:job_resources].nil?
        data['NetworkConfig'] = MonitoringNetworkConfig.stub(stub[:network_config]) unless stub[:network_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['StoppingCondition'] = MonitoringStoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ModelExplainabilityJobInput
    class ModelExplainabilityJobInput
      def self.default(visited=[])
        return nil if visited.include?('ModelExplainabilityJobInput')
        visited = visited + ['ModelExplainabilityJobInput']
        {
          endpoint_input: EndpointInput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelExplainabilityJobInput.new
        data = {}
        data['EndpointInput'] = EndpointInput.stub(stub[:endpoint_input]) unless stub[:endpoint_input].nil?
        data
      end
    end

    # Structure Stubber for ModelExplainabilityAppSpecification
    class ModelExplainabilityAppSpecification
      def self.default(visited=[])
        return nil if visited.include?('ModelExplainabilityAppSpecification')
        visited = visited + ['ModelExplainabilityAppSpecification']
        {
          image_uri: 'image_uri',
          config_uri: 'config_uri',
          environment: MonitoringEnvironmentMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelExplainabilityAppSpecification.new
        data = {}
        data['ImageUri'] = stub[:image_uri] unless stub[:image_uri].nil?
        data['ConfigUri'] = stub[:config_uri] unless stub[:config_uri].nil?
        data['Environment'] = MonitoringEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data
      end
    end

    # Structure Stubber for ModelExplainabilityBaselineConfig
    class ModelExplainabilityBaselineConfig
      def self.default(visited=[])
        return nil if visited.include?('ModelExplainabilityBaselineConfig')
        visited = visited + ['ModelExplainabilityBaselineConfig']
        {
          baselining_job_name: 'baselining_job_name',
          constraints_resource: MonitoringConstraintsResource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelExplainabilityBaselineConfig.new
        data = {}
        data['BaseliningJobName'] = stub[:baselining_job_name] unless stub[:baselining_job_name].nil?
        data['ConstraintsResource'] = MonitoringConstraintsResource.stub(stub[:constraints_resource]) unless stub[:constraints_resource].nil?
        data
      end
    end

    # Operation Stubber for DescribeModelPackage
    class DescribeModelPackage
      def self.default(visited=[])
        {
          model_package_name: 'model_package_name',
          model_package_group_name: 'model_package_group_name',
          model_package_version: 1,
          model_package_arn: 'model_package_arn',
          model_package_description: 'model_package_description',
          creation_time: Time.now,
          inference_specification: InferenceSpecification.default(visited),
          source_algorithm_specification: SourceAlgorithmSpecification.default(visited),
          validation_specification: ModelPackageValidationSpecification.default(visited),
          model_package_status: 'model_package_status',
          model_package_status_details: ModelPackageStatusDetails.default(visited),
          certify_for_marketplace: false,
          model_approval_status: 'model_approval_status',
          created_by: UserContext.default(visited),
          metadata_properties: MetadataProperties.default(visited),
          model_metrics: ModelMetrics.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          approval_description: 'approval_description',
          customer_metadata_properties: CustomerMetadataMap.default(visited),
          drift_check_baselines: DriftCheckBaselines.default(visited),
          domain: 'domain',
          task: 'task',
          sample_payload_url: 'sample_payload_url',
          additional_inference_specifications: AdditionalInferenceSpecifications.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelPackageName'] = stub[:model_package_name] unless stub[:model_package_name].nil?
        data['ModelPackageGroupName'] = stub[:model_package_group_name] unless stub[:model_package_group_name].nil?
        data['ModelPackageVersion'] = stub[:model_package_version] unless stub[:model_package_version].nil?
        data['ModelPackageArn'] = stub[:model_package_arn] unless stub[:model_package_arn].nil?
        data['ModelPackageDescription'] = stub[:model_package_description] unless stub[:model_package_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['InferenceSpecification'] = InferenceSpecification.stub(stub[:inference_specification]) unless stub[:inference_specification].nil?
        data['SourceAlgorithmSpecification'] = SourceAlgorithmSpecification.stub(stub[:source_algorithm_specification]) unless stub[:source_algorithm_specification].nil?
        data['ValidationSpecification'] = ModelPackageValidationSpecification.stub(stub[:validation_specification]) unless stub[:validation_specification].nil?
        data['ModelPackageStatus'] = stub[:model_package_status] unless stub[:model_package_status].nil?
        data['ModelPackageStatusDetails'] = ModelPackageStatusDetails.stub(stub[:model_package_status_details]) unless stub[:model_package_status_details].nil?
        data['CertifyForMarketplace'] = stub[:certify_for_marketplace] unless stub[:certify_for_marketplace].nil?
        data['ModelApprovalStatus'] = stub[:model_approval_status] unless stub[:model_approval_status].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['MetadataProperties'] = MetadataProperties.stub(stub[:metadata_properties]) unless stub[:metadata_properties].nil?
        data['ModelMetrics'] = ModelMetrics.stub(stub[:model_metrics]) unless stub[:model_metrics].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['ApprovalDescription'] = stub[:approval_description] unless stub[:approval_description].nil?
        data['CustomerMetadataProperties'] = CustomerMetadataMap.stub(stub[:customer_metadata_properties]) unless stub[:customer_metadata_properties].nil?
        data['DriftCheckBaselines'] = DriftCheckBaselines.stub(stub[:drift_check_baselines]) unless stub[:drift_check_baselines].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['Task'] = stub[:task] unless stub[:task].nil?
        data['SamplePayloadUrl'] = stub[:sample_payload_url] unless stub[:sample_payload_url].nil?
        data['AdditionalInferenceSpecifications'] = AdditionalInferenceSpecifications.stub(stub[:additional_inference_specifications]) unless stub[:additional_inference_specifications].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AdditionalInferenceSpecifications
    class AdditionalInferenceSpecifications
      def self.default(visited=[])
        return nil if visited.include?('AdditionalInferenceSpecifications')
        visited = visited + ['AdditionalInferenceSpecifications']
        [
          AdditionalInferenceSpecificationDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AdditionalInferenceSpecificationDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdditionalInferenceSpecificationDefinition
    class AdditionalInferenceSpecificationDefinition
      def self.default(visited=[])
        return nil if visited.include?('AdditionalInferenceSpecificationDefinition')
        visited = visited + ['AdditionalInferenceSpecificationDefinition']
        {
          name: 'name',
          description: 'description',
          containers: ModelPackageContainerDefinitionList.default(visited),
          supported_transform_instance_types: TransformInstanceTypes.default(visited),
          supported_realtime_inference_instance_types: RealtimeInferenceInstanceTypes.default(visited),
          supported_content_types: ContentTypes.default(visited),
          supported_response_mime_types: ResponseMIMETypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdditionalInferenceSpecificationDefinition.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Containers'] = ModelPackageContainerDefinitionList.stub(stub[:containers]) unless stub[:containers].nil?
        data['SupportedTransformInstanceTypes'] = TransformInstanceTypes.stub(stub[:supported_transform_instance_types]) unless stub[:supported_transform_instance_types].nil?
        data['SupportedRealtimeInferenceInstanceTypes'] = RealtimeInferenceInstanceTypes.stub(stub[:supported_realtime_inference_instance_types]) unless stub[:supported_realtime_inference_instance_types].nil?
        data['SupportedContentTypes'] = ContentTypes.stub(stub[:supported_content_types]) unless stub[:supported_content_types].nil?
        data['SupportedResponseMIMETypes'] = ResponseMIMETypes.stub(stub[:supported_response_mime_types]) unless stub[:supported_response_mime_types].nil?
        data
      end
    end

    # Structure Stubber for DriftCheckBaselines
    class DriftCheckBaselines
      def self.default(visited=[])
        return nil if visited.include?('DriftCheckBaselines')
        visited = visited + ['DriftCheckBaselines']
        {
          bias: DriftCheckBias.default(visited),
          explainability: DriftCheckExplainability.default(visited),
          model_quality: DriftCheckModelQuality.default(visited),
          model_data_quality: DriftCheckModelDataQuality.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DriftCheckBaselines.new
        data = {}
        data['Bias'] = DriftCheckBias.stub(stub[:bias]) unless stub[:bias].nil?
        data['Explainability'] = DriftCheckExplainability.stub(stub[:explainability]) unless stub[:explainability].nil?
        data['ModelQuality'] = DriftCheckModelQuality.stub(stub[:model_quality]) unless stub[:model_quality].nil?
        data['ModelDataQuality'] = DriftCheckModelDataQuality.stub(stub[:model_data_quality]) unless stub[:model_data_quality].nil?
        data
      end
    end

    # Structure Stubber for DriftCheckModelDataQuality
    class DriftCheckModelDataQuality
      def self.default(visited=[])
        return nil if visited.include?('DriftCheckModelDataQuality')
        visited = visited + ['DriftCheckModelDataQuality']
        {
          statistics: MetricsSource.default(visited),
          constraints: MetricsSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DriftCheckModelDataQuality.new
        data = {}
        data['Statistics'] = MetricsSource.stub(stub[:statistics]) unless stub[:statistics].nil?
        data['Constraints'] = MetricsSource.stub(stub[:constraints]) unless stub[:constraints].nil?
        data
      end
    end

    # Structure Stubber for MetricsSource
    class MetricsSource
      def self.default(visited=[])
        return nil if visited.include?('MetricsSource')
        visited = visited + ['MetricsSource']
        {
          content_type: 'content_type',
          content_digest: 'content_digest',
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricsSource.new
        data = {}
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['ContentDigest'] = stub[:content_digest] unless stub[:content_digest].nil?
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Structure Stubber for DriftCheckModelQuality
    class DriftCheckModelQuality
      def self.default(visited=[])
        return nil if visited.include?('DriftCheckModelQuality')
        visited = visited + ['DriftCheckModelQuality']
        {
          statistics: MetricsSource.default(visited),
          constraints: MetricsSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DriftCheckModelQuality.new
        data = {}
        data['Statistics'] = MetricsSource.stub(stub[:statistics]) unless stub[:statistics].nil?
        data['Constraints'] = MetricsSource.stub(stub[:constraints]) unless stub[:constraints].nil?
        data
      end
    end

    # Structure Stubber for DriftCheckExplainability
    class DriftCheckExplainability
      def self.default(visited=[])
        return nil if visited.include?('DriftCheckExplainability')
        visited = visited + ['DriftCheckExplainability']
        {
          constraints: MetricsSource.default(visited),
          config_file: FileSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DriftCheckExplainability.new
        data = {}
        data['Constraints'] = MetricsSource.stub(stub[:constraints]) unless stub[:constraints].nil?
        data['ConfigFile'] = FileSource.stub(stub[:config_file]) unless stub[:config_file].nil?
        data
      end
    end

    # Structure Stubber for FileSource
    class FileSource
      def self.default(visited=[])
        return nil if visited.include?('FileSource')
        visited = visited + ['FileSource']
        {
          content_type: 'content_type',
          content_digest: 'content_digest',
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSource.new
        data = {}
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['ContentDigest'] = stub[:content_digest] unless stub[:content_digest].nil?
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Structure Stubber for DriftCheckBias
    class DriftCheckBias
      def self.default(visited=[])
        return nil if visited.include?('DriftCheckBias')
        visited = visited + ['DriftCheckBias']
        {
          config_file: FileSource.default(visited),
          pre_training_constraints: MetricsSource.default(visited),
          post_training_constraints: MetricsSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DriftCheckBias.new
        data = {}
        data['ConfigFile'] = FileSource.stub(stub[:config_file]) unless stub[:config_file].nil?
        data['PreTrainingConstraints'] = MetricsSource.stub(stub[:pre_training_constraints]) unless stub[:pre_training_constraints].nil?
        data['PostTrainingConstraints'] = MetricsSource.stub(stub[:post_training_constraints]) unless stub[:post_training_constraints].nil?
        data
      end
    end

    # Map Stubber for CustomerMetadataMap
    class CustomerMetadataMap
      def self.default(visited=[])
        return nil if visited.include?('CustomerMetadataMap')
        visited = visited + ['CustomerMetadataMap']
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

    # Structure Stubber for ModelMetrics
    class ModelMetrics
      def self.default(visited=[])
        return nil if visited.include?('ModelMetrics')
        visited = visited + ['ModelMetrics']
        {
          model_quality: ModelQuality.default(visited),
          model_data_quality: ModelDataQuality.default(visited),
          bias: Bias.default(visited),
          explainability: Explainability.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelMetrics.new
        data = {}
        data['ModelQuality'] = ModelQuality.stub(stub[:model_quality]) unless stub[:model_quality].nil?
        data['ModelDataQuality'] = ModelDataQuality.stub(stub[:model_data_quality]) unless stub[:model_data_quality].nil?
        data['Bias'] = Bias.stub(stub[:bias]) unless stub[:bias].nil?
        data['Explainability'] = Explainability.stub(stub[:explainability]) unless stub[:explainability].nil?
        data
      end
    end

    # Structure Stubber for Explainability
    class Explainability
      def self.default(visited=[])
        return nil if visited.include?('Explainability')
        visited = visited + ['Explainability']
        {
          report: MetricsSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Explainability.new
        data = {}
        data['Report'] = MetricsSource.stub(stub[:report]) unless stub[:report].nil?
        data
      end
    end

    # Structure Stubber for Bias
    class Bias
      def self.default(visited=[])
        return nil if visited.include?('Bias')
        visited = visited + ['Bias']
        {
          report: MetricsSource.default(visited),
          pre_training_report: MetricsSource.default(visited),
          post_training_report: MetricsSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Bias.new
        data = {}
        data['Report'] = MetricsSource.stub(stub[:report]) unless stub[:report].nil?
        data['PreTrainingReport'] = MetricsSource.stub(stub[:pre_training_report]) unless stub[:pre_training_report].nil?
        data['PostTrainingReport'] = MetricsSource.stub(stub[:post_training_report]) unless stub[:post_training_report].nil?
        data
      end
    end

    # Structure Stubber for ModelDataQuality
    class ModelDataQuality
      def self.default(visited=[])
        return nil if visited.include?('ModelDataQuality')
        visited = visited + ['ModelDataQuality']
        {
          statistics: MetricsSource.default(visited),
          constraints: MetricsSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelDataQuality.new
        data = {}
        data['Statistics'] = MetricsSource.stub(stub[:statistics]) unless stub[:statistics].nil?
        data['Constraints'] = MetricsSource.stub(stub[:constraints]) unless stub[:constraints].nil?
        data
      end
    end

    # Structure Stubber for ModelQuality
    class ModelQuality
      def self.default(visited=[])
        return nil if visited.include?('ModelQuality')
        visited = visited + ['ModelQuality']
        {
          statistics: MetricsSource.default(visited),
          constraints: MetricsSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelQuality.new
        data = {}
        data['Statistics'] = MetricsSource.stub(stub[:statistics]) unless stub[:statistics].nil?
        data['Constraints'] = MetricsSource.stub(stub[:constraints]) unless stub[:constraints].nil?
        data
      end
    end

    # Structure Stubber for ModelPackageStatusDetails
    class ModelPackageStatusDetails
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageStatusDetails')
        visited = visited + ['ModelPackageStatusDetails']
        {
          validation_statuses: ModelPackageStatusItemList.default(visited),
          image_scan_statuses: ModelPackageStatusItemList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackageStatusDetails.new
        data = {}
        data['ValidationStatuses'] = ModelPackageStatusItemList.stub(stub[:validation_statuses]) unless stub[:validation_statuses].nil?
        data['ImageScanStatuses'] = ModelPackageStatusItemList.stub(stub[:image_scan_statuses]) unless stub[:image_scan_statuses].nil?
        data
      end
    end

    # List Stubber for ModelPackageStatusItemList
    class ModelPackageStatusItemList
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageStatusItemList')
        visited = visited + ['ModelPackageStatusItemList']
        [
          ModelPackageStatusItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelPackageStatusItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelPackageStatusItem
    class ModelPackageStatusItem
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageStatusItem')
        visited = visited + ['ModelPackageStatusItem']
        {
          name: 'name',
          status: 'status',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackageStatusItem.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Structure Stubber for ModelPackageValidationSpecification
    class ModelPackageValidationSpecification
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageValidationSpecification')
        visited = visited + ['ModelPackageValidationSpecification']
        {
          validation_role: 'validation_role',
          validation_profiles: ModelPackageValidationProfiles.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackageValidationSpecification.new
        data = {}
        data['ValidationRole'] = stub[:validation_role] unless stub[:validation_role].nil?
        data['ValidationProfiles'] = ModelPackageValidationProfiles.stub(stub[:validation_profiles]) unless stub[:validation_profiles].nil?
        data
      end
    end

    # List Stubber for ModelPackageValidationProfiles
    class ModelPackageValidationProfiles
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageValidationProfiles')
        visited = visited + ['ModelPackageValidationProfiles']
        [
          ModelPackageValidationProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelPackageValidationProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelPackageValidationProfile
    class ModelPackageValidationProfile
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageValidationProfile')
        visited = visited + ['ModelPackageValidationProfile']
        {
          profile_name: 'profile_name',
          transform_job_definition: TransformJobDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackageValidationProfile.new
        data = {}
        data['ProfileName'] = stub[:profile_name] unless stub[:profile_name].nil?
        data['TransformJobDefinition'] = TransformJobDefinition.stub(stub[:transform_job_definition]) unless stub[:transform_job_definition].nil?
        data
      end
    end

    # Structure Stubber for SourceAlgorithmSpecification
    class SourceAlgorithmSpecification
      def self.default(visited=[])
        return nil if visited.include?('SourceAlgorithmSpecification')
        visited = visited + ['SourceAlgorithmSpecification']
        {
          source_algorithms: SourceAlgorithmList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceAlgorithmSpecification.new
        data = {}
        data['SourceAlgorithms'] = SourceAlgorithmList.stub(stub[:source_algorithms]) unless stub[:source_algorithms].nil?
        data
      end
    end

    # List Stubber for SourceAlgorithmList
    class SourceAlgorithmList
      def self.default(visited=[])
        return nil if visited.include?('SourceAlgorithmList')
        visited = visited + ['SourceAlgorithmList']
        [
          SourceAlgorithm.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SourceAlgorithm.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SourceAlgorithm
    class SourceAlgorithm
      def self.default(visited=[])
        return nil if visited.include?('SourceAlgorithm')
        visited = visited + ['SourceAlgorithm']
        {
          model_data_url: 'model_data_url',
          algorithm_name: 'algorithm_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceAlgorithm.new
        data = {}
        data['ModelDataUrl'] = stub[:model_data_url] unless stub[:model_data_url].nil?
        data['AlgorithmName'] = stub[:algorithm_name] unless stub[:algorithm_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeModelPackageGroup
    class DescribeModelPackageGroup
      def self.default(visited=[])
        {
          model_package_group_name: 'model_package_group_name',
          model_package_group_arn: 'model_package_group_arn',
          model_package_group_description: 'model_package_group_description',
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          model_package_group_status: 'model_package_group_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelPackageGroupName'] = stub[:model_package_group_name] unless stub[:model_package_group_name].nil?
        data['ModelPackageGroupArn'] = stub[:model_package_group_arn] unless stub[:model_package_group_arn].nil?
        data['ModelPackageGroupDescription'] = stub[:model_package_group_description] unless stub[:model_package_group_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['ModelPackageGroupStatus'] = stub[:model_package_group_status] unless stub[:model_package_group_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeModelQualityJobDefinition
    class DescribeModelQualityJobDefinition
      def self.default(visited=[])
        {
          job_definition_arn: 'job_definition_arn',
          job_definition_name: 'job_definition_name',
          creation_time: Time.now,
          model_quality_baseline_config: ModelQualityBaselineConfig.default(visited),
          model_quality_app_specification: ModelQualityAppSpecification.default(visited),
          model_quality_job_input: ModelQualityJobInput.default(visited),
          model_quality_job_output_config: MonitoringOutputConfig.default(visited),
          job_resources: MonitoringResources.default(visited),
          network_config: MonitoringNetworkConfig.default(visited),
          role_arn: 'role_arn',
          stopping_condition: MonitoringStoppingCondition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        data['JobDefinitionName'] = stub[:job_definition_name] unless stub[:job_definition_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ModelQualityBaselineConfig'] = ModelQualityBaselineConfig.stub(stub[:model_quality_baseline_config]) unless stub[:model_quality_baseline_config].nil?
        data['ModelQualityAppSpecification'] = ModelQualityAppSpecification.stub(stub[:model_quality_app_specification]) unless stub[:model_quality_app_specification].nil?
        data['ModelQualityJobInput'] = ModelQualityJobInput.stub(stub[:model_quality_job_input]) unless stub[:model_quality_job_input].nil?
        data['ModelQualityJobOutputConfig'] = MonitoringOutputConfig.stub(stub[:model_quality_job_output_config]) unless stub[:model_quality_job_output_config].nil?
        data['JobResources'] = MonitoringResources.stub(stub[:job_resources]) unless stub[:job_resources].nil?
        data['NetworkConfig'] = MonitoringNetworkConfig.stub(stub[:network_config]) unless stub[:network_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['StoppingCondition'] = MonitoringStoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ModelQualityJobInput
    class ModelQualityJobInput
      def self.default(visited=[])
        return nil if visited.include?('ModelQualityJobInput')
        visited = visited + ['ModelQualityJobInput']
        {
          endpoint_input: EndpointInput.default(visited),
          ground_truth_s3_input: MonitoringGroundTruthS3Input.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelQualityJobInput.new
        data = {}
        data['EndpointInput'] = EndpointInput.stub(stub[:endpoint_input]) unless stub[:endpoint_input].nil?
        data['GroundTruthS3Input'] = MonitoringGroundTruthS3Input.stub(stub[:ground_truth_s3_input]) unless stub[:ground_truth_s3_input].nil?
        data
      end
    end

    # Structure Stubber for ModelQualityAppSpecification
    class ModelQualityAppSpecification
      def self.default(visited=[])
        return nil if visited.include?('ModelQualityAppSpecification')
        visited = visited + ['ModelQualityAppSpecification']
        {
          image_uri: 'image_uri',
          container_entrypoint: ContainerEntrypoint.default(visited),
          container_arguments: MonitoringContainerArguments.default(visited),
          record_preprocessor_source_uri: 'record_preprocessor_source_uri',
          post_analytics_processor_source_uri: 'post_analytics_processor_source_uri',
          problem_type: 'problem_type',
          environment: MonitoringEnvironmentMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelQualityAppSpecification.new
        data = {}
        data['ImageUri'] = stub[:image_uri] unless stub[:image_uri].nil?
        data['ContainerEntrypoint'] = ContainerEntrypoint.stub(stub[:container_entrypoint]) unless stub[:container_entrypoint].nil?
        data['ContainerArguments'] = MonitoringContainerArguments.stub(stub[:container_arguments]) unless stub[:container_arguments].nil?
        data['RecordPreprocessorSourceUri'] = stub[:record_preprocessor_source_uri] unless stub[:record_preprocessor_source_uri].nil?
        data['PostAnalyticsProcessorSourceUri'] = stub[:post_analytics_processor_source_uri] unless stub[:post_analytics_processor_source_uri].nil?
        data['ProblemType'] = stub[:problem_type] unless stub[:problem_type].nil?
        data['Environment'] = MonitoringEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data
      end
    end

    # Structure Stubber for ModelQualityBaselineConfig
    class ModelQualityBaselineConfig
      def self.default(visited=[])
        return nil if visited.include?('ModelQualityBaselineConfig')
        visited = visited + ['ModelQualityBaselineConfig']
        {
          baselining_job_name: 'baselining_job_name',
          constraints_resource: MonitoringConstraintsResource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelQualityBaselineConfig.new
        data = {}
        data['BaseliningJobName'] = stub[:baselining_job_name] unless stub[:baselining_job_name].nil?
        data['ConstraintsResource'] = MonitoringConstraintsResource.stub(stub[:constraints_resource]) unless stub[:constraints_resource].nil?
        data
      end
    end

    # Operation Stubber for DescribeMonitoringSchedule
    class DescribeMonitoringSchedule
      def self.default(visited=[])
        {
          monitoring_schedule_arn: 'monitoring_schedule_arn',
          monitoring_schedule_name: 'monitoring_schedule_name',
          monitoring_schedule_status: 'monitoring_schedule_status',
          monitoring_type: 'monitoring_type',
          failure_reason: 'failure_reason',
          creation_time: Time.now,
          last_modified_time: Time.now,
          monitoring_schedule_config: MonitoringScheduleConfig.default(visited),
          endpoint_name: 'endpoint_name',
          last_monitoring_execution_summary: MonitoringExecutionSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonitoringScheduleArn'] = stub[:monitoring_schedule_arn] unless stub[:monitoring_schedule_arn].nil?
        data['MonitoringScheduleName'] = stub[:monitoring_schedule_name] unless stub[:monitoring_schedule_name].nil?
        data['MonitoringScheduleStatus'] = stub[:monitoring_schedule_status] unless stub[:monitoring_schedule_status].nil?
        data['MonitoringType'] = stub[:monitoring_type] unless stub[:monitoring_type].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['MonitoringScheduleConfig'] = MonitoringScheduleConfig.stub(stub[:monitoring_schedule_config]) unless stub[:monitoring_schedule_config].nil?
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['LastMonitoringExecutionSummary'] = MonitoringExecutionSummary.stub(stub[:last_monitoring_execution_summary]) unless stub[:last_monitoring_execution_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MonitoringExecutionSummary
    class MonitoringExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('MonitoringExecutionSummary')
        visited = visited + ['MonitoringExecutionSummary']
        {
          monitoring_schedule_name: 'monitoring_schedule_name',
          scheduled_time: Time.now,
          creation_time: Time.now,
          last_modified_time: Time.now,
          monitoring_execution_status: 'monitoring_execution_status',
          processing_job_arn: 'processing_job_arn',
          endpoint_name: 'endpoint_name',
          failure_reason: 'failure_reason',
          monitoring_job_definition_name: 'monitoring_job_definition_name',
          monitoring_type: 'monitoring_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringExecutionSummary.new
        data = {}
        data['MonitoringScheduleName'] = stub[:monitoring_schedule_name] unless stub[:monitoring_schedule_name].nil?
        data['ScheduledTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:scheduled_time]).to_i unless stub[:scheduled_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['MonitoringExecutionStatus'] = stub[:monitoring_execution_status] unless stub[:monitoring_execution_status].nil?
        data['ProcessingJobArn'] = stub[:processing_job_arn] unless stub[:processing_job_arn].nil?
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['MonitoringJobDefinitionName'] = stub[:monitoring_job_definition_name] unless stub[:monitoring_job_definition_name].nil?
        data['MonitoringType'] = stub[:monitoring_type] unless stub[:monitoring_type].nil?
        data
      end
    end

    # Structure Stubber for MonitoringScheduleConfig
    class MonitoringScheduleConfig
      def self.default(visited=[])
        return nil if visited.include?('MonitoringScheduleConfig')
        visited = visited + ['MonitoringScheduleConfig']
        {
          schedule_config: ScheduleConfig.default(visited),
          monitoring_job_definition: MonitoringJobDefinition.default(visited),
          monitoring_job_definition_name: 'monitoring_job_definition_name',
          monitoring_type: 'monitoring_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringScheduleConfig.new
        data = {}
        data['ScheduleConfig'] = ScheduleConfig.stub(stub[:schedule_config]) unless stub[:schedule_config].nil?
        data['MonitoringJobDefinition'] = MonitoringJobDefinition.stub(stub[:monitoring_job_definition]) unless stub[:monitoring_job_definition].nil?
        data['MonitoringJobDefinitionName'] = stub[:monitoring_job_definition_name] unless stub[:monitoring_job_definition_name].nil?
        data['MonitoringType'] = stub[:monitoring_type] unless stub[:monitoring_type].nil?
        data
      end
    end

    # Structure Stubber for MonitoringJobDefinition
    class MonitoringJobDefinition
      def self.default(visited=[])
        return nil if visited.include?('MonitoringJobDefinition')
        visited = visited + ['MonitoringJobDefinition']
        {
          baseline_config: MonitoringBaselineConfig.default(visited),
          monitoring_inputs: MonitoringInputs.default(visited),
          monitoring_output_config: MonitoringOutputConfig.default(visited),
          monitoring_resources: MonitoringResources.default(visited),
          monitoring_app_specification: MonitoringAppSpecification.default(visited),
          stopping_condition: MonitoringStoppingCondition.default(visited),
          environment: MonitoringEnvironmentMap.default(visited),
          network_config: NetworkConfig.default(visited),
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringJobDefinition.new
        data = {}
        data['BaselineConfig'] = MonitoringBaselineConfig.stub(stub[:baseline_config]) unless stub[:baseline_config].nil?
        data['MonitoringInputs'] = MonitoringInputs.stub(stub[:monitoring_inputs]) unless stub[:monitoring_inputs].nil?
        data['MonitoringOutputConfig'] = MonitoringOutputConfig.stub(stub[:monitoring_output_config]) unless stub[:monitoring_output_config].nil?
        data['MonitoringResources'] = MonitoringResources.stub(stub[:monitoring_resources]) unless stub[:monitoring_resources].nil?
        data['MonitoringAppSpecification'] = MonitoringAppSpecification.stub(stub[:monitoring_app_specification]) unless stub[:monitoring_app_specification].nil?
        data['StoppingCondition'] = MonitoringStoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        data['Environment'] = MonitoringEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data['NetworkConfig'] = NetworkConfig.stub(stub[:network_config]) unless stub[:network_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for NetworkConfig
    class NetworkConfig
      def self.default(visited=[])
        return nil if visited.include?('NetworkConfig')
        visited = visited + ['NetworkConfig']
        {
          enable_inter_container_traffic_encryption: false,
          enable_network_isolation: false,
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkConfig.new
        data = {}
        data['EnableInterContainerTrafficEncryption'] = stub[:enable_inter_container_traffic_encryption] unless stub[:enable_inter_container_traffic_encryption].nil?
        data['EnableNetworkIsolation'] = stub[:enable_network_isolation] unless stub[:enable_network_isolation].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Structure Stubber for MonitoringAppSpecification
    class MonitoringAppSpecification
      def self.default(visited=[])
        return nil if visited.include?('MonitoringAppSpecification')
        visited = visited + ['MonitoringAppSpecification']
        {
          image_uri: 'image_uri',
          container_entrypoint: ContainerEntrypoint.default(visited),
          container_arguments: MonitoringContainerArguments.default(visited),
          record_preprocessor_source_uri: 'record_preprocessor_source_uri',
          post_analytics_processor_source_uri: 'post_analytics_processor_source_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringAppSpecification.new
        data = {}
        data['ImageUri'] = stub[:image_uri] unless stub[:image_uri].nil?
        data['ContainerEntrypoint'] = ContainerEntrypoint.stub(stub[:container_entrypoint]) unless stub[:container_entrypoint].nil?
        data['ContainerArguments'] = MonitoringContainerArguments.stub(stub[:container_arguments]) unless stub[:container_arguments].nil?
        data['RecordPreprocessorSourceUri'] = stub[:record_preprocessor_source_uri] unless stub[:record_preprocessor_source_uri].nil?
        data['PostAnalyticsProcessorSourceUri'] = stub[:post_analytics_processor_source_uri] unless stub[:post_analytics_processor_source_uri].nil?
        data
      end
    end

    # List Stubber for MonitoringInputs
    class MonitoringInputs
      def self.default(visited=[])
        return nil if visited.include?('MonitoringInputs')
        visited = visited + ['MonitoringInputs']
        [
          MonitoringInput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MonitoringInput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MonitoringInput
    class MonitoringInput
      def self.default(visited=[])
        return nil if visited.include?('MonitoringInput')
        visited = visited + ['MonitoringInput']
        {
          endpoint_input: EndpointInput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringInput.new
        data = {}
        data['EndpointInput'] = EndpointInput.stub(stub[:endpoint_input]) unless stub[:endpoint_input].nil?
        data
      end
    end

    # Structure Stubber for MonitoringBaselineConfig
    class MonitoringBaselineConfig
      def self.default(visited=[])
        return nil if visited.include?('MonitoringBaselineConfig')
        visited = visited + ['MonitoringBaselineConfig']
        {
          baselining_job_name: 'baselining_job_name',
          constraints_resource: MonitoringConstraintsResource.default(visited),
          statistics_resource: MonitoringStatisticsResource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringBaselineConfig.new
        data = {}
        data['BaseliningJobName'] = stub[:baselining_job_name] unless stub[:baselining_job_name].nil?
        data['ConstraintsResource'] = MonitoringConstraintsResource.stub(stub[:constraints_resource]) unless stub[:constraints_resource].nil?
        data['StatisticsResource'] = MonitoringStatisticsResource.stub(stub[:statistics_resource]) unless stub[:statistics_resource].nil?
        data
      end
    end

    # Structure Stubber for ScheduleConfig
    class ScheduleConfig
      def self.default(visited=[])
        return nil if visited.include?('ScheduleConfig')
        visited = visited + ['ScheduleConfig']
        {
          schedule_expression: 'schedule_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleConfig.new
        data = {}
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data
      end
    end

    # Operation Stubber for DescribeNotebookInstance
    class DescribeNotebookInstance
      def self.default(visited=[])
        {
          notebook_instance_arn: 'notebook_instance_arn',
          notebook_instance_name: 'notebook_instance_name',
          notebook_instance_status: 'notebook_instance_status',
          failure_reason: 'failure_reason',
          url: 'url',
          instance_type: 'instance_type',
          subnet_id: 'subnet_id',
          security_groups: SecurityGroupIds.default(visited),
          role_arn: 'role_arn',
          kms_key_id: 'kms_key_id',
          network_interface_id: 'network_interface_id',
          last_modified_time: Time.now,
          creation_time: Time.now,
          notebook_instance_lifecycle_config_name: 'notebook_instance_lifecycle_config_name',
          direct_internet_access: 'direct_internet_access',
          volume_size_in_gb: 1,
          accelerator_types: NotebookInstanceAcceleratorTypes.default(visited),
          default_code_repository: 'default_code_repository',
          additional_code_repositories: AdditionalCodeRepositoryNamesOrUrls.default(visited),
          root_access: 'root_access',
          platform_identifier: 'platform_identifier',
          instance_metadata_service_configuration: InstanceMetadataServiceConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NotebookInstanceArn'] = stub[:notebook_instance_arn] unless stub[:notebook_instance_arn].nil?
        data['NotebookInstanceName'] = stub[:notebook_instance_name] unless stub[:notebook_instance_name].nil?
        data['NotebookInstanceStatus'] = stub[:notebook_instance_status] unless stub[:notebook_instance_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['SecurityGroups'] = SecurityGroupIds.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['NetworkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['NotebookInstanceLifecycleConfigName'] = stub[:notebook_instance_lifecycle_config_name] unless stub[:notebook_instance_lifecycle_config_name].nil?
        data['DirectInternetAccess'] = stub[:direct_internet_access] unless stub[:direct_internet_access].nil?
        data['VolumeSizeInGB'] = stub[:volume_size_in_gb] unless stub[:volume_size_in_gb].nil?
        data['AcceleratorTypes'] = NotebookInstanceAcceleratorTypes.stub(stub[:accelerator_types]) unless stub[:accelerator_types].nil?
        data['DefaultCodeRepository'] = stub[:default_code_repository] unless stub[:default_code_repository].nil?
        data['AdditionalCodeRepositories'] = AdditionalCodeRepositoryNamesOrUrls.stub(stub[:additional_code_repositories]) unless stub[:additional_code_repositories].nil?
        data['RootAccess'] = stub[:root_access] unless stub[:root_access].nil?
        data['PlatformIdentifier'] = stub[:platform_identifier] unless stub[:platform_identifier].nil?
        data['InstanceMetadataServiceConfiguration'] = InstanceMetadataServiceConfiguration.stub(stub[:instance_metadata_service_configuration]) unless stub[:instance_metadata_service_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InstanceMetadataServiceConfiguration
    class InstanceMetadataServiceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InstanceMetadataServiceConfiguration')
        visited = visited + ['InstanceMetadataServiceConfiguration']
        {
          minimum_instance_metadata_service_version: 'minimum_instance_metadata_service_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceMetadataServiceConfiguration.new
        data = {}
        data['MinimumInstanceMetadataServiceVersion'] = stub[:minimum_instance_metadata_service_version] unless stub[:minimum_instance_metadata_service_version].nil?
        data
      end
    end

    # List Stubber for AdditionalCodeRepositoryNamesOrUrls
    class AdditionalCodeRepositoryNamesOrUrls
      def self.default(visited=[])
        return nil if visited.include?('AdditionalCodeRepositoryNamesOrUrls')
        visited = visited + ['AdditionalCodeRepositoryNamesOrUrls']
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

    # List Stubber for NotebookInstanceAcceleratorTypes
    class NotebookInstanceAcceleratorTypes
      def self.default(visited=[])
        return nil if visited.include?('NotebookInstanceAcceleratorTypes')
        visited = visited + ['NotebookInstanceAcceleratorTypes']
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

    # Operation Stubber for DescribeNotebookInstanceLifecycleConfig
    class DescribeNotebookInstanceLifecycleConfig
      def self.default(visited=[])
        {
          notebook_instance_lifecycle_config_arn: 'notebook_instance_lifecycle_config_arn',
          notebook_instance_lifecycle_config_name: 'notebook_instance_lifecycle_config_name',
          on_create: NotebookInstanceLifecycleConfigList.default(visited),
          on_start: NotebookInstanceLifecycleConfigList.default(visited),
          last_modified_time: Time.now,
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NotebookInstanceLifecycleConfigArn'] = stub[:notebook_instance_lifecycle_config_arn] unless stub[:notebook_instance_lifecycle_config_arn].nil?
        data['NotebookInstanceLifecycleConfigName'] = stub[:notebook_instance_lifecycle_config_name] unless stub[:notebook_instance_lifecycle_config_name].nil?
        data['OnCreate'] = NotebookInstanceLifecycleConfigList.stub(stub[:on_create]) unless stub[:on_create].nil?
        data['OnStart'] = NotebookInstanceLifecycleConfigList.stub(stub[:on_start]) unless stub[:on_start].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NotebookInstanceLifecycleConfigList
    class NotebookInstanceLifecycleConfigList
      def self.default(visited=[])
        return nil if visited.include?('NotebookInstanceLifecycleConfigList')
        visited = visited + ['NotebookInstanceLifecycleConfigList']
        [
          NotebookInstanceLifecycleHook.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NotebookInstanceLifecycleHook.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotebookInstanceLifecycleHook
    class NotebookInstanceLifecycleHook
      def self.default(visited=[])
        return nil if visited.include?('NotebookInstanceLifecycleHook')
        visited = visited + ['NotebookInstanceLifecycleHook']
        {
          content: 'content',
        }
      end

      def self.stub(stub)
        stub ||= Types::NotebookInstanceLifecycleHook.new
        data = {}
        data['Content'] = stub[:content] unless stub[:content].nil?
        data
      end
    end

    # Operation Stubber for DescribePipeline
    class DescribePipeline
      def self.default(visited=[])
        {
          pipeline_arn: 'pipeline_arn',
          pipeline_name: 'pipeline_name',
          pipeline_display_name: 'pipeline_display_name',
          pipeline_definition: 'pipeline_definition',
          pipeline_description: 'pipeline_description',
          role_arn: 'role_arn',
          pipeline_status: 'pipeline_status',
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_run_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_by: UserContext.default(visited),
          parallelism_configuration: ParallelismConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        data['PipelineName'] = stub[:pipeline_name] unless stub[:pipeline_name].nil?
        data['PipelineDisplayName'] = stub[:pipeline_display_name] unless stub[:pipeline_display_name].nil?
        data['PipelineDefinition'] = stub[:pipeline_definition] unless stub[:pipeline_definition].nil?
        data['PipelineDescription'] = stub[:pipeline_description] unless stub[:pipeline_description].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['PipelineStatus'] = stub[:pipeline_status] unless stub[:pipeline_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastRunTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_run_time]).to_i unless stub[:last_run_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['ParallelismConfiguration'] = ParallelismConfiguration.stub(stub[:parallelism_configuration]) unless stub[:parallelism_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ParallelismConfiguration
    class ParallelismConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ParallelismConfiguration')
        visited = visited + ['ParallelismConfiguration']
        {
          max_parallel_execution_steps: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ParallelismConfiguration.new
        data = {}
        data['MaxParallelExecutionSteps'] = stub[:max_parallel_execution_steps] unless stub[:max_parallel_execution_steps].nil?
        data
      end
    end

    # Operation Stubber for DescribePipelineDefinitionForExecution
    class DescribePipelineDefinitionForExecution
      def self.default(visited=[])
        {
          pipeline_definition: 'pipeline_definition',
          creation_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineDefinition'] = stub[:pipeline_definition] unless stub[:pipeline_definition].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePipelineExecution
    class DescribePipelineExecution
      def self.default(visited=[])
        {
          pipeline_arn: 'pipeline_arn',
          pipeline_execution_arn: 'pipeline_execution_arn',
          pipeline_execution_display_name: 'pipeline_execution_display_name',
          pipeline_execution_status: 'pipeline_execution_status',
          pipeline_execution_description: 'pipeline_execution_description',
          pipeline_experiment_config: PipelineExperimentConfig.default(visited),
          failure_reason: 'failure_reason',
          creation_time: Time.now,
          last_modified_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_by: UserContext.default(visited),
          parallelism_configuration: ParallelismConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        data['PipelineExecutionArn'] = stub[:pipeline_execution_arn] unless stub[:pipeline_execution_arn].nil?
        data['PipelineExecutionDisplayName'] = stub[:pipeline_execution_display_name] unless stub[:pipeline_execution_display_name].nil?
        data['PipelineExecutionStatus'] = stub[:pipeline_execution_status] unless stub[:pipeline_execution_status].nil?
        data['PipelineExecutionDescription'] = stub[:pipeline_execution_description] unless stub[:pipeline_execution_description].nil?
        data['PipelineExperimentConfig'] = PipelineExperimentConfig.stub(stub[:pipeline_experiment_config]) unless stub[:pipeline_experiment_config].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['ParallelismConfiguration'] = ParallelismConfiguration.stub(stub[:parallelism_configuration]) unless stub[:parallelism_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PipelineExperimentConfig
    class PipelineExperimentConfig
      def self.default(visited=[])
        return nil if visited.include?('PipelineExperimentConfig')
        visited = visited + ['PipelineExperimentConfig']
        {
          experiment_name: 'experiment_name',
          trial_name: 'trial_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineExperimentConfig.new
        data = {}
        data['ExperimentName'] = stub[:experiment_name] unless stub[:experiment_name].nil?
        data['TrialName'] = stub[:trial_name] unless stub[:trial_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeProcessingJob
    class DescribeProcessingJob
      def self.default(visited=[])
        {
          processing_inputs: ProcessingInputs.default(visited),
          processing_output_config: ProcessingOutputConfig.default(visited),
          processing_job_name: 'processing_job_name',
          processing_resources: ProcessingResources.default(visited),
          stopping_condition: ProcessingStoppingCondition.default(visited),
          app_specification: AppSpecification.default(visited),
          environment: ProcessingEnvironmentMap.default(visited),
          network_config: NetworkConfig.default(visited),
          role_arn: 'role_arn',
          experiment_config: ExperimentConfig.default(visited),
          processing_job_arn: 'processing_job_arn',
          processing_job_status: 'processing_job_status',
          exit_message: 'exit_message',
          failure_reason: 'failure_reason',
          processing_end_time: Time.now,
          processing_start_time: Time.now,
          last_modified_time: Time.now,
          creation_time: Time.now,
          monitoring_schedule_arn: 'monitoring_schedule_arn',
          auto_ml_job_arn: 'auto_ml_job_arn',
          training_job_arn: 'training_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProcessingInputs'] = ProcessingInputs.stub(stub[:processing_inputs]) unless stub[:processing_inputs].nil?
        data['ProcessingOutputConfig'] = ProcessingOutputConfig.stub(stub[:processing_output_config]) unless stub[:processing_output_config].nil?
        data['ProcessingJobName'] = stub[:processing_job_name] unless stub[:processing_job_name].nil?
        data['ProcessingResources'] = ProcessingResources.stub(stub[:processing_resources]) unless stub[:processing_resources].nil?
        data['StoppingCondition'] = ProcessingStoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        data['AppSpecification'] = AppSpecification.stub(stub[:app_specification]) unless stub[:app_specification].nil?
        data['Environment'] = ProcessingEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data['NetworkConfig'] = NetworkConfig.stub(stub[:network_config]) unless stub[:network_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ExperimentConfig'] = ExperimentConfig.stub(stub[:experiment_config]) unless stub[:experiment_config].nil?
        data['ProcessingJobArn'] = stub[:processing_job_arn] unless stub[:processing_job_arn].nil?
        data['ProcessingJobStatus'] = stub[:processing_job_status] unless stub[:processing_job_status].nil?
        data['ExitMessage'] = stub[:exit_message] unless stub[:exit_message].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ProcessingEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:processing_end_time]).to_i unless stub[:processing_end_time].nil?
        data['ProcessingStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:processing_start_time]).to_i unless stub[:processing_start_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['MonitoringScheduleArn'] = stub[:monitoring_schedule_arn] unless stub[:monitoring_schedule_arn].nil?
        data['AutoMLJobArn'] = stub[:auto_ml_job_arn] unless stub[:auto_ml_job_arn].nil?
        data['TrainingJobArn'] = stub[:training_job_arn] unless stub[:training_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ExperimentConfig
    class ExperimentConfig
      def self.default(visited=[])
        return nil if visited.include?('ExperimentConfig')
        visited = visited + ['ExperimentConfig']
        {
          experiment_name: 'experiment_name',
          trial_name: 'trial_name',
          trial_component_display_name: 'trial_component_display_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentConfig.new
        data = {}
        data['ExperimentName'] = stub[:experiment_name] unless stub[:experiment_name].nil?
        data['TrialName'] = stub[:trial_name] unless stub[:trial_name].nil?
        data['TrialComponentDisplayName'] = stub[:trial_component_display_name] unless stub[:trial_component_display_name].nil?
        data
      end
    end

    # Map Stubber for ProcessingEnvironmentMap
    class ProcessingEnvironmentMap
      def self.default(visited=[])
        return nil if visited.include?('ProcessingEnvironmentMap')
        visited = visited + ['ProcessingEnvironmentMap']
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

    # Structure Stubber for AppSpecification
    class AppSpecification
      def self.default(visited=[])
        return nil if visited.include?('AppSpecification')
        visited = visited + ['AppSpecification']
        {
          image_uri: 'image_uri',
          container_entrypoint: ContainerEntrypoint.default(visited),
          container_arguments: ContainerArguments.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppSpecification.new
        data = {}
        data['ImageUri'] = stub[:image_uri] unless stub[:image_uri].nil?
        data['ContainerEntrypoint'] = ContainerEntrypoint.stub(stub[:container_entrypoint]) unless stub[:container_entrypoint].nil?
        data['ContainerArguments'] = ContainerArguments.stub(stub[:container_arguments]) unless stub[:container_arguments].nil?
        data
      end
    end

    # List Stubber for ContainerArguments
    class ContainerArguments
      def self.default(visited=[])
        return nil if visited.include?('ContainerArguments')
        visited = visited + ['ContainerArguments']
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

    # Structure Stubber for ProcessingStoppingCondition
    class ProcessingStoppingCondition
      def self.default(visited=[])
        return nil if visited.include?('ProcessingStoppingCondition')
        visited = visited + ['ProcessingStoppingCondition']
        {
          max_runtime_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingStoppingCondition.new
        data = {}
        data['MaxRuntimeInSeconds'] = stub[:max_runtime_in_seconds] unless stub[:max_runtime_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for ProcessingResources
    class ProcessingResources
      def self.default(visited=[])
        return nil if visited.include?('ProcessingResources')
        visited = visited + ['ProcessingResources']
        {
          cluster_config: ProcessingClusterConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingResources.new
        data = {}
        data['ClusterConfig'] = ProcessingClusterConfig.stub(stub[:cluster_config]) unless stub[:cluster_config].nil?
        data
      end
    end

    # Structure Stubber for ProcessingClusterConfig
    class ProcessingClusterConfig
      def self.default(visited=[])
        return nil if visited.include?('ProcessingClusterConfig')
        visited = visited + ['ProcessingClusterConfig']
        {
          instance_count: 1,
          instance_type: 'instance_type',
          volume_size_in_gb: 1,
          volume_kms_key_id: 'volume_kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingClusterConfig.new
        data = {}
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['VolumeSizeInGB'] = stub[:volume_size_in_gb] unless stub[:volume_size_in_gb].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for ProcessingOutputConfig
    class ProcessingOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('ProcessingOutputConfig')
        visited = visited + ['ProcessingOutputConfig']
        {
          outputs: ProcessingOutputs.default(visited),
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingOutputConfig.new
        data = {}
        data['Outputs'] = ProcessingOutputs.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # List Stubber for ProcessingOutputs
    class ProcessingOutputs
      def self.default(visited=[])
        return nil if visited.include?('ProcessingOutputs')
        visited = visited + ['ProcessingOutputs']
        [
          ProcessingOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProcessingOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProcessingOutput
    class ProcessingOutput
      def self.default(visited=[])
        return nil if visited.include?('ProcessingOutput')
        visited = visited + ['ProcessingOutput']
        {
          output_name: 'output_name',
          s3_output: ProcessingS3Output.default(visited),
          feature_store_output: ProcessingFeatureStoreOutput.default(visited),
          app_managed: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingOutput.new
        data = {}
        data['OutputName'] = stub[:output_name] unless stub[:output_name].nil?
        data['S3Output'] = ProcessingS3Output.stub(stub[:s3_output]) unless stub[:s3_output].nil?
        data['FeatureStoreOutput'] = ProcessingFeatureStoreOutput.stub(stub[:feature_store_output]) unless stub[:feature_store_output].nil?
        data['AppManaged'] = stub[:app_managed] unless stub[:app_managed].nil?
        data
      end
    end

    # Structure Stubber for ProcessingFeatureStoreOutput
    class ProcessingFeatureStoreOutput
      def self.default(visited=[])
        return nil if visited.include?('ProcessingFeatureStoreOutput')
        visited = visited + ['ProcessingFeatureStoreOutput']
        {
          feature_group_name: 'feature_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingFeatureStoreOutput.new
        data = {}
        data['FeatureGroupName'] = stub[:feature_group_name] unless stub[:feature_group_name].nil?
        data
      end
    end

    # Structure Stubber for ProcessingS3Output
    class ProcessingS3Output
      def self.default(visited=[])
        return nil if visited.include?('ProcessingS3Output')
        visited = visited + ['ProcessingS3Output']
        {
          s3_uri: 's3_uri',
          local_path: 'local_path',
          s3_upload_mode: 's3_upload_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingS3Output.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['S3UploadMode'] = stub[:s3_upload_mode] unless stub[:s3_upload_mode].nil?
        data
      end
    end

    # List Stubber for ProcessingInputs
    class ProcessingInputs
      def self.default(visited=[])
        return nil if visited.include?('ProcessingInputs')
        visited = visited + ['ProcessingInputs']
        [
          ProcessingInput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProcessingInput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProcessingInput
    class ProcessingInput
      def self.default(visited=[])
        return nil if visited.include?('ProcessingInput')
        visited = visited + ['ProcessingInput']
        {
          input_name: 'input_name',
          app_managed: false,
          s3_input: ProcessingS3Input.default(visited),
          dataset_definition: DatasetDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingInput.new
        data = {}
        data['InputName'] = stub[:input_name] unless stub[:input_name].nil?
        data['AppManaged'] = stub[:app_managed] unless stub[:app_managed].nil?
        data['S3Input'] = ProcessingS3Input.stub(stub[:s3_input]) unless stub[:s3_input].nil?
        data['DatasetDefinition'] = DatasetDefinition.stub(stub[:dataset_definition]) unless stub[:dataset_definition].nil?
        data
      end
    end

    # Structure Stubber for DatasetDefinition
    class DatasetDefinition
      def self.default(visited=[])
        return nil if visited.include?('DatasetDefinition')
        visited = visited + ['DatasetDefinition']
        {
          athena_dataset_definition: AthenaDatasetDefinition.default(visited),
          redshift_dataset_definition: RedshiftDatasetDefinition.default(visited),
          local_path: 'local_path',
          data_distribution_type: 'data_distribution_type',
          input_mode: 'input_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetDefinition.new
        data = {}
        data['AthenaDatasetDefinition'] = AthenaDatasetDefinition.stub(stub[:athena_dataset_definition]) unless stub[:athena_dataset_definition].nil?
        data['RedshiftDatasetDefinition'] = RedshiftDatasetDefinition.stub(stub[:redshift_dataset_definition]) unless stub[:redshift_dataset_definition].nil?
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['DataDistributionType'] = stub[:data_distribution_type] unless stub[:data_distribution_type].nil?
        data['InputMode'] = stub[:input_mode] unless stub[:input_mode].nil?
        data
      end
    end

    # Structure Stubber for RedshiftDatasetDefinition
    class RedshiftDatasetDefinition
      def self.default(visited=[])
        return nil if visited.include?('RedshiftDatasetDefinition')
        visited = visited + ['RedshiftDatasetDefinition']
        {
          cluster_id: 'cluster_id',
          database: 'database',
          db_user: 'db_user',
          query_string: 'query_string',
          cluster_role_arn: 'cluster_role_arn',
          output_s3_uri: 'output_s3_uri',
          kms_key_id: 'kms_key_id',
          output_format: 'output_format',
          output_compression: 'output_compression',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftDatasetDefinition.new
        data = {}
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['DbUser'] = stub[:db_user] unless stub[:db_user].nil?
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['ClusterRoleArn'] = stub[:cluster_role_arn] unless stub[:cluster_role_arn].nil?
        data['OutputS3Uri'] = stub[:output_s3_uri] unless stub[:output_s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['OutputFormat'] = stub[:output_format] unless stub[:output_format].nil?
        data['OutputCompression'] = stub[:output_compression] unless stub[:output_compression].nil?
        data
      end
    end

    # Structure Stubber for AthenaDatasetDefinition
    class AthenaDatasetDefinition
      def self.default(visited=[])
        return nil if visited.include?('AthenaDatasetDefinition')
        visited = visited + ['AthenaDatasetDefinition']
        {
          catalog: 'catalog',
          database: 'database',
          query_string: 'query_string',
          work_group: 'work_group',
          output_s3_uri: 'output_s3_uri',
          kms_key_id: 'kms_key_id',
          output_format: 'output_format',
          output_compression: 'output_compression',
        }
      end

      def self.stub(stub)
        stub ||= Types::AthenaDatasetDefinition.new
        data = {}
        data['Catalog'] = stub[:catalog] unless stub[:catalog].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['WorkGroup'] = stub[:work_group] unless stub[:work_group].nil?
        data['OutputS3Uri'] = stub[:output_s3_uri] unless stub[:output_s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['OutputFormat'] = stub[:output_format] unless stub[:output_format].nil?
        data['OutputCompression'] = stub[:output_compression] unless stub[:output_compression].nil?
        data
      end
    end

    # Structure Stubber for ProcessingS3Input
    class ProcessingS3Input
      def self.default(visited=[])
        return nil if visited.include?('ProcessingS3Input')
        visited = visited + ['ProcessingS3Input']
        {
          s3_uri: 's3_uri',
          local_path: 'local_path',
          s3_data_type: 's3_data_type',
          s3_input_mode: 's3_input_mode',
          s3_data_distribution_type: 's3_data_distribution_type',
          s3_compression_type: 's3_compression_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingS3Input.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['S3DataType'] = stub[:s3_data_type] unless stub[:s3_data_type].nil?
        data['S3InputMode'] = stub[:s3_input_mode] unless stub[:s3_input_mode].nil?
        data['S3DataDistributionType'] = stub[:s3_data_distribution_type] unless stub[:s3_data_distribution_type].nil?
        data['S3CompressionType'] = stub[:s3_compression_type] unless stub[:s3_compression_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeProject
    class DescribeProject
      def self.default(visited=[])
        {
          project_arn: 'project_arn',
          project_name: 'project_name',
          project_id: 'project_id',
          project_description: 'project_description',
          service_catalog_provisioning_details: ServiceCatalogProvisioningDetails.default(visited),
          service_catalog_provisioned_product_details: ServiceCatalogProvisionedProductDetails.default(visited),
          project_status: 'project_status',
          created_by: UserContext.default(visited),
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['ProjectId'] = stub[:project_id] unless stub[:project_id].nil?
        data['ProjectDescription'] = stub[:project_description] unless stub[:project_description].nil?
        data['ServiceCatalogProvisioningDetails'] = ServiceCatalogProvisioningDetails.stub(stub[:service_catalog_provisioning_details]) unless stub[:service_catalog_provisioning_details].nil?
        data['ServiceCatalogProvisionedProductDetails'] = ServiceCatalogProvisionedProductDetails.stub(stub[:service_catalog_provisioned_product_details]) unless stub[:service_catalog_provisioned_product_details].nil?
        data['ProjectStatus'] = stub[:project_status] unless stub[:project_status].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServiceCatalogProvisionedProductDetails
    class ServiceCatalogProvisionedProductDetails
      def self.default(visited=[])
        return nil if visited.include?('ServiceCatalogProvisionedProductDetails')
        visited = visited + ['ServiceCatalogProvisionedProductDetails']
        {
          provisioned_product_id: 'provisioned_product_id',
          provisioned_product_status_message: 'provisioned_product_status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceCatalogProvisionedProductDetails.new
        data = {}
        data['ProvisionedProductId'] = stub[:provisioned_product_id] unless stub[:provisioned_product_id].nil?
        data['ProvisionedProductStatusMessage'] = stub[:provisioned_product_status_message] unless stub[:provisioned_product_status_message].nil?
        data
      end
    end

    # Structure Stubber for ServiceCatalogProvisioningDetails
    class ServiceCatalogProvisioningDetails
      def self.default(visited=[])
        return nil if visited.include?('ServiceCatalogProvisioningDetails')
        visited = visited + ['ServiceCatalogProvisioningDetails']
        {
          product_id: 'product_id',
          provisioning_artifact_id: 'provisioning_artifact_id',
          path_id: 'path_id',
          provisioning_parameters: ProvisioningParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceCatalogProvisioningDetails.new
        data = {}
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data['ProvisioningArtifactId'] = stub[:provisioning_artifact_id] unless stub[:provisioning_artifact_id].nil?
        data['PathId'] = stub[:path_id] unless stub[:path_id].nil?
        data['ProvisioningParameters'] = ProvisioningParameters.stub(stub[:provisioning_parameters]) unless stub[:provisioning_parameters].nil?
        data
      end
    end

    # List Stubber for ProvisioningParameters
    class ProvisioningParameters
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningParameters')
        visited = visited + ['ProvisioningParameters']
        [
          ProvisioningParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProvisioningParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisioningParameter
    class ProvisioningParameter
      def self.default(visited=[])
        return nil if visited.include?('ProvisioningParameter')
        visited = visited + ['ProvisioningParameter']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisioningParameter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeStudioLifecycleConfig
    class DescribeStudioLifecycleConfig
      def self.default(visited=[])
        {
          studio_lifecycle_config_arn: 'studio_lifecycle_config_arn',
          studio_lifecycle_config_name: 'studio_lifecycle_config_name',
          creation_time: Time.now,
          last_modified_time: Time.now,
          studio_lifecycle_config_content: 'studio_lifecycle_config_content',
          studio_lifecycle_config_app_type: 'studio_lifecycle_config_app_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StudioLifecycleConfigArn'] = stub[:studio_lifecycle_config_arn] unless stub[:studio_lifecycle_config_arn].nil?
        data['StudioLifecycleConfigName'] = stub[:studio_lifecycle_config_name] unless stub[:studio_lifecycle_config_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['StudioLifecycleConfigContent'] = stub[:studio_lifecycle_config_content] unless stub[:studio_lifecycle_config_content].nil?
        data['StudioLifecycleConfigAppType'] = stub[:studio_lifecycle_config_app_type] unless stub[:studio_lifecycle_config_app_type].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeSubscribedWorkteam
    class DescribeSubscribedWorkteam
      def self.default(visited=[])
        {
          subscribed_workteam: SubscribedWorkteam.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubscribedWorkteam'] = SubscribedWorkteam.stub(stub[:subscribed_workteam]) unless stub[:subscribed_workteam].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SubscribedWorkteam
    class SubscribedWorkteam
      def self.default(visited=[])
        return nil if visited.include?('SubscribedWorkteam')
        visited = visited + ['SubscribedWorkteam']
        {
          workteam_arn: 'workteam_arn',
          marketplace_title: 'marketplace_title',
          seller_name: 'seller_name',
          marketplace_description: 'marketplace_description',
          listing_id: 'listing_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SubscribedWorkteam.new
        data = {}
        data['WorkteamArn'] = stub[:workteam_arn] unless stub[:workteam_arn].nil?
        data['MarketplaceTitle'] = stub[:marketplace_title] unless stub[:marketplace_title].nil?
        data['SellerName'] = stub[:seller_name] unless stub[:seller_name].nil?
        data['MarketplaceDescription'] = stub[:marketplace_description] unless stub[:marketplace_description].nil?
        data['ListingId'] = stub[:listing_id] unless stub[:listing_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeTrainingJob
    class DescribeTrainingJob
      def self.default(visited=[])
        {
          training_job_name: 'training_job_name',
          training_job_arn: 'training_job_arn',
          tuning_job_arn: 'tuning_job_arn',
          labeling_job_arn: 'labeling_job_arn',
          auto_ml_job_arn: 'auto_ml_job_arn',
          model_artifacts: ModelArtifacts.default(visited),
          training_job_status: 'training_job_status',
          secondary_status: 'secondary_status',
          failure_reason: 'failure_reason',
          hyper_parameters: HyperParameters.default(visited),
          algorithm_specification: AlgorithmSpecification.default(visited),
          role_arn: 'role_arn',
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          resource_config: ResourceConfig.default(visited),
          vpc_config: VpcConfig.default(visited),
          stopping_condition: StoppingCondition.default(visited),
          creation_time: Time.now,
          training_start_time: Time.now,
          training_end_time: Time.now,
          last_modified_time: Time.now,
          secondary_status_transitions: SecondaryStatusTransitions.default(visited),
          final_metric_data_list: FinalMetricDataList.default(visited),
          enable_network_isolation: false,
          enable_inter_container_traffic_encryption: false,
          enable_managed_spot_training: false,
          checkpoint_config: CheckpointConfig.default(visited),
          training_time_in_seconds: 1,
          billable_time_in_seconds: 1,
          debug_hook_config: DebugHookConfig.default(visited),
          experiment_config: ExperimentConfig.default(visited),
          debug_rule_configurations: DebugRuleConfigurations.default(visited),
          tensor_board_output_config: TensorBoardOutputConfig.default(visited),
          debug_rule_evaluation_statuses: DebugRuleEvaluationStatuses.default(visited),
          profiler_config: ProfilerConfig.default(visited),
          profiler_rule_configurations: ProfilerRuleConfigurations.default(visited),
          profiler_rule_evaluation_statuses: ProfilerRuleEvaluationStatuses.default(visited),
          profiling_status: 'profiling_status',
          retry_strategy: RetryStrategy.default(visited),
          environment: TrainingEnvironmentMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrainingJobName'] = stub[:training_job_name] unless stub[:training_job_name].nil?
        data['TrainingJobArn'] = stub[:training_job_arn] unless stub[:training_job_arn].nil?
        data['TuningJobArn'] = stub[:tuning_job_arn] unless stub[:tuning_job_arn].nil?
        data['LabelingJobArn'] = stub[:labeling_job_arn] unless stub[:labeling_job_arn].nil?
        data['AutoMLJobArn'] = stub[:auto_ml_job_arn] unless stub[:auto_ml_job_arn].nil?
        data['ModelArtifacts'] = ModelArtifacts.stub(stub[:model_artifacts]) unless stub[:model_artifacts].nil?
        data['TrainingJobStatus'] = stub[:training_job_status] unless stub[:training_job_status].nil?
        data['SecondaryStatus'] = stub[:secondary_status] unless stub[:secondary_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['HyperParameters'] = HyperParameters.stub(stub[:hyper_parameters]) unless stub[:hyper_parameters].nil?
        data['AlgorithmSpecification'] = AlgorithmSpecification.stub(stub[:algorithm_specification]) unless stub[:algorithm_specification].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['ResourceConfig'] = ResourceConfig.stub(stub[:resource_config]) unless stub[:resource_config].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['StoppingCondition'] = StoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TrainingStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_start_time]).to_i unless stub[:training_start_time].nil?
        data['TrainingEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_end_time]).to_i unless stub[:training_end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SecondaryStatusTransitions'] = SecondaryStatusTransitions.stub(stub[:secondary_status_transitions]) unless stub[:secondary_status_transitions].nil?
        data['FinalMetricDataList'] = FinalMetricDataList.stub(stub[:final_metric_data_list]) unless stub[:final_metric_data_list].nil?
        data['EnableNetworkIsolation'] = stub[:enable_network_isolation] unless stub[:enable_network_isolation].nil?
        data['EnableInterContainerTrafficEncryption'] = stub[:enable_inter_container_traffic_encryption] unless stub[:enable_inter_container_traffic_encryption].nil?
        data['EnableManagedSpotTraining'] = stub[:enable_managed_spot_training] unless stub[:enable_managed_spot_training].nil?
        data['CheckpointConfig'] = CheckpointConfig.stub(stub[:checkpoint_config]) unless stub[:checkpoint_config].nil?
        data['TrainingTimeInSeconds'] = stub[:training_time_in_seconds] unless stub[:training_time_in_seconds].nil?
        data['BillableTimeInSeconds'] = stub[:billable_time_in_seconds] unless stub[:billable_time_in_seconds].nil?
        data['DebugHookConfig'] = DebugHookConfig.stub(stub[:debug_hook_config]) unless stub[:debug_hook_config].nil?
        data['ExperimentConfig'] = ExperimentConfig.stub(stub[:experiment_config]) unless stub[:experiment_config].nil?
        data['DebugRuleConfigurations'] = DebugRuleConfigurations.stub(stub[:debug_rule_configurations]) unless stub[:debug_rule_configurations].nil?
        data['TensorBoardOutputConfig'] = TensorBoardOutputConfig.stub(stub[:tensor_board_output_config]) unless stub[:tensor_board_output_config].nil?
        data['DebugRuleEvaluationStatuses'] = DebugRuleEvaluationStatuses.stub(stub[:debug_rule_evaluation_statuses]) unless stub[:debug_rule_evaluation_statuses].nil?
        data['ProfilerConfig'] = ProfilerConfig.stub(stub[:profiler_config]) unless stub[:profiler_config].nil?
        data['ProfilerRuleConfigurations'] = ProfilerRuleConfigurations.stub(stub[:profiler_rule_configurations]) unless stub[:profiler_rule_configurations].nil?
        data['ProfilerRuleEvaluationStatuses'] = ProfilerRuleEvaluationStatuses.stub(stub[:profiler_rule_evaluation_statuses]) unless stub[:profiler_rule_evaluation_statuses].nil?
        data['ProfilingStatus'] = stub[:profiling_status] unless stub[:profiling_status].nil?
        data['RetryStrategy'] = RetryStrategy.stub(stub[:retry_strategy]) unless stub[:retry_strategy].nil?
        data['Environment'] = TrainingEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for TrainingEnvironmentMap
    class TrainingEnvironmentMap
      def self.default(visited=[])
        return nil if visited.include?('TrainingEnvironmentMap')
        visited = visited + ['TrainingEnvironmentMap']
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

    # List Stubber for ProfilerRuleEvaluationStatuses
    class ProfilerRuleEvaluationStatuses
      def self.default(visited=[])
        return nil if visited.include?('ProfilerRuleEvaluationStatuses')
        visited = visited + ['ProfilerRuleEvaluationStatuses']
        [
          ProfilerRuleEvaluationStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProfilerRuleEvaluationStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProfilerRuleEvaluationStatus
    class ProfilerRuleEvaluationStatus
      def self.default(visited=[])
        return nil if visited.include?('ProfilerRuleEvaluationStatus')
        visited = visited + ['ProfilerRuleEvaluationStatus']
        {
          rule_configuration_name: 'rule_configuration_name',
          rule_evaluation_job_arn: 'rule_evaluation_job_arn',
          rule_evaluation_status: 'rule_evaluation_status',
          status_details: 'status_details',
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProfilerRuleEvaluationStatus.new
        data = {}
        data['RuleConfigurationName'] = stub[:rule_configuration_name] unless stub[:rule_configuration_name].nil?
        data['RuleEvaluationJobArn'] = stub[:rule_evaluation_job_arn] unless stub[:rule_evaluation_job_arn].nil?
        data['RuleEvaluationStatus'] = stub[:rule_evaluation_status] unless stub[:rule_evaluation_status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # List Stubber for ProfilerRuleConfigurations
    class ProfilerRuleConfigurations
      def self.default(visited=[])
        return nil if visited.include?('ProfilerRuleConfigurations')
        visited = visited + ['ProfilerRuleConfigurations']
        [
          ProfilerRuleConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProfilerRuleConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProfilerRuleConfiguration
    class ProfilerRuleConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ProfilerRuleConfiguration')
        visited = visited + ['ProfilerRuleConfiguration']
        {
          rule_configuration_name: 'rule_configuration_name',
          local_path: 'local_path',
          s3_output_path: 's3_output_path',
          rule_evaluator_image: 'rule_evaluator_image',
          instance_type: 'instance_type',
          volume_size_in_gb: 1,
          rule_parameters: RuleParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProfilerRuleConfiguration.new
        data = {}
        data['RuleConfigurationName'] = stub[:rule_configuration_name] unless stub[:rule_configuration_name].nil?
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data['RuleEvaluatorImage'] = stub[:rule_evaluator_image] unless stub[:rule_evaluator_image].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['VolumeSizeInGB'] = stub[:volume_size_in_gb] unless stub[:volume_size_in_gb].nil?
        data['RuleParameters'] = RuleParameters.stub(stub[:rule_parameters]) unless stub[:rule_parameters].nil?
        data
      end
    end

    # Map Stubber for RuleParameters
    class RuleParameters
      def self.default(visited=[])
        return nil if visited.include?('RuleParameters')
        visited = visited + ['RuleParameters']
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

    # Structure Stubber for ProfilerConfig
    class ProfilerConfig
      def self.default(visited=[])
        return nil if visited.include?('ProfilerConfig')
        visited = visited + ['ProfilerConfig']
        {
          s3_output_path: 's3_output_path',
          profiling_interval_in_milliseconds: 1,
          profiling_parameters: ProfilingParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProfilerConfig.new
        data = {}
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data['ProfilingIntervalInMilliseconds'] = stub[:profiling_interval_in_milliseconds] unless stub[:profiling_interval_in_milliseconds].nil?
        data['ProfilingParameters'] = ProfilingParameters.stub(stub[:profiling_parameters]) unless stub[:profiling_parameters].nil?
        data
      end
    end

    # Map Stubber for ProfilingParameters
    class ProfilingParameters
      def self.default(visited=[])
        return nil if visited.include?('ProfilingParameters')
        visited = visited + ['ProfilingParameters']
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

    # List Stubber for DebugRuleEvaluationStatuses
    class DebugRuleEvaluationStatuses
      def self.default(visited=[])
        return nil if visited.include?('DebugRuleEvaluationStatuses')
        visited = visited + ['DebugRuleEvaluationStatuses']
        [
          DebugRuleEvaluationStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DebugRuleEvaluationStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DebugRuleEvaluationStatus
    class DebugRuleEvaluationStatus
      def self.default(visited=[])
        return nil if visited.include?('DebugRuleEvaluationStatus')
        visited = visited + ['DebugRuleEvaluationStatus']
        {
          rule_configuration_name: 'rule_configuration_name',
          rule_evaluation_job_arn: 'rule_evaluation_job_arn',
          rule_evaluation_status: 'rule_evaluation_status',
          status_details: 'status_details',
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DebugRuleEvaluationStatus.new
        data = {}
        data['RuleConfigurationName'] = stub[:rule_configuration_name] unless stub[:rule_configuration_name].nil?
        data['RuleEvaluationJobArn'] = stub[:rule_evaluation_job_arn] unless stub[:rule_evaluation_job_arn].nil?
        data['RuleEvaluationStatus'] = stub[:rule_evaluation_status] unless stub[:rule_evaluation_status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Structure Stubber for TensorBoardOutputConfig
    class TensorBoardOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('TensorBoardOutputConfig')
        visited = visited + ['TensorBoardOutputConfig']
        {
          local_path: 'local_path',
          s3_output_path: 's3_output_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::TensorBoardOutputConfig.new
        data = {}
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data
      end
    end

    # List Stubber for DebugRuleConfigurations
    class DebugRuleConfigurations
      def self.default(visited=[])
        return nil if visited.include?('DebugRuleConfigurations')
        visited = visited + ['DebugRuleConfigurations']
        [
          DebugRuleConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DebugRuleConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DebugRuleConfiguration
    class DebugRuleConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DebugRuleConfiguration')
        visited = visited + ['DebugRuleConfiguration']
        {
          rule_configuration_name: 'rule_configuration_name',
          local_path: 'local_path',
          s3_output_path: 's3_output_path',
          rule_evaluator_image: 'rule_evaluator_image',
          instance_type: 'instance_type',
          volume_size_in_gb: 1,
          rule_parameters: RuleParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DebugRuleConfiguration.new
        data = {}
        data['RuleConfigurationName'] = stub[:rule_configuration_name] unless stub[:rule_configuration_name].nil?
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data['RuleEvaluatorImage'] = stub[:rule_evaluator_image] unless stub[:rule_evaluator_image].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['VolumeSizeInGB'] = stub[:volume_size_in_gb] unless stub[:volume_size_in_gb].nil?
        data['RuleParameters'] = RuleParameters.stub(stub[:rule_parameters]) unless stub[:rule_parameters].nil?
        data
      end
    end

    # Structure Stubber for DebugHookConfig
    class DebugHookConfig
      def self.default(visited=[])
        return nil if visited.include?('DebugHookConfig')
        visited = visited + ['DebugHookConfig']
        {
          local_path: 'local_path',
          s3_output_path: 's3_output_path',
          hook_parameters: HookParameters.default(visited),
          collection_configurations: CollectionConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DebugHookConfig.new
        data = {}
        data['LocalPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['S3OutputPath'] = stub[:s3_output_path] unless stub[:s3_output_path].nil?
        data['HookParameters'] = HookParameters.stub(stub[:hook_parameters]) unless stub[:hook_parameters].nil?
        data['CollectionConfigurations'] = CollectionConfigurations.stub(stub[:collection_configurations]) unless stub[:collection_configurations].nil?
        data
      end
    end

    # List Stubber for CollectionConfigurations
    class CollectionConfigurations
      def self.default(visited=[])
        return nil if visited.include?('CollectionConfigurations')
        visited = visited + ['CollectionConfigurations']
        [
          CollectionConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CollectionConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CollectionConfiguration
    class CollectionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CollectionConfiguration')
        visited = visited + ['CollectionConfiguration']
        {
          collection_name: 'collection_name',
          collection_parameters: CollectionParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CollectionConfiguration.new
        data = {}
        data['CollectionName'] = stub[:collection_name] unless stub[:collection_name].nil?
        data['CollectionParameters'] = CollectionParameters.stub(stub[:collection_parameters]) unless stub[:collection_parameters].nil?
        data
      end
    end

    # Map Stubber for CollectionParameters
    class CollectionParameters
      def self.default(visited=[])
        return nil if visited.include?('CollectionParameters')
        visited = visited + ['CollectionParameters']
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

    # Map Stubber for HookParameters
    class HookParameters
      def self.default(visited=[])
        return nil if visited.include?('HookParameters')
        visited = visited + ['HookParameters']
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

    # List Stubber for FinalMetricDataList
    class FinalMetricDataList
      def self.default(visited=[])
        return nil if visited.include?('FinalMetricDataList')
        visited = visited + ['FinalMetricDataList']
        [
          MetricData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricData
    class MetricData
      def self.default(visited=[])
        return nil if visited.include?('MetricData')
        visited = visited + ['MetricData']
        {
          metric_name: 'metric_name',
          value: 1.0,
          timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricData.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data
      end
    end

    # List Stubber for SecondaryStatusTransitions
    class SecondaryStatusTransitions
      def self.default(visited=[])
        return nil if visited.include?('SecondaryStatusTransitions')
        visited = visited + ['SecondaryStatusTransitions']
        [
          SecondaryStatusTransition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecondaryStatusTransition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecondaryStatusTransition
    class SecondaryStatusTransition
      def self.default(visited=[])
        return nil if visited.include?('SecondaryStatusTransition')
        visited = visited + ['SecondaryStatusTransition']
        {
          status: 'status',
          start_time: Time.now,
          end_time: Time.now,
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecondaryStatusTransition.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
      end
    end

    # Structure Stubber for AlgorithmSpecification
    class AlgorithmSpecification
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmSpecification')
        visited = visited + ['AlgorithmSpecification']
        {
          training_image: 'training_image',
          algorithm_name: 'algorithm_name',
          training_input_mode: 'training_input_mode',
          metric_definitions: MetricDefinitionList.default(visited),
          enable_sage_maker_metrics_time_series: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AlgorithmSpecification.new
        data = {}
        data['TrainingImage'] = stub[:training_image] unless stub[:training_image].nil?
        data['AlgorithmName'] = stub[:algorithm_name] unless stub[:algorithm_name].nil?
        data['TrainingInputMode'] = stub[:training_input_mode] unless stub[:training_input_mode].nil?
        data['MetricDefinitions'] = MetricDefinitionList.stub(stub[:metric_definitions]) unless stub[:metric_definitions].nil?
        data['EnableSageMakerMetricsTimeSeries'] = stub[:enable_sage_maker_metrics_time_series] unless stub[:enable_sage_maker_metrics_time_series].nil?
        data
      end
    end

    # Operation Stubber for DescribeTransformJob
    class DescribeTransformJob
      def self.default(visited=[])
        {
          transform_job_name: 'transform_job_name',
          transform_job_arn: 'transform_job_arn',
          transform_job_status: 'transform_job_status',
          failure_reason: 'failure_reason',
          model_name: 'model_name',
          max_concurrent_transforms: 1,
          model_client_config: ModelClientConfig.default(visited),
          max_payload_in_mb: 1,
          batch_strategy: 'batch_strategy',
          environment: TransformEnvironmentMap.default(visited),
          transform_input: TransformInput.default(visited),
          transform_output: TransformOutput.default(visited),
          transform_resources: TransformResources.default(visited),
          creation_time: Time.now,
          transform_start_time: Time.now,
          transform_end_time: Time.now,
          labeling_job_arn: 'labeling_job_arn',
          auto_ml_job_arn: 'auto_ml_job_arn',
          data_processing: DataProcessing.default(visited),
          experiment_config: ExperimentConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformJobName'] = stub[:transform_job_name] unless stub[:transform_job_name].nil?
        data['TransformJobArn'] = stub[:transform_job_arn] unless stub[:transform_job_arn].nil?
        data['TransformJobStatus'] = stub[:transform_job_status] unless stub[:transform_job_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['MaxConcurrentTransforms'] = stub[:max_concurrent_transforms] unless stub[:max_concurrent_transforms].nil?
        data['ModelClientConfig'] = ModelClientConfig.stub(stub[:model_client_config]) unless stub[:model_client_config].nil?
        data['MaxPayloadInMB'] = stub[:max_payload_in_mb] unless stub[:max_payload_in_mb].nil?
        data['BatchStrategy'] = stub[:batch_strategy] unless stub[:batch_strategy].nil?
        data['Environment'] = TransformEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data['TransformInput'] = TransformInput.stub(stub[:transform_input]) unless stub[:transform_input].nil?
        data['TransformOutput'] = TransformOutput.stub(stub[:transform_output]) unless stub[:transform_output].nil?
        data['TransformResources'] = TransformResources.stub(stub[:transform_resources]) unless stub[:transform_resources].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TransformStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:transform_start_time]).to_i unless stub[:transform_start_time].nil?
        data['TransformEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:transform_end_time]).to_i unless stub[:transform_end_time].nil?
        data['LabelingJobArn'] = stub[:labeling_job_arn] unless stub[:labeling_job_arn].nil?
        data['AutoMLJobArn'] = stub[:auto_ml_job_arn] unless stub[:auto_ml_job_arn].nil?
        data['DataProcessing'] = DataProcessing.stub(stub[:data_processing]) unless stub[:data_processing].nil?
        data['ExperimentConfig'] = ExperimentConfig.stub(stub[:experiment_config]) unless stub[:experiment_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DataProcessing
    class DataProcessing
      def self.default(visited=[])
        return nil if visited.include?('DataProcessing')
        visited = visited + ['DataProcessing']
        {
          input_filter: 'input_filter',
          output_filter: 'output_filter',
          join_source: 'join_source',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataProcessing.new
        data = {}
        data['InputFilter'] = stub[:input_filter] unless stub[:input_filter].nil?
        data['OutputFilter'] = stub[:output_filter] unless stub[:output_filter].nil?
        data['JoinSource'] = stub[:join_source] unless stub[:join_source].nil?
        data
      end
    end

    # Structure Stubber for ModelClientConfig
    class ModelClientConfig
      def self.default(visited=[])
        return nil if visited.include?('ModelClientConfig')
        visited = visited + ['ModelClientConfig']
        {
          invocations_timeout_in_seconds: 1,
          invocations_max_retries: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelClientConfig.new
        data = {}
        data['InvocationsTimeoutInSeconds'] = stub[:invocations_timeout_in_seconds] unless stub[:invocations_timeout_in_seconds].nil?
        data['InvocationsMaxRetries'] = stub[:invocations_max_retries] unless stub[:invocations_max_retries].nil?
        data
      end
    end

    # Operation Stubber for DescribeTrial
    class DescribeTrial
      def self.default(visited=[])
        {
          trial_name: 'trial_name',
          trial_arn: 'trial_arn',
          display_name: 'display_name',
          experiment_name: 'experiment_name',
          source: TrialSource.default(visited),
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          metadata_properties: MetadataProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialName'] = stub[:trial_name] unless stub[:trial_name].nil?
        data['TrialArn'] = stub[:trial_arn] unless stub[:trial_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['ExperimentName'] = stub[:experiment_name] unless stub[:experiment_name].nil?
        data['Source'] = TrialSource.stub(stub[:source]) unless stub[:source].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['MetadataProperties'] = MetadataProperties.stub(stub[:metadata_properties]) unless stub[:metadata_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TrialSource
    class TrialSource
      def self.default(visited=[])
        return nil if visited.include?('TrialSource')
        visited = visited + ['TrialSource']
        {
          source_arn: 'source_arn',
          source_type: 'source_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialSource.new
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeTrialComponent
    class DescribeTrialComponent
      def self.default(visited=[])
        {
          trial_component_name: 'trial_component_name',
          trial_component_arn: 'trial_component_arn',
          display_name: 'display_name',
          source: TrialComponentSource.default(visited),
          status: TrialComponentStatus.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          parameters: TrialComponentParameters.default(visited),
          input_artifacts: TrialComponentArtifacts.default(visited),
          output_artifacts: TrialComponentArtifacts.default(visited),
          metadata_properties: MetadataProperties.default(visited),
          metrics: TrialComponentMetricSummaries.default(visited),
          lineage_group_arn: 'lineage_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialComponentName'] = stub[:trial_component_name] unless stub[:trial_component_name].nil?
        data['TrialComponentArn'] = stub[:trial_component_arn] unless stub[:trial_component_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Source'] = TrialComponentSource.stub(stub[:source]) unless stub[:source].nil?
        data['Status'] = TrialComponentStatus.stub(stub[:status]) unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['Parameters'] = TrialComponentParameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['InputArtifacts'] = TrialComponentArtifacts.stub(stub[:input_artifacts]) unless stub[:input_artifacts].nil?
        data['OutputArtifacts'] = TrialComponentArtifacts.stub(stub[:output_artifacts]) unless stub[:output_artifacts].nil?
        data['MetadataProperties'] = MetadataProperties.stub(stub[:metadata_properties]) unless stub[:metadata_properties].nil?
        data['Metrics'] = TrialComponentMetricSummaries.stub(stub[:metrics]) unless stub[:metrics].nil?
        data['LineageGroupArn'] = stub[:lineage_group_arn] unless stub[:lineage_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TrialComponentMetricSummaries
    class TrialComponentMetricSummaries
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentMetricSummaries')
        visited = visited + ['TrialComponentMetricSummaries']
        [
          TrialComponentMetricSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TrialComponentMetricSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrialComponentMetricSummary
    class TrialComponentMetricSummary
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentMetricSummary')
        visited = visited + ['TrialComponentMetricSummary']
        {
          metric_name: 'metric_name',
          source_arn: 'source_arn',
          time_stamp: Time.now,
          max: 1.0,
          min: 1.0,
          last: 1.0,
          count: 1,
          avg: 1.0,
          std_dev: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialComponentMetricSummary.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['TimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time_stamp]).to_i unless stub[:time_stamp].nil?
        data['Max'] = Hearth::NumberHelper.serialize(stub[:max])
        data['Min'] = Hearth::NumberHelper.serialize(stub[:min])
        data['Last'] = Hearth::NumberHelper.serialize(stub[:last])
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['Avg'] = Hearth::NumberHelper.serialize(stub[:avg])
        data['StdDev'] = Hearth::NumberHelper.serialize(stub[:std_dev])
        data
      end
    end

    # Map Stubber for TrialComponentArtifacts
    class TrialComponentArtifacts
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentArtifacts')
        visited = visited + ['TrialComponentArtifacts']
        {
          test_key: TrialComponentArtifact.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = TrialComponentArtifact.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for TrialComponentArtifact
    class TrialComponentArtifact
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentArtifact')
        visited = visited + ['TrialComponentArtifact']
        {
          media_type: 'media_type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialComponentArtifact.new
        data = {}
        data['MediaType'] = stub[:media_type] unless stub[:media_type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Map Stubber for TrialComponentParameters
    class TrialComponentParameters
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentParameters')
        visited = visited + ['TrialComponentParameters']
        {
          test_key: TrialComponentParameterValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = TrialComponentParameterValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Union Stubber for TrialComponentParameterValue
    class TrialComponentParameterValue
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentParameterValue')
        visited = visited + ['TrialComponentParameterValue']
        {
          string_value: 'string_value',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::TrialComponentParameterValue::StringValue
          data['StringValue'] = stub.__getobj__
        when Types::TrialComponentParameterValue::NumberValue
          data['NumberValue'] = Hearth::NumberHelper.serialize(stub.__getobj__)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TrialComponentParameterValue"
        end

        data
      end
    end

    # Structure Stubber for TrialComponentStatus
    class TrialComponentStatus
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentStatus')
        visited = visited + ['TrialComponentStatus']
        {
          primary_status: 'primary_status',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialComponentStatus.new
        data = {}
        data['PrimaryStatus'] = stub[:primary_status] unless stub[:primary_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for TrialComponentSource
    class TrialComponentSource
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentSource')
        visited = visited + ['TrialComponentSource']
        {
          source_arn: 'source_arn',
          source_type: 'source_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialComponentSource.new
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeUserProfile
    class DescribeUserProfile
      def self.default(visited=[])
        {
          domain_id: 'domain_id',
          user_profile_arn: 'user_profile_arn',
          user_profile_name: 'user_profile_name',
          home_efs_file_system_uid: 'home_efs_file_system_uid',
          status: 'status',
          last_modified_time: Time.now,
          creation_time: Time.now,
          failure_reason: 'failure_reason',
          single_sign_on_user_identifier: 'single_sign_on_user_identifier',
          single_sign_on_user_value: 'single_sign_on_user_value',
          user_settings: UserSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['UserProfileArn'] = stub[:user_profile_arn] unless stub[:user_profile_arn].nil?
        data['UserProfileName'] = stub[:user_profile_name] unless stub[:user_profile_name].nil?
        data['HomeEfsFileSystemUid'] = stub[:home_efs_file_system_uid] unless stub[:home_efs_file_system_uid].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['SingleSignOnUserIdentifier'] = stub[:single_sign_on_user_identifier] unless stub[:single_sign_on_user_identifier].nil?
        data['SingleSignOnUserValue'] = stub[:single_sign_on_user_value] unless stub[:single_sign_on_user_value].nil?
        data['UserSettings'] = UserSettings.stub(stub[:user_settings]) unless stub[:user_settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeWorkforce
    class DescribeWorkforce
      def self.default(visited=[])
        {
          workforce: Workforce.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workforce'] = Workforce.stub(stub[:workforce]) unless stub[:workforce].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Workforce
    class Workforce
      def self.default(visited=[])
        return nil if visited.include?('Workforce')
        visited = visited + ['Workforce']
        {
          workforce_name: 'workforce_name',
          workforce_arn: 'workforce_arn',
          last_updated_date: Time.now,
          source_ip_config: SourceIpConfig.default(visited),
          sub_domain: 'sub_domain',
          cognito_config: CognitoConfig.default(visited),
          oidc_config: OidcConfigForResponse.default(visited),
          create_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Workforce.new
        data = {}
        data['WorkforceName'] = stub[:workforce_name] unless stub[:workforce_name].nil?
        data['WorkforceArn'] = stub[:workforce_arn] unless stub[:workforce_arn].nil?
        data['LastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['SourceIpConfig'] = SourceIpConfig.stub(stub[:source_ip_config]) unless stub[:source_ip_config].nil?
        data['SubDomain'] = stub[:sub_domain] unless stub[:sub_domain].nil?
        data['CognitoConfig'] = CognitoConfig.stub(stub[:cognito_config]) unless stub[:cognito_config].nil?
        data['OidcConfig'] = OidcConfigForResponse.stub(stub[:oidc_config]) unless stub[:oidc_config].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data
      end
    end

    # Structure Stubber for OidcConfigForResponse
    class OidcConfigForResponse
      def self.default(visited=[])
        return nil if visited.include?('OidcConfigForResponse')
        visited = visited + ['OidcConfigForResponse']
        {
          client_id: 'client_id',
          issuer: 'issuer',
          authorization_endpoint: 'authorization_endpoint',
          token_endpoint: 'token_endpoint',
          user_info_endpoint: 'user_info_endpoint',
          logout_endpoint: 'logout_endpoint',
          jwks_uri: 'jwks_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::OidcConfigForResponse.new
        data = {}
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['Issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data['AuthorizationEndpoint'] = stub[:authorization_endpoint] unless stub[:authorization_endpoint].nil?
        data['TokenEndpoint'] = stub[:token_endpoint] unless stub[:token_endpoint].nil?
        data['UserInfoEndpoint'] = stub[:user_info_endpoint] unless stub[:user_info_endpoint].nil?
        data['LogoutEndpoint'] = stub[:logout_endpoint] unless stub[:logout_endpoint].nil?
        data['JwksUri'] = stub[:jwks_uri] unless stub[:jwks_uri].nil?
        data
      end
    end

    # Structure Stubber for CognitoConfig
    class CognitoConfig
      def self.default(visited=[])
        return nil if visited.include?('CognitoConfig')
        visited = visited + ['CognitoConfig']
        {
          user_pool: 'user_pool',
          client_id: 'client_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::CognitoConfig.new
        data = {}
        data['UserPool'] = stub[:user_pool] unless stub[:user_pool].nil?
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data
      end
    end

    # Structure Stubber for SourceIpConfig
    class SourceIpConfig
      def self.default(visited=[])
        return nil if visited.include?('SourceIpConfig')
        visited = visited + ['SourceIpConfig']
        {
          cidrs: Cidrs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceIpConfig.new
        data = {}
        data['Cidrs'] = Cidrs.stub(stub[:cidrs]) unless stub[:cidrs].nil?
        data
      end
    end

    # List Stubber for Cidrs
    class Cidrs
      def self.default(visited=[])
        return nil if visited.include?('Cidrs')
        visited = visited + ['Cidrs']
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

    # Operation Stubber for DescribeWorkteam
    class DescribeWorkteam
      def self.default(visited=[])
        {
          workteam: Workteam.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workteam'] = Workteam.stub(stub[:workteam]) unless stub[:workteam].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Workteam
    class Workteam
      def self.default(visited=[])
        return nil if visited.include?('Workteam')
        visited = visited + ['Workteam']
        {
          workteam_name: 'workteam_name',
          member_definitions: MemberDefinitions.default(visited),
          workteam_arn: 'workteam_arn',
          workforce_arn: 'workforce_arn',
          product_listing_ids: ProductListings.default(visited),
          description: 'description',
          sub_domain: 'sub_domain',
          create_date: Time.now,
          last_updated_date: Time.now,
          notification_configuration: NotificationConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Workteam.new
        data = {}
        data['WorkteamName'] = stub[:workteam_name] unless stub[:workteam_name].nil?
        data['MemberDefinitions'] = MemberDefinitions.stub(stub[:member_definitions]) unless stub[:member_definitions].nil?
        data['WorkteamArn'] = stub[:workteam_arn] unless stub[:workteam_arn].nil?
        data['WorkforceArn'] = stub[:workforce_arn] unless stub[:workforce_arn].nil?
        data['ProductListingIds'] = ProductListings.stub(stub[:product_listing_ids]) unless stub[:product_listing_ids].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['SubDomain'] = stub[:sub_domain] unless stub[:sub_domain].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['LastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['NotificationConfiguration'] = NotificationConfiguration.stub(stub[:notification_configuration]) unless stub[:notification_configuration].nil?
        data
      end
    end

    # Structure Stubber for NotificationConfiguration
    class NotificationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfiguration')
        visited = visited + ['NotificationConfiguration']
        {
          notification_topic_arn: 'notification_topic_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationConfiguration.new
        data = {}
        data['NotificationTopicArn'] = stub[:notification_topic_arn] unless stub[:notification_topic_arn].nil?
        data
      end
    end

    # List Stubber for ProductListings
    class ProductListings
      def self.default(visited=[])
        return nil if visited.include?('ProductListings')
        visited = visited + ['ProductListings']
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

    # List Stubber for MemberDefinitions
    class MemberDefinitions
      def self.default(visited=[])
        return nil if visited.include?('MemberDefinitions')
        visited = visited + ['MemberDefinitions']
        [
          MemberDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MemberDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MemberDefinition
    class MemberDefinition
      def self.default(visited=[])
        return nil if visited.include?('MemberDefinition')
        visited = visited + ['MemberDefinition']
        {
          cognito_member_definition: CognitoMemberDefinition.default(visited),
          oidc_member_definition: OidcMemberDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberDefinition.new
        data = {}
        data['CognitoMemberDefinition'] = CognitoMemberDefinition.stub(stub[:cognito_member_definition]) unless stub[:cognito_member_definition].nil?
        data['OidcMemberDefinition'] = OidcMemberDefinition.stub(stub[:oidc_member_definition]) unless stub[:oidc_member_definition].nil?
        data
      end
    end

    # Structure Stubber for OidcMemberDefinition
    class OidcMemberDefinition
      def self.default(visited=[])
        return nil if visited.include?('OidcMemberDefinition')
        visited = visited + ['OidcMemberDefinition']
        {
          groups: Groups.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OidcMemberDefinition.new
        data = {}
        data['Groups'] = Groups.stub(stub[:groups]) unless stub[:groups].nil?
        data
      end
    end

    # List Stubber for Groups
    class Groups
      def self.default(visited=[])
        return nil if visited.include?('Groups')
        visited = visited + ['Groups']
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

    # Structure Stubber for CognitoMemberDefinition
    class CognitoMemberDefinition
      def self.default(visited=[])
        return nil if visited.include?('CognitoMemberDefinition')
        visited = visited + ['CognitoMemberDefinition']
        {
          user_pool: 'user_pool',
          user_group: 'user_group',
          client_id: 'client_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::CognitoMemberDefinition.new
        data = {}
        data['UserPool'] = stub[:user_pool] unless stub[:user_pool].nil?
        data['UserGroup'] = stub[:user_group] unless stub[:user_group].nil?
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data
      end
    end

    # Operation Stubber for DisableSagemakerServicecatalogPortfolio
    class DisableSagemakerServicecatalogPortfolio
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateTrialComponent
    class DisassociateTrialComponent
      def self.default(visited=[])
        {
          trial_component_arn: 'trial_component_arn',
          trial_arn: 'trial_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialComponentArn'] = stub[:trial_component_arn] unless stub[:trial_component_arn].nil?
        data['TrialArn'] = stub[:trial_arn] unless stub[:trial_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableSagemakerServicecatalogPortfolio
    class EnableSagemakerServicecatalogPortfolio
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDeviceFleetReport
    class GetDeviceFleetReport
      def self.default(visited=[])
        {
          device_fleet_arn: 'device_fleet_arn',
          device_fleet_name: 'device_fleet_name',
          output_config: EdgeOutputConfig.default(visited),
          description: 'description',
          report_generated: Time.now,
          device_stats: DeviceStats.default(visited),
          agent_versions: AgentVersions.default(visited),
          model_stats: EdgeModelStats.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeviceFleetArn'] = stub[:device_fleet_arn] unless stub[:device_fleet_arn].nil?
        data['DeviceFleetName'] = stub[:device_fleet_name] unless stub[:device_fleet_name].nil?
        data['OutputConfig'] = EdgeOutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ReportGenerated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:report_generated]).to_i unless stub[:report_generated].nil?
        data['DeviceStats'] = DeviceStats.stub(stub[:device_stats]) unless stub[:device_stats].nil?
        data['AgentVersions'] = AgentVersions.stub(stub[:agent_versions]) unless stub[:agent_versions].nil?
        data['ModelStats'] = EdgeModelStats.stub(stub[:model_stats]) unless stub[:model_stats].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EdgeModelStats
    class EdgeModelStats
      def self.default(visited=[])
        return nil if visited.include?('EdgeModelStats')
        visited = visited + ['EdgeModelStats']
        [
          EdgeModelStat.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EdgeModelStat.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EdgeModelStat
    class EdgeModelStat
      def self.default(visited=[])
        return nil if visited.include?('EdgeModelStat')
        visited = visited + ['EdgeModelStat']
        {
          model_name: 'model_name',
          model_version: 'model_version',
          offline_device_count: 1,
          connected_device_count: 1,
          active_device_count: 1,
          sampling_device_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EdgeModelStat.new
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['OfflineDeviceCount'] = stub[:offline_device_count] unless stub[:offline_device_count].nil?
        data['ConnectedDeviceCount'] = stub[:connected_device_count] unless stub[:connected_device_count].nil?
        data['ActiveDeviceCount'] = stub[:active_device_count] unless stub[:active_device_count].nil?
        data['SamplingDeviceCount'] = stub[:sampling_device_count] unless stub[:sampling_device_count].nil?
        data
      end
    end

    # List Stubber for AgentVersions
    class AgentVersions
      def self.default(visited=[])
        return nil if visited.include?('AgentVersions')
        visited = visited + ['AgentVersions']
        [
          AgentVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AgentVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AgentVersion
    class AgentVersion
      def self.default(visited=[])
        return nil if visited.include?('AgentVersion')
        visited = visited + ['AgentVersion']
        {
          version: 'version',
          agent_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentVersion.new
        data = {}
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['AgentCount'] = stub[:agent_count] unless stub[:agent_count].nil?
        data
      end
    end

    # Structure Stubber for DeviceStats
    class DeviceStats
      def self.default(visited=[])
        return nil if visited.include?('DeviceStats')
        visited = visited + ['DeviceStats']
        {
          connected_device_count: 1,
          registered_device_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceStats.new
        data = {}
        data['ConnectedDeviceCount'] = stub[:connected_device_count] unless stub[:connected_device_count].nil?
        data['RegisteredDeviceCount'] = stub[:registered_device_count] unless stub[:registered_device_count].nil?
        data
      end
    end

    # Operation Stubber for GetLineageGroupPolicy
    class GetLineageGroupPolicy
      def self.default(visited=[])
        {
          lineage_group_arn: 'lineage_group_arn',
          resource_policy: 'resource_policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LineageGroupArn'] = stub[:lineage_group_arn] unless stub[:lineage_group_arn].nil?
        data['ResourcePolicy'] = stub[:resource_policy] unless stub[:resource_policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetModelPackageGroupPolicy
    class GetModelPackageGroupPolicy
      def self.default(visited=[])
        {
          resource_policy: 'resource_policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourcePolicy'] = stub[:resource_policy] unless stub[:resource_policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSagemakerServicecatalogPortfolioStatus
    class GetSagemakerServicecatalogPortfolioStatus
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSearchSuggestions
    class GetSearchSuggestions
      def self.default(visited=[])
        {
          property_name_suggestions: PropertyNameSuggestionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PropertyNameSuggestions'] = PropertyNameSuggestionList.stub(stub[:property_name_suggestions]) unless stub[:property_name_suggestions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PropertyNameSuggestionList
    class PropertyNameSuggestionList
      def self.default(visited=[])
        return nil if visited.include?('PropertyNameSuggestionList')
        visited = visited + ['PropertyNameSuggestionList']
        [
          PropertyNameSuggestion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PropertyNameSuggestion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PropertyNameSuggestion
    class PropertyNameSuggestion
      def self.default(visited=[])
        return nil if visited.include?('PropertyNameSuggestion')
        visited = visited + ['PropertyNameSuggestion']
        {
          property_name: 'property_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyNameSuggestion.new
        data = {}
        data['PropertyName'] = stub[:property_name] unless stub[:property_name].nil?
        data
      end
    end

    # Operation Stubber for ListActions
    class ListActions
      def self.default(visited=[])
        {
          action_summaries: ActionSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ActionSummaries'] = ActionSummaries.stub(stub[:action_summaries]) unless stub[:action_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ActionSummaries
    class ActionSummaries
      def self.default(visited=[])
        return nil if visited.include?('ActionSummaries')
        visited = visited + ['ActionSummaries']
        [
          ActionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ActionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActionSummary
    class ActionSummary
      def self.default(visited=[])
        return nil if visited.include?('ActionSummary')
        visited = visited + ['ActionSummary']
        {
          action_arn: 'action_arn',
          action_name: 'action_name',
          source: ActionSource.default(visited),
          action_type: 'action_type',
          status: 'status',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionSummary.new
        data = {}
        data['ActionArn'] = stub[:action_arn] unless stub[:action_arn].nil?
        data['ActionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['Source'] = ActionSource.stub(stub[:source]) unless stub[:source].nil?
        data['ActionType'] = stub[:action_type] unless stub[:action_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListAlgorithms
    class ListAlgorithms
      def self.default(visited=[])
        {
          algorithm_summary_list: AlgorithmSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AlgorithmSummaryList'] = AlgorithmSummaryList.stub(stub[:algorithm_summary_list]) unless stub[:algorithm_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AlgorithmSummaryList
    class AlgorithmSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmSummaryList')
        visited = visited + ['AlgorithmSummaryList']
        [
          AlgorithmSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AlgorithmSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlgorithmSummary
    class AlgorithmSummary
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmSummary')
        visited = visited + ['AlgorithmSummary']
        {
          algorithm_name: 'algorithm_name',
          algorithm_arn: 'algorithm_arn',
          algorithm_description: 'algorithm_description',
          creation_time: Time.now,
          algorithm_status: 'algorithm_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlgorithmSummary.new
        data = {}
        data['AlgorithmName'] = stub[:algorithm_name] unless stub[:algorithm_name].nil?
        data['AlgorithmArn'] = stub[:algorithm_arn] unless stub[:algorithm_arn].nil?
        data['AlgorithmDescription'] = stub[:algorithm_description] unless stub[:algorithm_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['AlgorithmStatus'] = stub[:algorithm_status] unless stub[:algorithm_status].nil?
        data
      end
    end

    # Operation Stubber for ListAppImageConfigs
    class ListAppImageConfigs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          app_image_configs: AppImageConfigList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['AppImageConfigs'] = AppImageConfigList.stub(stub[:app_image_configs]) unless stub[:app_image_configs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AppImageConfigList
    class AppImageConfigList
      def self.default(visited=[])
        return nil if visited.include?('AppImageConfigList')
        visited = visited + ['AppImageConfigList']
        [
          AppImageConfigDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AppImageConfigDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppImageConfigDetails
    class AppImageConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('AppImageConfigDetails')
        visited = visited + ['AppImageConfigDetails']
        {
          app_image_config_arn: 'app_image_config_arn',
          app_image_config_name: 'app_image_config_name',
          creation_time: Time.now,
          last_modified_time: Time.now,
          kernel_gateway_image_config: KernelGatewayImageConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppImageConfigDetails.new
        data = {}
        data['AppImageConfigArn'] = stub[:app_image_config_arn] unless stub[:app_image_config_arn].nil?
        data['AppImageConfigName'] = stub[:app_image_config_name] unless stub[:app_image_config_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['KernelGatewayImageConfig'] = KernelGatewayImageConfig.stub(stub[:kernel_gateway_image_config]) unless stub[:kernel_gateway_image_config].nil?
        data
      end
    end

    # Operation Stubber for ListApps
    class ListApps
      def self.default(visited=[])
        {
          apps: AppList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Apps'] = AppList.stub(stub[:apps]) unless stub[:apps].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AppList
    class AppList
      def self.default(visited=[])
        return nil if visited.include?('AppList')
        visited = visited + ['AppList']
        [
          AppDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AppDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppDetails
    class AppDetails
      def self.default(visited=[])
        return nil if visited.include?('AppDetails')
        visited = visited + ['AppDetails']
        {
          domain_id: 'domain_id',
          user_profile_name: 'user_profile_name',
          app_type: 'app_type',
          app_name: 'app_name',
          status: 'status',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppDetails.new
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['UserProfileName'] = stub[:user_profile_name] unless stub[:user_profile_name].nil?
        data['AppType'] = stub[:app_type] unless stub[:app_type].nil?
        data['AppName'] = stub[:app_name] unless stub[:app_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListArtifacts
    class ListArtifacts
      def self.default(visited=[])
        {
          artifact_summaries: ArtifactSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ArtifactSummaries'] = ArtifactSummaries.stub(stub[:artifact_summaries]) unless stub[:artifact_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ArtifactSummaries
    class ArtifactSummaries
      def self.default(visited=[])
        return nil if visited.include?('ArtifactSummaries')
        visited = visited + ['ArtifactSummaries']
        [
          ArtifactSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ArtifactSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ArtifactSummary
    class ArtifactSummary
      def self.default(visited=[])
        return nil if visited.include?('ArtifactSummary')
        visited = visited + ['ArtifactSummary']
        {
          artifact_arn: 'artifact_arn',
          artifact_name: 'artifact_name',
          source: ArtifactSource.default(visited),
          artifact_type: 'artifact_type',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactSummary.new
        data = {}
        data['ArtifactArn'] = stub[:artifact_arn] unless stub[:artifact_arn].nil?
        data['ArtifactName'] = stub[:artifact_name] unless stub[:artifact_name].nil?
        data['Source'] = ArtifactSource.stub(stub[:source]) unless stub[:source].nil?
        data['ArtifactType'] = stub[:artifact_type] unless stub[:artifact_type].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListAssociations
    class ListAssociations
      def self.default(visited=[])
        {
          association_summaries: AssociationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationSummaries'] = AssociationSummaries.stub(stub[:association_summaries]) unless stub[:association_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssociationSummaries
    class AssociationSummaries
      def self.default(visited=[])
        return nil if visited.include?('AssociationSummaries')
        visited = visited + ['AssociationSummaries']
        [
          AssociationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssociationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociationSummary
    class AssociationSummary
      def self.default(visited=[])
        return nil if visited.include?('AssociationSummary')
        visited = visited + ['AssociationSummary']
        {
          source_arn: 'source_arn',
          destination_arn: 'destination_arn',
          source_type: 'source_type',
          destination_type: 'destination_type',
          association_type: 'association_type',
          source_name: 'source_name',
          destination_name: 'destination_name',
          creation_time: Time.now,
          created_by: UserContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociationSummary.new
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['DestinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['DestinationType'] = stub[:destination_type] unless stub[:destination_type].nil?
        data['AssociationType'] = stub[:association_type] unless stub[:association_type].nil?
        data['SourceName'] = stub[:source_name] unless stub[:source_name].nil?
        data['DestinationName'] = stub[:destination_name] unless stub[:destination_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data
      end
    end

    # Operation Stubber for ListAutoMLJobs
    class ListAutoMLJobs
      def self.default(visited=[])
        {
          auto_ml_job_summaries: AutoMLJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutoMLJobSummaries'] = AutoMLJobSummaries.stub(stub[:auto_ml_job_summaries]) unless stub[:auto_ml_job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AutoMLJobSummaries
    class AutoMLJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('AutoMLJobSummaries')
        visited = visited + ['AutoMLJobSummaries']
        [
          AutoMLJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoMLJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoMLJobSummary
    class AutoMLJobSummary
      def self.default(visited=[])
        return nil if visited.include?('AutoMLJobSummary')
        visited = visited + ['AutoMLJobSummary']
        {
          auto_ml_job_name: 'auto_ml_job_name',
          auto_ml_job_arn: 'auto_ml_job_arn',
          auto_ml_job_status: 'auto_ml_job_status',
          auto_ml_job_secondary_status: 'auto_ml_job_secondary_status',
          creation_time: Time.now,
          end_time: Time.now,
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
          partial_failure_reasons: AutoMLPartialFailureReasons.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLJobSummary.new
        data = {}
        data['AutoMLJobName'] = stub[:auto_ml_job_name] unless stub[:auto_ml_job_name].nil?
        data['AutoMLJobArn'] = stub[:auto_ml_job_arn] unless stub[:auto_ml_job_arn].nil?
        data['AutoMLJobStatus'] = stub[:auto_ml_job_status] unless stub[:auto_ml_job_status].nil?
        data['AutoMLJobSecondaryStatus'] = stub[:auto_ml_job_secondary_status] unless stub[:auto_ml_job_secondary_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['PartialFailureReasons'] = AutoMLPartialFailureReasons.stub(stub[:partial_failure_reasons]) unless stub[:partial_failure_reasons].nil?
        data
      end
    end

    # Operation Stubber for ListCandidatesForAutoMLJob
    class ListCandidatesForAutoMLJob
      def self.default(visited=[])
        {
          candidates: AutoMLCandidates.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Candidates'] = AutoMLCandidates.stub(stub[:candidates]) unless stub[:candidates].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AutoMLCandidates
    class AutoMLCandidates
      def self.default(visited=[])
        return nil if visited.include?('AutoMLCandidates')
        visited = visited + ['AutoMLCandidates']
        [
          AutoMLCandidate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoMLCandidate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListCodeRepositories
    class ListCodeRepositories
      def self.default(visited=[])
        {
          code_repository_summary_list: CodeRepositorySummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CodeRepositorySummaryList'] = CodeRepositorySummaryList.stub(stub[:code_repository_summary_list]) unless stub[:code_repository_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CodeRepositorySummaryList
    class CodeRepositorySummaryList
      def self.default(visited=[])
        return nil if visited.include?('CodeRepositorySummaryList')
        visited = visited + ['CodeRepositorySummaryList']
        [
          CodeRepositorySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CodeRepositorySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CodeRepositorySummary
    class CodeRepositorySummary
      def self.default(visited=[])
        return nil if visited.include?('CodeRepositorySummary')
        visited = visited + ['CodeRepositorySummary']
        {
          code_repository_name: 'code_repository_name',
          code_repository_arn: 'code_repository_arn',
          creation_time: Time.now,
          last_modified_time: Time.now,
          git_config: GitConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeRepositorySummary.new
        data = {}
        data['CodeRepositoryName'] = stub[:code_repository_name] unless stub[:code_repository_name].nil?
        data['CodeRepositoryArn'] = stub[:code_repository_arn] unless stub[:code_repository_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['GitConfig'] = GitConfig.stub(stub[:git_config]) unless stub[:git_config].nil?
        data
      end
    end

    # Operation Stubber for ListCompilationJobs
    class ListCompilationJobs
      def self.default(visited=[])
        {
          compilation_job_summaries: CompilationJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CompilationJobSummaries'] = CompilationJobSummaries.stub(stub[:compilation_job_summaries]) unless stub[:compilation_job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CompilationJobSummaries
    class CompilationJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('CompilationJobSummaries')
        visited = visited + ['CompilationJobSummaries']
        [
          CompilationJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CompilationJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CompilationJobSummary
    class CompilationJobSummary
      def self.default(visited=[])
        return nil if visited.include?('CompilationJobSummary')
        visited = visited + ['CompilationJobSummary']
        {
          compilation_job_name: 'compilation_job_name',
          compilation_job_arn: 'compilation_job_arn',
          creation_time: Time.now,
          compilation_start_time: Time.now,
          compilation_end_time: Time.now,
          compilation_target_device: 'compilation_target_device',
          compilation_target_platform_os: 'compilation_target_platform_os',
          compilation_target_platform_arch: 'compilation_target_platform_arch',
          compilation_target_platform_accelerator: 'compilation_target_platform_accelerator',
          last_modified_time: Time.now,
          compilation_job_status: 'compilation_job_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::CompilationJobSummary.new
        data = {}
        data['CompilationJobName'] = stub[:compilation_job_name] unless stub[:compilation_job_name].nil?
        data['CompilationJobArn'] = stub[:compilation_job_arn] unless stub[:compilation_job_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CompilationStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:compilation_start_time]).to_i unless stub[:compilation_start_time].nil?
        data['CompilationEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:compilation_end_time]).to_i unless stub[:compilation_end_time].nil?
        data['CompilationTargetDevice'] = stub[:compilation_target_device] unless stub[:compilation_target_device].nil?
        data['CompilationTargetPlatformOs'] = stub[:compilation_target_platform_os] unless stub[:compilation_target_platform_os].nil?
        data['CompilationTargetPlatformArch'] = stub[:compilation_target_platform_arch] unless stub[:compilation_target_platform_arch].nil?
        data['CompilationTargetPlatformAccelerator'] = stub[:compilation_target_platform_accelerator] unless stub[:compilation_target_platform_accelerator].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CompilationJobStatus'] = stub[:compilation_job_status] unless stub[:compilation_job_status].nil?
        data
      end
    end

    # Operation Stubber for ListContexts
    class ListContexts
      def self.default(visited=[])
        {
          context_summaries: ContextSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContextSummaries'] = ContextSummaries.stub(stub[:context_summaries]) unless stub[:context_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContextSummaries
    class ContextSummaries
      def self.default(visited=[])
        return nil if visited.include?('ContextSummaries')
        visited = visited + ['ContextSummaries']
        [
          ContextSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContextSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContextSummary
    class ContextSummary
      def self.default(visited=[])
        return nil if visited.include?('ContextSummary')
        visited = visited + ['ContextSummary']
        {
          context_arn: 'context_arn',
          context_name: 'context_name',
          source: ContextSource.default(visited),
          context_type: 'context_type',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContextSummary.new
        data = {}
        data['ContextArn'] = stub[:context_arn] unless stub[:context_arn].nil?
        data['ContextName'] = stub[:context_name] unless stub[:context_name].nil?
        data['Source'] = ContextSource.stub(stub[:source]) unless stub[:source].nil?
        data['ContextType'] = stub[:context_type] unless stub[:context_type].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListDataQualityJobDefinitions
    class ListDataQualityJobDefinitions
      def self.default(visited=[])
        {
          job_definition_summaries: MonitoringJobDefinitionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionSummaries'] = MonitoringJobDefinitionSummaryList.stub(stub[:job_definition_summaries]) unless stub[:job_definition_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MonitoringJobDefinitionSummaryList
    class MonitoringJobDefinitionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('MonitoringJobDefinitionSummaryList')
        visited = visited + ['MonitoringJobDefinitionSummaryList']
        [
          MonitoringJobDefinitionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MonitoringJobDefinitionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MonitoringJobDefinitionSummary
    class MonitoringJobDefinitionSummary
      def self.default(visited=[])
        return nil if visited.include?('MonitoringJobDefinitionSummary')
        visited = visited + ['MonitoringJobDefinitionSummary']
        {
          monitoring_job_definition_name: 'monitoring_job_definition_name',
          monitoring_job_definition_arn: 'monitoring_job_definition_arn',
          creation_time: Time.now,
          endpoint_name: 'endpoint_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringJobDefinitionSummary.new
        data = {}
        data['MonitoringJobDefinitionName'] = stub[:monitoring_job_definition_name] unless stub[:monitoring_job_definition_name].nil?
        data['MonitoringJobDefinitionArn'] = stub[:monitoring_job_definition_arn] unless stub[:monitoring_job_definition_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data
      end
    end

    # Operation Stubber for ListDeviceFleets
    class ListDeviceFleets
      def self.default(visited=[])
        {
          device_fleet_summaries: DeviceFleetSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeviceFleetSummaries'] = DeviceFleetSummaries.stub(stub[:device_fleet_summaries]) unless stub[:device_fleet_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeviceFleetSummaries
    class DeviceFleetSummaries
      def self.default(visited=[])
        return nil if visited.include?('DeviceFleetSummaries')
        visited = visited + ['DeviceFleetSummaries']
        [
          DeviceFleetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeviceFleetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceFleetSummary
    class DeviceFleetSummary
      def self.default(visited=[])
        return nil if visited.include?('DeviceFleetSummary')
        visited = visited + ['DeviceFleetSummary']
        {
          device_fleet_arn: 'device_fleet_arn',
          device_fleet_name: 'device_fleet_name',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceFleetSummary.new
        data = {}
        data['DeviceFleetArn'] = stub[:device_fleet_arn] unless stub[:device_fleet_arn].nil?
        data['DeviceFleetName'] = stub[:device_fleet_name] unless stub[:device_fleet_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListDevices
    class ListDevices
      def self.default(visited=[])
        {
          device_summaries: DeviceSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeviceSummaries'] = DeviceSummaries.stub(stub[:device_summaries]) unless stub[:device_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeviceSummaries
    class DeviceSummaries
      def self.default(visited=[])
        return nil if visited.include?('DeviceSummaries')
        visited = visited + ['DeviceSummaries']
        [
          DeviceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeviceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceSummary
    class DeviceSummary
      def self.default(visited=[])
        return nil if visited.include?('DeviceSummary')
        visited = visited + ['DeviceSummary']
        {
          device_name: 'device_name',
          device_arn: 'device_arn',
          description: 'description',
          device_fleet_name: 'device_fleet_name',
          iot_thing_name: 'iot_thing_name',
          registration_time: Time.now,
          latest_heartbeat: Time.now,
          models: EdgeModelSummaries.default(visited),
          agent_version: 'agent_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceSummary.new
        data = {}
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['DeviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DeviceFleetName'] = stub[:device_fleet_name] unless stub[:device_fleet_name].nil?
        data['IotThingName'] = stub[:iot_thing_name] unless stub[:iot_thing_name].nil?
        data['RegistrationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registration_time]).to_i unless stub[:registration_time].nil?
        data['LatestHeartbeat'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_heartbeat]).to_i unless stub[:latest_heartbeat].nil?
        data['Models'] = EdgeModelSummaries.stub(stub[:models]) unless stub[:models].nil?
        data['AgentVersion'] = stub[:agent_version] unless stub[:agent_version].nil?
        data
      end
    end

    # List Stubber for EdgeModelSummaries
    class EdgeModelSummaries
      def self.default(visited=[])
        return nil if visited.include?('EdgeModelSummaries')
        visited = visited + ['EdgeModelSummaries']
        [
          EdgeModelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EdgeModelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EdgeModelSummary
    class EdgeModelSummary
      def self.default(visited=[])
        return nil if visited.include?('EdgeModelSummary')
        visited = visited + ['EdgeModelSummary']
        {
          model_name: 'model_name',
          model_version: 'model_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::EdgeModelSummary.new
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data
      end
    end

    # Operation Stubber for ListDomains
    class ListDomains
      def self.default(visited=[])
        {
          domains: DomainList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Domains'] = DomainList.stub(stub[:domains]) unless stub[:domains].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DomainList
    class DomainList
      def self.default(visited=[])
        return nil if visited.include?('DomainList')
        visited = visited + ['DomainList']
        [
          DomainDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DomainDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainDetails
    class DomainDetails
      def self.default(visited=[])
        return nil if visited.include?('DomainDetails')
        visited = visited + ['DomainDetails']
        {
          domain_arn: 'domain_arn',
          domain_id: 'domain_id',
          domain_name: 'domain_name',
          status: 'status',
          creation_time: Time.now,
          last_modified_time: Time.now,
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainDetails.new
        data = {}
        data['DomainArn'] = stub[:domain_arn] unless stub[:domain_arn].nil?
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for ListEdgePackagingJobs
    class ListEdgePackagingJobs
      def self.default(visited=[])
        {
          edge_packaging_job_summaries: EdgePackagingJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EdgePackagingJobSummaries'] = EdgePackagingJobSummaries.stub(stub[:edge_packaging_job_summaries]) unless stub[:edge_packaging_job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EdgePackagingJobSummaries
    class EdgePackagingJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('EdgePackagingJobSummaries')
        visited = visited + ['EdgePackagingJobSummaries']
        [
          EdgePackagingJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EdgePackagingJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EdgePackagingJobSummary
    class EdgePackagingJobSummary
      def self.default(visited=[])
        return nil if visited.include?('EdgePackagingJobSummary')
        visited = visited + ['EdgePackagingJobSummary']
        {
          edge_packaging_job_arn: 'edge_packaging_job_arn',
          edge_packaging_job_name: 'edge_packaging_job_name',
          edge_packaging_job_status: 'edge_packaging_job_status',
          compilation_job_name: 'compilation_job_name',
          model_name: 'model_name',
          model_version: 'model_version',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EdgePackagingJobSummary.new
        data = {}
        data['EdgePackagingJobArn'] = stub[:edge_packaging_job_arn] unless stub[:edge_packaging_job_arn].nil?
        data['EdgePackagingJobName'] = stub[:edge_packaging_job_name] unless stub[:edge_packaging_job_name].nil?
        data['EdgePackagingJobStatus'] = stub[:edge_packaging_job_status] unless stub[:edge_packaging_job_status].nil?
        data['CompilationJobName'] = stub[:compilation_job_name] unless stub[:compilation_job_name].nil?
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListEndpointConfigs
    class ListEndpointConfigs
      def self.default(visited=[])
        {
          endpoint_configs: EndpointConfigSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointConfigs'] = EndpointConfigSummaryList.stub(stub[:endpoint_configs]) unless stub[:endpoint_configs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EndpointConfigSummaryList
    class EndpointConfigSummaryList
      def self.default(visited=[])
        return nil if visited.include?('EndpointConfigSummaryList')
        visited = visited + ['EndpointConfigSummaryList']
        [
          EndpointConfigSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EndpointConfigSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EndpointConfigSummary
    class EndpointConfigSummary
      def self.default(visited=[])
        return nil if visited.include?('EndpointConfigSummary')
        visited = visited + ['EndpointConfigSummary']
        {
          endpoint_config_name: 'endpoint_config_name',
          endpoint_config_arn: 'endpoint_config_arn',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointConfigSummary.new
        data = {}
        data['EndpointConfigName'] = stub[:endpoint_config_name] unless stub[:endpoint_config_name].nil?
        data['EndpointConfigArn'] = stub[:endpoint_config_arn] unless stub[:endpoint_config_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListEndpoints
    class ListEndpoints
      def self.default(visited=[])
        {
          endpoints: EndpointSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Endpoints'] = EndpointSummaryList.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EndpointSummaryList
    class EndpointSummaryList
      def self.default(visited=[])
        return nil if visited.include?('EndpointSummaryList')
        visited = visited + ['EndpointSummaryList']
        [
          EndpointSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EndpointSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EndpointSummary
    class EndpointSummary
      def self.default(visited=[])
        return nil if visited.include?('EndpointSummary')
        visited = visited + ['EndpointSummary']
        {
          endpoint_name: 'endpoint_name',
          endpoint_arn: 'endpoint_arn',
          creation_time: Time.now,
          last_modified_time: Time.now,
          endpoint_status: 'endpoint_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointSummary.new
        data = {}
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['EndpointStatus'] = stub[:endpoint_status] unless stub[:endpoint_status].nil?
        data
      end
    end

    # Operation Stubber for ListExperiments
    class ListExperiments
      def self.default(visited=[])
        {
          experiment_summaries: ExperimentSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExperimentSummaries'] = ExperimentSummaries.stub(stub[:experiment_summaries]) unless stub[:experiment_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExperimentSummaries
    class ExperimentSummaries
      def self.default(visited=[])
        return nil if visited.include?('ExperimentSummaries')
        visited = visited + ['ExperimentSummaries']
        [
          ExperimentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExperimentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperimentSummary
    class ExperimentSummary
      def self.default(visited=[])
        return nil if visited.include?('ExperimentSummary')
        visited = visited + ['ExperimentSummary']
        {
          experiment_arn: 'experiment_arn',
          experiment_name: 'experiment_name',
          display_name: 'display_name',
          experiment_source: ExperimentSource.default(visited),
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperimentSummary.new
        data = {}
        data['ExperimentArn'] = stub[:experiment_arn] unless stub[:experiment_arn].nil?
        data['ExperimentName'] = stub[:experiment_name] unless stub[:experiment_name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['ExperimentSource'] = ExperimentSource.stub(stub[:experiment_source]) unless stub[:experiment_source].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListFeatureGroups
    class ListFeatureGroups
      def self.default(visited=[])
        {
          feature_group_summaries: FeatureGroupSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FeatureGroupSummaries'] = FeatureGroupSummaries.stub(stub[:feature_group_summaries]) unless stub[:feature_group_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FeatureGroupSummaries
    class FeatureGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('FeatureGroupSummaries')
        visited = visited + ['FeatureGroupSummaries']
        [
          FeatureGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FeatureGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FeatureGroupSummary
    class FeatureGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('FeatureGroupSummary')
        visited = visited + ['FeatureGroupSummary']
        {
          feature_group_name: 'feature_group_name',
          feature_group_arn: 'feature_group_arn',
          creation_time: Time.now,
          feature_group_status: 'feature_group_status',
          offline_store_status: OfflineStoreStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FeatureGroupSummary.new
        data = {}
        data['FeatureGroupName'] = stub[:feature_group_name] unless stub[:feature_group_name].nil?
        data['FeatureGroupArn'] = stub[:feature_group_arn] unless stub[:feature_group_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FeatureGroupStatus'] = stub[:feature_group_status] unless stub[:feature_group_status].nil?
        data['OfflineStoreStatus'] = OfflineStoreStatus.stub(stub[:offline_store_status]) unless stub[:offline_store_status].nil?
        data
      end
    end

    # Operation Stubber for ListFlowDefinitions
    class ListFlowDefinitions
      def self.default(visited=[])
        {
          flow_definition_summaries: FlowDefinitionSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FlowDefinitionSummaries'] = FlowDefinitionSummaries.stub(stub[:flow_definition_summaries]) unless stub[:flow_definition_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FlowDefinitionSummaries
    class FlowDefinitionSummaries
      def self.default(visited=[])
        return nil if visited.include?('FlowDefinitionSummaries')
        visited = visited + ['FlowDefinitionSummaries']
        [
          FlowDefinitionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FlowDefinitionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FlowDefinitionSummary
    class FlowDefinitionSummary
      def self.default(visited=[])
        return nil if visited.include?('FlowDefinitionSummary')
        visited = visited + ['FlowDefinitionSummary']
        {
          flow_definition_name: 'flow_definition_name',
          flow_definition_arn: 'flow_definition_arn',
          flow_definition_status: 'flow_definition_status',
          creation_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::FlowDefinitionSummary.new
        data = {}
        data['FlowDefinitionName'] = stub[:flow_definition_name] unless stub[:flow_definition_name].nil?
        data['FlowDefinitionArn'] = stub[:flow_definition_arn] unless stub[:flow_definition_arn].nil?
        data['FlowDefinitionStatus'] = stub[:flow_definition_status] unless stub[:flow_definition_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for ListHumanTaskUis
    class ListHumanTaskUis
      def self.default(visited=[])
        {
          human_task_ui_summaries: HumanTaskUiSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HumanTaskUiSummaries'] = HumanTaskUiSummaries.stub(stub[:human_task_ui_summaries]) unless stub[:human_task_ui_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for HumanTaskUiSummaries
    class HumanTaskUiSummaries
      def self.default(visited=[])
        return nil if visited.include?('HumanTaskUiSummaries')
        visited = visited + ['HumanTaskUiSummaries']
        [
          HumanTaskUiSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HumanTaskUiSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HumanTaskUiSummary
    class HumanTaskUiSummary
      def self.default(visited=[])
        return nil if visited.include?('HumanTaskUiSummary')
        visited = visited + ['HumanTaskUiSummary']
        {
          human_task_ui_name: 'human_task_ui_name',
          human_task_ui_arn: 'human_task_ui_arn',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanTaskUiSummary.new
        data = {}
        data['HumanTaskUiName'] = stub[:human_task_ui_name] unless stub[:human_task_ui_name].nil?
        data['HumanTaskUiArn'] = stub[:human_task_ui_arn] unless stub[:human_task_ui_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListHyperParameterTuningJobs
    class ListHyperParameterTuningJobs
      def self.default(visited=[])
        {
          hyper_parameter_tuning_job_summaries: HyperParameterTuningJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HyperParameterTuningJobSummaries'] = HyperParameterTuningJobSummaries.stub(stub[:hyper_parameter_tuning_job_summaries]) unless stub[:hyper_parameter_tuning_job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for HyperParameterTuningJobSummaries
    class HyperParameterTuningJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTuningJobSummaries')
        visited = visited + ['HyperParameterTuningJobSummaries']
        [
          HyperParameterTuningJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HyperParameterTuningJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HyperParameterTuningJobSummary
    class HyperParameterTuningJobSummary
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTuningJobSummary')
        visited = visited + ['HyperParameterTuningJobSummary']
        {
          hyper_parameter_tuning_job_name: 'hyper_parameter_tuning_job_name',
          hyper_parameter_tuning_job_arn: 'hyper_parameter_tuning_job_arn',
          hyper_parameter_tuning_job_status: 'hyper_parameter_tuning_job_status',
          strategy: 'strategy',
          creation_time: Time.now,
          hyper_parameter_tuning_end_time: Time.now,
          last_modified_time: Time.now,
          training_job_status_counters: TrainingJobStatusCounters.default(visited),
          objective_status_counters: ObjectiveStatusCounters.default(visited),
          resource_limits: ResourceLimits.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterTuningJobSummary.new
        data = {}
        data['HyperParameterTuningJobName'] = stub[:hyper_parameter_tuning_job_name] unless stub[:hyper_parameter_tuning_job_name].nil?
        data['HyperParameterTuningJobArn'] = stub[:hyper_parameter_tuning_job_arn] unless stub[:hyper_parameter_tuning_job_arn].nil?
        data['HyperParameterTuningJobStatus'] = stub[:hyper_parameter_tuning_job_status] unless stub[:hyper_parameter_tuning_job_status].nil?
        data['Strategy'] = stub[:strategy] unless stub[:strategy].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['HyperParameterTuningEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:hyper_parameter_tuning_end_time]).to_i unless stub[:hyper_parameter_tuning_end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['TrainingJobStatusCounters'] = TrainingJobStatusCounters.stub(stub[:training_job_status_counters]) unless stub[:training_job_status_counters].nil?
        data['ObjectiveStatusCounters'] = ObjectiveStatusCounters.stub(stub[:objective_status_counters]) unless stub[:objective_status_counters].nil?
        data['ResourceLimits'] = ResourceLimits.stub(stub[:resource_limits]) unless stub[:resource_limits].nil?
        data
      end
    end

    # Operation Stubber for ListImageVersions
    class ListImageVersions
      def self.default(visited=[])
        {
          image_versions: ImageVersions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageVersions'] = ImageVersions.stub(stub[:image_versions]) unless stub[:image_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImageVersions
    class ImageVersions
      def self.default(visited=[])
        return nil if visited.include?('ImageVersions')
        visited = visited + ['ImageVersions']
        [
          ImageVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ImageVersion.stub(element) unless element.nil?
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
          creation_time: Time.now,
          failure_reason: 'failure_reason',
          image_arn: 'image_arn',
          image_version_arn: 'image_version_arn',
          image_version_status: 'image_version_status',
          last_modified_time: Time.now,
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageVersion.new
        data = {}
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ImageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        data['ImageVersionArn'] = stub[:image_version_arn] unless stub[:image_version_arn].nil?
        data['ImageVersionStatus'] = stub[:image_version_status] unless stub[:image_version_status].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for ListImages
    class ListImages
      def self.default(visited=[])
        {
          images: Images.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Images'] = Images.stub(stub[:images]) unless stub[:images].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Images
    class Images
      def self.default(visited=[])
        return nil if visited.include?('Images')
        visited = visited + ['Images']
        [
          Image.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Image.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Image
    class Image
      def self.default(visited=[])
        return nil if visited.include?('Image')
        visited = visited + ['Image']
        {
          creation_time: Time.now,
          description: 'description',
          display_name: 'display_name',
          failure_reason: 'failure_reason',
          image_arn: 'image_arn',
          image_name: 'image_name',
          image_status: 'image_status',
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Image.new
        data = {}
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ImageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        data['ImageName'] = stub[:image_name] unless stub[:image_name].nil?
        data['ImageStatus'] = stub[:image_status] unless stub[:image_status].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListInferenceRecommendationsJobs
    class ListInferenceRecommendationsJobs
      def self.default(visited=[])
        {
          inference_recommendations_jobs: InferenceRecommendationsJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InferenceRecommendationsJobs'] = InferenceRecommendationsJobs.stub(stub[:inference_recommendations_jobs]) unless stub[:inference_recommendations_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InferenceRecommendationsJobs
    class InferenceRecommendationsJobs
      def self.default(visited=[])
        return nil if visited.include?('InferenceRecommendationsJobs')
        visited = visited + ['InferenceRecommendationsJobs']
        [
          InferenceRecommendationsJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InferenceRecommendationsJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InferenceRecommendationsJob
    class InferenceRecommendationsJob
      def self.default(visited=[])
        return nil if visited.include?('InferenceRecommendationsJob')
        visited = visited + ['InferenceRecommendationsJob']
        {
          job_name: 'job_name',
          job_description: 'job_description',
          job_type: 'job_type',
          job_arn: 'job_arn',
          status: 'status',
          creation_time: Time.now,
          completion_time: Time.now,
          role_arn: 'role_arn',
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceRecommendationsJob.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobDescription'] = stub[:job_description] unless stub[:job_description].nil?
        data['JobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for ListLabelingJobs
    class ListLabelingJobs
      def self.default(visited=[])
        {
          labeling_job_summary_list: LabelingJobSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LabelingJobSummaryList'] = LabelingJobSummaryList.stub(stub[:labeling_job_summary_list]) unless stub[:labeling_job_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LabelingJobSummaryList
    class LabelingJobSummaryList
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobSummaryList')
        visited = visited + ['LabelingJobSummaryList']
        [
          LabelingJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LabelingJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LabelingJobSummary
    class LabelingJobSummary
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobSummary')
        visited = visited + ['LabelingJobSummary']
        {
          labeling_job_name: 'labeling_job_name',
          labeling_job_arn: 'labeling_job_arn',
          creation_time: Time.now,
          last_modified_time: Time.now,
          labeling_job_status: 'labeling_job_status',
          label_counters: LabelCounters.default(visited),
          workteam_arn: 'workteam_arn',
          pre_human_task_lambda_arn: 'pre_human_task_lambda_arn',
          annotation_consolidation_lambda_arn: 'annotation_consolidation_lambda_arn',
          failure_reason: 'failure_reason',
          labeling_job_output: LabelingJobOutput.default(visited),
          input_config: LabelingJobInputConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobSummary.new
        data = {}
        data['LabelingJobName'] = stub[:labeling_job_name] unless stub[:labeling_job_name].nil?
        data['LabelingJobArn'] = stub[:labeling_job_arn] unless stub[:labeling_job_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LabelingJobStatus'] = stub[:labeling_job_status] unless stub[:labeling_job_status].nil?
        data['LabelCounters'] = LabelCounters.stub(stub[:label_counters]) unless stub[:label_counters].nil?
        data['WorkteamArn'] = stub[:workteam_arn] unless stub[:workteam_arn].nil?
        data['PreHumanTaskLambdaArn'] = stub[:pre_human_task_lambda_arn] unless stub[:pre_human_task_lambda_arn].nil?
        data['AnnotationConsolidationLambdaArn'] = stub[:annotation_consolidation_lambda_arn] unless stub[:annotation_consolidation_lambda_arn].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['LabelingJobOutput'] = LabelingJobOutput.stub(stub[:labeling_job_output]) unless stub[:labeling_job_output].nil?
        data['InputConfig'] = LabelingJobInputConfig.stub(stub[:input_config]) unless stub[:input_config].nil?
        data
      end
    end

    # Operation Stubber for ListLabelingJobsForWorkteam
    class ListLabelingJobsForWorkteam
      def self.default(visited=[])
        {
          labeling_job_summary_list: LabelingJobForWorkteamSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LabelingJobSummaryList'] = LabelingJobForWorkteamSummaryList.stub(stub[:labeling_job_summary_list]) unless stub[:labeling_job_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LabelingJobForWorkteamSummaryList
    class LabelingJobForWorkteamSummaryList
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobForWorkteamSummaryList')
        visited = visited + ['LabelingJobForWorkteamSummaryList']
        [
          LabelingJobForWorkteamSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LabelingJobForWorkteamSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LabelingJobForWorkteamSummary
    class LabelingJobForWorkteamSummary
      def self.default(visited=[])
        return nil if visited.include?('LabelingJobForWorkteamSummary')
        visited = visited + ['LabelingJobForWorkteamSummary']
        {
          labeling_job_name: 'labeling_job_name',
          job_reference_code: 'job_reference_code',
          work_requester_account_id: 'work_requester_account_id',
          creation_time: Time.now,
          label_counters: LabelCountersForWorkteam.default(visited),
          number_of_human_workers_per_data_object: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelingJobForWorkteamSummary.new
        data = {}
        data['LabelingJobName'] = stub[:labeling_job_name] unless stub[:labeling_job_name].nil?
        data['JobReferenceCode'] = stub[:job_reference_code] unless stub[:job_reference_code].nil?
        data['WorkRequesterAccountId'] = stub[:work_requester_account_id] unless stub[:work_requester_account_id].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LabelCounters'] = LabelCountersForWorkteam.stub(stub[:label_counters]) unless stub[:label_counters].nil?
        data['NumberOfHumanWorkersPerDataObject'] = stub[:number_of_human_workers_per_data_object] unless stub[:number_of_human_workers_per_data_object].nil?
        data
      end
    end

    # Structure Stubber for LabelCountersForWorkteam
    class LabelCountersForWorkteam
      def self.default(visited=[])
        return nil if visited.include?('LabelCountersForWorkteam')
        visited = visited + ['LabelCountersForWorkteam']
        {
          human_labeled: 1,
          pending_human: 1,
          total: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelCountersForWorkteam.new
        data = {}
        data['HumanLabeled'] = stub[:human_labeled] unless stub[:human_labeled].nil?
        data['PendingHuman'] = stub[:pending_human] unless stub[:pending_human].nil?
        data['Total'] = stub[:total] unless stub[:total].nil?
        data
      end
    end

    # Operation Stubber for ListLineageGroups
    class ListLineageGroups
      def self.default(visited=[])
        {
          lineage_group_summaries: LineageGroupSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LineageGroupSummaries'] = LineageGroupSummaries.stub(stub[:lineage_group_summaries]) unless stub[:lineage_group_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LineageGroupSummaries
    class LineageGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('LineageGroupSummaries')
        visited = visited + ['LineageGroupSummaries']
        [
          LineageGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LineageGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LineageGroupSummary
    class LineageGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('LineageGroupSummary')
        visited = visited + ['LineageGroupSummary']
        {
          lineage_group_arn: 'lineage_group_arn',
          lineage_group_name: 'lineage_group_name',
          display_name: 'display_name',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LineageGroupSummary.new
        data = {}
        data['LineageGroupArn'] = stub[:lineage_group_arn] unless stub[:lineage_group_arn].nil?
        data['LineageGroupName'] = stub[:lineage_group_name] unless stub[:lineage_group_name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListModelBiasJobDefinitions
    class ListModelBiasJobDefinitions
      def self.default(visited=[])
        {
          job_definition_summaries: MonitoringJobDefinitionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionSummaries'] = MonitoringJobDefinitionSummaryList.stub(stub[:job_definition_summaries]) unless stub[:job_definition_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListModelExplainabilityJobDefinitions
    class ListModelExplainabilityJobDefinitions
      def self.default(visited=[])
        {
          job_definition_summaries: MonitoringJobDefinitionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionSummaries'] = MonitoringJobDefinitionSummaryList.stub(stub[:job_definition_summaries]) unless stub[:job_definition_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListModelMetadata
    class ListModelMetadata
      def self.default(visited=[])
        {
          model_metadata_summaries: ModelMetadataSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelMetadataSummaries'] = ModelMetadataSummaries.stub(stub[:model_metadata_summaries]) unless stub[:model_metadata_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ModelMetadataSummaries
    class ModelMetadataSummaries
      def self.default(visited=[])
        return nil if visited.include?('ModelMetadataSummaries')
        visited = visited + ['ModelMetadataSummaries']
        [
          ModelMetadataSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelMetadataSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelMetadataSummary
    class ModelMetadataSummary
      def self.default(visited=[])
        return nil if visited.include?('ModelMetadataSummary')
        visited = visited + ['ModelMetadataSummary']
        {
          domain: 'domain',
          framework: 'framework',
          task: 'task',
          model: 'model',
          framework_version: 'framework_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelMetadataSummary.new
        data = {}
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['Framework'] = stub[:framework] unless stub[:framework].nil?
        data['Task'] = stub[:task] unless stub[:task].nil?
        data['Model'] = stub[:model] unless stub[:model].nil?
        data['FrameworkVersion'] = stub[:framework_version] unless stub[:framework_version].nil?
        data
      end
    end

    # Operation Stubber for ListModelPackageGroups
    class ListModelPackageGroups
      def self.default(visited=[])
        {
          model_package_group_summary_list: ModelPackageGroupSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelPackageGroupSummaryList'] = ModelPackageGroupSummaryList.stub(stub[:model_package_group_summary_list]) unless stub[:model_package_group_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ModelPackageGroupSummaryList
    class ModelPackageGroupSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageGroupSummaryList')
        visited = visited + ['ModelPackageGroupSummaryList']
        [
          ModelPackageGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelPackageGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelPackageGroupSummary
    class ModelPackageGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageGroupSummary')
        visited = visited + ['ModelPackageGroupSummary']
        {
          model_package_group_name: 'model_package_group_name',
          model_package_group_arn: 'model_package_group_arn',
          model_package_group_description: 'model_package_group_description',
          creation_time: Time.now,
          model_package_group_status: 'model_package_group_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackageGroupSummary.new
        data = {}
        data['ModelPackageGroupName'] = stub[:model_package_group_name] unless stub[:model_package_group_name].nil?
        data['ModelPackageGroupArn'] = stub[:model_package_group_arn] unless stub[:model_package_group_arn].nil?
        data['ModelPackageGroupDescription'] = stub[:model_package_group_description] unless stub[:model_package_group_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ModelPackageGroupStatus'] = stub[:model_package_group_status] unless stub[:model_package_group_status].nil?
        data
      end
    end

    # Operation Stubber for ListModelPackages
    class ListModelPackages
      def self.default(visited=[])
        {
          model_package_summary_list: ModelPackageSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelPackageSummaryList'] = ModelPackageSummaryList.stub(stub[:model_package_summary_list]) unless stub[:model_package_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ModelPackageSummaryList
    class ModelPackageSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageSummaryList')
        visited = visited + ['ModelPackageSummaryList']
        [
          ModelPackageSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelPackageSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelPackageSummary
    class ModelPackageSummary
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageSummary')
        visited = visited + ['ModelPackageSummary']
        {
          model_package_name: 'model_package_name',
          model_package_group_name: 'model_package_group_name',
          model_package_version: 1,
          model_package_arn: 'model_package_arn',
          model_package_description: 'model_package_description',
          creation_time: Time.now,
          model_package_status: 'model_package_status',
          model_approval_status: 'model_approval_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackageSummary.new
        data = {}
        data['ModelPackageName'] = stub[:model_package_name] unless stub[:model_package_name].nil?
        data['ModelPackageGroupName'] = stub[:model_package_group_name] unless stub[:model_package_group_name].nil?
        data['ModelPackageVersion'] = stub[:model_package_version] unless stub[:model_package_version].nil?
        data['ModelPackageArn'] = stub[:model_package_arn] unless stub[:model_package_arn].nil?
        data['ModelPackageDescription'] = stub[:model_package_description] unless stub[:model_package_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ModelPackageStatus'] = stub[:model_package_status] unless stub[:model_package_status].nil?
        data['ModelApprovalStatus'] = stub[:model_approval_status] unless stub[:model_approval_status].nil?
        data
      end
    end

    # Operation Stubber for ListModelQualityJobDefinitions
    class ListModelQualityJobDefinitions
      def self.default(visited=[])
        {
          job_definition_summaries: MonitoringJobDefinitionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobDefinitionSummaries'] = MonitoringJobDefinitionSummaryList.stub(stub[:job_definition_summaries]) unless stub[:job_definition_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListModels
    class ListModels
      def self.default(visited=[])
        {
          models: ModelSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Models'] = ModelSummaryList.stub(stub[:models]) unless stub[:models].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ModelSummaryList
    class ModelSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ModelSummaryList')
        visited = visited + ['ModelSummaryList']
        [
          ModelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelSummary
    class ModelSummary
      def self.default(visited=[])
        return nil if visited.include?('ModelSummary')
        visited = visited + ['ModelSummary']
        {
          model_name: 'model_name',
          model_arn: 'model_arn',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelSummary.new
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListMonitoringExecutions
    class ListMonitoringExecutions
      def self.default(visited=[])
        {
          monitoring_execution_summaries: MonitoringExecutionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonitoringExecutionSummaries'] = MonitoringExecutionSummaryList.stub(stub[:monitoring_execution_summaries]) unless stub[:monitoring_execution_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MonitoringExecutionSummaryList
    class MonitoringExecutionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('MonitoringExecutionSummaryList')
        visited = visited + ['MonitoringExecutionSummaryList']
        [
          MonitoringExecutionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MonitoringExecutionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListMonitoringSchedules
    class ListMonitoringSchedules
      def self.default(visited=[])
        {
          monitoring_schedule_summaries: MonitoringScheduleSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonitoringScheduleSummaries'] = MonitoringScheduleSummaryList.stub(stub[:monitoring_schedule_summaries]) unless stub[:monitoring_schedule_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MonitoringScheduleSummaryList
    class MonitoringScheduleSummaryList
      def self.default(visited=[])
        return nil if visited.include?('MonitoringScheduleSummaryList')
        visited = visited + ['MonitoringScheduleSummaryList']
        [
          MonitoringScheduleSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MonitoringScheduleSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MonitoringScheduleSummary
    class MonitoringScheduleSummary
      def self.default(visited=[])
        return nil if visited.include?('MonitoringScheduleSummary')
        visited = visited + ['MonitoringScheduleSummary']
        {
          monitoring_schedule_name: 'monitoring_schedule_name',
          monitoring_schedule_arn: 'monitoring_schedule_arn',
          creation_time: Time.now,
          last_modified_time: Time.now,
          monitoring_schedule_status: 'monitoring_schedule_status',
          endpoint_name: 'endpoint_name',
          monitoring_job_definition_name: 'monitoring_job_definition_name',
          monitoring_type: 'monitoring_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringScheduleSummary.new
        data = {}
        data['MonitoringScheduleName'] = stub[:monitoring_schedule_name] unless stub[:monitoring_schedule_name].nil?
        data['MonitoringScheduleArn'] = stub[:monitoring_schedule_arn] unless stub[:monitoring_schedule_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['MonitoringScheduleStatus'] = stub[:monitoring_schedule_status] unless stub[:monitoring_schedule_status].nil?
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['MonitoringJobDefinitionName'] = stub[:monitoring_job_definition_name] unless stub[:monitoring_job_definition_name].nil?
        data['MonitoringType'] = stub[:monitoring_type] unless stub[:monitoring_type].nil?
        data
      end
    end

    # Operation Stubber for ListNotebookInstanceLifecycleConfigs
    class ListNotebookInstanceLifecycleConfigs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          notebook_instance_lifecycle_configs: NotebookInstanceLifecycleConfigSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NotebookInstanceLifecycleConfigs'] = NotebookInstanceLifecycleConfigSummaryList.stub(stub[:notebook_instance_lifecycle_configs]) unless stub[:notebook_instance_lifecycle_configs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NotebookInstanceLifecycleConfigSummaryList
    class NotebookInstanceLifecycleConfigSummaryList
      def self.default(visited=[])
        return nil if visited.include?('NotebookInstanceLifecycleConfigSummaryList')
        visited = visited + ['NotebookInstanceLifecycleConfigSummaryList']
        [
          NotebookInstanceLifecycleConfigSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NotebookInstanceLifecycleConfigSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotebookInstanceLifecycleConfigSummary
    class NotebookInstanceLifecycleConfigSummary
      def self.default(visited=[])
        return nil if visited.include?('NotebookInstanceLifecycleConfigSummary')
        visited = visited + ['NotebookInstanceLifecycleConfigSummary']
        {
          notebook_instance_lifecycle_config_name: 'notebook_instance_lifecycle_config_name',
          notebook_instance_lifecycle_config_arn: 'notebook_instance_lifecycle_config_arn',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::NotebookInstanceLifecycleConfigSummary.new
        data = {}
        data['NotebookInstanceLifecycleConfigName'] = stub[:notebook_instance_lifecycle_config_name] unless stub[:notebook_instance_lifecycle_config_name].nil?
        data['NotebookInstanceLifecycleConfigArn'] = stub[:notebook_instance_lifecycle_config_arn] unless stub[:notebook_instance_lifecycle_config_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListNotebookInstances
    class ListNotebookInstances
      def self.default(visited=[])
        {
          next_token: 'next_token',
          notebook_instances: NotebookInstanceSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NotebookInstances'] = NotebookInstanceSummaryList.stub(stub[:notebook_instances]) unless stub[:notebook_instances].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NotebookInstanceSummaryList
    class NotebookInstanceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('NotebookInstanceSummaryList')
        visited = visited + ['NotebookInstanceSummaryList']
        [
          NotebookInstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NotebookInstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotebookInstanceSummary
    class NotebookInstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('NotebookInstanceSummary')
        visited = visited + ['NotebookInstanceSummary']
        {
          notebook_instance_name: 'notebook_instance_name',
          notebook_instance_arn: 'notebook_instance_arn',
          notebook_instance_status: 'notebook_instance_status',
          url: 'url',
          instance_type: 'instance_type',
          creation_time: Time.now,
          last_modified_time: Time.now,
          notebook_instance_lifecycle_config_name: 'notebook_instance_lifecycle_config_name',
          default_code_repository: 'default_code_repository',
          additional_code_repositories: AdditionalCodeRepositoryNamesOrUrls.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotebookInstanceSummary.new
        data = {}
        data['NotebookInstanceName'] = stub[:notebook_instance_name] unless stub[:notebook_instance_name].nil?
        data['NotebookInstanceArn'] = stub[:notebook_instance_arn] unless stub[:notebook_instance_arn].nil?
        data['NotebookInstanceStatus'] = stub[:notebook_instance_status] unless stub[:notebook_instance_status].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['NotebookInstanceLifecycleConfigName'] = stub[:notebook_instance_lifecycle_config_name] unless stub[:notebook_instance_lifecycle_config_name].nil?
        data['DefaultCodeRepository'] = stub[:default_code_repository] unless stub[:default_code_repository].nil?
        data['AdditionalCodeRepositories'] = AdditionalCodeRepositoryNamesOrUrls.stub(stub[:additional_code_repositories]) unless stub[:additional_code_repositories].nil?
        data
      end
    end

    # Operation Stubber for ListPipelineExecutionSteps
    class ListPipelineExecutionSteps
      def self.default(visited=[])
        {
          pipeline_execution_steps: PipelineExecutionStepList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineExecutionSteps'] = PipelineExecutionStepList.stub(stub[:pipeline_execution_steps]) unless stub[:pipeline_execution_steps].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PipelineExecutionStepList
    class PipelineExecutionStepList
      def self.default(visited=[])
        return nil if visited.include?('PipelineExecutionStepList')
        visited = visited + ['PipelineExecutionStepList']
        [
          PipelineExecutionStep.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PipelineExecutionStep.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelineExecutionStep
    class PipelineExecutionStep
      def self.default(visited=[])
        return nil if visited.include?('PipelineExecutionStep')
        visited = visited + ['PipelineExecutionStep']
        {
          step_name: 'step_name',
          step_display_name: 'step_display_name',
          step_description: 'step_description',
          start_time: Time.now,
          end_time: Time.now,
          step_status: 'step_status',
          cache_hit_result: CacheHitResult.default(visited),
          attempt_count: 1,
          failure_reason: 'failure_reason',
          metadata: PipelineExecutionStepMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineExecutionStep.new
        data = {}
        data['StepName'] = stub[:step_name] unless stub[:step_name].nil?
        data['StepDisplayName'] = stub[:step_display_name] unless stub[:step_display_name].nil?
        data['StepDescription'] = stub[:step_description] unless stub[:step_description].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['StepStatus'] = stub[:step_status] unless stub[:step_status].nil?
        data['CacheHitResult'] = CacheHitResult.stub(stub[:cache_hit_result]) unless stub[:cache_hit_result].nil?
        data['AttemptCount'] = stub[:attempt_count] unless stub[:attempt_count].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['Metadata'] = PipelineExecutionStepMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # Structure Stubber for PipelineExecutionStepMetadata
    class PipelineExecutionStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('PipelineExecutionStepMetadata')
        visited = visited + ['PipelineExecutionStepMetadata']
        {
          training_job: TrainingJobStepMetadata.default(visited),
          processing_job: ProcessingJobStepMetadata.default(visited),
          transform_job: TransformJobStepMetadata.default(visited),
          tuning_job: TuningJobStepMetaData.default(visited),
          model: ModelStepMetadata.default(visited),
          register_model: RegisterModelStepMetadata.default(visited),
          condition: ConditionStepMetadata.default(visited),
          callback: CallbackStepMetadata.default(visited),
          lambda: LambdaStepMetadata.default(visited),
          quality_check: QualityCheckStepMetadata.default(visited),
          clarify_check: ClarifyCheckStepMetadata.default(visited),
          emr: EMRStepMetadata.default(visited),
          fail: FailStepMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineExecutionStepMetadata.new
        data = {}
        data['TrainingJob'] = TrainingJobStepMetadata.stub(stub[:training_job]) unless stub[:training_job].nil?
        data['ProcessingJob'] = ProcessingJobStepMetadata.stub(stub[:processing_job]) unless stub[:processing_job].nil?
        data['TransformJob'] = TransformJobStepMetadata.stub(stub[:transform_job]) unless stub[:transform_job].nil?
        data['TuningJob'] = TuningJobStepMetaData.stub(stub[:tuning_job]) unless stub[:tuning_job].nil?
        data['Model'] = ModelStepMetadata.stub(stub[:model]) unless stub[:model].nil?
        data['RegisterModel'] = RegisterModelStepMetadata.stub(stub[:register_model]) unless stub[:register_model].nil?
        data['Condition'] = ConditionStepMetadata.stub(stub[:condition]) unless stub[:condition].nil?
        data['Callback'] = CallbackStepMetadata.stub(stub[:callback]) unless stub[:callback].nil?
        data['Lambda'] = LambdaStepMetadata.stub(stub[:lambda]) unless stub[:lambda].nil?
        data['QualityCheck'] = QualityCheckStepMetadata.stub(stub[:quality_check]) unless stub[:quality_check].nil?
        data['ClarifyCheck'] = ClarifyCheckStepMetadata.stub(stub[:clarify_check]) unless stub[:clarify_check].nil?
        data['EMR'] = EMRStepMetadata.stub(stub[:emr]) unless stub[:emr].nil?
        data['Fail'] = FailStepMetadata.stub(stub[:fail]) unless stub[:fail].nil?
        data
      end
    end

    # Structure Stubber for FailStepMetadata
    class FailStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('FailStepMetadata')
        visited = visited + ['FailStepMetadata']
        {
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailStepMetadata.new
        data = {}
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for EMRStepMetadata
    class EMRStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('EMRStepMetadata')
        visited = visited + ['EMRStepMetadata']
        {
          cluster_id: 'cluster_id',
          step_id: 'step_id',
          step_name: 'step_name',
          log_file_path: 'log_file_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::EMRStepMetadata.new
        data = {}
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['StepId'] = stub[:step_id] unless stub[:step_id].nil?
        data['StepName'] = stub[:step_name] unless stub[:step_name].nil?
        data['LogFilePath'] = stub[:log_file_path] unless stub[:log_file_path].nil?
        data
      end
    end

    # Structure Stubber for ClarifyCheckStepMetadata
    class ClarifyCheckStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('ClarifyCheckStepMetadata')
        visited = visited + ['ClarifyCheckStepMetadata']
        {
          check_type: 'check_type',
          baseline_used_for_drift_check_constraints: 'baseline_used_for_drift_check_constraints',
          calculated_baseline_constraints: 'calculated_baseline_constraints',
          model_package_group_name: 'model_package_group_name',
          violation_report: 'violation_report',
          check_job_arn: 'check_job_arn',
          skip_check: false,
          register_new_baseline: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ClarifyCheckStepMetadata.new
        data = {}
        data['CheckType'] = stub[:check_type] unless stub[:check_type].nil?
        data['BaselineUsedForDriftCheckConstraints'] = stub[:baseline_used_for_drift_check_constraints] unless stub[:baseline_used_for_drift_check_constraints].nil?
        data['CalculatedBaselineConstraints'] = stub[:calculated_baseline_constraints] unless stub[:calculated_baseline_constraints].nil?
        data['ModelPackageGroupName'] = stub[:model_package_group_name] unless stub[:model_package_group_name].nil?
        data['ViolationReport'] = stub[:violation_report] unless stub[:violation_report].nil?
        data['CheckJobArn'] = stub[:check_job_arn] unless stub[:check_job_arn].nil?
        data['SkipCheck'] = stub[:skip_check] unless stub[:skip_check].nil?
        data['RegisterNewBaseline'] = stub[:register_new_baseline] unless stub[:register_new_baseline].nil?
        data
      end
    end

    # Structure Stubber for QualityCheckStepMetadata
    class QualityCheckStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('QualityCheckStepMetadata')
        visited = visited + ['QualityCheckStepMetadata']
        {
          check_type: 'check_type',
          baseline_used_for_drift_check_statistics: 'baseline_used_for_drift_check_statistics',
          baseline_used_for_drift_check_constraints: 'baseline_used_for_drift_check_constraints',
          calculated_baseline_statistics: 'calculated_baseline_statistics',
          calculated_baseline_constraints: 'calculated_baseline_constraints',
          model_package_group_name: 'model_package_group_name',
          violation_report: 'violation_report',
          check_job_arn: 'check_job_arn',
          skip_check: false,
          register_new_baseline: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::QualityCheckStepMetadata.new
        data = {}
        data['CheckType'] = stub[:check_type] unless stub[:check_type].nil?
        data['BaselineUsedForDriftCheckStatistics'] = stub[:baseline_used_for_drift_check_statistics] unless stub[:baseline_used_for_drift_check_statistics].nil?
        data['BaselineUsedForDriftCheckConstraints'] = stub[:baseline_used_for_drift_check_constraints] unless stub[:baseline_used_for_drift_check_constraints].nil?
        data['CalculatedBaselineStatistics'] = stub[:calculated_baseline_statistics] unless stub[:calculated_baseline_statistics].nil?
        data['CalculatedBaselineConstraints'] = stub[:calculated_baseline_constraints] unless stub[:calculated_baseline_constraints].nil?
        data['ModelPackageGroupName'] = stub[:model_package_group_name] unless stub[:model_package_group_name].nil?
        data['ViolationReport'] = stub[:violation_report] unless stub[:violation_report].nil?
        data['CheckJobArn'] = stub[:check_job_arn] unless stub[:check_job_arn].nil?
        data['SkipCheck'] = stub[:skip_check] unless stub[:skip_check].nil?
        data['RegisterNewBaseline'] = stub[:register_new_baseline] unless stub[:register_new_baseline].nil?
        data
      end
    end

    # Structure Stubber for LambdaStepMetadata
    class LambdaStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('LambdaStepMetadata')
        visited = visited + ['LambdaStepMetadata']
        {
          arn: 'arn',
          output_parameters: OutputParameterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaStepMetadata.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OutputParameters'] = OutputParameterList.stub(stub[:output_parameters]) unless stub[:output_parameters].nil?
        data
      end
    end

    # List Stubber for OutputParameterList
    class OutputParameterList
      def self.default(visited=[])
        return nil if visited.include?('OutputParameterList')
        visited = visited + ['OutputParameterList']
        [
          OutputParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OutputParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputParameter
    class OutputParameter
      def self.default(visited=[])
        return nil if visited.include?('OutputParameter')
        visited = visited + ['OutputParameter']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputParameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for CallbackStepMetadata
    class CallbackStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('CallbackStepMetadata')
        visited = visited + ['CallbackStepMetadata']
        {
          callback_token: 'callback_token',
          sqs_queue_url: 'sqs_queue_url',
          output_parameters: OutputParameterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CallbackStepMetadata.new
        data = {}
        data['CallbackToken'] = stub[:callback_token] unless stub[:callback_token].nil?
        data['SqsQueueUrl'] = stub[:sqs_queue_url] unless stub[:sqs_queue_url].nil?
        data['OutputParameters'] = OutputParameterList.stub(stub[:output_parameters]) unless stub[:output_parameters].nil?
        data
      end
    end

    # Structure Stubber for ConditionStepMetadata
    class ConditionStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('ConditionStepMetadata')
        visited = visited + ['ConditionStepMetadata']
        {
          outcome: 'outcome',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConditionStepMetadata.new
        data = {}
        data['Outcome'] = stub[:outcome] unless stub[:outcome].nil?
        data
      end
    end

    # Structure Stubber for RegisterModelStepMetadata
    class RegisterModelStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('RegisterModelStepMetadata')
        visited = visited + ['RegisterModelStepMetadata']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegisterModelStepMetadata.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for ModelStepMetadata
    class ModelStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('ModelStepMetadata')
        visited = visited + ['ModelStepMetadata']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelStepMetadata.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for TuningJobStepMetaData
    class TuningJobStepMetaData
      def self.default(visited=[])
        return nil if visited.include?('TuningJobStepMetaData')
        visited = visited + ['TuningJobStepMetaData']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::TuningJobStepMetaData.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for TransformJobStepMetadata
    class TransformJobStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('TransformJobStepMetadata')
        visited = visited + ['TransformJobStepMetadata']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformJobStepMetadata.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for ProcessingJobStepMetadata
    class ProcessingJobStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('ProcessingJobStepMetadata')
        visited = visited + ['ProcessingJobStepMetadata']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingJobStepMetadata.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for TrainingJobStepMetadata
    class TrainingJobStepMetadata
      def self.default(visited=[])
        return nil if visited.include?('TrainingJobStepMetadata')
        visited = visited + ['TrainingJobStepMetadata']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingJobStepMetadata.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for CacheHitResult
    class CacheHitResult
      def self.default(visited=[])
        return nil if visited.include?('CacheHitResult')
        visited = visited + ['CacheHitResult']
        {
          source_pipeline_execution_arn: 'source_pipeline_execution_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CacheHitResult.new
        data = {}
        data['SourcePipelineExecutionArn'] = stub[:source_pipeline_execution_arn] unless stub[:source_pipeline_execution_arn].nil?
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
        data['PipelineExecutionSummaries'] = PipelineExecutionSummaryList.stub(stub[:pipeline_execution_summaries]) unless stub[:pipeline_execution_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << PipelineExecutionSummary.stub(element) unless element.nil?
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
          pipeline_execution_arn: 'pipeline_execution_arn',
          start_time: Time.now,
          pipeline_execution_status: 'pipeline_execution_status',
          pipeline_execution_description: 'pipeline_execution_description',
          pipeline_execution_display_name: 'pipeline_execution_display_name',
          pipeline_execution_failure_reason: 'pipeline_execution_failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineExecutionSummary.new
        data = {}
        data['PipelineExecutionArn'] = stub[:pipeline_execution_arn] unless stub[:pipeline_execution_arn].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['PipelineExecutionStatus'] = stub[:pipeline_execution_status] unless stub[:pipeline_execution_status].nil?
        data['PipelineExecutionDescription'] = stub[:pipeline_execution_description] unless stub[:pipeline_execution_description].nil?
        data['PipelineExecutionDisplayName'] = stub[:pipeline_execution_display_name] unless stub[:pipeline_execution_display_name].nil?
        data['PipelineExecutionFailureReason'] = stub[:pipeline_execution_failure_reason] unless stub[:pipeline_execution_failure_reason].nil?
        data
      end
    end

    # Operation Stubber for ListPipelineParametersForExecution
    class ListPipelineParametersForExecution
      def self.default(visited=[])
        {
          pipeline_parameters: ParameterList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineParameters'] = ParameterList.stub(stub[:pipeline_parameters]) unless stub[:pipeline_parameters].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterList
    class ParameterList
      def self.default(visited=[])
        return nil if visited.include?('ParameterList')
        visited = visited + ['ParameterList']
        [
          Parameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Parameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Parameter
    class Parameter
      def self.default(visited=[])
        return nil if visited.include?('Parameter')
        visited = visited + ['Parameter']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Parameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListPipelines
    class ListPipelines
      def self.default(visited=[])
        {
          pipeline_summaries: PipelineSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineSummaries'] = PipelineSummaryList.stub(stub[:pipeline_summaries]) unless stub[:pipeline_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PipelineSummaryList
    class PipelineSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PipelineSummaryList')
        visited = visited + ['PipelineSummaryList']
        [
          PipelineSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PipelineSummary.stub(element) unless element.nil?
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
          pipeline_arn: 'pipeline_arn',
          pipeline_name: 'pipeline_name',
          pipeline_display_name: 'pipeline_display_name',
          pipeline_description: 'pipeline_description',
          role_arn: 'role_arn',
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_execution_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineSummary.new
        data = {}
        data['PipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        data['PipelineName'] = stub[:pipeline_name] unless stub[:pipeline_name].nil?
        data['PipelineDisplayName'] = stub[:pipeline_display_name] unless stub[:pipeline_display_name].nil?
        data['PipelineDescription'] = stub[:pipeline_description] unless stub[:pipeline_description].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastExecutionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_execution_time]).to_i unless stub[:last_execution_time].nil?
        data
      end
    end

    # Operation Stubber for ListProcessingJobs
    class ListProcessingJobs
      def self.default(visited=[])
        {
          processing_job_summaries: ProcessingJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProcessingJobSummaries'] = ProcessingJobSummaries.stub(stub[:processing_job_summaries]) unless stub[:processing_job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProcessingJobSummaries
    class ProcessingJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('ProcessingJobSummaries')
        visited = visited + ['ProcessingJobSummaries']
        [
          ProcessingJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProcessingJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProcessingJobSummary
    class ProcessingJobSummary
      def self.default(visited=[])
        return nil if visited.include?('ProcessingJobSummary')
        visited = visited + ['ProcessingJobSummary']
        {
          processing_job_name: 'processing_job_name',
          processing_job_arn: 'processing_job_arn',
          creation_time: Time.now,
          processing_end_time: Time.now,
          last_modified_time: Time.now,
          processing_job_status: 'processing_job_status',
          failure_reason: 'failure_reason',
          exit_message: 'exit_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingJobSummary.new
        data = {}
        data['ProcessingJobName'] = stub[:processing_job_name] unless stub[:processing_job_name].nil?
        data['ProcessingJobArn'] = stub[:processing_job_arn] unless stub[:processing_job_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ProcessingEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:processing_end_time]).to_i unless stub[:processing_end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['ProcessingJobStatus'] = stub[:processing_job_status] unless stub[:processing_job_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ExitMessage'] = stub[:exit_message] unless stub[:exit_message].nil?
        data
      end
    end

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          project_summary_list: ProjectSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProjectSummaryList'] = ProjectSummaryList.stub(stub[:project_summary_list]) unless stub[:project_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProjectSummaryList
    class ProjectSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummaryList')
        visited = visited + ['ProjectSummaryList']
        [
          ProjectSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectSummary
    class ProjectSummary
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummary')
        visited = visited + ['ProjectSummary']
        {
          project_name: 'project_name',
          project_description: 'project_description',
          project_arn: 'project_arn',
          project_id: 'project_id',
          creation_time: Time.now,
          project_status: 'project_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectSummary.new
        data = {}
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['ProjectDescription'] = stub[:project_description] unless stub[:project_description].nil?
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data['ProjectId'] = stub[:project_id] unless stub[:project_id].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ProjectStatus'] = stub[:project_status] unless stub[:project_status].nil?
        data
      end
    end

    # Operation Stubber for ListStudioLifecycleConfigs
    class ListStudioLifecycleConfigs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          studio_lifecycle_configs: StudioLifecycleConfigsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['StudioLifecycleConfigs'] = StudioLifecycleConfigsList.stub(stub[:studio_lifecycle_configs]) unless stub[:studio_lifecycle_configs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StudioLifecycleConfigsList
    class StudioLifecycleConfigsList
      def self.default(visited=[])
        return nil if visited.include?('StudioLifecycleConfigsList')
        visited = visited + ['StudioLifecycleConfigsList']
        [
          StudioLifecycleConfigDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StudioLifecycleConfigDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StudioLifecycleConfigDetails
    class StudioLifecycleConfigDetails
      def self.default(visited=[])
        return nil if visited.include?('StudioLifecycleConfigDetails')
        visited = visited + ['StudioLifecycleConfigDetails']
        {
          studio_lifecycle_config_arn: 'studio_lifecycle_config_arn',
          studio_lifecycle_config_name: 'studio_lifecycle_config_name',
          creation_time: Time.now,
          last_modified_time: Time.now,
          studio_lifecycle_config_app_type: 'studio_lifecycle_config_app_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::StudioLifecycleConfigDetails.new
        data = {}
        data['StudioLifecycleConfigArn'] = stub[:studio_lifecycle_config_arn] unless stub[:studio_lifecycle_config_arn].nil?
        data['StudioLifecycleConfigName'] = stub[:studio_lifecycle_config_name] unless stub[:studio_lifecycle_config_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['StudioLifecycleConfigAppType'] = stub[:studio_lifecycle_config_app_type] unless stub[:studio_lifecycle_config_app_type].nil?
        data
      end
    end

    # Operation Stubber for ListSubscribedWorkteams
    class ListSubscribedWorkteams
      def self.default(visited=[])
        {
          subscribed_workteams: SubscribedWorkteams.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubscribedWorkteams'] = SubscribedWorkteams.stub(stub[:subscribed_workteams]) unless stub[:subscribed_workteams].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubscribedWorkteams
    class SubscribedWorkteams
      def self.default(visited=[])
        return nil if visited.include?('SubscribedWorkteams')
        visited = visited + ['SubscribedWorkteams']
        [
          SubscribedWorkteam.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SubscribedWorkteam.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTrainingJobs
    class ListTrainingJobs
      def self.default(visited=[])
        {
          training_job_summaries: TrainingJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrainingJobSummaries'] = TrainingJobSummaries.stub(stub[:training_job_summaries]) unless stub[:training_job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TrainingJobSummaries
    class TrainingJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('TrainingJobSummaries')
        visited = visited + ['TrainingJobSummaries']
        [
          TrainingJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TrainingJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrainingJobSummary
    class TrainingJobSummary
      def self.default(visited=[])
        return nil if visited.include?('TrainingJobSummary')
        visited = visited + ['TrainingJobSummary']
        {
          training_job_name: 'training_job_name',
          training_job_arn: 'training_job_arn',
          creation_time: Time.now,
          training_end_time: Time.now,
          last_modified_time: Time.now,
          training_job_status: 'training_job_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingJobSummary.new
        data = {}
        data['TrainingJobName'] = stub[:training_job_name] unless stub[:training_job_name].nil?
        data['TrainingJobArn'] = stub[:training_job_arn] unless stub[:training_job_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TrainingEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_end_time]).to_i unless stub[:training_end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['TrainingJobStatus'] = stub[:training_job_status] unless stub[:training_job_status].nil?
        data
      end
    end

    # Operation Stubber for ListTrainingJobsForHyperParameterTuningJob
    class ListTrainingJobsForHyperParameterTuningJob
      def self.default(visited=[])
        {
          training_job_summaries: HyperParameterTrainingJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrainingJobSummaries'] = HyperParameterTrainingJobSummaries.stub(stub[:training_job_summaries]) unless stub[:training_job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for HyperParameterTrainingJobSummaries
    class HyperParameterTrainingJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTrainingJobSummaries')
        visited = visited + ['HyperParameterTrainingJobSummaries']
        [
          HyperParameterTrainingJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HyperParameterTrainingJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTransformJobs
    class ListTransformJobs
      def self.default(visited=[])
        {
          transform_job_summaries: TransformJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TransformJobSummaries'] = TransformJobSummaries.stub(stub[:transform_job_summaries]) unless stub[:transform_job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TransformJobSummaries
    class TransformJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('TransformJobSummaries')
        visited = visited + ['TransformJobSummaries']
        [
          TransformJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TransformJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TransformJobSummary
    class TransformJobSummary
      def self.default(visited=[])
        return nil if visited.include?('TransformJobSummary')
        visited = visited + ['TransformJobSummary']
        {
          transform_job_name: 'transform_job_name',
          transform_job_arn: 'transform_job_arn',
          creation_time: Time.now,
          transform_end_time: Time.now,
          last_modified_time: Time.now,
          transform_job_status: 'transform_job_status',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformJobSummary.new
        data = {}
        data['TransformJobName'] = stub[:transform_job_name] unless stub[:transform_job_name].nil?
        data['TransformJobArn'] = stub[:transform_job_arn] unless stub[:transform_job_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TransformEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:transform_end_time]).to_i unless stub[:transform_end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['TransformJobStatus'] = stub[:transform_job_status] unless stub[:transform_job_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for ListTrialComponents
    class ListTrialComponents
      def self.default(visited=[])
        {
          trial_component_summaries: TrialComponentSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialComponentSummaries'] = TrialComponentSummaries.stub(stub[:trial_component_summaries]) unless stub[:trial_component_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TrialComponentSummaries
    class TrialComponentSummaries
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentSummaries')
        visited = visited + ['TrialComponentSummaries']
        [
          TrialComponentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TrialComponentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrialComponentSummary
    class TrialComponentSummary
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentSummary')
        visited = visited + ['TrialComponentSummary']
        {
          trial_component_name: 'trial_component_name',
          trial_component_arn: 'trial_component_arn',
          display_name: 'display_name',
          trial_component_source: TrialComponentSource.default(visited),
          status: TrialComponentStatus.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialComponentSummary.new
        data = {}
        data['TrialComponentName'] = stub[:trial_component_name] unless stub[:trial_component_name].nil?
        data['TrialComponentArn'] = stub[:trial_component_arn] unless stub[:trial_component_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['TrialComponentSource'] = TrialComponentSource.stub(stub[:trial_component_source]) unless stub[:trial_component_source].nil?
        data['Status'] = TrialComponentStatus.stub(stub[:status]) unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data
      end
    end

    # Operation Stubber for ListTrials
    class ListTrials
      def self.default(visited=[])
        {
          trial_summaries: TrialSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialSummaries'] = TrialSummaries.stub(stub[:trial_summaries]) unless stub[:trial_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TrialSummaries
    class TrialSummaries
      def self.default(visited=[])
        return nil if visited.include?('TrialSummaries')
        visited = visited + ['TrialSummaries']
        [
          TrialSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TrialSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrialSummary
    class TrialSummary
      def self.default(visited=[])
        return nil if visited.include?('TrialSummary')
        visited = visited + ['TrialSummary']
        {
          trial_arn: 'trial_arn',
          trial_name: 'trial_name',
          display_name: 'display_name',
          trial_source: TrialSource.default(visited),
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialSummary.new
        data = {}
        data['TrialArn'] = stub[:trial_arn] unless stub[:trial_arn].nil?
        data['TrialName'] = stub[:trial_name] unless stub[:trial_name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['TrialSource'] = TrialSource.stub(stub[:trial_source]) unless stub[:trial_source].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListUserProfiles
    class ListUserProfiles
      def self.default(visited=[])
        {
          user_profiles: UserProfileList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserProfiles'] = UserProfileList.stub(stub[:user_profiles]) unless stub[:user_profiles].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserProfileList
    class UserProfileList
      def self.default(visited=[])
        return nil if visited.include?('UserProfileList')
        visited = visited + ['UserProfileList']
        [
          UserProfileDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserProfileDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserProfileDetails
    class UserProfileDetails
      def self.default(visited=[])
        return nil if visited.include?('UserProfileDetails')
        visited = visited + ['UserProfileDetails']
        {
          domain_id: 'domain_id',
          user_profile_name: 'user_profile_name',
          status: 'status',
          creation_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::UserProfileDetails.new
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['UserProfileName'] = stub[:user_profile_name] unless stub[:user_profile_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListWorkforces
    class ListWorkforces
      def self.default(visited=[])
        {
          workforces: Workforces.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workforces'] = Workforces.stub(stub[:workforces]) unless stub[:workforces].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Workforces
    class Workforces
      def self.default(visited=[])
        return nil if visited.include?('Workforces')
        visited = visited + ['Workforces']
        [
          Workforce.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Workforce.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListWorkteams
    class ListWorkteams
      def self.default(visited=[])
        {
          workteams: Workteams.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workteams'] = Workteams.stub(stub[:workteams]) unless stub[:workteams].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Workteams
    class Workteams
      def self.default(visited=[])
        return nil if visited.include?('Workteams')
        visited = visited + ['Workteams']
        [
          Workteam.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Workteam.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for PutModelPackageGroupPolicy
    class PutModelPackageGroupPolicy
      def self.default(visited=[])
        {
          model_package_group_arn: 'model_package_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelPackageGroupArn'] = stub[:model_package_group_arn] unless stub[:model_package_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for QueryLineage
    class QueryLineage
      def self.default(visited=[])
        {
          vertices: Vertices.default(visited),
          edges: Edges.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Vertices'] = Vertices.stub(stub[:vertices]) unless stub[:vertices].nil?
        data['Edges'] = Edges.stub(stub[:edges]) unless stub[:edges].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Edges
    class Edges
      def self.default(visited=[])
        return nil if visited.include?('Edges')
        visited = visited + ['Edges']
        [
          Edge.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Edge.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Edge
    class Edge
      def self.default(visited=[])
        return nil if visited.include?('Edge')
        visited = visited + ['Edge']
        {
          source_arn: 'source_arn',
          destination_arn: 'destination_arn',
          association_type: 'association_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Edge.new
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['DestinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data['AssociationType'] = stub[:association_type] unless stub[:association_type].nil?
        data
      end
    end

    # List Stubber for Vertices
    class Vertices
      def self.default(visited=[])
        return nil if visited.include?('Vertices')
        visited = visited + ['Vertices']
        [
          Vertex.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Vertex.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Vertex
    class Vertex
      def self.default(visited=[])
        return nil if visited.include?('Vertex')
        visited = visited + ['Vertex']
        {
          arn: 'arn',
          type: 'type',
          lineage_type: 'lineage_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Vertex.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['LineageType'] = stub[:lineage_type] unless stub[:lineage_type].nil?
        data
      end
    end

    # Operation Stubber for RegisterDevices
    class RegisterDevices
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RenderUiTemplate
    class RenderUiTemplate
      def self.default(visited=[])
        {
          rendered_content: 'rendered_content',
          errors: RenderingErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RenderedContent'] = stub[:rendered_content] unless stub[:rendered_content].nil?
        data['Errors'] = RenderingErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RenderingErrorList
    class RenderingErrorList
      def self.default(visited=[])
        return nil if visited.include?('RenderingErrorList')
        visited = visited + ['RenderingErrorList']
        [
          RenderingError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RenderingError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RenderingError
    class RenderingError
      def self.default(visited=[])
        return nil if visited.include?('RenderingError')
        visited = visited + ['RenderingError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::RenderingError.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for RetryPipelineExecution
    class RetryPipelineExecution
      def self.default(visited=[])
        {
          pipeline_execution_arn: 'pipeline_execution_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineExecutionArn'] = stub[:pipeline_execution_arn] unless stub[:pipeline_execution_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for Search
    class Search
      def self.default(visited=[])
        {
          results: SearchResultsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Results'] = SearchResultsList.stub(stub[:results]) unless stub[:results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SearchResultsList
    class SearchResultsList
      def self.default(visited=[])
        return nil if visited.include?('SearchResultsList')
        visited = visited + ['SearchResultsList']
        [
          SearchRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SearchRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SearchRecord
    class SearchRecord
      def self.default(visited=[])
        return nil if visited.include?('SearchRecord')
        visited = visited + ['SearchRecord']
        {
          training_job: TrainingJob.default(visited),
          experiment: Experiment.default(visited),
          trial: Trial.default(visited),
          trial_component: TrialComponent.default(visited),
          endpoint: Endpoint.default(visited),
          model_package: ModelPackage.default(visited),
          model_package_group: ModelPackageGroup.default(visited),
          pipeline: Pipeline.default(visited),
          pipeline_execution: PipelineExecution.default(visited),
          feature_group: FeatureGroup.default(visited),
          project: Project.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchRecord.new
        data = {}
        data['TrainingJob'] = TrainingJob.stub(stub[:training_job]) unless stub[:training_job].nil?
        data['Experiment'] = Experiment.stub(stub[:experiment]) unless stub[:experiment].nil?
        data['Trial'] = Trial.stub(stub[:trial]) unless stub[:trial].nil?
        data['TrialComponent'] = TrialComponent.stub(stub[:trial_component]) unless stub[:trial_component].nil?
        data['Endpoint'] = Endpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        data['ModelPackage'] = ModelPackage.stub(stub[:model_package]) unless stub[:model_package].nil?
        data['ModelPackageGroup'] = ModelPackageGroup.stub(stub[:model_package_group]) unless stub[:model_package_group].nil?
        data['Pipeline'] = Pipeline.stub(stub[:pipeline]) unless stub[:pipeline].nil?
        data['PipelineExecution'] = PipelineExecution.stub(stub[:pipeline_execution]) unless stub[:pipeline_execution].nil?
        data['FeatureGroup'] = FeatureGroup.stub(stub[:feature_group]) unless stub[:feature_group].nil?
        data['Project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        data
      end
    end

    # Structure Stubber for Project
    class Project
      def self.default(visited=[])
        return nil if visited.include?('Project')
        visited = visited + ['Project']
        {
          project_arn: 'project_arn',
          project_name: 'project_name',
          project_id: 'project_id',
          project_description: 'project_description',
          service_catalog_provisioning_details: ServiceCatalogProvisioningDetails.default(visited),
          service_catalog_provisioned_product_details: ServiceCatalogProvisionedProductDetails.default(visited),
          project_status: 'project_status',
          created_by: UserContext.default(visited),
          creation_time: Time.now,
          tags: TagList.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Project.new
        data = {}
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['ProjectId'] = stub[:project_id] unless stub[:project_id].nil?
        data['ProjectDescription'] = stub[:project_description] unless stub[:project_description].nil?
        data['ServiceCatalogProvisioningDetails'] = ServiceCatalogProvisioningDetails.stub(stub[:service_catalog_provisioning_details]) unless stub[:service_catalog_provisioning_details].nil?
        data['ServiceCatalogProvisionedProductDetails'] = ServiceCatalogProvisionedProductDetails.stub(stub[:service_catalog_provisioned_product_details]) unless stub[:service_catalog_provisioned_product_details].nil?
        data['ProjectStatus'] = stub[:project_status] unless stub[:project_status].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data
      end
    end

    # Structure Stubber for FeatureGroup
    class FeatureGroup
      def self.default(visited=[])
        return nil if visited.include?('FeatureGroup')
        visited = visited + ['FeatureGroup']
        {
          feature_group_arn: 'feature_group_arn',
          feature_group_name: 'feature_group_name',
          record_identifier_feature_name: 'record_identifier_feature_name',
          event_time_feature_name: 'event_time_feature_name',
          feature_definitions: FeatureDefinitions.default(visited),
          creation_time: Time.now,
          online_store_config: OnlineStoreConfig.default(visited),
          offline_store_config: OfflineStoreConfig.default(visited),
          role_arn: 'role_arn',
          feature_group_status: 'feature_group_status',
          offline_store_status: OfflineStoreStatus.default(visited),
          failure_reason: 'failure_reason',
          description: 'description',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FeatureGroup.new
        data = {}
        data['FeatureGroupArn'] = stub[:feature_group_arn] unless stub[:feature_group_arn].nil?
        data['FeatureGroupName'] = stub[:feature_group_name] unless stub[:feature_group_name].nil?
        data['RecordIdentifierFeatureName'] = stub[:record_identifier_feature_name] unless stub[:record_identifier_feature_name].nil?
        data['EventTimeFeatureName'] = stub[:event_time_feature_name] unless stub[:event_time_feature_name].nil?
        data['FeatureDefinitions'] = FeatureDefinitions.stub(stub[:feature_definitions]) unless stub[:feature_definitions].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['OnlineStoreConfig'] = OnlineStoreConfig.stub(stub[:online_store_config]) unless stub[:online_store_config].nil?
        data['OfflineStoreConfig'] = OfflineStoreConfig.stub(stub[:offline_store_config]) unless stub[:offline_store_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['FeatureGroupStatus'] = stub[:feature_group_status] unless stub[:feature_group_status].nil?
        data['OfflineStoreStatus'] = OfflineStoreStatus.stub(stub[:offline_store_status]) unless stub[:offline_store_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for PipelineExecution
    class PipelineExecution
      def self.default(visited=[])
        return nil if visited.include?('PipelineExecution')
        visited = visited + ['PipelineExecution']
        {
          pipeline_arn: 'pipeline_arn',
          pipeline_execution_arn: 'pipeline_execution_arn',
          pipeline_execution_display_name: 'pipeline_execution_display_name',
          pipeline_execution_status: 'pipeline_execution_status',
          pipeline_execution_description: 'pipeline_execution_description',
          pipeline_experiment_config: PipelineExperimentConfig.default(visited),
          failure_reason: 'failure_reason',
          creation_time: Time.now,
          last_modified_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_by: UserContext.default(visited),
          parallelism_configuration: ParallelismConfiguration.default(visited),
          pipeline_parameters: ParameterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineExecution.new
        data = {}
        data['PipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        data['PipelineExecutionArn'] = stub[:pipeline_execution_arn] unless stub[:pipeline_execution_arn].nil?
        data['PipelineExecutionDisplayName'] = stub[:pipeline_execution_display_name] unless stub[:pipeline_execution_display_name].nil?
        data['PipelineExecutionStatus'] = stub[:pipeline_execution_status] unless stub[:pipeline_execution_status].nil?
        data['PipelineExecutionDescription'] = stub[:pipeline_execution_description] unless stub[:pipeline_execution_description].nil?
        data['PipelineExperimentConfig'] = PipelineExperimentConfig.stub(stub[:pipeline_experiment_config]) unless stub[:pipeline_experiment_config].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['ParallelismConfiguration'] = ParallelismConfiguration.stub(stub[:parallelism_configuration]) unless stub[:parallelism_configuration].nil?
        data['PipelineParameters'] = ParameterList.stub(stub[:pipeline_parameters]) unless stub[:pipeline_parameters].nil?
        data
      end
    end

    # Structure Stubber for Pipeline
    class Pipeline
      def self.default(visited=[])
        return nil if visited.include?('Pipeline')
        visited = visited + ['Pipeline']
        {
          pipeline_arn: 'pipeline_arn',
          pipeline_name: 'pipeline_name',
          pipeline_display_name: 'pipeline_display_name',
          pipeline_description: 'pipeline_description',
          role_arn: 'role_arn',
          pipeline_status: 'pipeline_status',
          creation_time: Time.now,
          last_modified_time: Time.now,
          last_run_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_by: UserContext.default(visited),
          parallelism_configuration: ParallelismConfiguration.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Pipeline.new
        data = {}
        data['PipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        data['PipelineName'] = stub[:pipeline_name] unless stub[:pipeline_name].nil?
        data['PipelineDisplayName'] = stub[:pipeline_display_name] unless stub[:pipeline_display_name].nil?
        data['PipelineDescription'] = stub[:pipeline_description] unless stub[:pipeline_description].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['PipelineStatus'] = stub[:pipeline_status] unless stub[:pipeline_status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastRunTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_run_time]).to_i unless stub[:last_run_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['ParallelismConfiguration'] = ParallelismConfiguration.stub(stub[:parallelism_configuration]) unless stub[:parallelism_configuration].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for ModelPackageGroup
    class ModelPackageGroup
      def self.default(visited=[])
        return nil if visited.include?('ModelPackageGroup')
        visited = visited + ['ModelPackageGroup']
        {
          model_package_group_name: 'model_package_group_name',
          model_package_group_arn: 'model_package_group_arn',
          model_package_group_description: 'model_package_group_description',
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          model_package_group_status: 'model_package_group_status',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackageGroup.new
        data = {}
        data['ModelPackageGroupName'] = stub[:model_package_group_name] unless stub[:model_package_group_name].nil?
        data['ModelPackageGroupArn'] = stub[:model_package_group_arn] unless stub[:model_package_group_arn].nil?
        data['ModelPackageGroupDescription'] = stub[:model_package_group_description] unless stub[:model_package_group_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['ModelPackageGroupStatus'] = stub[:model_package_group_status] unless stub[:model_package_group_status].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for ModelPackage
    class ModelPackage
      def self.default(visited=[])
        return nil if visited.include?('ModelPackage')
        visited = visited + ['ModelPackage']
        {
          model_package_name: 'model_package_name',
          model_package_group_name: 'model_package_group_name',
          model_package_version: 1,
          model_package_arn: 'model_package_arn',
          model_package_description: 'model_package_description',
          creation_time: Time.now,
          inference_specification: InferenceSpecification.default(visited),
          source_algorithm_specification: SourceAlgorithmSpecification.default(visited),
          validation_specification: ModelPackageValidationSpecification.default(visited),
          model_package_status: 'model_package_status',
          model_package_status_details: ModelPackageStatusDetails.default(visited),
          certify_for_marketplace: false,
          model_approval_status: 'model_approval_status',
          created_by: UserContext.default(visited),
          metadata_properties: MetadataProperties.default(visited),
          model_metrics: ModelMetrics.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          approval_description: 'approval_description',
          domain: 'domain',
          task: 'task',
          sample_payload_url: 'sample_payload_url',
          additional_inference_specifications: AdditionalInferenceSpecifications.default(visited),
          tags: TagList.default(visited),
          customer_metadata_properties: CustomerMetadataMap.default(visited),
          drift_check_baselines: DriftCheckBaselines.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelPackage.new
        data = {}
        data['ModelPackageName'] = stub[:model_package_name] unless stub[:model_package_name].nil?
        data['ModelPackageGroupName'] = stub[:model_package_group_name] unless stub[:model_package_group_name].nil?
        data['ModelPackageVersion'] = stub[:model_package_version] unless stub[:model_package_version].nil?
        data['ModelPackageArn'] = stub[:model_package_arn] unless stub[:model_package_arn].nil?
        data['ModelPackageDescription'] = stub[:model_package_description] unless stub[:model_package_description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['InferenceSpecification'] = InferenceSpecification.stub(stub[:inference_specification]) unless stub[:inference_specification].nil?
        data['SourceAlgorithmSpecification'] = SourceAlgorithmSpecification.stub(stub[:source_algorithm_specification]) unless stub[:source_algorithm_specification].nil?
        data['ValidationSpecification'] = ModelPackageValidationSpecification.stub(stub[:validation_specification]) unless stub[:validation_specification].nil?
        data['ModelPackageStatus'] = stub[:model_package_status] unless stub[:model_package_status].nil?
        data['ModelPackageStatusDetails'] = ModelPackageStatusDetails.stub(stub[:model_package_status_details]) unless stub[:model_package_status_details].nil?
        data['CertifyForMarketplace'] = stub[:certify_for_marketplace] unless stub[:certify_for_marketplace].nil?
        data['ModelApprovalStatus'] = stub[:model_approval_status] unless stub[:model_approval_status].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['MetadataProperties'] = MetadataProperties.stub(stub[:metadata_properties]) unless stub[:metadata_properties].nil?
        data['ModelMetrics'] = ModelMetrics.stub(stub[:model_metrics]) unless stub[:model_metrics].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['ApprovalDescription'] = stub[:approval_description] unless stub[:approval_description].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['Task'] = stub[:task] unless stub[:task].nil?
        data['SamplePayloadUrl'] = stub[:sample_payload_url] unless stub[:sample_payload_url].nil?
        data['AdditionalInferenceSpecifications'] = AdditionalInferenceSpecifications.stub(stub[:additional_inference_specifications]) unless stub[:additional_inference_specifications].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['CustomerMetadataProperties'] = CustomerMetadataMap.stub(stub[:customer_metadata_properties]) unless stub[:customer_metadata_properties].nil?
        data['DriftCheckBaselines'] = DriftCheckBaselines.stub(stub[:drift_check_baselines]) unless stub[:drift_check_baselines].nil?
        data
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          endpoint_name: 'endpoint_name',
          endpoint_arn: 'endpoint_arn',
          endpoint_config_name: 'endpoint_config_name',
          production_variants: ProductionVariantSummaryList.default(visited),
          data_capture_config: DataCaptureConfigSummary.default(visited),
          endpoint_status: 'endpoint_status',
          failure_reason: 'failure_reason',
          creation_time: Time.now,
          last_modified_time: Time.now,
          monitoring_schedules: MonitoringScheduleList.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        data['EndpointConfigName'] = stub[:endpoint_config_name] unless stub[:endpoint_config_name].nil?
        data['ProductionVariants'] = ProductionVariantSummaryList.stub(stub[:production_variants]) unless stub[:production_variants].nil?
        data['DataCaptureConfig'] = DataCaptureConfigSummary.stub(stub[:data_capture_config]) unless stub[:data_capture_config].nil?
        data['EndpointStatus'] = stub[:endpoint_status] unless stub[:endpoint_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['MonitoringSchedules'] = MonitoringScheduleList.stub(stub[:monitoring_schedules]) unless stub[:monitoring_schedules].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for MonitoringScheduleList
    class MonitoringScheduleList
      def self.default(visited=[])
        return nil if visited.include?('MonitoringScheduleList')
        visited = visited + ['MonitoringScheduleList']
        [
          MonitoringSchedule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MonitoringSchedule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MonitoringSchedule
    class MonitoringSchedule
      def self.default(visited=[])
        return nil if visited.include?('MonitoringSchedule')
        visited = visited + ['MonitoringSchedule']
        {
          monitoring_schedule_arn: 'monitoring_schedule_arn',
          monitoring_schedule_name: 'monitoring_schedule_name',
          monitoring_schedule_status: 'monitoring_schedule_status',
          monitoring_type: 'monitoring_type',
          failure_reason: 'failure_reason',
          creation_time: Time.now,
          last_modified_time: Time.now,
          monitoring_schedule_config: MonitoringScheduleConfig.default(visited),
          endpoint_name: 'endpoint_name',
          last_monitoring_execution_summary: MonitoringExecutionSummary.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringSchedule.new
        data = {}
        data['MonitoringScheduleArn'] = stub[:monitoring_schedule_arn] unless stub[:monitoring_schedule_arn].nil?
        data['MonitoringScheduleName'] = stub[:monitoring_schedule_name] unless stub[:monitoring_schedule_name].nil?
        data['MonitoringScheduleStatus'] = stub[:monitoring_schedule_status] unless stub[:monitoring_schedule_status].nil?
        data['MonitoringType'] = stub[:monitoring_type] unless stub[:monitoring_type].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['MonitoringScheduleConfig'] = MonitoringScheduleConfig.stub(stub[:monitoring_schedule_config]) unless stub[:monitoring_schedule_config].nil?
        data['EndpointName'] = stub[:endpoint_name] unless stub[:endpoint_name].nil?
        data['LastMonitoringExecutionSummary'] = MonitoringExecutionSummary.stub(stub[:last_monitoring_execution_summary]) unless stub[:last_monitoring_execution_summary].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for TrialComponent
    class TrialComponent
      def self.default(visited=[])
        return nil if visited.include?('TrialComponent')
        visited = visited + ['TrialComponent']
        {
          trial_component_name: 'trial_component_name',
          display_name: 'display_name',
          trial_component_arn: 'trial_component_arn',
          source: TrialComponentSource.default(visited),
          status: TrialComponentStatus.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          parameters: TrialComponentParameters.default(visited),
          input_artifacts: TrialComponentArtifacts.default(visited),
          output_artifacts: TrialComponentArtifacts.default(visited),
          metrics: TrialComponentMetricSummaries.default(visited),
          metadata_properties: MetadataProperties.default(visited),
          source_detail: TrialComponentSourceDetail.default(visited),
          lineage_group_arn: 'lineage_group_arn',
          tags: TagList.default(visited),
          parents: Parents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialComponent.new
        data = {}
        data['TrialComponentName'] = stub[:trial_component_name] unless stub[:trial_component_name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['TrialComponentArn'] = stub[:trial_component_arn] unless stub[:trial_component_arn].nil?
        data['Source'] = TrialComponentSource.stub(stub[:source]) unless stub[:source].nil?
        data['Status'] = TrialComponentStatus.stub(stub[:status]) unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['Parameters'] = TrialComponentParameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['InputArtifacts'] = TrialComponentArtifacts.stub(stub[:input_artifacts]) unless stub[:input_artifacts].nil?
        data['OutputArtifacts'] = TrialComponentArtifacts.stub(stub[:output_artifacts]) unless stub[:output_artifacts].nil?
        data['Metrics'] = TrialComponentMetricSummaries.stub(stub[:metrics]) unless stub[:metrics].nil?
        data['MetadataProperties'] = MetadataProperties.stub(stub[:metadata_properties]) unless stub[:metadata_properties].nil?
        data['SourceDetail'] = TrialComponentSourceDetail.stub(stub[:source_detail]) unless stub[:source_detail].nil?
        data['LineageGroupArn'] = stub[:lineage_group_arn] unless stub[:lineage_group_arn].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['Parents'] = Parents.stub(stub[:parents]) unless stub[:parents].nil?
        data
      end
    end

    # List Stubber for Parents
    class Parents
      def self.default(visited=[])
        return nil if visited.include?('Parents')
        visited = visited + ['Parents']
        [
          Parent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Parent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Parent
    class Parent
      def self.default(visited=[])
        return nil if visited.include?('Parent')
        visited = visited + ['Parent']
        {
          trial_name: 'trial_name',
          experiment_name: 'experiment_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Parent.new
        data = {}
        data['TrialName'] = stub[:trial_name] unless stub[:trial_name].nil?
        data['ExperimentName'] = stub[:experiment_name] unless stub[:experiment_name].nil?
        data
      end
    end

    # Structure Stubber for TrialComponentSourceDetail
    class TrialComponentSourceDetail
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentSourceDetail')
        visited = visited + ['TrialComponentSourceDetail']
        {
          source_arn: 'source_arn',
          training_job: TrainingJob.default(visited),
          processing_job: ProcessingJob.default(visited),
          transform_job: TransformJob.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialComponentSourceDetail.new
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['TrainingJob'] = TrainingJob.stub(stub[:training_job]) unless stub[:training_job].nil?
        data['ProcessingJob'] = ProcessingJob.stub(stub[:processing_job]) unless stub[:processing_job].nil?
        data['TransformJob'] = TransformJob.stub(stub[:transform_job]) unless stub[:transform_job].nil?
        data
      end
    end

    # Structure Stubber for TransformJob
    class TransformJob
      def self.default(visited=[])
        return nil if visited.include?('TransformJob')
        visited = visited + ['TransformJob']
        {
          transform_job_name: 'transform_job_name',
          transform_job_arn: 'transform_job_arn',
          transform_job_status: 'transform_job_status',
          failure_reason: 'failure_reason',
          model_name: 'model_name',
          max_concurrent_transforms: 1,
          model_client_config: ModelClientConfig.default(visited),
          max_payload_in_mb: 1,
          batch_strategy: 'batch_strategy',
          environment: TransformEnvironmentMap.default(visited),
          transform_input: TransformInput.default(visited),
          transform_output: TransformOutput.default(visited),
          transform_resources: TransformResources.default(visited),
          creation_time: Time.now,
          transform_start_time: Time.now,
          transform_end_time: Time.now,
          labeling_job_arn: 'labeling_job_arn',
          auto_ml_job_arn: 'auto_ml_job_arn',
          data_processing: DataProcessing.default(visited),
          experiment_config: ExperimentConfig.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformJob.new
        data = {}
        data['TransformJobName'] = stub[:transform_job_name] unless stub[:transform_job_name].nil?
        data['TransformJobArn'] = stub[:transform_job_arn] unless stub[:transform_job_arn].nil?
        data['TransformJobStatus'] = stub[:transform_job_status] unless stub[:transform_job_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['MaxConcurrentTransforms'] = stub[:max_concurrent_transforms] unless stub[:max_concurrent_transforms].nil?
        data['ModelClientConfig'] = ModelClientConfig.stub(stub[:model_client_config]) unless stub[:model_client_config].nil?
        data['MaxPayloadInMB'] = stub[:max_payload_in_mb] unless stub[:max_payload_in_mb].nil?
        data['BatchStrategy'] = stub[:batch_strategy] unless stub[:batch_strategy].nil?
        data['Environment'] = TransformEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data['TransformInput'] = TransformInput.stub(stub[:transform_input]) unless stub[:transform_input].nil?
        data['TransformOutput'] = TransformOutput.stub(stub[:transform_output]) unless stub[:transform_output].nil?
        data['TransformResources'] = TransformResources.stub(stub[:transform_resources]) unless stub[:transform_resources].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TransformStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:transform_start_time]).to_i unless stub[:transform_start_time].nil?
        data['TransformEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:transform_end_time]).to_i unless stub[:transform_end_time].nil?
        data['LabelingJobArn'] = stub[:labeling_job_arn] unless stub[:labeling_job_arn].nil?
        data['AutoMLJobArn'] = stub[:auto_ml_job_arn] unless stub[:auto_ml_job_arn].nil?
        data['DataProcessing'] = DataProcessing.stub(stub[:data_processing]) unless stub[:data_processing].nil?
        data['ExperimentConfig'] = ExperimentConfig.stub(stub[:experiment_config]) unless stub[:experiment_config].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for ProcessingJob
    class ProcessingJob
      def self.default(visited=[])
        return nil if visited.include?('ProcessingJob')
        visited = visited + ['ProcessingJob']
        {
          processing_inputs: ProcessingInputs.default(visited),
          processing_output_config: ProcessingOutputConfig.default(visited),
          processing_job_name: 'processing_job_name',
          processing_resources: ProcessingResources.default(visited),
          stopping_condition: ProcessingStoppingCondition.default(visited),
          app_specification: AppSpecification.default(visited),
          environment: ProcessingEnvironmentMap.default(visited),
          network_config: NetworkConfig.default(visited),
          role_arn: 'role_arn',
          experiment_config: ExperimentConfig.default(visited),
          processing_job_arn: 'processing_job_arn',
          processing_job_status: 'processing_job_status',
          exit_message: 'exit_message',
          failure_reason: 'failure_reason',
          processing_end_time: Time.now,
          processing_start_time: Time.now,
          last_modified_time: Time.now,
          creation_time: Time.now,
          monitoring_schedule_arn: 'monitoring_schedule_arn',
          auto_ml_job_arn: 'auto_ml_job_arn',
          training_job_arn: 'training_job_arn',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessingJob.new
        data = {}
        data['ProcessingInputs'] = ProcessingInputs.stub(stub[:processing_inputs]) unless stub[:processing_inputs].nil?
        data['ProcessingOutputConfig'] = ProcessingOutputConfig.stub(stub[:processing_output_config]) unless stub[:processing_output_config].nil?
        data['ProcessingJobName'] = stub[:processing_job_name] unless stub[:processing_job_name].nil?
        data['ProcessingResources'] = ProcessingResources.stub(stub[:processing_resources]) unless stub[:processing_resources].nil?
        data['StoppingCondition'] = ProcessingStoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        data['AppSpecification'] = AppSpecification.stub(stub[:app_specification]) unless stub[:app_specification].nil?
        data['Environment'] = ProcessingEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data['NetworkConfig'] = NetworkConfig.stub(stub[:network_config]) unless stub[:network_config].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ExperimentConfig'] = ExperimentConfig.stub(stub[:experiment_config]) unless stub[:experiment_config].nil?
        data['ProcessingJobArn'] = stub[:processing_job_arn] unless stub[:processing_job_arn].nil?
        data['ProcessingJobStatus'] = stub[:processing_job_status] unless stub[:processing_job_status].nil?
        data['ExitMessage'] = stub[:exit_message] unless stub[:exit_message].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['ProcessingEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:processing_end_time]).to_i unless stub[:processing_end_time].nil?
        data['ProcessingStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:processing_start_time]).to_i unless stub[:processing_start_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['MonitoringScheduleArn'] = stub[:monitoring_schedule_arn] unless stub[:monitoring_schedule_arn].nil?
        data['AutoMLJobArn'] = stub[:auto_ml_job_arn] unless stub[:auto_ml_job_arn].nil?
        data['TrainingJobArn'] = stub[:training_job_arn] unless stub[:training_job_arn].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for TrainingJob
    class TrainingJob
      def self.default(visited=[])
        return nil if visited.include?('TrainingJob')
        visited = visited + ['TrainingJob']
        {
          training_job_name: 'training_job_name',
          training_job_arn: 'training_job_arn',
          tuning_job_arn: 'tuning_job_arn',
          labeling_job_arn: 'labeling_job_arn',
          auto_ml_job_arn: 'auto_ml_job_arn',
          model_artifacts: ModelArtifacts.default(visited),
          training_job_status: 'training_job_status',
          secondary_status: 'secondary_status',
          failure_reason: 'failure_reason',
          hyper_parameters: HyperParameters.default(visited),
          algorithm_specification: AlgorithmSpecification.default(visited),
          role_arn: 'role_arn',
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          resource_config: ResourceConfig.default(visited),
          vpc_config: VpcConfig.default(visited),
          stopping_condition: StoppingCondition.default(visited),
          creation_time: Time.now,
          training_start_time: Time.now,
          training_end_time: Time.now,
          last_modified_time: Time.now,
          secondary_status_transitions: SecondaryStatusTransitions.default(visited),
          final_metric_data_list: FinalMetricDataList.default(visited),
          enable_network_isolation: false,
          enable_inter_container_traffic_encryption: false,
          enable_managed_spot_training: false,
          checkpoint_config: CheckpointConfig.default(visited),
          training_time_in_seconds: 1,
          billable_time_in_seconds: 1,
          debug_hook_config: DebugHookConfig.default(visited),
          experiment_config: ExperimentConfig.default(visited),
          debug_rule_configurations: DebugRuleConfigurations.default(visited),
          tensor_board_output_config: TensorBoardOutputConfig.default(visited),
          debug_rule_evaluation_statuses: DebugRuleEvaluationStatuses.default(visited),
          environment: TrainingEnvironmentMap.default(visited),
          retry_strategy: RetryStrategy.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingJob.new
        data = {}
        data['TrainingJobName'] = stub[:training_job_name] unless stub[:training_job_name].nil?
        data['TrainingJobArn'] = stub[:training_job_arn] unless stub[:training_job_arn].nil?
        data['TuningJobArn'] = stub[:tuning_job_arn] unless stub[:tuning_job_arn].nil?
        data['LabelingJobArn'] = stub[:labeling_job_arn] unless stub[:labeling_job_arn].nil?
        data['AutoMLJobArn'] = stub[:auto_ml_job_arn] unless stub[:auto_ml_job_arn].nil?
        data['ModelArtifacts'] = ModelArtifacts.stub(stub[:model_artifacts]) unless stub[:model_artifacts].nil?
        data['TrainingJobStatus'] = stub[:training_job_status] unless stub[:training_job_status].nil?
        data['SecondaryStatus'] = stub[:secondary_status] unless stub[:secondary_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['HyperParameters'] = HyperParameters.stub(stub[:hyper_parameters]) unless stub[:hyper_parameters].nil?
        data['AlgorithmSpecification'] = AlgorithmSpecification.stub(stub[:algorithm_specification]) unless stub[:algorithm_specification].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['ResourceConfig'] = ResourceConfig.stub(stub[:resource_config]) unless stub[:resource_config].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['StoppingCondition'] = StoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TrainingStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_start_time]).to_i unless stub[:training_start_time].nil?
        data['TrainingEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_end_time]).to_i unless stub[:training_end_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['SecondaryStatusTransitions'] = SecondaryStatusTransitions.stub(stub[:secondary_status_transitions]) unless stub[:secondary_status_transitions].nil?
        data['FinalMetricDataList'] = FinalMetricDataList.stub(stub[:final_metric_data_list]) unless stub[:final_metric_data_list].nil?
        data['EnableNetworkIsolation'] = stub[:enable_network_isolation] unless stub[:enable_network_isolation].nil?
        data['EnableInterContainerTrafficEncryption'] = stub[:enable_inter_container_traffic_encryption] unless stub[:enable_inter_container_traffic_encryption].nil?
        data['EnableManagedSpotTraining'] = stub[:enable_managed_spot_training] unless stub[:enable_managed_spot_training].nil?
        data['CheckpointConfig'] = CheckpointConfig.stub(stub[:checkpoint_config]) unless stub[:checkpoint_config].nil?
        data['TrainingTimeInSeconds'] = stub[:training_time_in_seconds] unless stub[:training_time_in_seconds].nil?
        data['BillableTimeInSeconds'] = stub[:billable_time_in_seconds] unless stub[:billable_time_in_seconds].nil?
        data['DebugHookConfig'] = DebugHookConfig.stub(stub[:debug_hook_config]) unless stub[:debug_hook_config].nil?
        data['ExperimentConfig'] = ExperimentConfig.stub(stub[:experiment_config]) unless stub[:experiment_config].nil?
        data['DebugRuleConfigurations'] = DebugRuleConfigurations.stub(stub[:debug_rule_configurations]) unless stub[:debug_rule_configurations].nil?
        data['TensorBoardOutputConfig'] = TensorBoardOutputConfig.stub(stub[:tensor_board_output_config]) unless stub[:tensor_board_output_config].nil?
        data['DebugRuleEvaluationStatuses'] = DebugRuleEvaluationStatuses.stub(stub[:debug_rule_evaluation_statuses]) unless stub[:debug_rule_evaluation_statuses].nil?
        data['Environment'] = TrainingEnvironmentMap.stub(stub[:environment]) unless stub[:environment].nil?
        data['RetryStrategy'] = RetryStrategy.stub(stub[:retry_strategy]) unless stub[:retry_strategy].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for Trial
    class Trial
      def self.default(visited=[])
        return nil if visited.include?('Trial')
        visited = visited + ['Trial']
        {
          trial_name: 'trial_name',
          trial_arn: 'trial_arn',
          display_name: 'display_name',
          experiment_name: 'experiment_name',
          source: TrialSource.default(visited),
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          metadata_properties: MetadataProperties.default(visited),
          tags: TagList.default(visited),
          trial_component_summaries: TrialComponentSimpleSummaries.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Trial.new
        data = {}
        data['TrialName'] = stub[:trial_name] unless stub[:trial_name].nil?
        data['TrialArn'] = stub[:trial_arn] unless stub[:trial_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['ExperimentName'] = stub[:experiment_name] unless stub[:experiment_name].nil?
        data['Source'] = TrialSource.stub(stub[:source]) unless stub[:source].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['MetadataProperties'] = MetadataProperties.stub(stub[:metadata_properties]) unless stub[:metadata_properties].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['TrialComponentSummaries'] = TrialComponentSimpleSummaries.stub(stub[:trial_component_summaries]) unless stub[:trial_component_summaries].nil?
        data
      end
    end

    # List Stubber for TrialComponentSimpleSummaries
    class TrialComponentSimpleSummaries
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentSimpleSummaries')
        visited = visited + ['TrialComponentSimpleSummaries']
        [
          TrialComponentSimpleSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TrialComponentSimpleSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrialComponentSimpleSummary
    class TrialComponentSimpleSummary
      def self.default(visited=[])
        return nil if visited.include?('TrialComponentSimpleSummary')
        visited = visited + ['TrialComponentSimpleSummary']
        {
          trial_component_name: 'trial_component_name',
          trial_component_arn: 'trial_component_arn',
          trial_component_source: TrialComponentSource.default(visited),
          creation_time: Time.now,
          created_by: UserContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialComponentSimpleSummary.new
        data = {}
        data['TrialComponentName'] = stub[:trial_component_name] unless stub[:trial_component_name].nil?
        data['TrialComponentArn'] = stub[:trial_component_arn] unless stub[:trial_component_arn].nil?
        data['TrialComponentSource'] = TrialComponentSource.stub(stub[:trial_component_source]) unless stub[:trial_component_source].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data
      end
    end

    # Structure Stubber for Experiment
    class Experiment
      def self.default(visited=[])
        return nil if visited.include?('Experiment')
        visited = visited + ['Experiment']
        {
          experiment_name: 'experiment_name',
          experiment_arn: 'experiment_arn',
          display_name: 'display_name',
          source: ExperimentSource.default(visited),
          description: 'description',
          creation_time: Time.now,
          created_by: UserContext.default(visited),
          last_modified_time: Time.now,
          last_modified_by: UserContext.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Experiment.new
        data = {}
        data['ExperimentName'] = stub[:experiment_name] unless stub[:experiment_name].nil?
        data['ExperimentArn'] = stub[:experiment_arn] unless stub[:experiment_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Source'] = ExperimentSource.stub(stub[:source]) unless stub[:source].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CreatedBy'] = UserContext.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LastModifiedBy'] = UserContext.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for SendPipelineExecutionStepFailure
    class SendPipelineExecutionStepFailure
      def self.default(visited=[])
        {
          pipeline_execution_arn: 'pipeline_execution_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineExecutionArn'] = stub[:pipeline_execution_arn] unless stub[:pipeline_execution_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendPipelineExecutionStepSuccess
    class SendPipelineExecutionStepSuccess
      def self.default(visited=[])
        {
          pipeline_execution_arn: 'pipeline_execution_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineExecutionArn'] = stub[:pipeline_execution_arn] unless stub[:pipeline_execution_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMonitoringSchedule
    class StartMonitoringSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartNotebookInstance
    class StartNotebookInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartPipelineExecution
    class StartPipelineExecution
      def self.default(visited=[])
        {
          pipeline_execution_arn: 'pipeline_execution_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineExecutionArn'] = stub[:pipeline_execution_arn] unless stub[:pipeline_execution_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopAutoMLJob
    class StopAutoMLJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopCompilationJob
    class StopCompilationJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopEdgePackagingJob
    class StopEdgePackagingJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopHyperParameterTuningJob
    class StopHyperParameterTuningJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopInferenceRecommendationsJob
    class StopInferenceRecommendationsJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopLabelingJob
    class StopLabelingJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopMonitoringSchedule
    class StopMonitoringSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopNotebookInstance
    class StopNotebookInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopPipelineExecution
    class StopPipelineExecution
      def self.default(visited=[])
        {
          pipeline_execution_arn: 'pipeline_execution_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineExecutionArn'] = stub[:pipeline_execution_arn] unless stub[:pipeline_execution_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopProcessingJob
    class StopProcessingJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopTrainingJob
    class StopTrainingJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopTransformJob
    class StopTransformJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAction
    class UpdateAction
      def self.default(visited=[])
        {
          action_arn: 'action_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ActionArn'] = stub[:action_arn] unless stub[:action_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAppImageConfig
    class UpdateAppImageConfig
      def self.default(visited=[])
        {
          app_image_config_arn: 'app_image_config_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppImageConfigArn'] = stub[:app_image_config_arn] unless stub[:app_image_config_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateArtifact
    class UpdateArtifact
      def self.default(visited=[])
        {
          artifact_arn: 'artifact_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ArtifactArn'] = stub[:artifact_arn] unless stub[:artifact_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCodeRepository
    class UpdateCodeRepository
      def self.default(visited=[])
        {
          code_repository_arn: 'code_repository_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CodeRepositoryArn'] = stub[:code_repository_arn] unless stub[:code_repository_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContext
    class UpdateContext
      def self.default(visited=[])
        {
          context_arn: 'context_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContextArn'] = stub[:context_arn] unless stub[:context_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDeviceFleet
    class UpdateDeviceFleet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDevices
    class UpdateDevices
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDomain
    class UpdateDomain
      def self.default(visited=[])
        {
          domain_arn: 'domain_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DomainArn'] = stub[:domain_arn] unless stub[:domain_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEndpoint
    class UpdateEndpoint
      def self.default(visited=[])
        {
          endpoint_arn: 'endpoint_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEndpointWeightsAndCapacities
    class UpdateEndpointWeightsAndCapacities
      def self.default(visited=[])
        {
          endpoint_arn: 'endpoint_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateExperiment
    class UpdateExperiment
      def self.default(visited=[])
        {
          experiment_arn: 'experiment_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExperimentArn'] = stub[:experiment_arn] unless stub[:experiment_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateImage
    class UpdateImage
      def self.default(visited=[])
        {
          image_arn: 'image_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateModelPackage
    class UpdateModelPackage
      def self.default(visited=[])
        {
          model_package_arn: 'model_package_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelPackageArn'] = stub[:model_package_arn] unless stub[:model_package_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMonitoringSchedule
    class UpdateMonitoringSchedule
      def self.default(visited=[])
        {
          monitoring_schedule_arn: 'monitoring_schedule_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonitoringScheduleArn'] = stub[:monitoring_schedule_arn] unless stub[:monitoring_schedule_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNotebookInstance
    class UpdateNotebookInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNotebookInstanceLifecycleConfig
    class UpdateNotebookInstanceLifecycleConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePipeline
    class UpdatePipeline
      def self.default(visited=[])
        {
          pipeline_arn: 'pipeline_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineArn'] = stub[:pipeline_arn] unless stub[:pipeline_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePipelineExecution
    class UpdatePipelineExecution
      def self.default(visited=[])
        {
          pipeline_execution_arn: 'pipeline_execution_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PipelineExecutionArn'] = stub[:pipeline_execution_arn] unless stub[:pipeline_execution_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProject
    class UpdateProject
      def self.default(visited=[])
        {
          project_arn: 'project_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProjectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTrainingJob
    class UpdateTrainingJob
      def self.default(visited=[])
        {
          training_job_arn: 'training_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrainingJobArn'] = stub[:training_job_arn] unless stub[:training_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTrial
    class UpdateTrial
      def self.default(visited=[])
        {
          trial_arn: 'trial_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialArn'] = stub[:trial_arn] unless stub[:trial_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTrialComponent
    class UpdateTrialComponent
      def self.default(visited=[])
        {
          trial_component_arn: 'trial_component_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TrialComponentArn'] = stub[:trial_component_arn] unless stub[:trial_component_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserProfile
    class UpdateUserProfile
      def self.default(visited=[])
        {
          user_profile_arn: 'user_profile_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserProfileArn'] = stub[:user_profile_arn] unless stub[:user_profile_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateWorkforce
    class UpdateWorkforce
      def self.default(visited=[])
        {
          workforce: Workforce.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workforce'] = Workforce.stub(stub[:workforce]) unless stub[:workforce].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateWorkteam
    class UpdateWorkteam
      def self.default(visited=[])
        {
          workteam: Workteam.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workteam'] = Workteam.stub(stub[:workteam]) unless stub[:workteam].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
