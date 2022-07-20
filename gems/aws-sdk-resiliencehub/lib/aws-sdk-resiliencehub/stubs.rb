# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Resiliencehub
  module Stubs

    # Operation Stubber for AddDraftAppVersionResourceMappings
    class AddDraftAppVersionResourceMappings
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
          resource_mappings: ResourceMappingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data['resourceMappings'] = Stubs::ResourceMappingList.stub(stub[:resource_mappings]) unless stub[:resource_mappings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceMappingList
    class ResourceMappingList
      def self.default(visited=[])
        return nil if visited.include?('ResourceMappingList')
        visited = visited + ['ResourceMappingList']
        [
          ResourceMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceMapping
    class ResourceMapping
      def self.default(visited=[])
        return nil if visited.include?('ResourceMapping')
        visited = visited + ['ResourceMapping']
        {
          resource_name: 'resource_name',
          logical_stack_name: 'logical_stack_name',
          app_registry_app_name: 'app_registry_app_name',
          resource_group_name: 'resource_group_name',
          mapping_type: 'mapping_type',
          physical_resource_id: PhysicalResourceId.default(visited),
          terraform_source_name: 'terraform_source_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceMapping.new
        data = {}
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data['logicalStackName'] = stub[:logical_stack_name] unless stub[:logical_stack_name].nil?
        data['appRegistryAppName'] = stub[:app_registry_app_name] unless stub[:app_registry_app_name].nil?
        data['resourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        data['mappingType'] = stub[:mapping_type] unless stub[:mapping_type].nil?
        data['physicalResourceId'] = Stubs::PhysicalResourceId.stub(stub[:physical_resource_id]) unless stub[:physical_resource_id].nil?
        data['terraformSourceName'] = stub[:terraform_source_name] unless stub[:terraform_source_name].nil?
        data
      end
    end

    # Structure Stubber for PhysicalResourceId
    class PhysicalResourceId
      def self.default(visited=[])
        return nil if visited.include?('PhysicalResourceId')
        visited = visited + ['PhysicalResourceId']
        {
          identifier: 'identifier',
          type: 'type',
          aws_region: 'aws_region',
          aws_account_id: 'aws_account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PhysicalResourceId.new
        data = {}
        data['identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data
      end
    end

    # Operation Stubber for CreateApp
    class CreateApp
      def self.default(visited=[])
        {
          app: App.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['app'] = Stubs::App.stub(stub[:app]) unless stub[:app].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for App
    class App
      def self.default(visited=[])
        return nil if visited.include?('App')
        visited = visited + ['App']
        {
          app_arn: 'app_arn',
          name: 'name',
          description: 'description',
          policy_arn: 'policy_arn',
          creation_time: Time.now,
          status: 'status',
          compliance_status: 'compliance_status',
          last_app_compliance_evaluation_time: Time.now,
          resiliency_score: 1.0,
          last_resiliency_score_evaluation_time: Time.now,
          tags: TagMap.default(visited),
          assessment_schedule: 'assessment_schedule',
        }
      end

      def self.stub(stub)
        stub ||= Types::App.new
        data = {}
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['policyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['complianceStatus'] = stub[:compliance_status] unless stub[:compliance_status].nil?
        data['lastAppComplianceEvaluationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_app_compliance_evaluation_time]).to_i unless stub[:last_app_compliance_evaluation_time].nil?
        data['resiliencyScore'] = Hearth::NumberHelper.serialize(stub[:resiliency_score])
        data['lastResiliencyScoreEvaluationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_resiliency_score_evaluation_time]).to_i unless stub[:last_resiliency_score_evaluation_time].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['assessmentSchedule'] = stub[:assessment_schedule] unless stub[:assessment_schedule].nil?
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

    # Operation Stubber for CreateRecommendationTemplate
    class CreateRecommendationTemplate
      def self.default(visited=[])
        {
          recommendation_template: RecommendationTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recommendationTemplate'] = Stubs::RecommendationTemplate.stub(stub[:recommendation_template]) unless stub[:recommendation_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RecommendationTemplate
    class RecommendationTemplate
      def self.default(visited=[])
        return nil if visited.include?('RecommendationTemplate')
        visited = visited + ['RecommendationTemplate']
        {
          templates_location: S3Location.default(visited),
          assessment_arn: 'assessment_arn',
          app_arn: 'app_arn',
          recommendation_ids: RecommendationIdList.default(visited),
          recommendation_types: RenderRecommendationTypeList.default(visited),
          format: 'format',
          recommendation_template_arn: 'recommendation_template_arn',
          message: 'message',
          status: 'status',
          name: 'name',
          start_time: Time.now,
          end_time: Time.now,
          tags: TagMap.default(visited),
          needs_replacements: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationTemplate.new
        data = {}
        data['templatesLocation'] = Stubs::S3Location.stub(stub[:templates_location]) unless stub[:templates_location].nil?
        data['assessmentArn'] = stub[:assessment_arn] unless stub[:assessment_arn].nil?
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['recommendationIds'] = Stubs::RecommendationIdList.stub(stub[:recommendation_ids]) unless stub[:recommendation_ids].nil?
        data['recommendationTypes'] = Stubs::RenderRecommendationTypeList.stub(stub[:recommendation_types]) unless stub[:recommendation_types].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['recommendationTemplateArn'] = stub[:recommendation_template_arn] unless stub[:recommendation_template_arn].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['needsReplacements'] = stub[:needs_replacements] unless stub[:needs_replacements].nil?
        data
      end
    end

    # List Stubber for RenderRecommendationTypeList
    class RenderRecommendationTypeList
      def self.default(visited=[])
        return nil if visited.include?('RenderRecommendationTypeList')
        visited = visited + ['RenderRecommendationTypeList']
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

    # List Stubber for RecommendationIdList
    class RecommendationIdList
      def self.default(visited=[])
        return nil if visited.include?('RecommendationIdList')
        visited = visited + ['RecommendationIdList']
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

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Operation Stubber for CreateResiliencyPolicy
    class CreateResiliencyPolicy
      def self.default(visited=[])
        {
          policy: ResiliencyPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::ResiliencyPolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResiliencyPolicy
    class ResiliencyPolicy
      def self.default(visited=[])
        return nil if visited.include?('ResiliencyPolicy')
        visited = visited + ['ResiliencyPolicy']
        {
          policy_arn: 'policy_arn',
          policy_name: 'policy_name',
          policy_description: 'policy_description',
          data_location_constraint: 'data_location_constraint',
          tier: 'tier',
          estimated_cost_tier: 'estimated_cost_tier',
          policy: DisruptionPolicy.default(visited),
          creation_time: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResiliencyPolicy.new
        data = {}
        data['policyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['policyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['policyDescription'] = stub[:policy_description] unless stub[:policy_description].nil?
        data['dataLocationConstraint'] = stub[:data_location_constraint] unless stub[:data_location_constraint].nil?
        data['tier'] = stub[:tier] unless stub[:tier].nil?
        data['estimatedCostTier'] = stub[:estimated_cost_tier] unless stub[:estimated_cost_tier].nil?
        data['policy'] = Stubs::DisruptionPolicy.stub(stub[:policy]) unless stub[:policy].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for DisruptionPolicy
    class DisruptionPolicy
      def self.default(visited=[])
        return nil if visited.include?('DisruptionPolicy')
        visited = visited + ['DisruptionPolicy']
        {
          test_key: FailurePolicy.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::FailurePolicy.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FailurePolicy
    class FailurePolicy
      def self.default(visited=[])
        return nil if visited.include?('FailurePolicy')
        visited = visited + ['FailurePolicy']
        {
          rto_in_secs: 1,
          rpo_in_secs: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FailurePolicy.new
        data = {}
        data['rtoInSecs'] = stub[:rto_in_secs] unless stub[:rto_in_secs].nil?
        data['rpoInSecs'] = stub[:rpo_in_secs] unless stub[:rpo_in_secs].nil?
        data
      end
    end

    # Operation Stubber for DeleteApp
    class DeleteApp
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAppAssessment
    class DeleteAppAssessment
      def self.default(visited=[])
        {
          assessment_arn: 'assessment_arn',
          assessment_status: 'assessment_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessmentArn'] = stub[:assessment_arn] unless stub[:assessment_arn].nil?
        data['assessmentStatus'] = stub[:assessment_status] unless stub[:assessment_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteRecommendationTemplate
    class DeleteRecommendationTemplate
      def self.default(visited=[])
        {
          recommendation_template_arn: 'recommendation_template_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recommendationTemplateArn'] = stub[:recommendation_template_arn] unless stub[:recommendation_template_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteResiliencyPolicy
    class DeleteResiliencyPolicy
      def self.default(visited=[])
        {
          policy_arn: 'policy_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeApp
    class DescribeApp
      def self.default(visited=[])
        {
          app: App.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['app'] = Stubs::App.stub(stub[:app]) unless stub[:app].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAppAssessment
    class DescribeAppAssessment
      def self.default(visited=[])
        {
          assessment: AppAssessment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessment'] = Stubs::AppAssessment.stub(stub[:assessment]) unless stub[:assessment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppAssessment
    class AppAssessment
      def self.default(visited=[])
        return nil if visited.include?('AppAssessment')
        visited = visited + ['AppAssessment']
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
          invoker: 'invoker',
          cost: Cost.default(visited),
          resiliency_score: ResiliencyScore.default(visited),
          compliance: AssessmentCompliance.default(visited),
          compliance_status: 'compliance_status',
          assessment_status: 'assessment_status',
          start_time: Time.now,
          end_time: Time.now,
          message: 'message',
          assessment_name: 'assessment_name',
          assessment_arn: 'assessment_arn',
          policy: ResiliencyPolicy.default(visited),
          tags: TagMap.default(visited),
          resource_errors_details: ResourceErrorsDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppAssessment.new
        data = {}
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data['invoker'] = stub[:invoker] unless stub[:invoker].nil?
        data['cost'] = Stubs::Cost.stub(stub[:cost]) unless stub[:cost].nil?
        data['resiliencyScore'] = Stubs::ResiliencyScore.stub(stub[:resiliency_score]) unless stub[:resiliency_score].nil?
        data['compliance'] = Stubs::AssessmentCompliance.stub(stub[:compliance]) unless stub[:compliance].nil?
        data['complianceStatus'] = stub[:compliance_status] unless stub[:compliance_status].nil?
        data['assessmentStatus'] = stub[:assessment_status] unless stub[:assessment_status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['assessmentName'] = stub[:assessment_name] unless stub[:assessment_name].nil?
        data['assessmentArn'] = stub[:assessment_arn] unless stub[:assessment_arn].nil?
        data['policy'] = Stubs::ResiliencyPolicy.stub(stub[:policy]) unless stub[:policy].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['resourceErrorsDetails'] = Stubs::ResourceErrorsDetails.stub(stub[:resource_errors_details]) unless stub[:resource_errors_details].nil?
        data
      end
    end

    # Structure Stubber for ResourceErrorsDetails
    class ResourceErrorsDetails
      def self.default(visited=[])
        return nil if visited.include?('ResourceErrorsDetails')
        visited = visited + ['ResourceErrorsDetails']
        {
          resource_errors: ResourceErrorList.default(visited),
          has_more_errors: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceErrorsDetails.new
        data = {}
        data['resourceErrors'] = Stubs::ResourceErrorList.stub(stub[:resource_errors]) unless stub[:resource_errors].nil?
        data['hasMoreErrors'] = stub[:has_more_errors] unless stub[:has_more_errors].nil?
        data
      end
    end

    # List Stubber for ResourceErrorList
    class ResourceErrorList
      def self.default(visited=[])
        return nil if visited.include?('ResourceErrorList')
        visited = visited + ['ResourceErrorList']
        [
          ResourceError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceError
    class ResourceError
      def self.default(visited=[])
        return nil if visited.include?('ResourceError')
        visited = visited + ['ResourceError']
        {
          logical_resource_id: 'logical_resource_id',
          physical_resource_id: 'physical_resource_id',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceError.new
        data = {}
        data['logicalResourceId'] = stub[:logical_resource_id] unless stub[:logical_resource_id].nil?
        data['physicalResourceId'] = stub[:physical_resource_id] unless stub[:physical_resource_id].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Map Stubber for AssessmentCompliance
    class AssessmentCompliance
      def self.default(visited=[])
        return nil if visited.include?('AssessmentCompliance')
        visited = visited + ['AssessmentCompliance']
        {
          test_key: DisruptionCompliance.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::DisruptionCompliance.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for DisruptionCompliance
    class DisruptionCompliance
      def self.default(visited=[])
        return nil if visited.include?('DisruptionCompliance')
        visited = visited + ['DisruptionCompliance']
        {
          achievable_rto_in_secs: 1,
          current_rto_in_secs: 1,
          rto_reference_id: 'rto_reference_id',
          rto_description: 'rto_description',
          current_rpo_in_secs: 1,
          rpo_reference_id: 'rpo_reference_id',
          rpo_description: 'rpo_description',
          compliance_status: 'compliance_status',
          achievable_rpo_in_secs: 1,
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DisruptionCompliance.new
        data = {}
        data['achievableRtoInSecs'] = stub[:achievable_rto_in_secs] unless stub[:achievable_rto_in_secs].nil?
        data['currentRtoInSecs'] = stub[:current_rto_in_secs] unless stub[:current_rto_in_secs].nil?
        data['rtoReferenceId'] = stub[:rto_reference_id] unless stub[:rto_reference_id].nil?
        data['rtoDescription'] = stub[:rto_description] unless stub[:rto_description].nil?
        data['currentRpoInSecs'] = stub[:current_rpo_in_secs] unless stub[:current_rpo_in_secs].nil?
        data['rpoReferenceId'] = stub[:rpo_reference_id] unless stub[:rpo_reference_id].nil?
        data['rpoDescription'] = stub[:rpo_description] unless stub[:rpo_description].nil?
        data['complianceStatus'] = stub[:compliance_status] unless stub[:compliance_status].nil?
        data['achievableRpoInSecs'] = stub[:achievable_rpo_in_secs] unless stub[:achievable_rpo_in_secs].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ResiliencyScore
    class ResiliencyScore
      def self.default(visited=[])
        return nil if visited.include?('ResiliencyScore')
        visited = visited + ['ResiliencyScore']
        {
          score: 1.0,
          disruption_score: DisruptionResiliencyScore.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResiliencyScore.new
        data = {}
        data['score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['disruptionScore'] = Stubs::DisruptionResiliencyScore.stub(stub[:disruption_score]) unless stub[:disruption_score].nil?
        data
      end
    end

    # Map Stubber for DisruptionResiliencyScore
    class DisruptionResiliencyScore
      def self.default(visited=[])
        return nil if visited.include?('DisruptionResiliencyScore')
        visited = visited + ['DisruptionResiliencyScore']
        {
          test_key: 1.0
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Hearth::NumberHelper.serialize(value)
        end
        data
      end
    end

    # Structure Stubber for Cost
    class Cost
      def self.default(visited=[])
        return nil if visited.include?('Cost')
        visited = visited + ['Cost']
        {
          amount: 1.0,
          currency: 'currency',
          frequency: 'frequency',
        }
      end

      def self.stub(stub)
        stub ||= Types::Cost.new
        data = {}
        data['amount'] = Hearth::NumberHelper.serialize(stub[:amount])
        data['currency'] = stub[:currency] unless stub[:currency].nil?
        data['frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data
      end
    end

    # Operation Stubber for DescribeAppVersionResourcesResolutionStatus
    class DescribeAppVersionResourcesResolutionStatus
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
          resolution_id: 'resolution_id',
          status: 'status',
          error_message: 'error_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data['resolutionId'] = stub[:resolution_id] unless stub[:resolution_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAppVersionTemplate
    class DescribeAppVersionTemplate
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
          app_template_body: 'app_template_body',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data['appTemplateBody'] = stub[:app_template_body] unless stub[:app_template_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDraftAppVersionResourcesImportStatus
    class DescribeDraftAppVersionResourcesImportStatus
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
          status: 'status',
          status_change_time: Time.now,
          error_message: 'error_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusChangeTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:status_change_time]).to_i unless stub[:status_change_time].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeResiliencyPolicy
    class DescribeResiliencyPolicy
      def self.default(visited=[])
        {
          policy: ResiliencyPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::ResiliencyPolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ImportResourcesToDraftAppVersion
    class ImportResourcesToDraftAppVersion
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
          source_arns: ArnList.default(visited),
          status: 'status',
          terraform_sources: TerraformSourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data['sourceArns'] = Stubs::ArnList.stub(stub[:source_arns]) unless stub[:source_arns].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['terraformSources'] = Stubs::TerraformSourceList.stub(stub[:terraform_sources]) unless stub[:terraform_sources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TerraformSourceList
    class TerraformSourceList
      def self.default(visited=[])
        return nil if visited.include?('TerraformSourceList')
        visited = visited + ['TerraformSourceList']
        [
          TerraformSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TerraformSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TerraformSource
    class TerraformSource
      def self.default(visited=[])
        return nil if visited.include?('TerraformSource')
        visited = visited + ['TerraformSource']
        {
          s3_state_file_url: 's3_state_file_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::TerraformSource.new
        data = {}
        data['s3StateFileUrl'] = stub[:s3_state_file_url] unless stub[:s3_state_file_url].nil?
        data
      end
    end

    # List Stubber for ArnList
    class ArnList
      def self.default(visited=[])
        return nil if visited.include?('ArnList')
        visited = visited + ['ArnList']
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

    # Operation Stubber for ListAlarmRecommendations
    class ListAlarmRecommendations
      def self.default(visited=[])
        {
          alarm_recommendations: AlarmRecommendationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['alarmRecommendations'] = Stubs::AlarmRecommendationList.stub(stub[:alarm_recommendations]) unless stub[:alarm_recommendations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AlarmRecommendationList
    class AlarmRecommendationList
      def self.default(visited=[])
        return nil if visited.include?('AlarmRecommendationList')
        visited = visited + ['AlarmRecommendationList']
        [
          AlarmRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AlarmRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlarmRecommendation
    class AlarmRecommendation
      def self.default(visited=[])
        return nil if visited.include?('AlarmRecommendation')
        visited = visited + ['AlarmRecommendation']
        {
          recommendation_id: 'recommendation_id',
          reference_id: 'reference_id',
          name: 'name',
          description: 'description',
          type: 'type',
          app_component_name: 'app_component_name',
          items: RecommendationItemList.default(visited),
          prerequisite: 'prerequisite',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmRecommendation.new
        data = {}
        data['recommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['referenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['appComponentName'] = stub[:app_component_name] unless stub[:app_component_name].nil?
        data['items'] = Stubs::RecommendationItemList.stub(stub[:items]) unless stub[:items].nil?
        data['prerequisite'] = stub[:prerequisite] unless stub[:prerequisite].nil?
        data
      end
    end

    # List Stubber for RecommendationItemList
    class RecommendationItemList
      def self.default(visited=[])
        return nil if visited.include?('RecommendationItemList')
        visited = visited + ['RecommendationItemList']
        [
          RecommendationItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationItem
    class RecommendationItem
      def self.default(visited=[])
        return nil if visited.include?('RecommendationItem')
        visited = visited + ['RecommendationItem']
        {
          resource_id: 'resource_id',
          target_account_id: 'target_account_id',
          target_region: 'target_region',
          already_implemented: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationItem.new
        data = {}
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['targetAccountId'] = stub[:target_account_id] unless stub[:target_account_id].nil?
        data['targetRegion'] = stub[:target_region] unless stub[:target_region].nil?
        data['alreadyImplemented'] = stub[:already_implemented] unless stub[:already_implemented].nil?
        data
      end
    end

    # Operation Stubber for ListAppAssessments
    class ListAppAssessments
      def self.default(visited=[])
        {
          next_token: 'next_token',
          assessment_summaries: AppAssessmentSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['assessmentSummaries'] = Stubs::AppAssessmentSummaryList.stub(stub[:assessment_summaries]) unless stub[:assessment_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppAssessmentSummaryList
    class AppAssessmentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AppAssessmentSummaryList')
        visited = visited + ['AppAssessmentSummaryList']
        [
          AppAssessmentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppAssessmentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppAssessmentSummary
    class AppAssessmentSummary
      def self.default(visited=[])
        return nil if visited.include?('AppAssessmentSummary')
        visited = visited + ['AppAssessmentSummary']
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
          assessment_status: 'assessment_status',
          invoker: 'invoker',
          start_time: Time.now,
          end_time: Time.now,
          message: 'message',
          assessment_name: 'assessment_name',
          assessment_arn: 'assessment_arn',
          compliance_status: 'compliance_status',
          cost: Cost.default(visited),
          resiliency_score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppAssessmentSummary.new
        data = {}
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data['assessmentStatus'] = stub[:assessment_status] unless stub[:assessment_status].nil?
        data['invoker'] = stub[:invoker] unless stub[:invoker].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['assessmentName'] = stub[:assessment_name] unless stub[:assessment_name].nil?
        data['assessmentArn'] = stub[:assessment_arn] unless stub[:assessment_arn].nil?
        data['complianceStatus'] = stub[:compliance_status] unless stub[:compliance_status].nil?
        data['cost'] = Stubs::Cost.stub(stub[:cost]) unless stub[:cost].nil?
        data['resiliencyScore'] = Hearth::NumberHelper.serialize(stub[:resiliency_score])
        data
      end
    end

    # Operation Stubber for ListAppComponentCompliances
    class ListAppComponentCompliances
      def self.default(visited=[])
        {
          component_compliances: ComponentCompliancesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['componentCompliances'] = Stubs::ComponentCompliancesList.stub(stub[:component_compliances]) unless stub[:component_compliances].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentCompliancesList
    class ComponentCompliancesList
      def self.default(visited=[])
        return nil if visited.include?('ComponentCompliancesList')
        visited = visited + ['ComponentCompliancesList']
        [
          AppComponentCompliance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppComponentCompliance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppComponentCompliance
    class AppComponentCompliance
      def self.default(visited=[])
        return nil if visited.include?('AppComponentCompliance')
        visited = visited + ['AppComponentCompliance']
        {
          cost: Cost.default(visited),
          app_component_name: 'app_component_name',
          compliance: AssessmentCompliance.default(visited),
          message: 'message',
          status: 'status',
          resiliency_score: ResiliencyScore.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppComponentCompliance.new
        data = {}
        data['cost'] = Stubs::Cost.stub(stub[:cost]) unless stub[:cost].nil?
        data['appComponentName'] = stub[:app_component_name] unless stub[:app_component_name].nil?
        data['compliance'] = Stubs::AssessmentCompliance.stub(stub[:compliance]) unless stub[:compliance].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resiliencyScore'] = Stubs::ResiliencyScore.stub(stub[:resiliency_score]) unless stub[:resiliency_score].nil?
        data
      end
    end

    # Operation Stubber for ListAppComponentRecommendations
    class ListAppComponentRecommendations
      def self.default(visited=[])
        {
          component_recommendations: ComponentRecommendationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['componentRecommendations'] = Stubs::ComponentRecommendationList.stub(stub[:component_recommendations]) unless stub[:component_recommendations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentRecommendationList
    class ComponentRecommendationList
      def self.default(visited=[])
        return nil if visited.include?('ComponentRecommendationList')
        visited = visited + ['ComponentRecommendationList']
        [
          ComponentRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentRecommendation
    class ComponentRecommendation
      def self.default(visited=[])
        return nil if visited.include?('ComponentRecommendation')
        visited = visited + ['ComponentRecommendation']
        {
          app_component_name: 'app_component_name',
          recommendation_status: 'recommendation_status',
          config_recommendations: ConfigRecommendationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentRecommendation.new
        data = {}
        data['appComponentName'] = stub[:app_component_name] unless stub[:app_component_name].nil?
        data['recommendationStatus'] = stub[:recommendation_status] unless stub[:recommendation_status].nil?
        data['configRecommendations'] = Stubs::ConfigRecommendationList.stub(stub[:config_recommendations]) unless stub[:config_recommendations].nil?
        data
      end
    end

    # List Stubber for ConfigRecommendationList
    class ConfigRecommendationList
      def self.default(visited=[])
        return nil if visited.include?('ConfigRecommendationList')
        visited = visited + ['ConfigRecommendationList']
        [
          ConfigRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConfigRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigRecommendation
    class ConfigRecommendation
      def self.default(visited=[])
        return nil if visited.include?('ConfigRecommendation')
        visited = visited + ['ConfigRecommendation']
        {
          cost: Cost.default(visited),
          app_component_name: 'app_component_name',
          compliance: AssessmentCompliance.default(visited),
          recommendation_compliance: RecommendationCompliance.default(visited),
          optimization_type: 'optimization_type',
          name: 'name',
          description: 'description',
          suggested_changes: SuggestedChangesList.default(visited),
          ha_architecture: 'ha_architecture',
          reference_id: 'reference_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigRecommendation.new
        data = {}
        data['cost'] = Stubs::Cost.stub(stub[:cost]) unless stub[:cost].nil?
        data['appComponentName'] = stub[:app_component_name] unless stub[:app_component_name].nil?
        data['compliance'] = Stubs::AssessmentCompliance.stub(stub[:compliance]) unless stub[:compliance].nil?
        data['recommendationCompliance'] = Stubs::RecommendationCompliance.stub(stub[:recommendation_compliance]) unless stub[:recommendation_compliance].nil?
        data['optimizationType'] = stub[:optimization_type] unless stub[:optimization_type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['suggestedChanges'] = Stubs::SuggestedChangesList.stub(stub[:suggested_changes]) unless stub[:suggested_changes].nil?
        data['haArchitecture'] = stub[:ha_architecture] unless stub[:ha_architecture].nil?
        data['referenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data
      end
    end

    # List Stubber for SuggestedChangesList
    class SuggestedChangesList
      def self.default(visited=[])
        return nil if visited.include?('SuggestedChangesList')
        visited = visited + ['SuggestedChangesList']
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

    # Map Stubber for RecommendationCompliance
    class RecommendationCompliance
      def self.default(visited=[])
        return nil if visited.include?('RecommendationCompliance')
        visited = visited + ['RecommendationCompliance']
        {
          test_key: RecommendationDisruptionCompliance.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::RecommendationDisruptionCompliance.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationDisruptionCompliance
    class RecommendationDisruptionCompliance
      def self.default(visited=[])
        return nil if visited.include?('RecommendationDisruptionCompliance')
        visited = visited + ['RecommendationDisruptionCompliance']
        {
          expected_compliance_status: 'expected_compliance_status',
          expected_rto_in_secs: 1,
          expected_rto_description: 'expected_rto_description',
          expected_rpo_in_secs: 1,
          expected_rpo_description: 'expected_rpo_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationDisruptionCompliance.new
        data = {}
        data['expectedComplianceStatus'] = stub[:expected_compliance_status] unless stub[:expected_compliance_status].nil?
        data['expectedRtoInSecs'] = stub[:expected_rto_in_secs] unless stub[:expected_rto_in_secs].nil?
        data['expectedRtoDescription'] = stub[:expected_rto_description] unless stub[:expected_rto_description].nil?
        data['expectedRpoInSecs'] = stub[:expected_rpo_in_secs] unless stub[:expected_rpo_in_secs].nil?
        data['expectedRpoDescription'] = stub[:expected_rpo_description] unless stub[:expected_rpo_description].nil?
        data
      end
    end

    # Operation Stubber for ListAppVersionResourceMappings
    class ListAppVersionResourceMappings
      def self.default(visited=[])
        {
          resource_mappings: ResourceMappingList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceMappings'] = Stubs::ResourceMappingList.stub(stub[:resource_mappings]) unless stub[:resource_mappings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAppVersionResources
    class ListAppVersionResources
      def self.default(visited=[])
        {
          physical_resources: PhysicalResourceList.default(visited),
          resolution_id: 'resolution_id',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['physicalResources'] = Stubs::PhysicalResourceList.stub(stub[:physical_resources]) unless stub[:physical_resources].nil?
        data['resolutionId'] = stub[:resolution_id] unless stub[:resolution_id].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PhysicalResourceList
    class PhysicalResourceList
      def self.default(visited=[])
        return nil if visited.include?('PhysicalResourceList')
        visited = visited + ['PhysicalResourceList']
        [
          PhysicalResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PhysicalResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PhysicalResource
    class PhysicalResource
      def self.default(visited=[])
        return nil if visited.include?('PhysicalResource')
        visited = visited + ['PhysicalResource']
        {
          resource_name: 'resource_name',
          logical_resource_id: LogicalResourceId.default(visited),
          physical_resource_id: PhysicalResourceId.default(visited),
          resource_type: 'resource_type',
          app_components: AppComponentList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PhysicalResource.new
        data = {}
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data['logicalResourceId'] = Stubs::LogicalResourceId.stub(stub[:logical_resource_id]) unless stub[:logical_resource_id].nil?
        data['physicalResourceId'] = Stubs::PhysicalResourceId.stub(stub[:physical_resource_id]) unless stub[:physical_resource_id].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['appComponents'] = Stubs::AppComponentList.stub(stub[:app_components]) unless stub[:app_components].nil?
        data
      end
    end

    # List Stubber for AppComponentList
    class AppComponentList
      def self.default(visited=[])
        return nil if visited.include?('AppComponentList')
        visited = visited + ['AppComponentList']
        [
          AppComponent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppComponent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppComponent
    class AppComponent
      def self.default(visited=[])
        return nil if visited.include?('AppComponent')
        visited = visited + ['AppComponent']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppComponent.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for LogicalResourceId
    class LogicalResourceId
      def self.default(visited=[])
        return nil if visited.include?('LogicalResourceId')
        visited = visited + ['LogicalResourceId']
        {
          identifier: 'identifier',
          logical_stack_name: 'logical_stack_name',
          resource_group_name: 'resource_group_name',
          terraform_source_name: 'terraform_source_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LogicalResourceId.new
        data = {}
        data['identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['logicalStackName'] = stub[:logical_stack_name] unless stub[:logical_stack_name].nil?
        data['resourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        data['terraformSourceName'] = stub[:terraform_source_name] unless stub[:terraform_source_name].nil?
        data
      end
    end

    # Operation Stubber for ListAppVersions
    class ListAppVersions
      def self.default(visited=[])
        {
          app_versions: AppVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appVersions'] = Stubs::AppVersionList.stub(stub[:app_versions]) unless stub[:app_versions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppVersionList
    class AppVersionList
      def self.default(visited=[])
        return nil if visited.include?('AppVersionList')
        visited = visited + ['AppVersionList']
        [
          AppVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppVersionSummary
    class AppVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('AppVersionSummary')
        visited = visited + ['AppVersionSummary']
        {
          app_version: 'app_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppVersionSummary.new
        data = {}
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data
      end
    end

    # Operation Stubber for ListApps
    class ListApps
      def self.default(visited=[])
        {
          app_summaries: AppSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appSummaries'] = Stubs::AppSummaryList.stub(stub[:app_summaries]) unless stub[:app_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppSummaryList
    class AppSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AppSummaryList')
        visited = visited + ['AppSummaryList']
        [
          AppSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppSummary
    class AppSummary
      def self.default(visited=[])
        return nil if visited.include?('AppSummary')
        visited = visited + ['AppSummary']
        {
          app_arn: 'app_arn',
          name: 'name',
          description: 'description',
          creation_time: Time.now,
          compliance_status: 'compliance_status',
          resiliency_score: 1.0,
          assessment_schedule: 'assessment_schedule',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppSummary.new
        data = {}
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['complianceStatus'] = stub[:compliance_status] unless stub[:compliance_status].nil?
        data['resiliencyScore'] = Hearth::NumberHelper.serialize(stub[:resiliency_score])
        data['assessmentSchedule'] = stub[:assessment_schedule] unless stub[:assessment_schedule].nil?
        data
      end
    end

    # Operation Stubber for ListRecommendationTemplates
    class ListRecommendationTemplates
      def self.default(visited=[])
        {
          next_token: 'next_token',
          recommendation_templates: RecommendationTemplateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['recommendationTemplates'] = Stubs::RecommendationTemplateList.stub(stub[:recommendation_templates]) unless stub[:recommendation_templates].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecommendationTemplateList
    class RecommendationTemplateList
      def self.default(visited=[])
        return nil if visited.include?('RecommendationTemplateList')
        visited = visited + ['RecommendationTemplateList']
        [
          RecommendationTemplate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationTemplate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResiliencyPolicies
    class ListResiliencyPolicies
      def self.default(visited=[])
        {
          resiliency_policies: ResiliencyPolicies.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resiliencyPolicies'] = Stubs::ResiliencyPolicies.stub(stub[:resiliency_policies]) unless stub[:resiliency_policies].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResiliencyPolicies
    class ResiliencyPolicies
      def self.default(visited=[])
        return nil if visited.include?('ResiliencyPolicies')
        visited = visited + ['ResiliencyPolicies']
        [
          ResiliencyPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResiliencyPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSopRecommendations
    class ListSopRecommendations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          sop_recommendations: SopRecommendationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['sopRecommendations'] = Stubs::SopRecommendationList.stub(stub[:sop_recommendations]) unless stub[:sop_recommendations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SopRecommendationList
    class SopRecommendationList
      def self.default(visited=[])
        return nil if visited.include?('SopRecommendationList')
        visited = visited + ['SopRecommendationList']
        [
          SopRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SopRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SopRecommendation
    class SopRecommendation
      def self.default(visited=[])
        return nil if visited.include?('SopRecommendation')
        visited = visited + ['SopRecommendation']
        {
          service_type: 'service_type',
          app_component_name: 'app_component_name',
          description: 'description',
          recommendation_id: 'recommendation_id',
          name: 'name',
          items: RecommendationItemList.default(visited),
          reference_id: 'reference_id',
          prerequisite: 'prerequisite',
        }
      end

      def self.stub(stub)
        stub ||= Types::SopRecommendation.new
        data = {}
        data['serviceType'] = stub[:service_type] unless stub[:service_type].nil?
        data['appComponentName'] = stub[:app_component_name] unless stub[:app_component_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['recommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['items'] = Stubs::RecommendationItemList.stub(stub[:items]) unless stub[:items].nil?
        data['referenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data['prerequisite'] = stub[:prerequisite] unless stub[:prerequisite].nil?
        data
      end
    end

    # Operation Stubber for ListSuggestedResiliencyPolicies
    class ListSuggestedResiliencyPolicies
      def self.default(visited=[])
        {
          resiliency_policies: ResiliencyPolicies.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resiliencyPolicies'] = Stubs::ResiliencyPolicies.stub(stub[:resiliency_policies]) unless stub[:resiliency_policies].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for ListTestRecommendations
    class ListTestRecommendations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          test_recommendations: TestRecommendationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['testRecommendations'] = Stubs::TestRecommendationList.stub(stub[:test_recommendations]) unless stub[:test_recommendations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TestRecommendationList
    class TestRecommendationList
      def self.default(visited=[])
        return nil if visited.include?('TestRecommendationList')
        visited = visited + ['TestRecommendationList']
        [
          TestRecommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TestRecommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TestRecommendation
    class TestRecommendation
      def self.default(visited=[])
        return nil if visited.include?('TestRecommendation')
        visited = visited + ['TestRecommendation']
        {
          recommendation_id: 'recommendation_id',
          reference_id: 'reference_id',
          app_component_name: 'app_component_name',
          name: 'name',
          intent: 'intent',
          risk: 'risk',
          type: 'type',
          description: 'description',
          items: RecommendationItemList.default(visited),
          prerequisite: 'prerequisite',
          depends_on_alarms: AlarmReferenceIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TestRecommendation.new
        data = {}
        data['recommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['referenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data['appComponentName'] = stub[:app_component_name] unless stub[:app_component_name].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['intent'] = stub[:intent] unless stub[:intent].nil?
        data['risk'] = stub[:risk] unless stub[:risk].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['items'] = Stubs::RecommendationItemList.stub(stub[:items]) unless stub[:items].nil?
        data['prerequisite'] = stub[:prerequisite] unless stub[:prerequisite].nil?
        data['dependsOnAlarms'] = Stubs::AlarmReferenceIdList.stub(stub[:depends_on_alarms]) unless stub[:depends_on_alarms].nil?
        data
      end
    end

    # List Stubber for AlarmReferenceIdList
    class AlarmReferenceIdList
      def self.default(visited=[])
        return nil if visited.include?('AlarmReferenceIdList')
        visited = visited + ['AlarmReferenceIdList']
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

    # Operation Stubber for ListUnsupportedAppVersionResources
    class ListUnsupportedAppVersionResources
      def self.default(visited=[])
        {
          unsupported_resources: UnsupportedResourceList.default(visited),
          resolution_id: 'resolution_id',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unsupportedResources'] = Stubs::UnsupportedResourceList.stub(stub[:unsupported_resources]) unless stub[:unsupported_resources].nil?
        data['resolutionId'] = stub[:resolution_id] unless stub[:resolution_id].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UnsupportedResourceList
    class UnsupportedResourceList
      def self.default(visited=[])
        return nil if visited.include?('UnsupportedResourceList')
        visited = visited + ['UnsupportedResourceList']
        [
          UnsupportedResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnsupportedResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnsupportedResource
    class UnsupportedResource
      def self.default(visited=[])
        return nil if visited.include?('UnsupportedResource')
        visited = visited + ['UnsupportedResource']
        {
          logical_resource_id: LogicalResourceId.default(visited),
          physical_resource_id: PhysicalResourceId.default(visited),
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnsupportedResource.new
        data = {}
        data['logicalResourceId'] = Stubs::LogicalResourceId.stub(stub[:logical_resource_id]) unless stub[:logical_resource_id].nil?
        data['physicalResourceId'] = Stubs::PhysicalResourceId.stub(stub[:physical_resource_id]) unless stub[:physical_resource_id].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Operation Stubber for PublishAppVersion
    class PublishAppVersion
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutDraftAppVersionTemplate
    class PutDraftAppVersionTemplate
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveDraftAppVersionResourceMappings
    class RemoveDraftAppVersionResourceMappings
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ResolveAppVersionResources
    class ResolveAppVersionResources
      def self.default(visited=[])
        {
          app_arn: 'app_arn',
          app_version: 'app_version',
          resolution_id: 'resolution_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['appVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data['resolutionId'] = stub[:resolution_id] unless stub[:resolution_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartAppAssessment
    class StartAppAssessment
      def self.default(visited=[])
        {
          assessment: AppAssessment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessment'] = Stubs::AppAssessment.stub(stub[:assessment]) unless stub[:assessment].nil?
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

    # Operation Stubber for UpdateApp
    class UpdateApp
      def self.default(visited=[])
        {
          app: App.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['app'] = Stubs::App.stub(stub[:app]) unless stub[:app].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateResiliencyPolicy
    class UpdateResiliencyPolicy
      def self.default(visited=[])
        {
          policy: ResiliencyPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = Stubs::ResiliencyPolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
