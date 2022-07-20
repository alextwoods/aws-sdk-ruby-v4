# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Resiliencehub
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AddDraftAppVersionResourceMappingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddDraftAppVersionResourceMappingsInput, context: context)
        type = Types::AddDraftAppVersionResourceMappingsInput.new
        type.app_arn = params[:app_arn]
        type.resource_mappings = ResourceMappingList.build(params[:resource_mappings], context: "#{context}[:resource_mappings]") unless params[:resource_mappings].nil?
        type
      end
    end

    module AddDraftAppVersionResourceMappingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddDraftAppVersionResourceMappingsOutput, context: context)
        type = Types::AddDraftAppVersionResourceMappingsOutput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.resource_mappings = ResourceMappingList.build(params[:resource_mappings], context: "#{context}[:resource_mappings]") unless params[:resource_mappings].nil?
        type
      end
    end

    module AlarmRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmRecommendation, context: context)
        type = Types::AlarmRecommendation.new
        type.recommendation_id = params[:recommendation_id]
        type.reference_id = params[:reference_id]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.app_component_name = params[:app_component_name]
        type.items = RecommendationItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.prerequisite = params[:prerequisite]
        type
      end
    end

    module AlarmRecommendationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlarmRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlarmReferenceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module App
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::App, context: context)
        type = Types::App.new
        type.app_arn = params[:app_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.policy_arn = params[:policy_arn]
        type.creation_time = params[:creation_time]
        type.status = params[:status]
        type.compliance_status = params[:compliance_status]
        type.last_app_compliance_evaluation_time = params[:last_app_compliance_evaluation_time]
        type.resiliency_score = params[:resiliency_score]
        type.last_resiliency_score_evaluation_time = params[:last_resiliency_score_evaluation_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.assessment_schedule = params[:assessment_schedule]
        type
      end
    end

    module AppAssessment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppAssessment, context: context)
        type = Types::AppAssessment.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.invoker = params[:invoker]
        type.cost = Cost.build(params[:cost], context: "#{context}[:cost]") unless params[:cost].nil?
        type.resiliency_score = ResiliencyScore.build(params[:resiliency_score], context: "#{context}[:resiliency_score]") unless params[:resiliency_score].nil?
        type.compliance = AssessmentCompliance.build(params[:compliance], context: "#{context}[:compliance]") unless params[:compliance].nil?
        type.compliance_status = params[:compliance_status]
        type.assessment_status = params[:assessment_status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.message = params[:message]
        type.assessment_name = params[:assessment_name]
        type.assessment_arn = params[:assessment_arn]
        type.policy = ResiliencyPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.resource_errors_details = ResourceErrorsDetails.build(params[:resource_errors_details], context: "#{context}[:resource_errors_details]") unless params[:resource_errors_details].nil?
        type
      end
    end

    module AppAssessmentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppAssessmentSummary, context: context)
        type = Types::AppAssessmentSummary.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.assessment_status = params[:assessment_status]
        type.invoker = params[:invoker]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.message = params[:message]
        type.assessment_name = params[:assessment_name]
        type.assessment_arn = params[:assessment_arn]
        type.compliance_status = params[:compliance_status]
        type.cost = Cost.build(params[:cost], context: "#{context}[:cost]") unless params[:cost].nil?
        type.resiliency_score = params[:resiliency_score]
        type
      end
    end

    module AppAssessmentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppAssessmentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppComponent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppComponent, context: context)
        type = Types::AppComponent.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module AppComponentCompliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppComponentCompliance, context: context)
        type = Types::AppComponentCompliance.new
        type.cost = Cost.build(params[:cost], context: "#{context}[:cost]") unless params[:cost].nil?
        type.app_component_name = params[:app_component_name]
        type.compliance = AssessmentCompliance.build(params[:compliance], context: "#{context}[:compliance]") unless params[:compliance].nil?
        type.message = params[:message]
        type.status = params[:status]
        type.resiliency_score = ResiliencyScore.build(params[:resiliency_score], context: "#{context}[:resiliency_score]") unless params[:resiliency_score].nil?
        type
      end
    end

    module AppComponentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppComponent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppSummary, context: context)
        type = Types::AppSummary.new
        type.app_arn = params[:app_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.compliance_status = params[:compliance_status]
        type.resiliency_score = params[:resiliency_score]
        type.assessment_schedule = params[:assessment_schedule]
        type
      end
    end

    module AppSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppVersionSummary, context: context)
        type = Types::AppVersionSummary.new
        type.app_version = params[:app_version]
        type
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssessmentCompliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = DisruptionCompliance.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AssessmentStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ComponentCompliancesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppComponentCompliance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentRecommendation, context: context)
        type = Types::ComponentRecommendation.new
        type.app_component_name = params[:app_component_name]
        type.recommendation_status = params[:recommendation_status]
        type.config_recommendations = ConfigRecommendationList.build(params[:config_recommendations], context: "#{context}[:config_recommendations]") unless params[:config_recommendations].nil?
        type
      end
    end

    module ComponentRecommendationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigRecommendation, context: context)
        type = Types::ConfigRecommendation.new
        type.cost = Cost.build(params[:cost], context: "#{context}[:cost]") unless params[:cost].nil?
        type.app_component_name = params[:app_component_name]
        type.compliance = AssessmentCompliance.build(params[:compliance], context: "#{context}[:compliance]") unless params[:compliance].nil?
        type.recommendation_compliance = RecommendationCompliance.build(params[:recommendation_compliance], context: "#{context}[:recommendation_compliance]") unless params[:recommendation_compliance].nil?
        type.optimization_type = params[:optimization_type]
        type.name = params[:name]
        type.description = params[:description]
        type.suggested_changes = SuggestedChangesList.build(params[:suggested_changes], context: "#{context}[:suggested_changes]") unless params[:suggested_changes].nil?
        type.ha_architecture = params[:ha_architecture]
        type.reference_id = params[:reference_id]
        type
      end
    end

    module ConfigRecommendationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module Cost
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cost, context: context)
        type = Types::Cost.new
        type.amount = params[:amount]
        type.currency = params[:currency]
        type.frequency = params[:frequency]
        type
      end
    end

    module CreateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInput, context: context)
        type = Types::CreateAppInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.policy_arn = params[:policy_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.assessment_schedule = params[:assessment_schedule]
        type
      end
    end

    module CreateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppOutput, context: context)
        type = Types::CreateAppOutput.new
        type.app = App.build(params[:app], context: "#{context}[:app]") unless params[:app].nil?
        type
      end
    end

    module CreateRecommendationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecommendationTemplateInput, context: context)
        type = Types::CreateRecommendationTemplateInput.new
        type.recommendation_ids = RecommendationIdList.build(params[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless params[:recommendation_ids].nil?
        type.format = params[:format]
        type.recommendation_types = RenderRecommendationTypeList.build(params[:recommendation_types], context: "#{context}[:recommendation_types]") unless params[:recommendation_types].nil?
        type.assessment_arn = params[:assessment_arn]
        type.name = params[:name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.bucket_name = params[:bucket_name]
        type
      end
    end

    module CreateRecommendationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecommendationTemplateOutput, context: context)
        type = Types::CreateRecommendationTemplateOutput.new
        type.recommendation_template = RecommendationTemplate.build(params[:recommendation_template], context: "#{context}[:recommendation_template]") unless params[:recommendation_template].nil?
        type
      end
    end

    module CreateResiliencyPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResiliencyPolicyInput, context: context)
        type = Types::CreateResiliencyPolicyInput.new
        type.policy_name = params[:policy_name]
        type.policy_description = params[:policy_description]
        type.data_location_constraint = params[:data_location_constraint]
        type.tier = params[:tier]
        type.policy = DisruptionPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateResiliencyPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResiliencyPolicyOutput, context: context)
        type = Types::CreateResiliencyPolicyOutput.new
        type.policy = ResiliencyPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module DeleteAppAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppAssessmentInput, context: context)
        type = Types::DeleteAppAssessmentInput.new
        type.assessment_arn = params[:assessment_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteAppAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppAssessmentOutput, context: context)
        type = Types::DeleteAppAssessmentOutput.new
        type.assessment_arn = params[:assessment_arn]
        type.assessment_status = params[:assessment_status]
        type
      end
    end

    module DeleteAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInput, context: context)
        type = Types::DeleteAppInput.new
        type.app_arn = params[:app_arn]
        type.force_delete = params[:force_delete]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppOutput, context: context)
        type = Types::DeleteAppOutput.new
        type.app_arn = params[:app_arn]
        type
      end
    end

    module DeleteRecommendationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecommendationTemplateInput, context: context)
        type = Types::DeleteRecommendationTemplateInput.new
        type.recommendation_template_arn = params[:recommendation_template_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteRecommendationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecommendationTemplateOutput, context: context)
        type = Types::DeleteRecommendationTemplateOutput.new
        type.recommendation_template_arn = params[:recommendation_template_arn]
        type.status = params[:status]
        type
      end
    end

    module DeleteResiliencyPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResiliencyPolicyInput, context: context)
        type = Types::DeleteResiliencyPolicyInput.new
        type.policy_arn = params[:policy_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteResiliencyPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResiliencyPolicyOutput, context: context)
        type = Types::DeleteResiliencyPolicyOutput.new
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module DescribeAppAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppAssessmentInput, context: context)
        type = Types::DescribeAppAssessmentInput.new
        type.assessment_arn = params[:assessment_arn]
        type
      end
    end

    module DescribeAppAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppAssessmentOutput, context: context)
        type = Types::DescribeAppAssessmentOutput.new
        type.assessment = AppAssessment.build(params[:assessment], context: "#{context}[:assessment]") unless params[:assessment].nil?
        type
      end
    end

    module DescribeAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInput, context: context)
        type = Types::DescribeAppInput.new
        type.app_arn = params[:app_arn]
        type
      end
    end

    module DescribeAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppOutput, context: context)
        type = Types::DescribeAppOutput.new
        type.app = App.build(params[:app], context: "#{context}[:app]") unless params[:app].nil?
        type
      end
    end

    module DescribeAppVersionResourcesResolutionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppVersionResourcesResolutionStatusInput, context: context)
        type = Types::DescribeAppVersionResourcesResolutionStatusInput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.resolution_id = params[:resolution_id]
        type
      end
    end

    module DescribeAppVersionResourcesResolutionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppVersionResourcesResolutionStatusOutput, context: context)
        type = Types::DescribeAppVersionResourcesResolutionStatusOutput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.resolution_id = params[:resolution_id]
        type.status = params[:status]
        type.error_message = params[:error_message]
        type
      end
    end

    module DescribeAppVersionTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppVersionTemplateInput, context: context)
        type = Types::DescribeAppVersionTemplateInput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type
      end
    end

    module DescribeAppVersionTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppVersionTemplateOutput, context: context)
        type = Types::DescribeAppVersionTemplateOutput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.app_template_body = params[:app_template_body]
        type
      end
    end

    module DescribeDraftAppVersionResourcesImportStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDraftAppVersionResourcesImportStatusInput, context: context)
        type = Types::DescribeDraftAppVersionResourcesImportStatusInput.new
        type.app_arn = params[:app_arn]
        type
      end
    end

    module DescribeDraftAppVersionResourcesImportStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDraftAppVersionResourcesImportStatusOutput, context: context)
        type = Types::DescribeDraftAppVersionResourcesImportStatusOutput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.status = params[:status]
        type.status_change_time = params[:status_change_time]
        type.error_message = params[:error_message]
        type
      end
    end

    module DescribeResiliencyPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResiliencyPolicyInput, context: context)
        type = Types::DescribeResiliencyPolicyInput.new
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module DescribeResiliencyPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResiliencyPolicyOutput, context: context)
        type = Types::DescribeResiliencyPolicyOutput.new
        type.policy = ResiliencyPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module DisruptionCompliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisruptionCompliance, context: context)
        type = Types::DisruptionCompliance.new
        type.achievable_rto_in_secs = params[:achievable_rto_in_secs]
        type.current_rto_in_secs = params[:current_rto_in_secs]
        type.rto_reference_id = params[:rto_reference_id]
        type.rto_description = params[:rto_description]
        type.current_rpo_in_secs = params[:current_rpo_in_secs]
        type.rpo_reference_id = params[:rpo_reference_id]
        type.rpo_description = params[:rpo_description]
        type.compliance_status = params[:compliance_status]
        type.achievable_rpo_in_secs = params[:achievable_rpo_in_secs]
        type.message = params[:message]
        type
      end
    end

    module DisruptionPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FailurePolicy.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module DisruptionResiliencyScore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EntityNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FailurePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailurePolicy, context: context)
        type = Types::FailurePolicy.new
        type.rto_in_secs = params[:rto_in_secs]
        type.rpo_in_secs = params[:rpo_in_secs]
        type
      end
    end

    module ImportResourcesToDraftAppVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportResourcesToDraftAppVersionInput, context: context)
        type = Types::ImportResourcesToDraftAppVersionInput.new
        type.app_arn = params[:app_arn]
        type.source_arns = ArnList.build(params[:source_arns], context: "#{context}[:source_arns]") unless params[:source_arns].nil?
        type.terraform_sources = TerraformSourceList.build(params[:terraform_sources], context: "#{context}[:terraform_sources]") unless params[:terraform_sources].nil?
        type
      end
    end

    module ImportResourcesToDraftAppVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportResourcesToDraftAppVersionOutput, context: context)
        type = Types::ImportResourcesToDraftAppVersionOutput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.source_arns = ArnList.build(params[:source_arns], context: "#{context}[:source_arns]") unless params[:source_arns].nil?
        type.status = params[:status]
        type.terraform_sources = TerraformSourceList.build(params[:terraform_sources], context: "#{context}[:terraform_sources]") unless params[:terraform_sources].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListAlarmRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlarmRecommendationsInput, context: context)
        type = Types::ListAlarmRecommendationsInput.new
        type.assessment_arn = params[:assessment_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAlarmRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlarmRecommendationsOutput, context: context)
        type = Types::ListAlarmRecommendationsOutput.new
        type.alarm_recommendations = AlarmRecommendationList.build(params[:alarm_recommendations], context: "#{context}[:alarm_recommendations]") unless params[:alarm_recommendations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppAssessmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppAssessmentsInput, context: context)
        type = Types::ListAppAssessmentsInput.new
        type.app_arn = params[:app_arn]
        type.assessment_name = params[:assessment_name]
        type.assessment_status = AssessmentStatusList.build(params[:assessment_status], context: "#{context}[:assessment_status]") unless params[:assessment_status].nil?
        type.compliance_status = params[:compliance_status]
        type.invoker = params[:invoker]
        type.reverse_order = params[:reverse_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAppAssessmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppAssessmentsOutput, context: context)
        type = Types::ListAppAssessmentsOutput.new
        type.next_token = params[:next_token]
        type.assessment_summaries = AppAssessmentSummaryList.build(params[:assessment_summaries], context: "#{context}[:assessment_summaries]") unless params[:assessment_summaries].nil?
        type
      end
    end

    module ListAppComponentCompliancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppComponentCompliancesInput, context: context)
        type = Types::ListAppComponentCompliancesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.assessment_arn = params[:assessment_arn]
        type
      end
    end

    module ListAppComponentCompliancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppComponentCompliancesOutput, context: context)
        type = Types::ListAppComponentCompliancesOutput.new
        type.component_compliances = ComponentCompliancesList.build(params[:component_compliances], context: "#{context}[:component_compliances]") unless params[:component_compliances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppComponentRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppComponentRecommendationsInput, context: context)
        type = Types::ListAppComponentRecommendationsInput.new
        type.assessment_arn = params[:assessment_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAppComponentRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppComponentRecommendationsOutput, context: context)
        type = Types::ListAppComponentRecommendationsOutput.new
        type.component_recommendations = ComponentRecommendationList.build(params[:component_recommendations], context: "#{context}[:component_recommendations]") unless params[:component_recommendations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppVersionResourceMappingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppVersionResourceMappingsInput, context: context)
        type = Types::ListAppVersionResourceMappingsInput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAppVersionResourceMappingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppVersionResourceMappingsOutput, context: context)
        type = Types::ListAppVersionResourceMappingsOutput.new
        type.resource_mappings = ResourceMappingList.build(params[:resource_mappings], context: "#{context}[:resource_mappings]") unless params[:resource_mappings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppVersionResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppVersionResourcesInput, context: context)
        type = Types::ListAppVersionResourcesInput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.resolution_id = params[:resolution_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAppVersionResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppVersionResourcesOutput, context: context)
        type = Types::ListAppVersionResourcesOutput.new
        type.physical_resources = PhysicalResourceList.build(params[:physical_resources], context: "#{context}[:physical_resources]") unless params[:physical_resources].nil?
        type.resolution_id = params[:resolution_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppVersionsInput, context: context)
        type = Types::ListAppVersionsInput.new
        type.app_arn = params[:app_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAppVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppVersionsOutput, context: context)
        type = Types::ListAppVersionsOutput.new
        type.app_versions = AppVersionList.build(params[:app_versions], context: "#{context}[:app_versions]") unless params[:app_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsInput, context: context)
        type = Types::ListAppsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name = params[:name]
        type.app_arn = params[:app_arn]
        type
      end
    end

    module ListAppsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsOutput, context: context)
        type = Types::ListAppsOutput.new
        type.app_summaries = AppSummaryList.build(params[:app_summaries], context: "#{context}[:app_summaries]") unless params[:app_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecommendationTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendationTemplatesInput, context: context)
        type = Types::ListRecommendationTemplatesInput.new
        type.assessment_arn = params[:assessment_arn]
        type.reverse_order = params[:reverse_order]
        type.status = RecommendationTemplateStatusList.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.recommendation_template_arn = params[:recommendation_template_arn]
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRecommendationTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendationTemplatesOutput, context: context)
        type = Types::ListRecommendationTemplatesOutput.new
        type.next_token = params[:next_token]
        type.recommendation_templates = RecommendationTemplateList.build(params[:recommendation_templates], context: "#{context}[:recommendation_templates]") unless params[:recommendation_templates].nil?
        type
      end
    end

    module ListResiliencyPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResiliencyPoliciesInput, context: context)
        type = Types::ListResiliencyPoliciesInput.new
        type.policy_name = params[:policy_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResiliencyPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResiliencyPoliciesOutput, context: context)
        type = Types::ListResiliencyPoliciesOutput.new
        type.resiliency_policies = ResiliencyPolicies.build(params[:resiliency_policies], context: "#{context}[:resiliency_policies]") unless params[:resiliency_policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSopRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSopRecommendationsInput, context: context)
        type = Types::ListSopRecommendationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.assessment_arn = params[:assessment_arn]
        type
      end
    end

    module ListSopRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSopRecommendationsOutput, context: context)
        type = Types::ListSopRecommendationsOutput.new
        type.next_token = params[:next_token]
        type.sop_recommendations = SopRecommendationList.build(params[:sop_recommendations], context: "#{context}[:sop_recommendations]") unless params[:sop_recommendations].nil?
        type
      end
    end

    module ListSuggestedResiliencyPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuggestedResiliencyPoliciesInput, context: context)
        type = Types::ListSuggestedResiliencyPoliciesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSuggestedResiliencyPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuggestedResiliencyPoliciesOutput, context: context)
        type = Types::ListSuggestedResiliencyPoliciesOutput.new
        type.resiliency_policies = ResiliencyPolicies.build(params[:resiliency_policies], context: "#{context}[:resiliency_policies]") unless params[:resiliency_policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTestRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestRecommendationsInput, context: context)
        type = Types::ListTestRecommendationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.assessment_arn = params[:assessment_arn]
        type
      end
    end

    module ListTestRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestRecommendationsOutput, context: context)
        type = Types::ListTestRecommendationsOutput.new
        type.next_token = params[:next_token]
        type.test_recommendations = TestRecommendationList.build(params[:test_recommendations], context: "#{context}[:test_recommendations]") unless params[:test_recommendations].nil?
        type
      end
    end

    module ListUnsupportedAppVersionResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUnsupportedAppVersionResourcesInput, context: context)
        type = Types::ListUnsupportedAppVersionResourcesInput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.resolution_id = params[:resolution_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUnsupportedAppVersionResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUnsupportedAppVersionResourcesOutput, context: context)
        type = Types::ListUnsupportedAppVersionResourcesOutput.new
        type.unsupported_resources = UnsupportedResourceList.build(params[:unsupported_resources], context: "#{context}[:unsupported_resources]") unless params[:unsupported_resources].nil?
        type.resolution_id = params[:resolution_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module LogicalResourceId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogicalResourceId, context: context)
        type = Types::LogicalResourceId.new
        type.identifier = params[:identifier]
        type.logical_stack_name = params[:logical_stack_name]
        type.resource_group_name = params[:resource_group_name]
        type.terraform_source_name = params[:terraform_source_name]
        type
      end
    end

    module PhysicalResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhysicalResource, context: context)
        type = Types::PhysicalResource.new
        type.resource_name = params[:resource_name]
        type.logical_resource_id = LogicalResourceId.build(params[:logical_resource_id], context: "#{context}[:logical_resource_id]") unless params[:logical_resource_id].nil?
        type.physical_resource_id = PhysicalResourceId.build(params[:physical_resource_id], context: "#{context}[:physical_resource_id]") unless params[:physical_resource_id].nil?
        type.resource_type = params[:resource_type]
        type.app_components = AppComponentList.build(params[:app_components], context: "#{context}[:app_components]") unless params[:app_components].nil?
        type
      end
    end

    module PhysicalResourceId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhysicalResourceId, context: context)
        type = Types::PhysicalResourceId.new
        type.identifier = params[:identifier]
        type.type = params[:type]
        type.aws_region = params[:aws_region]
        type.aws_account_id = params[:aws_account_id]
        type
      end
    end

    module PhysicalResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhysicalResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PublishAppVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishAppVersionInput, context: context)
        type = Types::PublishAppVersionInput.new
        type.app_arn = params[:app_arn]
        type
      end
    end

    module PublishAppVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishAppVersionOutput, context: context)
        type = Types::PublishAppVersionOutput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type
      end
    end

    module PutDraftAppVersionTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDraftAppVersionTemplateInput, context: context)
        type = Types::PutDraftAppVersionTemplateInput.new
        type.app_arn = params[:app_arn]
        type.app_template_body = params[:app_template_body]
        type
      end
    end

    module PutDraftAppVersionTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDraftAppVersionTemplateOutput, context: context)
        type = Types::PutDraftAppVersionTemplateOutput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type
      end
    end

    module RecommendationCompliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = RecommendationDisruptionCompliance.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module RecommendationDisruptionCompliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationDisruptionCompliance, context: context)
        type = Types::RecommendationDisruptionCompliance.new
        type.expected_compliance_status = params[:expected_compliance_status]
        type.expected_rto_in_secs = params[:expected_rto_in_secs]
        type.expected_rto_description = params[:expected_rto_description]
        type.expected_rpo_in_secs = params[:expected_rpo_in_secs]
        type.expected_rpo_description = params[:expected_rpo_description]
        type
      end
    end

    module RecommendationIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecommendationItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationItem, context: context)
        type = Types::RecommendationItem.new
        type.resource_id = params[:resource_id]
        type.target_account_id = params[:target_account_id]
        type.target_region = params[:target_region]
        type.already_implemented = params[:already_implemented]
        type
      end
    end

    module RecommendationItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationTemplate, context: context)
        type = Types::RecommendationTemplate.new
        type.templates_location = S3Location.build(params[:templates_location], context: "#{context}[:templates_location]") unless params[:templates_location].nil?
        type.assessment_arn = params[:assessment_arn]
        type.app_arn = params[:app_arn]
        type.recommendation_ids = RecommendationIdList.build(params[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless params[:recommendation_ids].nil?
        type.recommendation_types = RenderRecommendationTypeList.build(params[:recommendation_types], context: "#{context}[:recommendation_types]") unless params[:recommendation_types].nil?
        type.format = params[:format]
        type.recommendation_template_arn = params[:recommendation_template_arn]
        type.message = params[:message]
        type.status = params[:status]
        type.name = params[:name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.needs_replacements = params[:needs_replacements]
        type
      end
    end

    module RecommendationTemplateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationTemplate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationTemplateStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RemoveDraftAppVersionResourceMappingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveDraftAppVersionResourceMappingsInput, context: context)
        type = Types::RemoveDraftAppVersionResourceMappingsInput.new
        type.app_arn = params[:app_arn]
        type.resource_names = EntityNameList.build(params[:resource_names], context: "#{context}[:resource_names]") unless params[:resource_names].nil?
        type.logical_stack_names = String255List.build(params[:logical_stack_names], context: "#{context}[:logical_stack_names]") unless params[:logical_stack_names].nil?
        type.app_registry_app_names = EntityNameList.build(params[:app_registry_app_names], context: "#{context}[:app_registry_app_names]") unless params[:app_registry_app_names].nil?
        type.resource_group_names = EntityNameList.build(params[:resource_group_names], context: "#{context}[:resource_group_names]") unless params[:resource_group_names].nil?
        type.terraform_source_names = String255List.build(params[:terraform_source_names], context: "#{context}[:terraform_source_names]") unless params[:terraform_source_names].nil?
        type
      end
    end

    module RemoveDraftAppVersionResourceMappingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveDraftAppVersionResourceMappingsOutput, context: context)
        type = Types::RemoveDraftAppVersionResourceMappingsOutput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type
      end
    end

    module RenderRecommendationTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResiliencyPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResiliencyPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResiliencyPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResiliencyPolicy, context: context)
        type = Types::ResiliencyPolicy.new
        type.policy_arn = params[:policy_arn]
        type.policy_name = params[:policy_name]
        type.policy_description = params[:policy_description]
        type.data_location_constraint = params[:data_location_constraint]
        type.tier = params[:tier]
        type.estimated_cost_tier = params[:estimated_cost_tier]
        type.policy = DisruptionPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type.creation_time = params[:creation_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResiliencyScore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResiliencyScore, context: context)
        type = Types::ResiliencyScore.new
        type.score = params[:score]
        type.disruption_score = DisruptionResiliencyScore.build(params[:disruption_score], context: "#{context}[:disruption_score]") unless params[:disruption_score].nil?
        type
      end
    end

    module ResolveAppVersionResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveAppVersionResourcesInput, context: context)
        type = Types::ResolveAppVersionResourcesInput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type
      end
    end

    module ResolveAppVersionResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveAppVersionResourcesOutput, context: context)
        type = Types::ResolveAppVersionResourcesOutput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.resolution_id = params[:resolution_id]
        type.status = params[:status]
        type
      end
    end

    module ResourceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceError, context: context)
        type = Types::ResourceError.new
        type.logical_resource_id = params[:logical_resource_id]
        type.physical_resource_id = params[:physical_resource_id]
        type.reason = params[:reason]
        type
      end
    end

    module ResourceErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceErrorsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceErrorsDetails, context: context)
        type = Types::ResourceErrorsDetails.new
        type.resource_errors = ResourceErrorList.build(params[:resource_errors], context: "#{context}[:resource_errors]") unless params[:resource_errors].nil?
        type.has_more_errors = params[:has_more_errors]
        type
      end
    end

    module ResourceMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceMapping, context: context)
        type = Types::ResourceMapping.new
        type.resource_name = params[:resource_name]
        type.logical_stack_name = params[:logical_stack_name]
        type.app_registry_app_name = params[:app_registry_app_name]
        type.resource_group_name = params[:resource_group_name]
        type.mapping_type = params[:mapping_type]
        type.physical_resource_id = PhysicalResourceId.build(params[:physical_resource_id], context: "#{context}[:physical_resource_id]") unless params[:physical_resource_id].nil?
        type.terraform_source_name = params[:terraform_source_name]
        type
      end
    end

    module ResourceMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SopRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SopRecommendation, context: context)
        type = Types::SopRecommendation.new
        type.service_type = params[:service_type]
        type.app_component_name = params[:app_component_name]
        type.description = params[:description]
        type.recommendation_id = params[:recommendation_id]
        type.name = params[:name]
        type.items = RecommendationItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.reference_id = params[:reference_id]
        type.prerequisite = params[:prerequisite]
        type
      end
    end

    module SopRecommendationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SopRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartAppAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAppAssessmentInput, context: context)
        type = Types::StartAppAssessmentInput.new
        type.app_arn = params[:app_arn]
        type.app_version = params[:app_version]
        type.assessment_name = params[:assessment_name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartAppAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAppAssessmentOutput, context: context)
        type = Types::StartAppAssessmentOutput.new
        type.assessment = AppAssessment.build(params[:assessment], context: "#{context}[:assessment]") unless params[:assessment].nil?
        type
      end
    end

    module String255List
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SuggestedChangesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TerraformSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerraformSource, context: context)
        type = Types::TerraformSource.new
        type.s3_state_file_url = params[:s3_state_file_url]
        type
      end
    end

    module TerraformSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TerraformSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestRecommendation, context: context)
        type = Types::TestRecommendation.new
        type.recommendation_id = params[:recommendation_id]
        type.reference_id = params[:reference_id]
        type.app_component_name = params[:app_component_name]
        type.name = params[:name]
        type.intent = params[:intent]
        type.risk = params[:risk]
        type.type = params[:type]
        type.description = params[:description]
        type.items = RecommendationItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.prerequisite = params[:prerequisite]
        type.depends_on_alarms = AlarmReferenceIdList.build(params[:depends_on_alarms], context: "#{context}[:depends_on_alarms]") unless params[:depends_on_alarms].nil?
        type
      end
    end

    module TestRecommendationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TestRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module UnsupportedResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedResource, context: context)
        type = Types::UnsupportedResource.new
        type.logical_resource_id = LogicalResourceId.build(params[:logical_resource_id], context: "#{context}[:logical_resource_id]") unless params[:logical_resource_id].nil?
        type.physical_resource_id = PhysicalResourceId.build(params[:physical_resource_id], context: "#{context}[:physical_resource_id]") unless params[:physical_resource_id].nil?
        type.resource_type = params[:resource_type]
        type
      end
    end

    module UnsupportedResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnsupportedResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInput, context: context)
        type = Types::UpdateAppInput.new
        type.app_arn = params[:app_arn]
        type.description = params[:description]
        type.policy_arn = params[:policy_arn]
        type.clear_resiliency_policy_arn = params[:clear_resiliency_policy_arn]
        type.assessment_schedule = params[:assessment_schedule]
        type
      end
    end

    module UpdateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppOutput, context: context)
        type = Types::UpdateAppOutput.new
        type.app = App.build(params[:app], context: "#{context}[:app]") unless params[:app].nil?
        type
      end
    end

    module UpdateResiliencyPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResiliencyPolicyInput, context: context)
        type = Types::UpdateResiliencyPolicyInput.new
        type.policy_arn = params[:policy_arn]
        type.policy_name = params[:policy_name]
        type.policy_description = params[:policy_description]
        type.data_location_constraint = params[:data_location_constraint]
        type.tier = params[:tier]
        type.policy = DisruptionPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module UpdateResiliencyPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResiliencyPolicyOutput, context: context)
        type = Types::UpdateResiliencyPolicyOutput.new
        type.policy = ResiliencyPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
