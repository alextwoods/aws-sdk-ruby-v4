# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Resiliencehub
  module Parsers

    # Operation Parser for AddDraftAppVersionResourceMappings
    class AddDraftAppVersionResourceMappings
      def self.parse(http_resp)
        data = Types::AddDraftAppVersionResourceMappingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data.resource_mappings = (ResourceMappingList.parse(map['resourceMappings']) unless map['resourceMappings'].nil?)
        data
      end
    end

    class ResourceMappingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResourceMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceMapping
      def self.parse(map)
        data = Types::ResourceMapping.new
        data.resource_name = map['resourceName']
        data.logical_stack_name = map['logicalStackName']
        data.app_registry_app_name = map['appRegistryAppName']
        data.resource_group_name = map['resourceGroupName']
        data.mapping_type = map['mappingType']
        data.physical_resource_id = (PhysicalResourceId.parse(map['physicalResourceId']) unless map['physicalResourceId'].nil?)
        data.terraform_source_name = map['terraformSourceName']
        return data
      end
    end

    class PhysicalResourceId
      def self.parse(map)
        data = Types::PhysicalResourceId.new
        data.identifier = map['identifier']
        data.type = map['type']
        data.aws_region = map['awsRegion']
        data.aws_account_id = map['awsAccountId']
        return data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.retry_after_seconds = map['retryAfterSeconds']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateApp
    class CreateApp
      def self.parse(http_resp)
        data = Types::CreateAppOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app = (App.parse(map['app']) unless map['app'].nil?)
        data
      end
    end

    class App
      def self.parse(map)
        data = Types::App.new
        data.app_arn = map['appArn']
        data.name = map['name']
        data.description = map['description']
        data.policy_arn = map['policyArn']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.status = map['status']
        data.compliance_status = map['complianceStatus']
        data.last_app_compliance_evaluation_time = Time.at(map['lastAppComplianceEvaluationTime'].to_i) if map['lastAppComplianceEvaluationTime']
        data.resiliency_score = Hearth::NumberHelper.deserialize(map['resiliencyScore'])
        data.last_resiliency_score_evaluation_time = Time.at(map['lastResiliencyScoreEvaluationTime'].to_i) if map['lastResiliencyScoreEvaluationTime']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.assessment_schedule = map['assessmentSchedule']
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
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateRecommendationTemplate
    class CreateRecommendationTemplate
      def self.parse(http_resp)
        data = Types::CreateRecommendationTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recommendation_template = (RecommendationTemplate.parse(map['recommendationTemplate']) unless map['recommendationTemplate'].nil?)
        data
      end
    end

    class RecommendationTemplate
      def self.parse(map)
        data = Types::RecommendationTemplate.new
        data.templates_location = (S3Location.parse(map['templatesLocation']) unless map['templatesLocation'].nil?)
        data.assessment_arn = map['assessmentArn']
        data.app_arn = map['appArn']
        data.recommendation_ids = (RecommendationIdList.parse(map['recommendationIds']) unless map['recommendationIds'].nil?)
        data.recommendation_types = (RenderRecommendationTypeList.parse(map['recommendationTypes']) unless map['recommendationTypes'].nil?)
        data.format = map['format']
        data.recommendation_template_arn = map['recommendationTemplateArn']
        data.message = map['message'] || map['Message']
        data.status = map['status']
        data.name = map['name']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.needs_replacements = map['needsReplacements']
        return data
      end
    end

    class RenderRecommendationTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RecommendationIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['bucket']
        data.prefix = map['prefix']
        return data
      end
    end

    # Operation Parser for CreateResiliencyPolicy
    class CreateResiliencyPolicy
      def self.parse(http_resp)
        data = Types::CreateResiliencyPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (ResiliencyPolicy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    class ResiliencyPolicy
      def self.parse(map)
        data = Types::ResiliencyPolicy.new
        data.policy_arn = map['policyArn']
        data.policy_name = map['policyName']
        data.policy_description = map['policyDescription']
        data.data_location_constraint = map['dataLocationConstraint']
        data.tier = map['tier']
        data.estimated_cost_tier = map['estimatedCostTier']
        data.policy = (DisruptionPolicy.parse(map['policy']) unless map['policy'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class DisruptionPolicy
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = FailurePolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class FailurePolicy
      def self.parse(map)
        data = Types::FailurePolicy.new
        data.rto_in_secs = map['rtoInSecs']
        data.rpo_in_secs = map['rpoInSecs']
        return data
      end
    end

    # Operation Parser for DeleteApp
    class DeleteApp
      def self.parse(http_resp)
        data = Types::DeleteAppOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data
      end
    end

    # Operation Parser for DeleteAppAssessment
    class DeleteAppAssessment
      def self.parse(http_resp)
        data = Types::DeleteAppAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment_arn = map['assessmentArn']
        data.assessment_status = map['assessmentStatus']
        data
      end
    end

    # Operation Parser for DeleteRecommendationTemplate
    class DeleteRecommendationTemplate
      def self.parse(http_resp)
        data = Types::DeleteRecommendationTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recommendation_template_arn = map['recommendationTemplateArn']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for DeleteResiliencyPolicy
    class DeleteResiliencyPolicy
      def self.parse(http_resp)
        data = Types::DeleteResiliencyPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_arn = map['policyArn']
        data
      end
    end

    # Operation Parser for DescribeApp
    class DescribeApp
      def self.parse(http_resp)
        data = Types::DescribeAppOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app = (App.parse(map['app']) unless map['app'].nil?)
        data
      end
    end

    # Operation Parser for DescribeAppAssessment
    class DescribeAppAssessment
      def self.parse(http_resp)
        data = Types::DescribeAppAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment = (AppAssessment.parse(map['assessment']) unless map['assessment'].nil?)
        data
      end
    end

    class AppAssessment
      def self.parse(map)
        data = Types::AppAssessment.new
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data.invoker = map['invoker']
        data.cost = (Cost.parse(map['cost']) unless map['cost'].nil?)
        data.resiliency_score = (ResiliencyScore.parse(map['resiliencyScore']) unless map['resiliencyScore'].nil?)
        data.compliance = (AssessmentCompliance.parse(map['compliance']) unless map['compliance'].nil?)
        data.compliance_status = map['complianceStatus']
        data.assessment_status = map['assessmentStatus']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.message = map['message'] || map['Message']
        data.assessment_name = map['assessmentName']
        data.assessment_arn = map['assessmentArn']
        data.policy = (ResiliencyPolicy.parse(map['policy']) unless map['policy'].nil?)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.resource_errors_details = (ResourceErrorsDetails.parse(map['resourceErrorsDetails']) unless map['resourceErrorsDetails'].nil?)
        return data
      end
    end

    class ResourceErrorsDetails
      def self.parse(map)
        data = Types::ResourceErrorsDetails.new
        data.resource_errors = (ResourceErrorList.parse(map['resourceErrors']) unless map['resourceErrors'].nil?)
        data.has_more_errors = map['hasMoreErrors']
        return data
      end
    end

    class ResourceErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResourceError.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceError
      def self.parse(map)
        data = Types::ResourceError.new
        data.logical_resource_id = map['logicalResourceId']
        data.physical_resource_id = map['physicalResourceId']
        data.reason = map['reason']
        return data
      end
    end

    class AssessmentCompliance
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = DisruptionCompliance.parse(value) unless value.nil?
        end
        data
      end
    end

    class DisruptionCompliance
      def self.parse(map)
        data = Types::DisruptionCompliance.new
        data.achievable_rto_in_secs = map['achievableRtoInSecs']
        data.current_rto_in_secs = map['currentRtoInSecs']
        data.rto_reference_id = map['rtoReferenceId']
        data.rto_description = map['rtoDescription']
        data.current_rpo_in_secs = map['currentRpoInSecs']
        data.rpo_reference_id = map['rpoReferenceId']
        data.rpo_description = map['rpoDescription']
        data.compliance_status = map['complianceStatus']
        data.achievable_rpo_in_secs = map['achievableRpoInSecs']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    class ResiliencyScore
      def self.parse(map)
        data = Types::ResiliencyScore.new
        data.score = Hearth::NumberHelper.deserialize(map['score'])
        data.disruption_score = (DisruptionResiliencyScore.parse(map['disruptionScore']) unless map['disruptionScore'].nil?)
        return data
      end
    end

    class DisruptionResiliencyScore
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class Cost
      def self.parse(map)
        data = Types::Cost.new
        data.amount = Hearth::NumberHelper.deserialize(map['amount'])
        data.currency = map['currency']
        data.frequency = map['frequency']
        return data
      end
    end

    # Operation Parser for DescribeAppVersionResourcesResolutionStatus
    class DescribeAppVersionResourcesResolutionStatus
      def self.parse(http_resp)
        data = Types::DescribeAppVersionResourcesResolutionStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data.resolution_id = map['resolutionId']
        data.status = map['status']
        data.error_message = map['errorMessage']
        data
      end
    end

    # Operation Parser for DescribeAppVersionTemplate
    class DescribeAppVersionTemplate
      def self.parse(http_resp)
        data = Types::DescribeAppVersionTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data.app_template_body = map['appTemplateBody']
        data
      end
    end

    # Operation Parser for DescribeDraftAppVersionResourcesImportStatus
    class DescribeDraftAppVersionResourcesImportStatus
      def self.parse(http_resp)
        data = Types::DescribeDraftAppVersionResourcesImportStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data.status = map['status']
        data.status_change_time = Time.at(map['statusChangeTime'].to_i) if map['statusChangeTime']
        data.error_message = map['errorMessage']
        data
      end
    end

    # Operation Parser for DescribeResiliencyPolicy
    class DescribeResiliencyPolicy
      def self.parse(http_resp)
        data = Types::DescribeResiliencyPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (ResiliencyPolicy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end

    # Operation Parser for ImportResourcesToDraftAppVersion
    class ImportResourcesToDraftAppVersion
      def self.parse(http_resp)
        data = Types::ImportResourcesToDraftAppVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data.source_arns = (ArnList.parse(map['sourceArns']) unless map['sourceArns'].nil?)
        data.status = map['status']
        data.terraform_sources = (TerraformSourceList.parse(map['terraformSources']) unless map['terraformSources'].nil?)
        data
      end
    end

    class TerraformSourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TerraformSource.parse(value) unless value.nil?
        end
        data
      end
    end

    class TerraformSource
      def self.parse(map)
        data = Types::TerraformSource.new
        data.s3_state_file_url = map['s3StateFileUrl']
        return data
      end
    end

    class ArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListAlarmRecommendations
    class ListAlarmRecommendations
      def self.parse(http_resp)
        data = Types::ListAlarmRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alarm_recommendations = (AlarmRecommendationList.parse(map['alarmRecommendations']) unless map['alarmRecommendations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AlarmRecommendationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AlarmRecommendation.parse(value) unless value.nil?
        end
        data
      end
    end

    class AlarmRecommendation
      def self.parse(map)
        data = Types::AlarmRecommendation.new
        data.recommendation_id = map['recommendationId']
        data.reference_id = map['referenceId']
        data.name = map['name']
        data.description = map['description']
        data.type = map['type']
        data.app_component_name = map['appComponentName']
        data.items = (RecommendationItemList.parse(map['items']) unless map['items'].nil?)
        data.prerequisite = map['prerequisite']
        return data
      end
    end

    class RecommendationItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RecommendationItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationItem
      def self.parse(map)
        data = Types::RecommendationItem.new
        data.resource_id = map['resourceId']
        data.target_account_id = map['targetAccountId']
        data.target_region = map['targetRegion']
        data.already_implemented = map['alreadyImplemented']
        return data
      end
    end

    # Operation Parser for ListAppAssessments
    class ListAppAssessments
      def self.parse(http_resp)
        data = Types::ListAppAssessmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.assessment_summaries = (AppAssessmentSummaryList.parse(map['assessmentSummaries']) unless map['assessmentSummaries'].nil?)
        data
      end
    end

    class AppAssessmentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AppAssessmentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppAssessmentSummary
      def self.parse(map)
        data = Types::AppAssessmentSummary.new
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data.assessment_status = map['assessmentStatus']
        data.invoker = map['invoker']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.message = map['message'] || map['Message']
        data.assessment_name = map['assessmentName']
        data.assessment_arn = map['assessmentArn']
        data.compliance_status = map['complianceStatus']
        data.cost = (Cost.parse(map['cost']) unless map['cost'].nil?)
        data.resiliency_score = Hearth::NumberHelper.deserialize(map['resiliencyScore'])
        return data
      end
    end

    # Operation Parser for ListAppComponentCompliances
    class ListAppComponentCompliances
      def self.parse(http_resp)
        data = Types::ListAppComponentCompliancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.component_compliances = (ComponentCompliancesList.parse(map['componentCompliances']) unless map['componentCompliances'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ComponentCompliancesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AppComponentCompliance.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppComponentCompliance
      def self.parse(map)
        data = Types::AppComponentCompliance.new
        data.cost = (Cost.parse(map['cost']) unless map['cost'].nil?)
        data.app_component_name = map['appComponentName']
        data.compliance = (AssessmentCompliance.parse(map['compliance']) unless map['compliance'].nil?)
        data.message = map['message'] || map['Message']
        data.status = map['status']
        data.resiliency_score = (ResiliencyScore.parse(map['resiliencyScore']) unless map['resiliencyScore'].nil?)
        return data
      end
    end

    # Operation Parser for ListAppComponentRecommendations
    class ListAppComponentRecommendations
      def self.parse(http_resp)
        data = Types::ListAppComponentRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.component_recommendations = (ComponentRecommendationList.parse(map['componentRecommendations']) unless map['componentRecommendations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ComponentRecommendationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentRecommendation.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentRecommendation
      def self.parse(map)
        data = Types::ComponentRecommendation.new
        data.app_component_name = map['appComponentName']
        data.recommendation_status = map['recommendationStatus']
        data.config_recommendations = (ConfigRecommendationList.parse(map['configRecommendations']) unless map['configRecommendations'].nil?)
        return data
      end
    end

    class ConfigRecommendationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ConfigRecommendation.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConfigRecommendation
      def self.parse(map)
        data = Types::ConfigRecommendation.new
        data.cost = (Cost.parse(map['cost']) unless map['cost'].nil?)
        data.app_component_name = map['appComponentName']
        data.compliance = (AssessmentCompliance.parse(map['compliance']) unless map['compliance'].nil?)
        data.recommendation_compliance = (RecommendationCompliance.parse(map['recommendationCompliance']) unless map['recommendationCompliance'].nil?)
        data.optimization_type = map['optimizationType']
        data.name = map['name']
        data.description = map['description']
        data.suggested_changes = (SuggestedChangesList.parse(map['suggestedChanges']) unless map['suggestedChanges'].nil?)
        data.ha_architecture = map['haArchitecture']
        data.reference_id = map['referenceId']
        return data
      end
    end

    class SuggestedChangesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RecommendationCompliance
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = RecommendationDisruptionCompliance.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationDisruptionCompliance
      def self.parse(map)
        data = Types::RecommendationDisruptionCompliance.new
        data.expected_compliance_status = map['expectedComplianceStatus']
        data.expected_rto_in_secs = map['expectedRtoInSecs']
        data.expected_rto_description = map['expectedRtoDescription']
        data.expected_rpo_in_secs = map['expectedRpoInSecs']
        data.expected_rpo_description = map['expectedRpoDescription']
        return data
      end
    end

    # Operation Parser for ListAppVersionResourceMappings
    class ListAppVersionResourceMappings
      def self.parse(http_resp)
        data = Types::ListAppVersionResourceMappingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_mappings = (ResourceMappingList.parse(map['resourceMappings']) unless map['resourceMappings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListAppVersionResources
    class ListAppVersionResources
      def self.parse(http_resp)
        data = Types::ListAppVersionResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.physical_resources = (PhysicalResourceList.parse(map['physicalResources']) unless map['physicalResources'].nil?)
        data.resolution_id = map['resolutionId']
        data.next_token = map['nextToken']
        data
      end
    end

    class PhysicalResourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PhysicalResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class PhysicalResource
      def self.parse(map)
        data = Types::PhysicalResource.new
        data.resource_name = map['resourceName']
        data.logical_resource_id = (LogicalResourceId.parse(map['logicalResourceId']) unless map['logicalResourceId'].nil?)
        data.physical_resource_id = (PhysicalResourceId.parse(map['physicalResourceId']) unless map['physicalResourceId'].nil?)
        data.resource_type = map['resourceType']
        data.app_components = (AppComponentList.parse(map['appComponents']) unless map['appComponents'].nil?)
        return data
      end
    end

    class AppComponentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AppComponent.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppComponent
      def self.parse(map)
        data = Types::AppComponent.new
        data.name = map['name']
        data.type = map['type']
        return data
      end
    end

    class LogicalResourceId
      def self.parse(map)
        data = Types::LogicalResourceId.new
        data.identifier = map['identifier']
        data.logical_stack_name = map['logicalStackName']
        data.resource_group_name = map['resourceGroupName']
        data.terraform_source_name = map['terraformSourceName']
        return data
      end
    end

    # Operation Parser for ListAppVersions
    class ListAppVersions
      def self.parse(http_resp)
        data = Types::ListAppVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_versions = (AppVersionList.parse(map['appVersions']) unless map['appVersions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AppVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AppVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppVersionSummary
      def self.parse(map)
        data = Types::AppVersionSummary.new
        data.app_version = map['appVersion']
        return data
      end
    end

    # Operation Parser for ListApps
    class ListApps
      def self.parse(http_resp)
        data = Types::ListAppsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_summaries = (AppSummaryList.parse(map['appSummaries']) unless map['appSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AppSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AppSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppSummary
      def self.parse(map)
        data = Types::AppSummary.new
        data.app_arn = map['appArn']
        data.name = map['name']
        data.description = map['description']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.compliance_status = map['complianceStatus']
        data.resiliency_score = Hearth::NumberHelper.deserialize(map['resiliencyScore'])
        data.assessment_schedule = map['assessmentSchedule']
        return data
      end
    end

    # Operation Parser for ListRecommendationTemplates
    class ListRecommendationTemplates
      def self.parse(http_resp)
        data = Types::ListRecommendationTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.recommendation_templates = (RecommendationTemplateList.parse(map['recommendationTemplates']) unless map['recommendationTemplates'].nil?)
        data
      end
    end

    class RecommendationTemplateList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RecommendationTemplate.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListResiliencyPolicies
    class ListResiliencyPolicies
      def self.parse(http_resp)
        data = Types::ListResiliencyPoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resiliency_policies = (ResiliencyPolicies.parse(map['resiliencyPolicies']) unless map['resiliencyPolicies'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResiliencyPolicies
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResiliencyPolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListSopRecommendations
    class ListSopRecommendations
      def self.parse(http_resp)
        data = Types::ListSopRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.sop_recommendations = (SopRecommendationList.parse(map['sopRecommendations']) unless map['sopRecommendations'].nil?)
        data
      end
    end

    class SopRecommendationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SopRecommendation.parse(value) unless value.nil?
        end
        data
      end
    end

    class SopRecommendation
      def self.parse(map)
        data = Types::SopRecommendation.new
        data.service_type = map['serviceType']
        data.app_component_name = map['appComponentName']
        data.description = map['description']
        data.recommendation_id = map['recommendationId']
        data.name = map['name']
        data.items = (RecommendationItemList.parse(map['items']) unless map['items'].nil?)
        data.reference_id = map['referenceId']
        data.prerequisite = map['prerequisite']
        return data
      end
    end

    # Operation Parser for ListSuggestedResiliencyPolicies
    class ListSuggestedResiliencyPolicies
      def self.parse(http_resp)
        data = Types::ListSuggestedResiliencyPoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resiliency_policies = (ResiliencyPolicies.parse(map['resiliencyPolicies']) unless map['resiliencyPolicies'].nil?)
        data.next_token = map['nextToken']
        data
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

    # Operation Parser for ListTestRecommendations
    class ListTestRecommendations
      def self.parse(http_resp)
        data = Types::ListTestRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.test_recommendations = (TestRecommendationList.parse(map['testRecommendations']) unless map['testRecommendations'].nil?)
        data
      end
    end

    class TestRecommendationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TestRecommendation.parse(value) unless value.nil?
        end
        data
      end
    end

    class TestRecommendation
      def self.parse(map)
        data = Types::TestRecommendation.new
        data.recommendation_id = map['recommendationId']
        data.reference_id = map['referenceId']
        data.app_component_name = map['appComponentName']
        data.name = map['name']
        data.intent = map['intent']
        data.risk = map['risk']
        data.type = map['type']
        data.description = map['description']
        data.items = (RecommendationItemList.parse(map['items']) unless map['items'].nil?)
        data.prerequisite = map['prerequisite']
        data.depends_on_alarms = (AlarmReferenceIdList.parse(map['dependsOnAlarms']) unless map['dependsOnAlarms'].nil?)
        return data
      end
    end

    class AlarmReferenceIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListUnsupportedAppVersionResources
    class ListUnsupportedAppVersionResources
      def self.parse(http_resp)
        data = Types::ListUnsupportedAppVersionResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unsupported_resources = (UnsupportedResourceList.parse(map['unsupportedResources']) unless map['unsupportedResources'].nil?)
        data.resolution_id = map['resolutionId']
        data.next_token = map['nextToken']
        data
      end
    end

    class UnsupportedResourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UnsupportedResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class UnsupportedResource
      def self.parse(map)
        data = Types::UnsupportedResource.new
        data.logical_resource_id = (LogicalResourceId.parse(map['logicalResourceId']) unless map['logicalResourceId'].nil?)
        data.physical_resource_id = (PhysicalResourceId.parse(map['physicalResourceId']) unless map['physicalResourceId'].nil?)
        data.resource_type = map['resourceType']
        return data
      end
    end

    # Operation Parser for PublishAppVersion
    class PublishAppVersion
      def self.parse(http_resp)
        data = Types::PublishAppVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data
      end
    end

    # Operation Parser for PutDraftAppVersionTemplate
    class PutDraftAppVersionTemplate
      def self.parse(http_resp)
        data = Types::PutDraftAppVersionTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data
      end
    end

    # Operation Parser for RemoveDraftAppVersionResourceMappings
    class RemoveDraftAppVersionResourceMappings
      def self.parse(http_resp)
        data = Types::RemoveDraftAppVersionResourceMappingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data
      end
    end

    # Operation Parser for ResolveAppVersionResources
    class ResolveAppVersionResources
      def self.parse(http_resp)
        data = Types::ResolveAppVersionResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_arn = map['appArn']
        data.app_version = map['appVersion']
        data.resolution_id = map['resolutionId']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for StartAppAssessment
    class StartAppAssessment
      def self.parse(http_resp)
        data = Types::StartAppAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment = (AppAssessment.parse(map['assessment']) unless map['assessment'].nil?)
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

    # Operation Parser for UpdateApp
    class UpdateApp
      def self.parse(http_resp)
        data = Types::UpdateAppOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app = (App.parse(map['app']) unless map['app'].nil?)
        data
      end
    end

    # Operation Parser for UpdateResiliencyPolicy
    class UpdateResiliencyPolicy
      def self.parse(http_resp)
        data = Types::UpdateResiliencyPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (ResiliencyPolicy.parse(map['policy']) unless map['policy'].nil?)
        data
      end
    end
  end
end
