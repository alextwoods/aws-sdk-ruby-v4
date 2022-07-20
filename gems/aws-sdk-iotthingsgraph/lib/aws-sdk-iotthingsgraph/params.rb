# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTThingsGraph
  module Params

    module AssociateEntityToThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateEntityToThingInput, context: context)
        type = Types::AssociateEntityToThingInput.new
        type.thing_name = params[:thing_name]
        type.entity_id = params[:entity_id]
        type.namespace_version = params[:namespace_version]
        type
      end
    end

    module AssociateEntityToThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateEntityToThingOutput, context: context)
        type = Types::AssociateEntityToThingOutput.new
        type
      end
    end

    module CreateFlowTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlowTemplateInput, context: context)
        type = Types::CreateFlowTemplateInput.new
        type.definition = DefinitionDocument.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.compatible_namespace_version = params[:compatible_namespace_version]
        type
      end
    end

    module CreateFlowTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlowTemplateOutput, context: context)
        type = Types::CreateFlowTemplateOutput.new
        type.summary = FlowTemplateSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module CreateSystemInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSystemInstanceInput, context: context)
        type = Types::CreateSystemInstanceInput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.definition = DefinitionDocument.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.target = params[:target]
        type.greengrass_group_name = params[:greengrass_group_name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.metrics_configuration = MetricsConfiguration.build(params[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless params[:metrics_configuration].nil?
        type.flow_actions_role_arn = params[:flow_actions_role_arn]
        type
      end
    end

    module CreateSystemInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSystemInstanceOutput, context: context)
        type = Types::CreateSystemInstanceOutput.new
        type.summary = SystemInstanceSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module CreateSystemTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSystemTemplateInput, context: context)
        type = Types::CreateSystemTemplateInput.new
        type.definition = DefinitionDocument.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.compatible_namespace_version = params[:compatible_namespace_version]
        type
      end
    end

    module CreateSystemTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSystemTemplateOutput, context: context)
        type = Types::CreateSystemTemplateOutput.new
        type.summary = SystemTemplateSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module DefinitionDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefinitionDocument, context: context)
        type = Types::DefinitionDocument.new
        type.language = params[:language]
        type.text = params[:text]
        type
      end
    end

    module DeleteFlowTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFlowTemplateInput, context: context)
        type = Types::DeleteFlowTemplateInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteFlowTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFlowTemplateOutput, context: context)
        type = Types::DeleteFlowTemplateOutput.new
        type
      end
    end

    module DeleteNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNamespaceInput, context: context)
        type = Types::DeleteNamespaceInput.new
        type
      end
    end

    module DeleteNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNamespaceOutput, context: context)
        type = Types::DeleteNamespaceOutput.new
        type.namespace_arn = params[:namespace_arn]
        type.namespace_name = params[:namespace_name]
        type
      end
    end

    module DeleteSystemInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSystemInstanceInput, context: context)
        type = Types::DeleteSystemInstanceInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteSystemInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSystemInstanceOutput, context: context)
        type = Types::DeleteSystemInstanceOutput.new
        type
      end
    end

    module DeleteSystemTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSystemTemplateInput, context: context)
        type = Types::DeleteSystemTemplateInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteSystemTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSystemTemplateOutput, context: context)
        type = Types::DeleteSystemTemplateOutput.new
        type
      end
    end

    module DependencyRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependencyRevision, context: context)
        type = Types::DependencyRevision.new
        type.id = params[:id]
        type.revision_number = params[:revision_number]
        type
      end
    end

    module DependencyRevisions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DependencyRevision.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploySystemInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploySystemInstanceInput, context: context)
        type = Types::DeploySystemInstanceInput.new
        type.id = params[:id]
        type
      end
    end

    module DeploySystemInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploySystemInstanceOutput, context: context)
        type = Types::DeploySystemInstanceOutput.new
        type.summary = SystemInstanceSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type.greengrass_deployment_id = params[:greengrass_deployment_id]
        type
      end
    end

    module DeprecateFlowTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateFlowTemplateInput, context: context)
        type = Types::DeprecateFlowTemplateInput.new
        type.id = params[:id]
        type
      end
    end

    module DeprecateFlowTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateFlowTemplateOutput, context: context)
        type = Types::DeprecateFlowTemplateOutput.new
        type
      end
    end

    module DeprecateSystemTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateSystemTemplateInput, context: context)
        type = Types::DeprecateSystemTemplateInput.new
        type.id = params[:id]
        type
      end
    end

    module DeprecateSystemTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateSystemTemplateOutput, context: context)
        type = Types::DeprecateSystemTemplateOutput.new
        type
      end
    end

    module DescribeNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNamespaceInput, context: context)
        type = Types::DescribeNamespaceInput.new
        type.namespace_name = params[:namespace_name]
        type
      end
    end

    module DescribeNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNamespaceOutput, context: context)
        type = Types::DescribeNamespaceOutput.new
        type.namespace_arn = params[:namespace_arn]
        type.namespace_name = params[:namespace_name]
        type.tracking_namespace_name = params[:tracking_namespace_name]
        type.tracking_namespace_version = params[:tracking_namespace_version]
        type.namespace_version = params[:namespace_version]
        type
      end
    end

    module DissociateEntityFromThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DissociateEntityFromThingInput, context: context)
        type = Types::DissociateEntityFromThingInput.new
        type.thing_name = params[:thing_name]
        type.entity_type = params[:entity_type]
        type
      end
    end

    module DissociateEntityFromThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DissociateEntityFromThingOutput, context: context)
        type = Types::DissociateEntityFromThingOutput.new
        type
      end
    end

    module EntityDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityDescription, context: context)
        type = Types::EntityDescription.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.type = params[:type]
        type.created_at = params[:created_at]
        type.definition = DefinitionDocument.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type
      end
    end

    module EntityDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityFilter, context: context)
        type = Types::EntityFilter.new
        type.name = params[:name]
        type.value = EntityFilterValues.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module EntityFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EntityFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FlowExecutionMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowExecutionMessage, context: context)
        type = Types::FlowExecutionMessage.new
        type.message_id = params[:message_id]
        type.event_type = params[:event_type]
        type.timestamp = params[:timestamp]
        type.payload = params[:payload]
        type
      end
    end

    module FlowExecutionMessages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FlowExecutionMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FlowExecutionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FlowExecutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FlowExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowExecutionSummary, context: context)
        type = Types::FlowExecutionSummary.new
        type.flow_execution_id = params[:flow_execution_id]
        type.status = params[:status]
        type.system_instance_id = params[:system_instance_id]
        type.flow_template_id = params[:flow_template_id]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module FlowTemplateDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowTemplateDescription, context: context)
        type = Types::FlowTemplateDescription.new
        type.summary = FlowTemplateSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type.definition = DefinitionDocument.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.validated_namespace_version = params[:validated_namespace_version]
        type
      end
    end

    module FlowTemplateFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowTemplateFilter, context: context)
        type = Types::FlowTemplateFilter.new
        type.name = params[:name]
        type.value = FlowTemplateFilterValues.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module FlowTemplateFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FlowTemplateFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FlowTemplateFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FlowTemplateSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FlowTemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FlowTemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowTemplateSummary, context: context)
        type = Types::FlowTemplateSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.revision_number = params[:revision_number]
        type.created_at = params[:created_at]
        type
      end
    end

    module GetEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEntitiesInput, context: context)
        type = Types::GetEntitiesInput.new
        type.ids = Urns.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.namespace_version = params[:namespace_version]
        type
      end
    end

    module GetEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEntitiesOutput, context: context)
        type = Types::GetEntitiesOutput.new
        type.descriptions = EntityDescriptions.build(params[:descriptions], context: "#{context}[:descriptions]") unless params[:descriptions].nil?
        type
      end
    end

    module GetFlowTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFlowTemplateInput, context: context)
        type = Types::GetFlowTemplateInput.new
        type.id = params[:id]
        type.revision_number = params[:revision_number]
        type
      end
    end

    module GetFlowTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFlowTemplateOutput, context: context)
        type = Types::GetFlowTemplateOutput.new
        type.description = FlowTemplateDescription.build(params[:description], context: "#{context}[:description]") unless params[:description].nil?
        type
      end
    end

    module GetFlowTemplateRevisionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFlowTemplateRevisionsInput, context: context)
        type = Types::GetFlowTemplateRevisionsInput.new
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetFlowTemplateRevisionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFlowTemplateRevisionsOutput, context: context)
        type = Types::GetFlowTemplateRevisionsOutput.new
        type.summaries = FlowTemplateSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNamespaceDeletionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNamespaceDeletionStatusInput, context: context)
        type = Types::GetNamespaceDeletionStatusInput.new
        type
      end
    end

    module GetNamespaceDeletionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNamespaceDeletionStatusOutput, context: context)
        type = Types::GetNamespaceDeletionStatusOutput.new
        type.namespace_arn = params[:namespace_arn]
        type.namespace_name = params[:namespace_name]
        type.status = params[:status]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module GetSystemInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSystemInstanceInput, context: context)
        type = Types::GetSystemInstanceInput.new
        type.id = params[:id]
        type
      end
    end

    module GetSystemInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSystemInstanceOutput, context: context)
        type = Types::GetSystemInstanceOutput.new
        type.description = SystemInstanceDescription.build(params[:description], context: "#{context}[:description]") unless params[:description].nil?
        type
      end
    end

    module GetSystemTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSystemTemplateInput, context: context)
        type = Types::GetSystemTemplateInput.new
        type.id = params[:id]
        type.revision_number = params[:revision_number]
        type
      end
    end

    module GetSystemTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSystemTemplateOutput, context: context)
        type = Types::GetSystemTemplateOutput.new
        type.description = SystemTemplateDescription.build(params[:description], context: "#{context}[:description]") unless params[:description].nil?
        type
      end
    end

    module GetSystemTemplateRevisionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSystemTemplateRevisionsInput, context: context)
        type = Types::GetSystemTemplateRevisionsInput.new
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetSystemTemplateRevisionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSystemTemplateRevisionsOutput, context: context)
        type = Types::GetSystemTemplateRevisionsOutput.new
        type.summaries = SystemTemplateSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetUploadStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUploadStatusInput, context: context)
        type = Types::GetUploadStatusInput.new
        type.upload_id = params[:upload_id]
        type
      end
    end

    module GetUploadStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUploadStatusOutput, context: context)
        type = Types::GetUploadStatusOutput.new
        type.upload_id = params[:upload_id]
        type.upload_status = params[:upload_status]
        type.namespace_arn = params[:namespace_arn]
        type.namespace_name = params[:namespace_name]
        type.namespace_version = params[:namespace_version]
        type.failure_reason = StringList.build(params[:failure_reason], context: "#{context}[:failure_reason]") unless params[:failure_reason].nil?
        type.created_date = params[:created_date]
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListFlowExecutionMessagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFlowExecutionMessagesInput, context: context)
        type = Types::ListFlowExecutionMessagesInput.new
        type.flow_execution_id = params[:flow_execution_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFlowExecutionMessagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFlowExecutionMessagesOutput, context: context)
        type = Types::ListFlowExecutionMessagesOutput.new
        type.messages = FlowExecutionMessages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.max_results = params[:max_results]
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MetricsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricsConfiguration, context: context)
        type = Types::MetricsConfiguration.new
        type.cloud_metric_enabled = params[:cloud_metric_enabled]
        type.metric_rule_role_arn = params[:metric_rule_role_arn]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SearchEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchEntitiesInput, context: context)
        type = Types::SearchEntitiesInput.new
        type.entity_types = EntityTypes.build(params[:entity_types], context: "#{context}[:entity_types]") unless params[:entity_types].nil?
        type.filters = EntityFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.namespace_version = params[:namespace_version]
        type
      end
    end

    module SearchEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchEntitiesOutput, context: context)
        type = Types::SearchEntitiesOutput.new
        type.descriptions = EntityDescriptions.build(params[:descriptions], context: "#{context}[:descriptions]") unless params[:descriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchFlowExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFlowExecutionsInput, context: context)
        type = Types::SearchFlowExecutionsInput.new
        type.system_instance_id = params[:system_instance_id]
        type.flow_execution_id = params[:flow_execution_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchFlowExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFlowExecutionsOutput, context: context)
        type = Types::SearchFlowExecutionsOutput.new
        type.summaries = FlowExecutionSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchFlowTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFlowTemplatesInput, context: context)
        type = Types::SearchFlowTemplatesInput.new
        type.filters = FlowTemplateFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchFlowTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFlowTemplatesOutput, context: context)
        type = Types::SearchFlowTemplatesOutput.new
        type.summaries = FlowTemplateSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchSystemInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSystemInstancesInput, context: context)
        type = Types::SearchSystemInstancesInput.new
        type.filters = SystemInstanceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchSystemInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSystemInstancesOutput, context: context)
        type = Types::SearchSystemInstancesOutput.new
        type.summaries = SystemInstanceSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchSystemTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSystemTemplatesInput, context: context)
        type = Types::SearchSystemTemplatesInput.new
        type.filters = SystemTemplateFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchSystemTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSystemTemplatesOutput, context: context)
        type = Types::SearchSystemTemplatesOutput.new
        type.summaries = SystemTemplateSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchThingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchThingsInput, context: context)
        type = Types::SearchThingsInput.new
        type.entity_id = params[:entity_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.namespace_version = params[:namespace_version]
        type
      end
    end

    module SearchThingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchThingsOutput, context: context)
        type = Types::SearchThingsOutput.new
        type.things = Things.build(params[:things], context: "#{context}[:things]") unless params[:things].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SystemInstanceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemInstanceDescription, context: context)
        type = Types::SystemInstanceDescription.new
        type.summary = SystemInstanceSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type.definition = DefinitionDocument.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.s3_bucket_name = params[:s3_bucket_name]
        type.metrics_configuration = MetricsConfiguration.build(params[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless params[:metrics_configuration].nil?
        type.validated_namespace_version = params[:validated_namespace_version]
        type.validated_dependency_revisions = DependencyRevisions.build(params[:validated_dependency_revisions], context: "#{context}[:validated_dependency_revisions]") unless params[:validated_dependency_revisions].nil?
        type.flow_actions_role_arn = params[:flow_actions_role_arn]
        type
      end
    end

    module SystemInstanceFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemInstanceFilter, context: context)
        type = Types::SystemInstanceFilter.new
        type.name = params[:name]
        type.value = SystemInstanceFilterValues.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module SystemInstanceFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SystemInstanceFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SystemInstanceFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SystemInstanceSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SystemInstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SystemInstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemInstanceSummary, context: context)
        type = Types::SystemInstanceSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.status = params[:status]
        type.target = params[:target]
        type.greengrass_group_name = params[:greengrass_group_name]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.greengrass_group_id = params[:greengrass_group_id]
        type.greengrass_group_version_id = params[:greengrass_group_version_id]
        type
      end
    end

    module SystemTemplateDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemTemplateDescription, context: context)
        type = Types::SystemTemplateDescription.new
        type.summary = SystemTemplateSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type.definition = DefinitionDocument.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.validated_namespace_version = params[:validated_namespace_version]
        type
      end
    end

    module SystemTemplateFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemTemplateFilter, context: context)
        type = Types::SystemTemplateFilter.new
        type.name = params[:name]
        type.value = SystemTemplateFilterValues.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module SystemTemplateFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SystemTemplateFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SystemTemplateFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SystemTemplateSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SystemTemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SystemTemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemTemplateSummary, context: context)
        type = Types::SystemTemplateSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.revision_number = params[:revision_number]
        type.created_at = params[:created_at]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Thing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Thing, context: context)
        type = Types::Thing.new
        type.thing_arn = params[:thing_arn]
        type.thing_name = params[:thing_name]
        type
      end
    end

    module Things
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Thing.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UndeploySystemInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UndeploySystemInstanceInput, context: context)
        type = Types::UndeploySystemInstanceInput.new
        type.id = params[:id]
        type
      end
    end

    module UndeploySystemInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UndeploySystemInstanceOutput, context: context)
        type = Types::UndeploySystemInstanceOutput.new
        type.summary = SystemInstanceSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
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

    module UpdateFlowTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowTemplateInput, context: context)
        type = Types::UpdateFlowTemplateInput.new
        type.id = params[:id]
        type.definition = DefinitionDocument.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.compatible_namespace_version = params[:compatible_namespace_version]
        type
      end
    end

    module UpdateFlowTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowTemplateOutput, context: context)
        type = Types::UpdateFlowTemplateOutput.new
        type.summary = FlowTemplateSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module UpdateSystemTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSystemTemplateInput, context: context)
        type = Types::UpdateSystemTemplateInput.new
        type.id = params[:id]
        type.definition = DefinitionDocument.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.compatible_namespace_version = params[:compatible_namespace_version]
        type
      end
    end

    module UpdateSystemTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSystemTemplateOutput, context: context)
        type = Types::UpdateSystemTemplateOutput.new
        type.summary = SystemTemplateSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module UploadEntityDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadEntityDefinitionsInput, context: context)
        type = Types::UploadEntityDefinitionsInput.new
        type.document = DefinitionDocument.build(params[:document], context: "#{context}[:document]") unless params[:document].nil?
        type.sync_with_public_namespace = params[:sync_with_public_namespace]
        type.deprecate_existing_entities = params[:deprecate_existing_entities]
        type
      end
    end

    module UploadEntityDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadEntityDefinitionsOutput, context: context)
        type = Types::UploadEntityDefinitionsOutput.new
        type.upload_id = params[:upload_id]
        type
      end
    end

    module Urns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
