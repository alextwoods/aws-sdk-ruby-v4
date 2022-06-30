# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Resiliencehub
  module Builders

    # Operation Builder for AddDraftAppVersionResourceMappings
    class AddDraftAppVersionResourceMappings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/add-draft-app-version-resource-mappings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['resourceMappings'] = Builders::ResourceMappingList.build(input[:resource_mappings]) unless input[:resource_mappings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceMappingList
    class ResourceMappingList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceMapping
    class ResourceMapping
      def self.build(input)
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['logicalStackName'] = input[:logical_stack_name] unless input[:logical_stack_name].nil?
        data['appRegistryAppName'] = input[:app_registry_app_name] unless input[:app_registry_app_name].nil?
        data['resourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['mappingType'] = input[:mapping_type] unless input[:mapping_type].nil?
        data['physicalResourceId'] = Builders::PhysicalResourceId.build(input[:physical_resource_id]) unless input[:physical_resource_id].nil?
        data['terraformSourceName'] = input[:terraform_source_name] unless input[:terraform_source_name].nil?
        data
      end
    end

    # Structure Builder for PhysicalResourceId
    class PhysicalResourceId
      def self.build(input)
        data = {}
        data['identifier'] = input[:identifier] unless input[:identifier].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['awsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['awsAccountId'] = input[:aws_account_id] unless input[:aws_account_id].nil?
        data
      end
    end

    # Operation Builder for CreateApp
    class CreateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/create-app')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['policyArn'] = input[:policy_arn] unless input[:policy_arn].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['assessmentSchedule'] = input[:assessment_schedule] unless input[:assessment_schedule].nil?
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

    # Operation Builder for CreateRecommendationTemplate
    class CreateRecommendationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/create-recommendation-template')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recommendationIds'] = Builders::RecommendationIdList.build(input[:recommendation_ids]) unless input[:recommendation_ids].nil?
        data['format'] = input[:format] unless input[:format].nil?
        data['recommendationTypes'] = Builders::RenderRecommendationTypeList.build(input[:recommendation_types]) unless input[:recommendation_types].nil?
        data['assessmentArn'] = input[:assessment_arn] unless input[:assessment_arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RenderRecommendationTypeList
    class RenderRecommendationTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RecommendationIdList
    class RecommendationIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateResiliencyPolicy
    class CreateResiliencyPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/create-resiliency-policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['policyDescription'] = input[:policy_description] unless input[:policy_description].nil?
        data['dataLocationConstraint'] = input[:data_location_constraint] unless input[:data_location_constraint].nil?
        data['tier'] = input[:tier] unless input[:tier].nil?
        data['policy'] = Builders::DisruptionPolicy.build(input[:policy]) unless input[:policy].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for DisruptionPolicy
    class DisruptionPolicy
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::FailurePolicy.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for FailurePolicy
    class FailurePolicy
      def self.build(input)
        data = {}
        data['rtoInSecs'] = input[:rto_in_secs] unless input[:rto_in_secs].nil?
        data['rpoInSecs'] = input[:rpo_in_secs] unless input[:rpo_in_secs].nil?
        data
      end
    end

    # Operation Builder for DeleteApp
    class DeleteApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-app')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['forceDelete'] = input[:force_delete] unless input[:force_delete].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAppAssessment
    class DeleteAppAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-app-assessment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assessmentArn'] = input[:assessment_arn] unless input[:assessment_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRecommendationTemplate
    class DeleteRecommendationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-recommendation-template')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recommendationTemplateArn'] = input[:recommendation_template_arn] unless input[:recommendation_template_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResiliencyPolicy
    class DeleteResiliencyPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-resiliency-policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policyArn'] = input[:policy_arn] unless input[:policy_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApp
    class DescribeApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-app')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAppAssessment
    class DescribeAppAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-app-assessment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assessmentArn'] = input[:assessment_arn] unless input[:assessment_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAppVersionResourcesResolutionStatus
    class DescribeAppVersionResourcesResolutionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-app-version-resources-resolution-status')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['appVersion'] = input[:app_version] unless input[:app_version].nil?
        data['resolutionId'] = input[:resolution_id] unless input[:resolution_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAppVersionTemplate
    class DescribeAppVersionTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-app-version-template')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['appVersion'] = input[:app_version] unless input[:app_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDraftAppVersionResourcesImportStatus
    class DescribeDraftAppVersionResourcesImportStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-draft-app-version-resources-import-status')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeResiliencyPolicy
    class DescribeResiliencyPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-resiliency-policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policyArn'] = input[:policy_arn] unless input[:policy_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportResourcesToDraftAppVersion
    class ImportResourcesToDraftAppVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/import-resources-to-draft-app-version')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['sourceArns'] = Builders::ArnList.build(input[:source_arns]) unless input[:source_arns].nil?
        data['terraformSources'] = Builders::TerraformSourceList.build(input[:terraform_sources]) unless input[:terraform_sources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TerraformSourceList
    class TerraformSourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TerraformSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TerraformSource
    class TerraformSource
      def self.build(input)
        data = {}
        data['s3StateFileUrl'] = input[:s3_state_file_url] unless input[:s3_state_file_url].nil?
        data
      end
    end

    # List Builder for ArnList
    class ArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAlarmRecommendations
    class ListAlarmRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-alarm-recommendations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assessmentArn'] = input[:assessment_arn] unless input[:assessment_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAppAssessments
    class ListAppAssessments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/list-app-assessments')
        params = Hearth::Query::ParamList.new
        params['appArn'] = input[:app_arn].to_s unless input[:app_arn].nil?
        params['assessmentName'] = input[:assessment_name].to_s unless input[:assessment_name].nil?
        unless input[:assessment_status].nil? || input[:assessment_status].empty?
          params['assessmentStatus'] = input[:assessment_status].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['complianceStatus'] = input[:compliance_status].to_s unless input[:compliance_status].nil?
        params['invoker'] = input[:invoker].to_s unless input[:invoker].nil?
        params['reverseOrder'] = input[:reverse_order].to_s unless input[:reverse_order].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for AssessmentStatusList
    class AssessmentStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAppComponentCompliances
    class ListAppComponentCompliances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-app-component-compliances')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['assessmentArn'] = input[:assessment_arn] unless input[:assessment_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAppComponentRecommendations
    class ListAppComponentRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-app-component-recommendations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assessmentArn'] = input[:assessment_arn] unless input[:assessment_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAppVersionResourceMappings
    class ListAppVersionResourceMappings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-app-version-resource-mappings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['appVersion'] = input[:app_version] unless input[:app_version].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAppVersionResources
    class ListAppVersionResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-app-version-resources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['appVersion'] = input[:app_version] unless input[:app_version].nil?
        data['resolutionId'] = input[:resolution_id] unless input[:resolution_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAppVersions
    class ListAppVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-app-versions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApps
    class ListApps
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/list-apps')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['name'] = input[:name].to_s unless input[:name].nil?
        params['appArn'] = input[:app_arn].to_s unless input[:app_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRecommendationTemplates
    class ListRecommendationTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/list-recommendation-templates')
        params = Hearth::Query::ParamList.new
        params['assessmentArn'] = input[:assessment_arn].to_s unless input[:assessment_arn].nil?
        params['reverseOrder'] = input[:reverse_order].to_s unless input[:reverse_order].nil?
        unless input[:status].nil? || input[:status].empty?
          params['status'] = input[:status].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['recommendationTemplateArn'] = input[:recommendation_template_arn].to_s unless input[:recommendation_template_arn].nil?
        params['name'] = input[:name].to_s unless input[:name].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for RecommendationTemplateStatusList
    class RecommendationTemplateStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListResiliencyPolicies
    class ListResiliencyPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/list-resiliency-policies')
        params = Hearth::Query::ParamList.new
        params['policyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSopRecommendations
    class ListSopRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-sop-recommendations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['assessmentArn'] = input[:assessment_arn] unless input[:assessment_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSuggestedResiliencyPolicies
    class ListSuggestedResiliencyPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/list-suggested-resiliency-policies')
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

    # Operation Builder for ListTestRecommendations
    class ListTestRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-test-recommendations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['assessmentArn'] = input[:assessment_arn] unless input[:assessment_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUnsupportedAppVersionResources
    class ListUnsupportedAppVersionResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-unsupported-app-version-resources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['appVersion'] = input[:app_version] unless input[:app_version].nil?
        data['resolutionId'] = input[:resolution_id] unless input[:resolution_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PublishAppVersion
    class PublishAppVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/publish-app-version')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutDraftAppVersionTemplate
    class PutDraftAppVersionTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/put-draft-app-version-template')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['appTemplateBody'] = input[:app_template_body] unless input[:app_template_body].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveDraftAppVersionResourceMappings
    class RemoveDraftAppVersionResourceMappings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/remove-draft-app-version-resource-mappings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['resourceNames'] = Builders::EntityNameList.build(input[:resource_names]) unless input[:resource_names].nil?
        data['logicalStackNames'] = Builders::String255List.build(input[:logical_stack_names]) unless input[:logical_stack_names].nil?
        data['appRegistryAppNames'] = Builders::EntityNameList.build(input[:app_registry_app_names]) unless input[:app_registry_app_names].nil?
        data['resourceGroupNames'] = Builders::EntityNameList.build(input[:resource_group_names]) unless input[:resource_group_names].nil?
        data['terraformSourceNames'] = Builders::String255List.build(input[:terraform_source_names]) unless input[:terraform_source_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for String255List
    class String255List
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EntityNameList
    class EntityNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ResolveAppVersionResources
    class ResolveAppVersionResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/resolve-app-version-resources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['appVersion'] = input[:app_version] unless input[:app_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartAppAssessment
    class StartAppAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/start-app-assessment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['appVersion'] = input[:app_version] unless input[:app_version].nil?
        data['assessmentName'] = input[:assessment_name] unless input[:assessment_name].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
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

    # Operation Builder for UpdateApp
    class UpdateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-app')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['policyArn'] = input[:policy_arn] unless input[:policy_arn].nil?
        data['clearResiliencyPolicyArn'] = input[:clear_resiliency_policy_arn] unless input[:clear_resiliency_policy_arn].nil?
        data['assessmentSchedule'] = input[:assessment_schedule] unless input[:assessment_schedule].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResiliencyPolicy
    class UpdateResiliencyPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-resiliency-policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policyArn'] = input[:policy_arn] unless input[:policy_arn].nil?
        data['policyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['policyDescription'] = input[:policy_description] unless input[:policy_description].nil?
        data['dataLocationConstraint'] = input[:data_location_constraint] unless input[:data_location_constraint].nil?
        data['tier'] = input[:tier] unless input[:tier].nil?
        data['policy'] = Builders::DisruptionPolicy.build(input[:policy]) unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
