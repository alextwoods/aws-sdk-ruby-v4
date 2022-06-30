# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTThingsGraph
  module Validators

    class AssociateEntityToThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateEntityToThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:namespace_version], ::Integer, context: "#{context}[:namespace_version]")
      end
    end

    class AssociateEntityToThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateEntityToThingOutput, context: context)
      end
    end

    class CreateFlowTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlowTemplateInput, context: context)
        Validators::DefinitionDocument.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:compatible_namespace_version], ::Integer, context: "#{context}[:compatible_namespace_version]")
      end
    end

    class CreateFlowTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlowTemplateOutput, context: context)
        Validators::FlowTemplateSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class CreateSystemInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSystemInstanceInput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::DefinitionDocument.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:greengrass_group_name], ::String, context: "#{context}[:greengrass_group_name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Validators::MetricsConfiguration.validate!(input[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless input[:metrics_configuration].nil?
        Hearth::Validator.validate!(input[:flow_actions_role_arn], ::String, context: "#{context}[:flow_actions_role_arn]")
      end
    end

    class CreateSystemInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSystemInstanceOutput, context: context)
        Validators::SystemInstanceSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class CreateSystemTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSystemTemplateInput, context: context)
        Validators::DefinitionDocument.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:compatible_namespace_version], ::Integer, context: "#{context}[:compatible_namespace_version]")
      end
    end

    class CreateSystemTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSystemTemplateOutput, context: context)
        Validators::SystemTemplateSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class DefinitionDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefinitionDocument, context: context)
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class DeleteFlowTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFlowTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteFlowTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFlowTemplateOutput, context: context)
      end
    end

    class DeleteNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNamespaceInput, context: context)
      end
    end

    class DeleteNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:namespace_arn], ::String, context: "#{context}[:namespace_arn]")
        Hearth::Validator.validate!(input[:namespace_name], ::String, context: "#{context}[:namespace_name]")
      end
    end

    class DeleteSystemInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSystemInstanceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteSystemInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSystemInstanceOutput, context: context)
      end
    end

    class DeleteSystemTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSystemTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteSystemTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSystemTemplateOutput, context: context)
      end
    end

    class DependencyRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependencyRevision, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:revision_number], ::Integer, context: "#{context}[:revision_number]")
      end
    end

    class DependencyRevisions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DependencyRevision.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploySystemInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploySystemInstanceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeploySystemInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploySystemInstanceOutput, context: context)
        Validators::SystemInstanceSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
        Hearth::Validator.validate!(input[:greengrass_deployment_id], ::String, context: "#{context}[:greengrass_deployment_id]")
      end
    end

    class DeprecateFlowTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateFlowTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeprecateFlowTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateFlowTemplateOutput, context: context)
      end
    end

    class DeprecateSystemTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateSystemTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeprecateSystemTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateSystemTemplateOutput, context: context)
      end
    end

    class DescribeNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:namespace_name], ::String, context: "#{context}[:namespace_name]")
      end
    end

    class DescribeNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:namespace_arn], ::String, context: "#{context}[:namespace_arn]")
        Hearth::Validator.validate!(input[:namespace_name], ::String, context: "#{context}[:namespace_name]")
        Hearth::Validator.validate!(input[:tracking_namespace_name], ::String, context: "#{context}[:tracking_namespace_name]")
        Hearth::Validator.validate!(input[:tracking_namespace_version], ::Integer, context: "#{context}[:tracking_namespace_version]")
        Hearth::Validator.validate!(input[:namespace_version], ::Integer, context: "#{context}[:namespace_version]")
      end
    end

    class DissociateEntityFromThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DissociateEntityFromThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:entity_type], ::String, context: "#{context}[:entity_type]")
      end
    end

    class DissociateEntityFromThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DissociateEntityFromThingOutput, context: context)
      end
    end

    class EntityDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityDescription, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::DefinitionDocument.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
      end
    end

    class EntityDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EntityDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::EntityFilterValues.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class EntityFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EntityFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EntityFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FlowExecutionMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowExecutionMessage, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class FlowExecutionMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FlowExecutionMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FlowExecutionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FlowExecutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FlowExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:flow_execution_id], ::String, context: "#{context}[:flow_execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:system_instance_id], ::String, context: "#{context}[:system_instance_id]")
        Hearth::Validator.validate!(input[:flow_template_id], ::String, context: "#{context}[:flow_template_id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class FlowTemplateDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowTemplateDescription, context: context)
        Validators::FlowTemplateSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
        Validators::DefinitionDocument.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:validated_namespace_version], ::Integer, context: "#{context}[:validated_namespace_version]")
      end
    end

    class FlowTemplateFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowTemplateFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FlowTemplateFilterValues.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class FlowTemplateFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FlowTemplateFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FlowTemplateFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FlowTemplateSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FlowTemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FlowTemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowTemplateSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:revision_number], ::Integer, context: "#{context}[:revision_number]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class GetEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEntitiesInput, context: context)
        Validators::Urns.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        Hearth::Validator.validate!(input[:namespace_version], ::Integer, context: "#{context}[:namespace_version]")
      end
    end

    class GetEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEntitiesOutput, context: context)
        Validators::EntityDescriptions.validate!(input[:descriptions], context: "#{context}[:descriptions]") unless input[:descriptions].nil?
      end
    end

    class GetFlowTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFlowTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:revision_number], ::Integer, context: "#{context}[:revision_number]")
      end
    end

    class GetFlowTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFlowTemplateOutput, context: context)
        Validators::FlowTemplateDescription.validate!(input[:description], context: "#{context}[:description]") unless input[:description].nil?
      end
    end

    class GetFlowTemplateRevisionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFlowTemplateRevisionsInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetFlowTemplateRevisionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFlowTemplateRevisionsOutput, context: context)
        Validators::FlowTemplateSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNamespaceDeletionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNamespaceDeletionStatusInput, context: context)
      end
    end

    class GetNamespaceDeletionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNamespaceDeletionStatusOutput, context: context)
        Hearth::Validator.validate!(input[:namespace_arn], ::String, context: "#{context}[:namespace_arn]")
        Hearth::Validator.validate!(input[:namespace_name], ::String, context: "#{context}[:namespace_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class GetSystemInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSystemInstanceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetSystemInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSystemInstanceOutput, context: context)
        Validators::SystemInstanceDescription.validate!(input[:description], context: "#{context}[:description]") unless input[:description].nil?
      end
    end

    class GetSystemTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSystemTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:revision_number], ::Integer, context: "#{context}[:revision_number]")
      end
    end

    class GetSystemTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSystemTemplateOutput, context: context)
        Validators::SystemTemplateDescription.validate!(input[:description], context: "#{context}[:description]") unless input[:description].nil?
      end
    end

    class GetSystemTemplateRevisionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSystemTemplateRevisionsInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetSystemTemplateRevisionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSystemTemplateRevisionsOutput, context: context)
        Validators::SystemTemplateSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetUploadStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUploadStatusInput, context: context)
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
      end
    end

    class GetUploadStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUploadStatusOutput, context: context)
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:upload_status], ::String, context: "#{context}[:upload_status]")
        Hearth::Validator.validate!(input[:namespace_arn], ::String, context: "#{context}[:namespace_arn]")
        Hearth::Validator.validate!(input[:namespace_name], ::String, context: "#{context}[:namespace_name]")
        Hearth::Validator.validate!(input[:namespace_version], ::Integer, context: "#{context}[:namespace_version]")
        Validators::StringList.validate!(input[:failure_reason], context: "#{context}[:failure_reason]") unless input[:failure_reason].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListFlowExecutionMessagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFlowExecutionMessagesInput, context: context)
        Hearth::Validator.validate!(input[:flow_execution_id], ::String, context: "#{context}[:flow_execution_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFlowExecutionMessagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFlowExecutionMessagesOutput, context: context)
        Validators::FlowExecutionMessages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MetricsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricsConfiguration, context: context)
        Hearth::Validator.validate!(input[:cloud_metric_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_metric_enabled]")
        Hearth::Validator.validate!(input[:metric_rule_role_arn], ::String, context: "#{context}[:metric_rule_role_arn]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SearchEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchEntitiesInput, context: context)
        Validators::EntityTypes.validate!(input[:entity_types], context: "#{context}[:entity_types]") unless input[:entity_types].nil?
        Validators::EntityFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:namespace_version], ::Integer, context: "#{context}[:namespace_version]")
      end
    end

    class SearchEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchEntitiesOutput, context: context)
        Validators::EntityDescriptions.validate!(input[:descriptions], context: "#{context}[:descriptions]") unless input[:descriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchFlowExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFlowExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:system_instance_id], ::String, context: "#{context}[:system_instance_id]")
        Hearth::Validator.validate!(input[:flow_execution_id], ::String, context: "#{context}[:flow_execution_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchFlowExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFlowExecutionsOutput, context: context)
        Validators::FlowExecutionSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchFlowTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFlowTemplatesInput, context: context)
        Validators::FlowTemplateFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchFlowTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFlowTemplatesOutput, context: context)
        Validators::FlowTemplateSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchSystemInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSystemInstancesInput, context: context)
        Validators::SystemInstanceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchSystemInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSystemInstancesOutput, context: context)
        Validators::SystemInstanceSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchSystemTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSystemTemplatesInput, context: context)
        Validators::SystemTemplateFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchSystemTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSystemTemplatesOutput, context: context)
        Validators::SystemTemplateSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchThingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchThingsInput, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:namespace_version], ::Integer, context: "#{context}[:namespace_version]")
      end
    end

    class SearchThingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchThingsOutput, context: context)
        Validators::Things.validate!(input[:things], context: "#{context}[:things]") unless input[:things].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SystemInstanceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemInstanceDescription, context: context)
        Validators::SystemInstanceSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
        Validators::DefinitionDocument.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Validators::MetricsConfiguration.validate!(input[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless input[:metrics_configuration].nil?
        Hearth::Validator.validate!(input[:validated_namespace_version], ::Integer, context: "#{context}[:validated_namespace_version]")
        Validators::DependencyRevisions.validate!(input[:validated_dependency_revisions], context: "#{context}[:validated_dependency_revisions]") unless input[:validated_dependency_revisions].nil?
        Hearth::Validator.validate!(input[:flow_actions_role_arn], ::String, context: "#{context}[:flow_actions_role_arn]")
      end
    end

    class SystemInstanceFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemInstanceFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::SystemInstanceFilterValues.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class SystemInstanceFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SystemInstanceFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SystemInstanceFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SystemInstanceSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SystemInstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SystemInstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemInstanceSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:greengrass_group_name], ::String, context: "#{context}[:greengrass_group_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:greengrass_group_id], ::String, context: "#{context}[:greengrass_group_id]")
        Hearth::Validator.validate!(input[:greengrass_group_version_id], ::String, context: "#{context}[:greengrass_group_version_id]")
      end
    end

    class SystemTemplateDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemTemplateDescription, context: context)
        Validators::SystemTemplateSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
        Validators::DefinitionDocument.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:validated_namespace_version], ::Integer, context: "#{context}[:validated_namespace_version]")
      end
    end

    class SystemTemplateFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemTemplateFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::SystemTemplateFilterValues.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class SystemTemplateFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SystemTemplateFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SystemTemplateFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SystemTemplateSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SystemTemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SystemTemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemTemplateSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:revision_number], ::Integer, context: "#{context}[:revision_number]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Thing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Thing, context: context)
        Hearth::Validator.validate!(input[:thing_arn], ::String, context: "#{context}[:thing_arn]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
      end
    end

    class Things
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Thing.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UndeploySystemInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UndeploySystemInstanceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class UndeploySystemInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UndeploySystemInstanceOutput, context: context)
        Validators::SystemInstanceSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateFlowTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::DefinitionDocument.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:compatible_namespace_version], ::Integer, context: "#{context}[:compatible_namespace_version]")
      end
    end

    class UpdateFlowTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowTemplateOutput, context: context)
        Validators::FlowTemplateSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class UpdateSystemTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSystemTemplateInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::DefinitionDocument.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:compatible_namespace_version], ::Integer, context: "#{context}[:compatible_namespace_version]")
      end
    end

    class UpdateSystemTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSystemTemplateOutput, context: context)
        Validators::SystemTemplateSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class UploadEntityDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadEntityDefinitionsInput, context: context)
        Validators::DefinitionDocument.validate!(input[:document], context: "#{context}[:document]") unless input[:document].nil?
        Hearth::Validator.validate!(input[:sync_with_public_namespace], ::TrueClass, ::FalseClass, context: "#{context}[:sync_with_public_namespace]")
        Hearth::Validator.validate!(input[:deprecate_existing_entities], ::TrueClass, ::FalseClass, context: "#{context}[:deprecate_existing_entities]")
      end
    end

    class UploadEntityDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadEntityDefinitionsOutput, context: context)
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
      end
    end

    class Urns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
