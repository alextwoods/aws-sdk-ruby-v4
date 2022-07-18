# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Resiliencehub
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddDraftAppVersionResourceMappingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddDraftAppVersionResourceMappingsInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        ResourceMappingList.validate!(input[:resource_mappings], context: "#{context}[:resource_mappings]") unless input[:resource_mappings].nil?
      end
    end

    class AddDraftAppVersionResourceMappingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddDraftAppVersionResourceMappingsOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        ResourceMappingList.validate!(input[:resource_mappings], context: "#{context}[:resource_mappings]") unless input[:resource_mappings].nil?
      end
    end

    class AlarmRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmRecommendation, context: context)
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:app_component_name], ::String, context: "#{context}[:app_component_name]")
        RecommendationItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:prerequisite], ::String, context: "#{context}[:prerequisite]")
      end
    end

    class AlarmRecommendationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AlarmRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlarmReferenceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class App
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::App, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:compliance_status], ::String, context: "#{context}[:compliance_status]")
        Hearth::Validator.validate!(input[:last_app_compliance_evaluation_time], ::Time, context: "#{context}[:last_app_compliance_evaluation_time]")
        Hearth::Validator.validate!(input[:resiliency_score], ::Float, context: "#{context}[:resiliency_score]")
        Hearth::Validator.validate!(input[:last_resiliency_score_evaluation_time], ::Time, context: "#{context}[:last_resiliency_score_evaluation_time]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:assessment_schedule], ::String, context: "#{context}[:assessment_schedule]")
      end
    end

    class AppAssessment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppAssessment, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:invoker], ::String, context: "#{context}[:invoker]")
        Cost.validate!(input[:cost], context: "#{context}[:cost]") unless input[:cost].nil?
        ResiliencyScore.validate!(input[:resiliency_score], context: "#{context}[:resiliency_score]") unless input[:resiliency_score].nil?
        AssessmentCompliance.validate!(input[:compliance], context: "#{context}[:compliance]") unless input[:compliance].nil?
        Hearth::Validator.validate!(input[:compliance_status], ::String, context: "#{context}[:compliance_status]")
        Hearth::Validator.validate!(input[:assessment_status], ::String, context: "#{context}[:assessment_status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
        ResiliencyPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ResourceErrorsDetails.validate!(input[:resource_errors_details], context: "#{context}[:resource_errors_details]") unless input[:resource_errors_details].nil?
      end
    end

    class AppAssessmentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppAssessmentSummary, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:assessment_status], ::String, context: "#{context}[:assessment_status]")
        Hearth::Validator.validate!(input[:invoker], ::String, context: "#{context}[:invoker]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
        Hearth::Validator.validate!(input[:compliance_status], ::String, context: "#{context}[:compliance_status]")
        Cost.validate!(input[:cost], context: "#{context}[:cost]") unless input[:cost].nil?
        Hearth::Validator.validate!(input[:resiliency_score], ::Float, context: "#{context}[:resiliency_score]")
      end
    end

    class AppAssessmentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppAssessmentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppComponent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppComponent, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AppComponentCompliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppComponentCompliance, context: context)
        Cost.validate!(input[:cost], context: "#{context}[:cost]") unless input[:cost].nil?
        Hearth::Validator.validate!(input[:app_component_name], ::String, context: "#{context}[:app_component_name]")
        AssessmentCompliance.validate!(input[:compliance], context: "#{context}[:compliance]") unless input[:compliance].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ResiliencyScore.validate!(input[:resiliency_score], context: "#{context}[:resiliency_score]") unless input[:resiliency_score].nil?
      end
    end

    class AppComponentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppComponent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppSummary, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:compliance_status], ::String, context: "#{context}[:compliance_status]")
        Hearth::Validator.validate!(input[:resiliency_score], ::Float, context: "#{context}[:resiliency_score]")
        Hearth::Validator.validate!(input[:assessment_schedule], ::String, context: "#{context}[:assessment_schedule]")
      end
    end

    class AppSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppVersionSummary, context: context)
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssessmentCompliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          DisruptionCompliance.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AssessmentStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ComponentCompliancesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppComponentCompliance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentRecommendation, context: context)
        Hearth::Validator.validate!(input[:app_component_name], ::String, context: "#{context}[:app_component_name]")
        Hearth::Validator.validate!(input[:recommendation_status], ::String, context: "#{context}[:recommendation_status]")
        ConfigRecommendationList.validate!(input[:config_recommendations], context: "#{context}[:config_recommendations]") unless input[:config_recommendations].nil?
      end
    end

    class ComponentRecommendationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigRecommendation, context: context)
        Cost.validate!(input[:cost], context: "#{context}[:cost]") unless input[:cost].nil?
        Hearth::Validator.validate!(input[:app_component_name], ::String, context: "#{context}[:app_component_name]")
        AssessmentCompliance.validate!(input[:compliance], context: "#{context}[:compliance]") unless input[:compliance].nil?
        RecommendationCompliance.validate!(input[:recommendation_compliance], context: "#{context}[:recommendation_compliance]") unless input[:recommendation_compliance].nil?
        Hearth::Validator.validate!(input[:optimization_type], ::String, context: "#{context}[:optimization_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SuggestedChangesList.validate!(input[:suggested_changes], context: "#{context}[:suggested_changes]") unless input[:suggested_changes].nil?
        Hearth::Validator.validate!(input[:ha_architecture], ::String, context: "#{context}[:ha_architecture]")
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
      end
    end

    class ConfigRecommendationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class Cost
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cost, context: context)
        Hearth::Validator.validate!(input[:amount], ::Float, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
      end
    end

    class CreateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:assessment_schedule], ::String, context: "#{context}[:assessment_schedule]")
      end
    end

    class CreateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppOutput, context: context)
        App.validate!(input[:app], context: "#{context}[:app]") unless input[:app].nil?
      end
    end

    class CreateRecommendationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecommendationTemplateInput, context: context)
        RecommendationIdList.validate!(input[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless input[:recommendation_ids].nil?
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        RenderRecommendationTypeList.validate!(input[:recommendation_types], context: "#{context}[:recommendation_types]") unless input[:recommendation_types].nil?
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
      end
    end

    class CreateRecommendationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecommendationTemplateOutput, context: context)
        RecommendationTemplate.validate!(input[:recommendation_template], context: "#{context}[:recommendation_template]") unless input[:recommendation_template].nil?
      end
    end

    class CreateResiliencyPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResiliencyPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_description], ::String, context: "#{context}[:policy_description]")
        Hearth::Validator.validate!(input[:data_location_constraint], ::String, context: "#{context}[:data_location_constraint]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        DisruptionPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateResiliencyPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResiliencyPolicyOutput, context: context)
        ResiliencyPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class DeleteAppAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteAppAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppAssessmentOutput, context: context)
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
        Hearth::Validator.validate!(input[:assessment_status], ::String, context: "#{context}[:assessment_status]")
      end
    end

    class DeleteAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
      end
    end

    class DeleteRecommendationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecommendationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:recommendation_template_arn], ::String, context: "#{context}[:recommendation_template_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteRecommendationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecommendationTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:recommendation_template_arn], ::String, context: "#{context}[:recommendation_template_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteResiliencyPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResiliencyPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteResiliencyPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResiliencyPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class DescribeAppAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
      end
    end

    class DescribeAppAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppAssessmentOutput, context: context)
        AppAssessment.validate!(input[:assessment], context: "#{context}[:assessment]") unless input[:assessment].nil?
      end
    end

    class DescribeAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
      end
    end

    class DescribeAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppOutput, context: context)
        App.validate!(input[:app], context: "#{context}[:app]") unless input[:app].nil?
      end
    end

    class DescribeAppVersionResourcesResolutionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppVersionResourcesResolutionStatusInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:resolution_id], ::String, context: "#{context}[:resolution_id]")
      end
    end

    class DescribeAppVersionResourcesResolutionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppVersionResourcesResolutionStatusOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:resolution_id], ::String, context: "#{context}[:resolution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class DescribeAppVersionTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppVersionTemplateInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
      end
    end

    class DescribeAppVersionTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppVersionTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:app_template_body], ::String, context: "#{context}[:app_template_body]")
      end
    end

    class DescribeDraftAppVersionResourcesImportStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDraftAppVersionResourcesImportStatusInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
      end
    end

    class DescribeDraftAppVersionResourcesImportStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDraftAppVersionResourcesImportStatusOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_change_time], ::Time, context: "#{context}[:status_change_time]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class DescribeResiliencyPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResiliencyPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class DescribeResiliencyPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResiliencyPolicyOutput, context: context)
        ResiliencyPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class DisruptionCompliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisruptionCompliance, context: context)
        Hearth::Validator.validate!(input[:achievable_rto_in_secs], ::Integer, context: "#{context}[:achievable_rto_in_secs]")
        Hearth::Validator.validate!(input[:current_rto_in_secs], ::Integer, context: "#{context}[:current_rto_in_secs]")
        Hearth::Validator.validate!(input[:rto_reference_id], ::String, context: "#{context}[:rto_reference_id]")
        Hearth::Validator.validate!(input[:rto_description], ::String, context: "#{context}[:rto_description]")
        Hearth::Validator.validate!(input[:current_rpo_in_secs], ::Integer, context: "#{context}[:current_rpo_in_secs]")
        Hearth::Validator.validate!(input[:rpo_reference_id], ::String, context: "#{context}[:rpo_reference_id]")
        Hearth::Validator.validate!(input[:rpo_description], ::String, context: "#{context}[:rpo_description]")
        Hearth::Validator.validate!(input[:compliance_status], ::String, context: "#{context}[:compliance_status]")
        Hearth::Validator.validate!(input[:achievable_rpo_in_secs], ::Integer, context: "#{context}[:achievable_rpo_in_secs]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisruptionPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          FailurePolicy.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class DisruptionResiliencyScore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Float, context: "#{context}[:#{key}]")
        end
      end
    end

    class EntityNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FailurePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailurePolicy, context: context)
        Hearth::Validator.validate!(input[:rto_in_secs], ::Integer, context: "#{context}[:rto_in_secs]")
        Hearth::Validator.validate!(input[:rpo_in_secs], ::Integer, context: "#{context}[:rpo_in_secs]")
      end
    end

    class ImportResourcesToDraftAppVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportResourcesToDraftAppVersionInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        ArnList.validate!(input[:source_arns], context: "#{context}[:source_arns]") unless input[:source_arns].nil?
        TerraformSourceList.validate!(input[:terraform_sources], context: "#{context}[:terraform_sources]") unless input[:terraform_sources].nil?
      end
    end

    class ImportResourcesToDraftAppVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportResourcesToDraftAppVersionOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        ArnList.validate!(input[:source_arns], context: "#{context}[:source_arns]") unless input[:source_arns].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TerraformSourceList.validate!(input[:terraform_sources], context: "#{context}[:terraform_sources]") unless input[:terraform_sources].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAlarmRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlarmRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAlarmRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlarmRecommendationsOutput, context: context)
        AlarmRecommendationList.validate!(input[:alarm_recommendations], context: "#{context}[:alarm_recommendations]") unless input[:alarm_recommendations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppAssessmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppAssessmentsInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        AssessmentStatusList.validate!(input[:assessment_status], context: "#{context}[:assessment_status]") unless input[:assessment_status].nil?
        Hearth::Validator.validate!(input[:compliance_status], ::String, context: "#{context}[:compliance_status]")
        Hearth::Validator.validate!(input[:invoker], ::String, context: "#{context}[:invoker]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAppAssessmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppAssessmentsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        AppAssessmentSummaryList.validate!(input[:assessment_summaries], context: "#{context}[:assessment_summaries]") unless input[:assessment_summaries].nil?
      end
    end

    class ListAppComponentCompliancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppComponentCompliancesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
      end
    end

    class ListAppComponentCompliancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppComponentCompliancesOutput, context: context)
        ComponentCompliancesList.validate!(input[:component_compliances], context: "#{context}[:component_compliances]") unless input[:component_compliances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppComponentRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppComponentRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAppComponentRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppComponentRecommendationsOutput, context: context)
        ComponentRecommendationList.validate!(input[:component_recommendations], context: "#{context}[:component_recommendations]") unless input[:component_recommendations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppVersionResourceMappingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppVersionResourceMappingsInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAppVersionResourceMappingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppVersionResourceMappingsOutput, context: context)
        ResourceMappingList.validate!(input[:resource_mappings], context: "#{context}[:resource_mappings]") unless input[:resource_mappings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppVersionResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppVersionResourcesInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:resolution_id], ::String, context: "#{context}[:resolution_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAppVersionResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppVersionResourcesOutput, context: context)
        PhysicalResourceList.validate!(input[:physical_resources], context: "#{context}[:physical_resources]") unless input[:physical_resources].nil?
        Hearth::Validator.validate!(input[:resolution_id], ::String, context: "#{context}[:resolution_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppVersionsInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAppVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppVersionsOutput, context: context)
        AppVersionList.validate!(input[:app_versions], context: "#{context}[:app_versions]") unless input[:app_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
      end
    end

    class ListAppsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsOutput, context: context)
        AppSummaryList.validate!(input[:app_summaries], context: "#{context}[:app_summaries]") unless input[:app_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecommendationTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendationTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
        RecommendationTemplateStatusList.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:recommendation_template_arn], ::String, context: "#{context}[:recommendation_template_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRecommendationTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendationTemplatesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        RecommendationTemplateList.validate!(input[:recommendation_templates], context: "#{context}[:recommendation_templates]") unless input[:recommendation_templates].nil?
      end
    end

    class ListResiliencyPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResiliencyPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResiliencyPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResiliencyPoliciesOutput, context: context)
        ResiliencyPolicies.validate!(input[:resiliency_policies], context: "#{context}[:resiliency_policies]") unless input[:resiliency_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSopRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSopRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
      end
    end

    class ListSopRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSopRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SopRecommendationList.validate!(input[:sop_recommendations], context: "#{context}[:sop_recommendations]") unless input[:sop_recommendations].nil?
      end
    end

    class ListSuggestedResiliencyPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuggestedResiliencyPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSuggestedResiliencyPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuggestedResiliencyPoliciesOutput, context: context)
        ResiliencyPolicies.validate!(input[:resiliency_policies], context: "#{context}[:resiliency_policies]") unless input[:resiliency_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTestRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
      end
    end

    class ListTestRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        TestRecommendationList.validate!(input[:test_recommendations], context: "#{context}[:test_recommendations]") unless input[:test_recommendations].nil?
      end
    end

    class ListUnsupportedAppVersionResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUnsupportedAppVersionResourcesInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:resolution_id], ::String, context: "#{context}[:resolution_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUnsupportedAppVersionResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUnsupportedAppVersionResourcesOutput, context: context)
        UnsupportedResourceList.validate!(input[:unsupported_resources], context: "#{context}[:unsupported_resources]") unless input[:unsupported_resources].nil?
        Hearth::Validator.validate!(input[:resolution_id], ::String, context: "#{context}[:resolution_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LogicalResourceId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogicalResourceId, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:logical_stack_name], ::String, context: "#{context}[:logical_stack_name]")
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:terraform_source_name], ::String, context: "#{context}[:terraform_source_name]")
      end
    end

    class PhysicalResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhysicalResource, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        LogicalResourceId.validate!(input[:logical_resource_id], context: "#{context}[:logical_resource_id]") unless input[:logical_resource_id].nil?
        PhysicalResourceId.validate!(input[:physical_resource_id], context: "#{context}[:physical_resource_id]") unless input[:physical_resource_id].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        AppComponentList.validate!(input[:app_components], context: "#{context}[:app_components]") unless input[:app_components].nil?
      end
    end

    class PhysicalResourceId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhysicalResourceId, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
      end
    end

    class PhysicalResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhysicalResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PublishAppVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishAppVersionInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
      end
    end

    class PublishAppVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishAppVersionOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
      end
    end

    class PutDraftAppVersionTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDraftAppVersionTemplateInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_template_body], ::String, context: "#{context}[:app_template_body]")
      end
    end

    class PutDraftAppVersionTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDraftAppVersionTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
      end
    end

    class RecommendationCompliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          RecommendationDisruptionCompliance.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class RecommendationDisruptionCompliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationDisruptionCompliance, context: context)
        Hearth::Validator.validate!(input[:expected_compliance_status], ::String, context: "#{context}[:expected_compliance_status]")
        Hearth::Validator.validate!(input[:expected_rto_in_secs], ::Integer, context: "#{context}[:expected_rto_in_secs]")
        Hearth::Validator.validate!(input[:expected_rto_description], ::String, context: "#{context}[:expected_rto_description]")
        Hearth::Validator.validate!(input[:expected_rpo_in_secs], ::Integer, context: "#{context}[:expected_rpo_in_secs]")
        Hearth::Validator.validate!(input[:expected_rpo_description], ::String, context: "#{context}[:expected_rpo_description]")
      end
    end

    class RecommendationIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecommendationItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationItem, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:target_account_id], ::String, context: "#{context}[:target_account_id]")
        Hearth::Validator.validate!(input[:target_region], ::String, context: "#{context}[:target_region]")
        Hearth::Validator.validate!(input[:already_implemented], ::TrueClass, ::FalseClass, context: "#{context}[:already_implemented]")
      end
    end

    class RecommendationItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationTemplate, context: context)
        S3Location.validate!(input[:templates_location], context: "#{context}[:templates_location]") unless input[:templates_location].nil?
        Hearth::Validator.validate!(input[:assessment_arn], ::String, context: "#{context}[:assessment_arn]")
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        RecommendationIdList.validate!(input[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless input[:recommendation_ids].nil?
        RenderRecommendationTypeList.validate!(input[:recommendation_types], context: "#{context}[:recommendation_types]") unless input[:recommendation_types].nil?
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:recommendation_template_arn], ::String, context: "#{context}[:recommendation_template_arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:needs_replacements], ::TrueClass, ::FalseClass, context: "#{context}[:needs_replacements]")
      end
    end

    class RecommendationTemplateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationTemplateStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RemoveDraftAppVersionResourceMappingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveDraftAppVersionResourceMappingsInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        EntityNameList.validate!(input[:resource_names], context: "#{context}[:resource_names]") unless input[:resource_names].nil?
        String255List.validate!(input[:logical_stack_names], context: "#{context}[:logical_stack_names]") unless input[:logical_stack_names].nil?
        EntityNameList.validate!(input[:app_registry_app_names], context: "#{context}[:app_registry_app_names]") unless input[:app_registry_app_names].nil?
        EntityNameList.validate!(input[:resource_group_names], context: "#{context}[:resource_group_names]") unless input[:resource_group_names].nil?
        String255List.validate!(input[:terraform_source_names], context: "#{context}[:terraform_source_names]") unless input[:terraform_source_names].nil?
      end
    end

    class RemoveDraftAppVersionResourceMappingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveDraftAppVersionResourceMappingsOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
      end
    end

    class RenderRecommendationTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResiliencyPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResiliencyPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResiliencyPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResiliencyPolicy, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_description], ::String, context: "#{context}[:policy_description]")
        Hearth::Validator.validate!(input[:data_location_constraint], ::String, context: "#{context}[:data_location_constraint]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Hearth::Validator.validate!(input[:estimated_cost_tier], ::String, context: "#{context}[:estimated_cost_tier]")
        DisruptionPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResiliencyScore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResiliencyScore, context: context)
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        DisruptionResiliencyScore.validate!(input[:disruption_score], context: "#{context}[:disruption_score]") unless input[:disruption_score].nil?
      end
    end

    class ResolveAppVersionResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveAppVersionResourcesInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
      end
    end

    class ResolveAppVersionResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveAppVersionResourcesOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:resolution_id], ::String, context: "#{context}[:resolution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ResourceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceError, context: context)
        Hearth::Validator.validate!(input[:logical_resource_id], ::String, context: "#{context}[:logical_resource_id]")
        Hearth::Validator.validate!(input[:physical_resource_id], ::String, context: "#{context}[:physical_resource_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ResourceErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceErrorsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceErrorsDetails, context: context)
        ResourceErrorList.validate!(input[:resource_errors], context: "#{context}[:resource_errors]") unless input[:resource_errors].nil?
        Hearth::Validator.validate!(input[:has_more_errors], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_errors]")
      end
    end

    class ResourceMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceMapping, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:logical_stack_name], ::String, context: "#{context}[:logical_stack_name]")
        Hearth::Validator.validate!(input[:app_registry_app_name], ::String, context: "#{context}[:app_registry_app_name]")
        Hearth::Validator.validate!(input[:resource_group_name], ::String, context: "#{context}[:resource_group_name]")
        Hearth::Validator.validate!(input[:mapping_type], ::String, context: "#{context}[:mapping_type]")
        PhysicalResourceId.validate!(input[:physical_resource_id], context: "#{context}[:physical_resource_id]") unless input[:physical_resource_id].nil?
        Hearth::Validator.validate!(input[:terraform_source_name], ::String, context: "#{context}[:terraform_source_name]")
      end
    end

    class ResourceMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SopRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SopRecommendation, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:app_component_name], ::String, context: "#{context}[:app_component_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RecommendationItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:prerequisite], ::String, context: "#{context}[:prerequisite]")
      end
    end

    class SopRecommendationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SopRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartAppAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAppAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:assessment_name], ::String, context: "#{context}[:assessment_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartAppAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAppAssessmentOutput, context: context)
        AppAssessment.validate!(input[:assessment], context: "#{context}[:assessment]") unless input[:assessment].nil?
      end
    end

    class String255List
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SuggestedChangesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TerraformSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerraformSource, context: context)
        Hearth::Validator.validate!(input[:s3_state_file_url], ::String, context: "#{context}[:s3_state_file_url]")
      end
    end

    class TerraformSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TerraformSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestRecommendation, context: context)
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:app_component_name], ::String, context: "#{context}[:app_component_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:intent], ::String, context: "#{context}[:intent]")
        Hearth::Validator.validate!(input[:risk], ::String, context: "#{context}[:risk]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        RecommendationItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:prerequisite], ::String, context: "#{context}[:prerequisite]")
        AlarmReferenceIdList.validate!(input[:depends_on_alarms], context: "#{context}[:depends_on_alarms]") unless input[:depends_on_alarms].nil?
      end
    end

    class TestRecommendationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TestRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UnsupportedResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedResource, context: context)
        LogicalResourceId.validate!(input[:logical_resource_id], context: "#{context}[:logical_resource_id]") unless input[:logical_resource_id].nil?
        PhysicalResourceId.validate!(input[:physical_resource_id], context: "#{context}[:physical_resource_id]") unless input[:physical_resource_id].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class UnsupportedResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnsupportedResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:clear_resiliency_policy_arn], ::TrueClass, ::FalseClass, context: "#{context}[:clear_resiliency_policy_arn]")
        Hearth::Validator.validate!(input[:assessment_schedule], ::String, context: "#{context}[:assessment_schedule]")
      end
    end

    class UpdateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppOutput, context: context)
        App.validate!(input[:app], context: "#{context}[:app]") unless input[:app].nil?
      end
    end

    class UpdateResiliencyPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResiliencyPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_description], ::String, context: "#{context}[:policy_description]")
        Hearth::Validator.validate!(input[:data_location_constraint], ::String, context: "#{context}[:data_location_constraint]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        DisruptionPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class UpdateResiliencyPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResiliencyPolicyOutput, context: context)
        ResiliencyPolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
