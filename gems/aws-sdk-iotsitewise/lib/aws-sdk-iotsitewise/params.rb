# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoTSiteWise
  module Params

    module AccessPolicySummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessPolicySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessPolicySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPolicySummary, context: context)
        type = Types::AccessPolicySummary.new
        type.id = params[:id]
        type.identity = Identity.build(params[:identity], context: "#{context}[:identity]") unless params[:identity].nil?
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.permission = params[:permission]
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type
      end
    end

    module AggregateTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AggregatedValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregatedValue, context: context)
        type = Types::AggregatedValue.new
        type.timestamp = params[:timestamp]
        type.quality = params[:quality]
        type.value = Aggregates.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module AggregatedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregatedValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Aggregates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Aggregates, context: context)
        type = Types::Aggregates.new
        type.average = params[:average]
        type.count = params[:count]
        type.maximum = params[:maximum]
        type.minimum = params[:minimum]
        type.sum = params[:sum]
        type.standard_deviation = params[:standard_deviation]
        type
      end
    end

    module Alarms
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alarms, context: context)
        type = Types::Alarms.new
        type.alarm_role_arn = params[:alarm_role_arn]
        type.notification_lambda_arn = params[:notification_lambda_arn]
        type
      end
    end

    module AssetCompositeModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetCompositeModel, context: context)
        type = Types::AssetCompositeModel.new
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.properties = AssetProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module AssetCompositeModels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetCompositeModel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetErrorDetails, context: context)
        type = Types::AssetErrorDetails.new
        type.asset_id = params[:asset_id]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module AssetHierarchies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetHierarchy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetHierarchy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetHierarchy, context: context)
        type = Types::AssetHierarchy.new
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module AssetHierarchyInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetHierarchyInfo, context: context)
        type = Types::AssetHierarchyInfo.new
        type.parent_asset_id = params[:parent_asset_id]
        type.child_asset_id = params[:child_asset_id]
        type
      end
    end

    module AssetIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssetModelCompositeModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetModelCompositeModel, context: context)
        type = Types::AssetModelCompositeModel.new
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.properties = AssetModelProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module AssetModelCompositeModelDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetModelCompositeModelDefinition, context: context)
        type = Types::AssetModelCompositeModelDefinition.new
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.properties = AssetModelPropertyDefinitions.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module AssetModelCompositeModelDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetModelCompositeModelDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetModelCompositeModels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetModelCompositeModel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetModelHierarchies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetModelHierarchy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetModelHierarchy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetModelHierarchy, context: context)
        type = Types::AssetModelHierarchy.new
        type.id = params[:id]
        type.name = params[:name]
        type.child_asset_model_id = params[:child_asset_model_id]
        type
      end
    end

    module AssetModelHierarchyDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetModelHierarchyDefinition, context: context)
        type = Types::AssetModelHierarchyDefinition.new
        type.name = params[:name]
        type.child_asset_model_id = params[:child_asset_model_id]
        type
      end
    end

    module AssetModelHierarchyDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetModelHierarchyDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetModelProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetModelProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetModelProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetModelProperty, context: context)
        type = Types::AssetModelProperty.new
        type.id = params[:id]
        type.name = params[:name]
        type.data_type = params[:data_type]
        type.data_type_spec = params[:data_type_spec]
        type.unit = params[:unit]
        type.type = PropertyType.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type
      end
    end

    module AssetModelPropertyDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetModelPropertyDefinition, context: context)
        type = Types::AssetModelPropertyDefinition.new
        type.name = params[:name]
        type.data_type = params[:data_type]
        type.data_type_spec = params[:data_type_spec]
        type.unit = params[:unit]
        type.type = PropertyType.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type
      end
    end

    module AssetModelPropertyDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetModelPropertyDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetModelStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetModelStatus, context: context)
        type = Types::AssetModelStatus.new
        type.state = params[:state]
        type.error = ErrorDetails.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module AssetModelSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetModelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetModelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetModelSummary, context: context)
        type = Types::AssetModelSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type.status = AssetModelStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module AssetProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetProperty, context: context)
        type = Types::AssetProperty.new
        type.id = params[:id]
        type.name = params[:name]
        type.alias = params[:alias]
        type.notification = PropertyNotification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.data_type = params[:data_type]
        type.data_type_spec = params[:data_type_spec]
        type.unit = params[:unit]
        type
      end
    end

    module AssetPropertyValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetPropertyValue, context: context)
        type = Types::AssetPropertyValue.new
        type.value = Variant.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.timestamp = TimeInNanos.build(params[:timestamp], context: "#{context}[:timestamp]") unless params[:timestamp].nil?
        type.quality = params[:quality]
        type
      end
    end

    module AssetPropertyValueHistory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetPropertyValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetPropertyValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetPropertyValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetRelationshipSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetRelationshipSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetRelationshipSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetRelationshipSummary, context: context)
        type = Types::AssetRelationshipSummary.new
        type.hierarchy_info = AssetHierarchyInfo.build(params[:hierarchy_info], context: "#{context}[:hierarchy_info]") unless params[:hierarchy_info].nil?
        type.relationship_type = params[:relationship_type]
        type
      end
    end

    module AssetStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetStatus, context: context)
        type = Types::AssetStatus.new
        type.state = params[:state]
        type.error = ErrorDetails.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module AssetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetSummary, context: context)
        type = Types::AssetSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.asset_model_id = params[:asset_model_id]
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type.status = AssetStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.hierarchies = AssetHierarchies.build(params[:hierarchies], context: "#{context}[:hierarchies]") unless params[:hierarchies].nil?
        type.description = params[:description]
        type
      end
    end

    module AssociateAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAssetsInput, context: context)
        type = Types::AssociateAssetsInput.new
        type.asset_id = params[:asset_id]
        type.hierarchy_id = params[:hierarchy_id]
        type.child_asset_id = params[:child_asset_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module AssociateAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAssetsOutput, context: context)
        type = Types::AssociateAssetsOutput.new
        type
      end
    end

    module AssociateTimeSeriesToAssetPropertyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTimeSeriesToAssetPropertyInput, context: context)
        type = Types::AssociateTimeSeriesToAssetPropertyInput.new
        type.alias = params[:alias]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module AssociateTimeSeriesToAssetPropertyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTimeSeriesToAssetPropertyOutput, context: context)
        type = Types::AssociateTimeSeriesToAssetPropertyOutput.new
        type
      end
    end

    module AssociatedAssetsSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociatedAssetsSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociatedAssetsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatedAssetsSummary, context: context)
        type = Types::AssociatedAssetsSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.asset_model_id = params[:asset_model_id]
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type.status = AssetStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.hierarchies = AssetHierarchies.build(params[:hierarchies], context: "#{context}[:hierarchies]") unless params[:hierarchies].nil?
        type.description = params[:description]
        type
      end
    end

    module Attribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attribute, context: context)
        type = Types::Attribute.new
        type.default_value = params[:default_value]
        type
      end
    end

    module BatchAssociateProjectAssetsErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetErrorDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchAssociateProjectAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateProjectAssetsInput, context: context)
        type = Types::BatchAssociateProjectAssetsInput.new
        type.project_id = params[:project_id]
        type.asset_ids = IDs.build(params[:asset_ids], context: "#{context}[:asset_ids]") unless params[:asset_ids].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module BatchAssociateProjectAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateProjectAssetsOutput, context: context)
        type = Types::BatchAssociateProjectAssetsOutput.new
        type.errors = BatchAssociateProjectAssetsErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDisassociateProjectAssetsErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetErrorDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDisassociateProjectAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateProjectAssetsInput, context: context)
        type = Types::BatchDisassociateProjectAssetsInput.new
        type.project_id = params[:project_id]
        type.asset_ids = IDs.build(params[:asset_ids], context: "#{context}[:asset_ids]") unless params[:asset_ids].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module BatchDisassociateProjectAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateProjectAssetsOutput, context: context)
        type = Types::BatchDisassociateProjectAssetsOutput.new
        type.errors = BatchDisassociateProjectAssetsErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchGetAssetPropertyAggregatesEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyAggregatesEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyAggregatesEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyAggregatesEntry, context: context)
        type = Types::BatchGetAssetPropertyAggregatesEntry.new
        type.entry_id = params[:entry_id]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type.aggregate_types = AggregateTypes.build(params[:aggregate_types], context: "#{context}[:aggregate_types]") unless params[:aggregate_types].nil?
        type.resolution = params[:resolution]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.qualities = Qualities.build(params[:qualities], context: "#{context}[:qualities]") unless params[:qualities].nil?
        type.time_ordering = params[:time_ordering]
        type
      end
    end

    module BatchGetAssetPropertyAggregatesErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyAggregatesErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyAggregatesErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyAggregatesErrorEntry, context: context)
        type = Types::BatchGetAssetPropertyAggregatesErrorEntry.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.entry_id = params[:entry_id]
        type
      end
    end

    module BatchGetAssetPropertyAggregatesErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyAggregatesErrorInfo, context: context)
        type = Types::BatchGetAssetPropertyAggregatesErrorInfo.new
        type.error_code = params[:error_code]
        type.error_timestamp = params[:error_timestamp]
        type
      end
    end

    module BatchGetAssetPropertyAggregatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyAggregatesInput, context: context)
        type = Types::BatchGetAssetPropertyAggregatesInput.new
        type.entries = BatchGetAssetPropertyAggregatesEntries.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchGetAssetPropertyAggregatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyAggregatesOutput, context: context)
        type = Types::BatchGetAssetPropertyAggregatesOutput.new
        type.error_entries = BatchGetAssetPropertyAggregatesErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type.success_entries = BatchGetAssetPropertyAggregatesSuccessEntries.build(params[:success_entries], context: "#{context}[:success_entries]") unless params[:success_entries].nil?
        type.skipped_entries = BatchGetAssetPropertyAggregatesSkippedEntries.build(params[:skipped_entries], context: "#{context}[:skipped_entries]") unless params[:skipped_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchGetAssetPropertyAggregatesSkippedEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyAggregatesSkippedEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyAggregatesSkippedEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyAggregatesSkippedEntry, context: context)
        type = Types::BatchGetAssetPropertyAggregatesSkippedEntry.new
        type.entry_id = params[:entry_id]
        type.completion_status = params[:completion_status]
        type.error_info = BatchGetAssetPropertyAggregatesErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type
      end
    end

    module BatchGetAssetPropertyAggregatesSuccessEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyAggregatesSuccessEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyAggregatesSuccessEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyAggregatesSuccessEntry, context: context)
        type = Types::BatchGetAssetPropertyAggregatesSuccessEntry.new
        type.entry_id = params[:entry_id]
        type.aggregated_values = AggregatedValues.build(params[:aggregated_values], context: "#{context}[:aggregated_values]") unless params[:aggregated_values].nil?
        type
      end
    end

    module BatchGetAssetPropertyValueEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyValueEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyValueEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueEntry, context: context)
        type = Types::BatchGetAssetPropertyValueEntry.new
        type.entry_id = params[:entry_id]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type
      end
    end

    module BatchGetAssetPropertyValueErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyValueErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyValueErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueErrorEntry, context: context)
        type = Types::BatchGetAssetPropertyValueErrorEntry.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.entry_id = params[:entry_id]
        type
      end
    end

    module BatchGetAssetPropertyValueErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueErrorInfo, context: context)
        type = Types::BatchGetAssetPropertyValueErrorInfo.new
        type.error_code = params[:error_code]
        type.error_timestamp = params[:error_timestamp]
        type
      end
    end

    module BatchGetAssetPropertyValueHistoryEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyValueHistoryEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyValueHistoryEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueHistoryEntry, context: context)
        type = Types::BatchGetAssetPropertyValueHistoryEntry.new
        type.entry_id = params[:entry_id]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.qualities = Qualities.build(params[:qualities], context: "#{context}[:qualities]") unless params[:qualities].nil?
        type.time_ordering = params[:time_ordering]
        type
      end
    end

    module BatchGetAssetPropertyValueHistoryErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyValueHistoryErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyValueHistoryErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueHistoryErrorEntry, context: context)
        type = Types::BatchGetAssetPropertyValueHistoryErrorEntry.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.entry_id = params[:entry_id]
        type
      end
    end

    module BatchGetAssetPropertyValueHistoryErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueHistoryErrorInfo, context: context)
        type = Types::BatchGetAssetPropertyValueHistoryErrorInfo.new
        type.error_code = params[:error_code]
        type.error_timestamp = params[:error_timestamp]
        type
      end
    end

    module BatchGetAssetPropertyValueHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueHistoryInput, context: context)
        type = Types::BatchGetAssetPropertyValueHistoryInput.new
        type.entries = BatchGetAssetPropertyValueHistoryEntries.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module BatchGetAssetPropertyValueHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueHistoryOutput, context: context)
        type = Types::BatchGetAssetPropertyValueHistoryOutput.new
        type.error_entries = BatchGetAssetPropertyValueHistoryErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type.success_entries = BatchGetAssetPropertyValueHistorySuccessEntries.build(params[:success_entries], context: "#{context}[:success_entries]") unless params[:success_entries].nil?
        type.skipped_entries = BatchGetAssetPropertyValueHistorySkippedEntries.build(params[:skipped_entries], context: "#{context}[:skipped_entries]") unless params[:skipped_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchGetAssetPropertyValueHistorySkippedEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyValueHistorySkippedEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyValueHistorySkippedEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueHistorySkippedEntry, context: context)
        type = Types::BatchGetAssetPropertyValueHistorySkippedEntry.new
        type.entry_id = params[:entry_id]
        type.completion_status = params[:completion_status]
        type.error_info = BatchGetAssetPropertyValueHistoryErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type
      end
    end

    module BatchGetAssetPropertyValueHistorySuccessEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyValueHistorySuccessEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyValueHistorySuccessEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueHistorySuccessEntry, context: context)
        type = Types::BatchGetAssetPropertyValueHistorySuccessEntry.new
        type.entry_id = params[:entry_id]
        type.asset_property_value_history = AssetPropertyValueHistory.build(params[:asset_property_value_history], context: "#{context}[:asset_property_value_history]") unless params[:asset_property_value_history].nil?
        type
      end
    end

    module BatchGetAssetPropertyValueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueInput, context: context)
        type = Types::BatchGetAssetPropertyValueInput.new
        type.entries = BatchGetAssetPropertyValueEntries.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchGetAssetPropertyValueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueOutput, context: context)
        type = Types::BatchGetAssetPropertyValueOutput.new
        type.error_entries = BatchGetAssetPropertyValueErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type.success_entries = BatchGetAssetPropertyValueSuccessEntries.build(params[:success_entries], context: "#{context}[:success_entries]") unless params[:success_entries].nil?
        type.skipped_entries = BatchGetAssetPropertyValueSkippedEntries.build(params[:skipped_entries], context: "#{context}[:skipped_entries]") unless params[:skipped_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchGetAssetPropertyValueSkippedEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyValueSkippedEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyValueSkippedEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueSkippedEntry, context: context)
        type = Types::BatchGetAssetPropertyValueSkippedEntry.new
        type.entry_id = params[:entry_id]
        type.completion_status = params[:completion_status]
        type.error_info = BatchGetAssetPropertyValueErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type
      end
    end

    module BatchGetAssetPropertyValueSuccessEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetAssetPropertyValueSuccessEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAssetPropertyValueSuccessEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAssetPropertyValueSuccessEntry, context: context)
        type = Types::BatchGetAssetPropertyValueSuccessEntry.new
        type.entry_id = params[:entry_id]
        type.asset_property_value = AssetPropertyValue.build(params[:asset_property_value], context: "#{context}[:asset_property_value]") unless params[:asset_property_value].nil?
        type
      end
    end

    module BatchPutAssetPropertyError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutAssetPropertyError, context: context)
        type = Types::BatchPutAssetPropertyError.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.timestamps = Timestamps.build(params[:timestamps], context: "#{context}[:timestamps]") unless params[:timestamps].nil?
        type
      end
    end

    module BatchPutAssetPropertyErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutAssetPropertyErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchPutAssetPropertyErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutAssetPropertyErrorEntry, context: context)
        type = Types::BatchPutAssetPropertyErrorEntry.new
        type.entry_id = params[:entry_id]
        type.errors = BatchPutAssetPropertyErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchPutAssetPropertyErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutAssetPropertyError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchPutAssetPropertyValueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutAssetPropertyValueInput, context: context)
        type = Types::BatchPutAssetPropertyValueInput.new
        type.entries = PutAssetPropertyValueEntries.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module BatchPutAssetPropertyValueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutAssetPropertyValueOutput, context: context)
        type = Types::BatchPutAssetPropertyValueOutput.new
        type.error_entries = BatchPutAssetPropertyErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type
      end
    end

    module CompositeModelProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompositeModelProperty, context: context)
        type = Types::CompositeModelProperty.new
        type.name = params[:name]
        type.type = params[:type]
        type.asset_property = Property.build(params[:asset_property], context: "#{context}[:asset_property]") unless params[:asset_property].nil?
        type
      end
    end

    module ConfigurationErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationErrorDetails, context: context)
        type = Types::ConfigurationErrorDetails.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ConfigurationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationStatus, context: context)
        type = Types::ConfigurationStatus.new
        type.state = params[:state]
        type.error = ConfigurationErrorDetails.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module ConflictingOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictingOperationException, context: context)
        type = Types::ConflictingOperationException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module CreateAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPolicyInput, context: context)
        type = Types::CreateAccessPolicyInput.new
        type.access_policy_identity = Identity.build(params[:access_policy_identity], context: "#{context}[:access_policy_identity]") unless params[:access_policy_identity].nil?
        type.access_policy_resource = Resource.build(params[:access_policy_resource], context: "#{context}[:access_policy_resource]") unless params[:access_policy_resource].nil?
        type.access_policy_permission = params[:access_policy_permission]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPolicyOutput, context: context)
        type = Types::CreateAccessPolicyOutput.new
        type.access_policy_id = params[:access_policy_id]
        type.access_policy_arn = params[:access_policy_arn]
        type
      end
    end

    module CreateAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssetInput, context: context)
        type = Types::CreateAssetInput.new
        type.asset_name = params[:asset_name]
        type.asset_model_id = params[:asset_model_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.asset_description = params[:asset_description]
        type
      end
    end

    module CreateAssetModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssetModelInput, context: context)
        type = Types::CreateAssetModelInput.new
        type.asset_model_name = params[:asset_model_name]
        type.asset_model_description = params[:asset_model_description]
        type.asset_model_properties = AssetModelPropertyDefinitions.build(params[:asset_model_properties], context: "#{context}[:asset_model_properties]") unless params[:asset_model_properties].nil?
        type.asset_model_hierarchies = AssetModelHierarchyDefinitions.build(params[:asset_model_hierarchies], context: "#{context}[:asset_model_hierarchies]") unless params[:asset_model_hierarchies].nil?
        type.asset_model_composite_models = AssetModelCompositeModelDefinitions.build(params[:asset_model_composite_models], context: "#{context}[:asset_model_composite_models]") unless params[:asset_model_composite_models].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAssetModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssetModelOutput, context: context)
        type = Types::CreateAssetModelOutput.new
        type.asset_model_id = params[:asset_model_id]
        type.asset_model_arn = params[:asset_model_arn]
        type.asset_model_status = AssetModelStatus.build(params[:asset_model_status], context: "#{context}[:asset_model_status]") unless params[:asset_model_status].nil?
        type
      end
    end

    module CreateAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssetOutput, context: context)
        type = Types::CreateAssetOutput.new
        type.asset_id = params[:asset_id]
        type.asset_arn = params[:asset_arn]
        type.asset_status = AssetStatus.build(params[:asset_status], context: "#{context}[:asset_status]") unless params[:asset_status].nil?
        type
      end
    end

    module CreateDashboardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDashboardInput, context: context)
        type = Types::CreateDashboardInput.new
        type.project_id = params[:project_id]
        type.dashboard_name = params[:dashboard_name]
        type.dashboard_description = params[:dashboard_description]
        type.dashboard_definition = params[:dashboard_definition]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDashboardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDashboardOutput, context: context)
        type = Types::CreateDashboardOutput.new
        type.dashboard_id = params[:dashboard_id]
        type.dashboard_arn = params[:dashboard_arn]
        type
      end
    end

    module CreateGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGatewayInput, context: context)
        type = Types::CreateGatewayInput.new
        type.gateway_name = params[:gateway_name]
        type.gateway_platform = GatewayPlatform.build(params[:gateway_platform], context: "#{context}[:gateway_platform]") unless params[:gateway_platform].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGatewayOutput, context: context)
        type = Types::CreateGatewayOutput.new
        type.gateway_id = params[:gateway_id]
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module CreatePortalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePortalInput, context: context)
        type = Types::CreatePortalInput.new
        type.portal_name = params[:portal_name]
        type.portal_description = params[:portal_description]
        type.portal_contact_email = params[:portal_contact_email]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.portal_logo_image_file = ImageFile.build(params[:portal_logo_image_file], context: "#{context}[:portal_logo_image_file]") unless params[:portal_logo_image_file].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.portal_auth_mode = params[:portal_auth_mode]
        type.notification_sender_email = params[:notification_sender_email]
        type.alarms = Alarms.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type
      end
    end

    module CreatePortalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePortalOutput, context: context)
        type = Types::CreatePortalOutput.new
        type.portal_id = params[:portal_id]
        type.portal_arn = params[:portal_arn]
        type.portal_start_url = params[:portal_start_url]
        type.portal_status = PortalStatus.build(params[:portal_status], context: "#{context}[:portal_status]") unless params[:portal_status].nil?
        type.sso_application_id = params[:sso_application_id]
        type
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.portal_id = params[:portal_id]
        type.project_name = params[:project_name]
        type.project_description = params[:project_description]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.project_id = params[:project_id]
        type.project_arn = params[:project_arn]
        type
      end
    end

    module CustomerManagedS3Storage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerManagedS3Storage, context: context)
        type = Types::CustomerManagedS3Storage.new
        type.s3_resource_arn = params[:s3_resource_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module DashboardSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashboardSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DashboardSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashboardSummary, context: context)
        type = Types::DashboardSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type
      end
    end

    module DeleteAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPolicyInput, context: context)
        type = Types::DeleteAccessPolicyInput.new
        type.access_policy_id = params[:access_policy_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPolicyOutput, context: context)
        type = Types::DeleteAccessPolicyOutput.new
        type
      end
    end

    module DeleteAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssetInput, context: context)
        type = Types::DeleteAssetInput.new
        type.asset_id = params[:asset_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteAssetModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssetModelInput, context: context)
        type = Types::DeleteAssetModelInput.new
        type.asset_model_id = params[:asset_model_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteAssetModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssetModelOutput, context: context)
        type = Types::DeleteAssetModelOutput.new
        type.asset_model_status = AssetModelStatus.build(params[:asset_model_status], context: "#{context}[:asset_model_status]") unless params[:asset_model_status].nil?
        type
      end
    end

    module DeleteAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssetOutput, context: context)
        type = Types::DeleteAssetOutput.new
        type.asset_status = AssetStatus.build(params[:asset_status], context: "#{context}[:asset_status]") unless params[:asset_status].nil?
        type
      end
    end

    module DeleteDashboardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDashboardInput, context: context)
        type = Types::DeleteDashboardInput.new
        type.dashboard_id = params[:dashboard_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteDashboardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDashboardOutput, context: context)
        type = Types::DeleteDashboardOutput.new
        type
      end
    end

    module DeleteGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayInput, context: context)
        type = Types::DeleteGatewayInput.new
        type.gateway_id = params[:gateway_id]
        type
      end
    end

    module DeleteGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayOutput, context: context)
        type = Types::DeleteGatewayOutput.new
        type
      end
    end

    module DeletePortalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePortalInput, context: context)
        type = Types::DeletePortalInput.new
        type.portal_id = params[:portal_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeletePortalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePortalOutput, context: context)
        type = Types::DeletePortalOutput.new
        type.portal_status = PortalStatus.build(params[:portal_status], context: "#{context}[:portal_status]") unless params[:portal_status].nil?
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.project_id = params[:project_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type
      end
    end

    module DeleteTimeSeriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTimeSeriesInput, context: context)
        type = Types::DeleteTimeSeriesInput.new
        type.alias = params[:alias]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteTimeSeriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTimeSeriesOutput, context: context)
        type = Types::DeleteTimeSeriesOutput.new
        type
      end
    end

    module DescribeAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccessPolicyInput, context: context)
        type = Types::DescribeAccessPolicyInput.new
        type.access_policy_id = params[:access_policy_id]
        type
      end
    end

    module DescribeAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccessPolicyOutput, context: context)
        type = Types::DescribeAccessPolicyOutput.new
        type.access_policy_id = params[:access_policy_id]
        type.access_policy_arn = params[:access_policy_arn]
        type.access_policy_identity = Identity.build(params[:access_policy_identity], context: "#{context}[:access_policy_identity]") unless params[:access_policy_identity].nil?
        type.access_policy_resource = Resource.build(params[:access_policy_resource], context: "#{context}[:access_policy_resource]") unless params[:access_policy_resource].nil?
        type.access_policy_permission = params[:access_policy_permission]
        type.access_policy_creation_date = params[:access_policy_creation_date]
        type.access_policy_last_update_date = params[:access_policy_last_update_date]
        type
      end
    end

    module DescribeAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssetInput, context: context)
        type = Types::DescribeAssetInput.new
        type.asset_id = params[:asset_id]
        type
      end
    end

    module DescribeAssetModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssetModelInput, context: context)
        type = Types::DescribeAssetModelInput.new
        type.asset_model_id = params[:asset_model_id]
        type
      end
    end

    module DescribeAssetModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssetModelOutput, context: context)
        type = Types::DescribeAssetModelOutput.new
        type.asset_model_id = params[:asset_model_id]
        type.asset_model_arn = params[:asset_model_arn]
        type.asset_model_name = params[:asset_model_name]
        type.asset_model_description = params[:asset_model_description]
        type.asset_model_properties = AssetModelProperties.build(params[:asset_model_properties], context: "#{context}[:asset_model_properties]") unless params[:asset_model_properties].nil?
        type.asset_model_hierarchies = AssetModelHierarchies.build(params[:asset_model_hierarchies], context: "#{context}[:asset_model_hierarchies]") unless params[:asset_model_hierarchies].nil?
        type.asset_model_composite_models = AssetModelCompositeModels.build(params[:asset_model_composite_models], context: "#{context}[:asset_model_composite_models]") unless params[:asset_model_composite_models].nil?
        type.asset_model_creation_date = params[:asset_model_creation_date]
        type.asset_model_last_update_date = params[:asset_model_last_update_date]
        type.asset_model_status = AssetModelStatus.build(params[:asset_model_status], context: "#{context}[:asset_model_status]") unless params[:asset_model_status].nil?
        type
      end
    end

    module DescribeAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssetOutput, context: context)
        type = Types::DescribeAssetOutput.new
        type.asset_id = params[:asset_id]
        type.asset_arn = params[:asset_arn]
        type.asset_name = params[:asset_name]
        type.asset_model_id = params[:asset_model_id]
        type.asset_properties = AssetProperties.build(params[:asset_properties], context: "#{context}[:asset_properties]") unless params[:asset_properties].nil?
        type.asset_hierarchies = AssetHierarchies.build(params[:asset_hierarchies], context: "#{context}[:asset_hierarchies]") unless params[:asset_hierarchies].nil?
        type.asset_composite_models = AssetCompositeModels.build(params[:asset_composite_models], context: "#{context}[:asset_composite_models]") unless params[:asset_composite_models].nil?
        type.asset_creation_date = params[:asset_creation_date]
        type.asset_last_update_date = params[:asset_last_update_date]
        type.asset_status = AssetStatus.build(params[:asset_status], context: "#{context}[:asset_status]") unless params[:asset_status].nil?
        type.asset_description = params[:asset_description]
        type
      end
    end

    module DescribeAssetPropertyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssetPropertyInput, context: context)
        type = Types::DescribeAssetPropertyInput.new
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type
      end
    end

    module DescribeAssetPropertyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssetPropertyOutput, context: context)
        type = Types::DescribeAssetPropertyOutput.new
        type.asset_id = params[:asset_id]
        type.asset_name = params[:asset_name]
        type.asset_model_id = params[:asset_model_id]
        type.asset_property = Property.build(params[:asset_property], context: "#{context}[:asset_property]") unless params[:asset_property].nil?
        type.composite_model = CompositeModelProperty.build(params[:composite_model], context: "#{context}[:composite_model]") unless params[:composite_model].nil?
        type
      end
    end

    module DescribeDashboardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDashboardInput, context: context)
        type = Types::DescribeDashboardInput.new
        type.dashboard_id = params[:dashboard_id]
        type
      end
    end

    module DescribeDashboardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDashboardOutput, context: context)
        type = Types::DescribeDashboardOutput.new
        type.dashboard_id = params[:dashboard_id]
        type.dashboard_arn = params[:dashboard_arn]
        type.dashboard_name = params[:dashboard_name]
        type.project_id = params[:project_id]
        type.dashboard_description = params[:dashboard_description]
        type.dashboard_definition = params[:dashboard_definition]
        type.dashboard_creation_date = params[:dashboard_creation_date]
        type.dashboard_last_update_date = params[:dashboard_last_update_date]
        type
      end
    end

    module DescribeDefaultEncryptionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDefaultEncryptionConfigurationInput, context: context)
        type = Types::DescribeDefaultEncryptionConfigurationInput.new
        type
      end
    end

    module DescribeDefaultEncryptionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDefaultEncryptionConfigurationOutput, context: context)
        type = Types::DescribeDefaultEncryptionConfigurationOutput.new
        type.encryption_type = params[:encryption_type]
        type.kms_key_arn = params[:kms_key_arn]
        type.configuration_status = ConfigurationStatus.build(params[:configuration_status], context: "#{context}[:configuration_status]") unless params[:configuration_status].nil?
        type
      end
    end

    module DescribeGatewayCapabilityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGatewayCapabilityConfigurationInput, context: context)
        type = Types::DescribeGatewayCapabilityConfigurationInput.new
        type.gateway_id = params[:gateway_id]
        type.capability_namespace = params[:capability_namespace]
        type
      end
    end

    module DescribeGatewayCapabilityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGatewayCapabilityConfigurationOutput, context: context)
        type = Types::DescribeGatewayCapabilityConfigurationOutput.new
        type.gateway_id = params[:gateway_id]
        type.capability_namespace = params[:capability_namespace]
        type.capability_configuration = params[:capability_configuration]
        type.capability_sync_status = params[:capability_sync_status]
        type
      end
    end

    module DescribeGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGatewayInput, context: context)
        type = Types::DescribeGatewayInput.new
        type.gateway_id = params[:gateway_id]
        type
      end
    end

    module DescribeGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGatewayOutput, context: context)
        type = Types::DescribeGatewayOutput.new
        type.gateway_id = params[:gateway_id]
        type.gateway_name = params[:gateway_name]
        type.gateway_arn = params[:gateway_arn]
        type.gateway_platform = GatewayPlatform.build(params[:gateway_platform], context: "#{context}[:gateway_platform]") unless params[:gateway_platform].nil?
        type.gateway_capability_summaries = GatewayCapabilitySummaries.build(params[:gateway_capability_summaries], context: "#{context}[:gateway_capability_summaries]") unless params[:gateway_capability_summaries].nil?
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type
      end
    end

    module DescribeLoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingOptionsInput, context: context)
        type = Types::DescribeLoggingOptionsInput.new
        type
      end
    end

    module DescribeLoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingOptionsOutput, context: context)
        type = Types::DescribeLoggingOptionsOutput.new
        type.logging_options = LoggingOptions.build(params[:logging_options], context: "#{context}[:logging_options]") unless params[:logging_options].nil?
        type
      end
    end

    module DescribePortalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePortalInput, context: context)
        type = Types::DescribePortalInput.new
        type.portal_id = params[:portal_id]
        type
      end
    end

    module DescribePortalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePortalOutput, context: context)
        type = Types::DescribePortalOutput.new
        type.portal_id = params[:portal_id]
        type.portal_arn = params[:portal_arn]
        type.portal_name = params[:portal_name]
        type.portal_description = params[:portal_description]
        type.portal_client_id = params[:portal_client_id]
        type.portal_start_url = params[:portal_start_url]
        type.portal_contact_email = params[:portal_contact_email]
        type.portal_status = PortalStatus.build(params[:portal_status], context: "#{context}[:portal_status]") unless params[:portal_status].nil?
        type.portal_creation_date = params[:portal_creation_date]
        type.portal_last_update_date = params[:portal_last_update_date]
        type.portal_logo_image_location = ImageLocation.build(params[:portal_logo_image_location], context: "#{context}[:portal_logo_image_location]") unless params[:portal_logo_image_location].nil?
        type.role_arn = params[:role_arn]
        type.portal_auth_mode = params[:portal_auth_mode]
        type.notification_sender_email = params[:notification_sender_email]
        type.alarms = Alarms.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type
      end
    end

    module DescribeProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectInput, context: context)
        type = Types::DescribeProjectInput.new
        type.project_id = params[:project_id]
        type
      end
    end

    module DescribeProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectOutput, context: context)
        type = Types::DescribeProjectOutput.new
        type.project_id = params[:project_id]
        type.project_arn = params[:project_arn]
        type.project_name = params[:project_name]
        type.portal_id = params[:portal_id]
        type.project_description = params[:project_description]
        type.project_creation_date = params[:project_creation_date]
        type.project_last_update_date = params[:project_last_update_date]
        type
      end
    end

    module DescribeStorageConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStorageConfigurationInput, context: context)
        type = Types::DescribeStorageConfigurationInput.new
        type
      end
    end

    module DescribeStorageConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStorageConfigurationOutput, context: context)
        type = Types::DescribeStorageConfigurationOutput.new
        type.storage_type = params[:storage_type]
        type.multi_layer_storage = MultiLayerStorage.build(params[:multi_layer_storage], context: "#{context}[:multi_layer_storage]") unless params[:multi_layer_storage].nil?
        type.disassociated_data_storage = params[:disassociated_data_storage]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.configuration_status = ConfigurationStatus.build(params[:configuration_status], context: "#{context}[:configuration_status]") unless params[:configuration_status].nil?
        type.last_update_date = params[:last_update_date]
        type
      end
    end

    module DescribeTimeSeriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTimeSeriesInput, context: context)
        type = Types::DescribeTimeSeriesInput.new
        type.alias = params[:alias]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type
      end
    end

    module DescribeTimeSeriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTimeSeriesOutput, context: context)
        type = Types::DescribeTimeSeriesOutput.new
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.alias = params[:alias]
        type.time_series_id = params[:time_series_id]
        type.data_type = params[:data_type]
        type.data_type_spec = params[:data_type_spec]
        type.time_series_creation_date = params[:time_series_creation_date]
        type.time_series_last_update_date = params[:time_series_last_update_date]
        type
      end
    end

    module DetailedError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetailedError, context: context)
        type = Types::DetailedError.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module DetailedErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DetailedError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisassociateAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAssetsInput, context: context)
        type = Types::DisassociateAssetsInput.new
        type.asset_id = params[:asset_id]
        type.hierarchy_id = params[:hierarchy_id]
        type.child_asset_id = params[:child_asset_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DisassociateAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAssetsOutput, context: context)
        type = Types::DisassociateAssetsOutput.new
        type
      end
    end

    module DisassociateTimeSeriesFromAssetPropertyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTimeSeriesFromAssetPropertyInput, context: context)
        type = Types::DisassociateTimeSeriesFromAssetPropertyInput.new
        type.alias = params[:alias]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DisassociateTimeSeriesFromAssetPropertyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTimeSeriesFromAssetPropertyOutput, context: context)
        type = Types::DisassociateTimeSeriesFromAssetPropertyOutput.new
        type
      end
    end

    module ErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetails, context: context)
        type = Types::ErrorDetails.new
        type.code = params[:code]
        type.message = params[:message]
        type.details = DetailedErrors.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module ExpressionVariable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpressionVariable, context: context)
        type = Types::ExpressionVariable.new
        type.name = params[:name]
        type.value = VariableValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module ExpressionVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExpressionVariable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ForwardingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForwardingConfig, context: context)
        type = Types::ForwardingConfig.new
        type.state = params[:state]
        type
      end
    end

    module GatewayCapabilitySummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GatewayCapabilitySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GatewayCapabilitySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayCapabilitySummary, context: context)
        type = Types::GatewayCapabilitySummary.new
        type.capability_namespace = params[:capability_namespace]
        type.capability_sync_status = params[:capability_sync_status]
        type
      end
    end

    module GatewayPlatform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayPlatform, context: context)
        type = Types::GatewayPlatform.new
        type.greengrass = Greengrass.build(params[:greengrass], context: "#{context}[:greengrass]") unless params[:greengrass].nil?
        type.greengrass_v2 = GreengrassV2.build(params[:greengrass_v2], context: "#{context}[:greengrass_v2]") unless params[:greengrass_v2].nil?
        type
      end
    end

    module GatewaySummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GatewaySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GatewaySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewaySummary, context: context)
        type = Types::GatewaySummary.new
        type.gateway_id = params[:gateway_id]
        type.gateway_name = params[:gateway_name]
        type.gateway_platform = GatewayPlatform.build(params[:gateway_platform], context: "#{context}[:gateway_platform]") unless params[:gateway_platform].nil?
        type.gateway_capability_summaries = GatewayCapabilitySummaries.build(params[:gateway_capability_summaries], context: "#{context}[:gateway_capability_summaries]") unless params[:gateway_capability_summaries].nil?
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type
      end
    end

    module GetAssetPropertyAggregatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssetPropertyAggregatesInput, context: context)
        type = Types::GetAssetPropertyAggregatesInput.new
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type.aggregate_types = AggregateTypes.build(params[:aggregate_types], context: "#{context}[:aggregate_types]") unless params[:aggregate_types].nil?
        type.resolution = params[:resolution]
        type.qualities = Qualities.build(params[:qualities], context: "#{context}[:qualities]") unless params[:qualities].nil?
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.time_ordering = params[:time_ordering]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetAssetPropertyAggregatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssetPropertyAggregatesOutput, context: context)
        type = Types::GetAssetPropertyAggregatesOutput.new
        type.aggregated_values = AggregatedValues.build(params[:aggregated_values], context: "#{context}[:aggregated_values]") unless params[:aggregated_values].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAssetPropertyValueHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssetPropertyValueHistoryInput, context: context)
        type = Types::GetAssetPropertyValueHistoryInput.new
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.qualities = Qualities.build(params[:qualities], context: "#{context}[:qualities]") unless params[:qualities].nil?
        type.time_ordering = params[:time_ordering]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetAssetPropertyValueHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssetPropertyValueHistoryOutput, context: context)
        type = Types::GetAssetPropertyValueHistoryOutput.new
        type.asset_property_value_history = AssetPropertyValueHistory.build(params[:asset_property_value_history], context: "#{context}[:asset_property_value_history]") unless params[:asset_property_value_history].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAssetPropertyValueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssetPropertyValueInput, context: context)
        type = Types::GetAssetPropertyValueInput.new
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type
      end
    end

    module GetAssetPropertyValueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssetPropertyValueOutput, context: context)
        type = Types::GetAssetPropertyValueOutput.new
        type.property_value = AssetPropertyValue.build(params[:property_value], context: "#{context}[:property_value]") unless params[:property_value].nil?
        type
      end
    end

    module GetInterpolatedAssetPropertyValuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInterpolatedAssetPropertyValuesInput, context: context)
        type = Types::GetInterpolatedAssetPropertyValuesInput.new
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type.start_time_in_seconds = params[:start_time_in_seconds]
        type.start_time_offset_in_nanos = params[:start_time_offset_in_nanos]
        type.end_time_in_seconds = params[:end_time_in_seconds]
        type.end_time_offset_in_nanos = params[:end_time_offset_in_nanos]
        type.quality = params[:quality]
        type.interval_in_seconds = params[:interval_in_seconds]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.type = params[:type]
        type.interval_window_in_seconds = params[:interval_window_in_seconds]
        type
      end
    end

    module GetInterpolatedAssetPropertyValuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInterpolatedAssetPropertyValuesOutput, context: context)
        type = Types::GetInterpolatedAssetPropertyValuesOutput.new
        type.interpolated_asset_property_values = InterpolatedAssetPropertyValues.build(params[:interpolated_asset_property_values], context: "#{context}[:interpolated_asset_property_values]") unless params[:interpolated_asset_property_values].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Greengrass
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Greengrass, context: context)
        type = Types::Greengrass.new
        type.group_arn = params[:group_arn]
        type
      end
    end

    module GreengrassV2
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GreengrassV2, context: context)
        type = Types::GreengrassV2.new
        type.core_device_thing_name = params[:core_device_thing_name]
        type
      end
    end

    module GroupIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupIdentity, context: context)
        type = Types::GroupIdentity.new
        type.id = params[:id]
        type
      end
    end

    module IAMRoleIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IAMRoleIdentity, context: context)
        type = Types::IAMRoleIdentity.new
        type.arn = params[:arn]
        type
      end
    end

    module IAMUserIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IAMUserIdentity, context: context)
        type = Types::IAMUserIdentity.new
        type.arn = params[:arn]
        type
      end
    end

    module IDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Identity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Identity, context: context)
        type = Types::Identity.new
        type.user = UserIdentity.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type.group = GroupIdentity.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type.iam_user = IAMUserIdentity.build(params[:iam_user], context: "#{context}[:iam_user]") unless params[:iam_user].nil?
        type.iam_role = IAMRoleIdentity.build(params[:iam_role], context: "#{context}[:iam_role]") unless params[:iam_role].nil?
        type
      end
    end

    module Image
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Image, context: context)
        type = Types::Image.new
        type.id = params[:id]
        type.file = ImageFile.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?
        type
      end
    end

    module ImageFile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageFile, context: context)
        type = Types::ImageFile.new
        type.data = params[:data]
        type.type = params[:type]
        type
      end
    end

    module ImageLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageLocation, context: context)
        type = Types::ImageLocation.new
        type.id = params[:id]
        type.url = params[:url]
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

    module InterpolatedAssetPropertyValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InterpolatedAssetPropertyValue, context: context)
        type = Types::InterpolatedAssetPropertyValue.new
        type.timestamp = TimeInNanos.build(params[:timestamp], context: "#{context}[:timestamp]") unless params[:timestamp].nil?
        type.value = Variant.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module InterpolatedAssetPropertyValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InterpolatedAssetPropertyValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ListAccessPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPoliciesInput, context: context)
        type = Types::ListAccessPoliciesInput.new
        type.identity_type = params[:identity_type]
        type.identity_id = params[:identity_id]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.iam_arn = params[:iam_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAccessPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPoliciesOutput, context: context)
        type = Types::ListAccessPoliciesOutput.new
        type.access_policy_summaries = AccessPolicySummaries.build(params[:access_policy_summaries], context: "#{context}[:access_policy_summaries]") unless params[:access_policy_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssetModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetModelsInput, context: context)
        type = Types::ListAssetModelsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssetModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetModelsOutput, context: context)
        type = Types::ListAssetModelsOutput.new
        type.asset_model_summaries = AssetModelSummaries.build(params[:asset_model_summaries], context: "#{context}[:asset_model_summaries]") unless params[:asset_model_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssetRelationshipsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetRelationshipsInput, context: context)
        type = Types::ListAssetRelationshipsInput.new
        type.asset_id = params[:asset_id]
        type.traversal_type = params[:traversal_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssetRelationshipsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetRelationshipsOutput, context: context)
        type = Types::ListAssetRelationshipsOutput.new
        type.asset_relationship_summaries = AssetRelationshipSummaries.build(params[:asset_relationship_summaries], context: "#{context}[:asset_relationship_summaries]") unless params[:asset_relationship_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetsInput, context: context)
        type = Types::ListAssetsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.asset_model_id = params[:asset_model_id]
        type.filter = params[:filter]
        type
      end
    end

    module ListAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssetsOutput, context: context)
        type = Types::ListAssetsOutput.new
        type.asset_summaries = AssetSummaries.build(params[:asset_summaries], context: "#{context}[:asset_summaries]") unless params[:asset_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociatedAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedAssetsInput, context: context)
        type = Types::ListAssociatedAssetsInput.new
        type.asset_id = params[:asset_id]
        type.hierarchy_id = params[:hierarchy_id]
        type.traversal_direction = params[:traversal_direction]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssociatedAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedAssetsOutput, context: context)
        type = Types::ListAssociatedAssetsOutput.new
        type.asset_summaries = AssociatedAssetsSummaries.build(params[:asset_summaries], context: "#{context}[:asset_summaries]") unless params[:asset_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDashboardsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDashboardsInput, context: context)
        type = Types::ListDashboardsInput.new
        type.project_id = params[:project_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDashboardsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDashboardsOutput, context: context)
        type = Types::ListDashboardsOutput.new
        type.dashboard_summaries = DashboardSummaries.build(params[:dashboard_summaries], context: "#{context}[:dashboard_summaries]") unless params[:dashboard_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewaysInput, context: context)
        type = Types::ListGatewaysInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListGatewaysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewaysOutput, context: context)
        type = Types::ListGatewaysOutput.new
        type.gateway_summaries = GatewaySummaries.build(params[:gateway_summaries], context: "#{context}[:gateway_summaries]") unless params[:gateway_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPortalsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortalsInput, context: context)
        type = Types::ListPortalsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPortalsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortalsOutput, context: context)
        type = Types::ListPortalsOutput.new
        type.portal_summaries = PortalSummaries.build(params[:portal_summaries], context: "#{context}[:portal_summaries]") unless params[:portal_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectAssetsInput, context: context)
        type = Types::ListProjectAssetsInput.new
        type.project_id = params[:project_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProjectAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectAssetsOutput, context: context)
        type = Types::ListProjectAssetsOutput.new
        type.asset_ids = AssetIDs.build(params[:asset_ids], context: "#{context}[:asset_ids]") unless params[:asset_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.portal_id = params[:portal_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.project_summaries = ProjectSummaries.build(params[:project_summaries], context: "#{context}[:project_summaries]") unless params[:project_summaries].nil?
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

    module ListTimeSeriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTimeSeriesInput, context: context)
        type = Types::ListTimeSeriesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.asset_id = params[:asset_id]
        type.alias_prefix = params[:alias_prefix]
        type.time_series_type = params[:time_series_type]
        type
      end
    end

    module ListTimeSeriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTimeSeriesOutput, context: context)
        type = Types::ListTimeSeriesOutput.new
        type.time_series_summaries = TimeSeriesSummaries.build(params[:time_series_summaries], context: "#{context}[:time_series_summaries]") unless params[:time_series_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LoggingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingOptions, context: context)
        type = Types::LoggingOptions.new
        type.level = params[:level]
        type
      end
    end

    module Measurement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Measurement, context: context)
        type = Types::Measurement.new
        type.processing_config = MeasurementProcessingConfig.build(params[:processing_config], context: "#{context}[:processing_config]") unless params[:processing_config].nil?
        type
      end
    end

    module MeasurementProcessingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeasurementProcessingConfig, context: context)
        type = Types::MeasurementProcessingConfig.new
        type.forwarding_config = ForwardingConfig.build(params[:forwarding_config], context: "#{context}[:forwarding_config]") unless params[:forwarding_config].nil?
        type
      end
    end

    module Metric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Metric, context: context)
        type = Types::Metric.new
        type.expression = params[:expression]
        type.variables = ExpressionVariables.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.window = MetricWindow.build(params[:window], context: "#{context}[:window]") unless params[:window].nil?
        type.processing_config = MetricProcessingConfig.build(params[:processing_config], context: "#{context}[:processing_config]") unless params[:processing_config].nil?
        type
      end
    end

    module MetricProcessingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricProcessingConfig, context: context)
        type = Types::MetricProcessingConfig.new
        type.compute_location = params[:compute_location]
        type
      end
    end

    module MetricWindow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricWindow, context: context)
        type = Types::MetricWindow.new
        type.tumbling = TumblingWindow.build(params[:tumbling], context: "#{context}[:tumbling]") unless params[:tumbling].nil?
        type
      end
    end

    module MonitorErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitorErrorDetails, context: context)
        type = Types::MonitorErrorDetails.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module MultiLayerStorage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiLayerStorage, context: context)
        type = Types::MultiLayerStorage.new
        type.customer_managed_s3_storage = CustomerManagedS3Storage.build(params[:customer_managed_s3_storage], context: "#{context}[:customer_managed_s3_storage]") unless params[:customer_managed_s3_storage].nil?
        type
      end
    end

    module PortalResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortalResource, context: context)
        type = Types::PortalResource.new
        type.id = params[:id]
        type
      end
    end

    module PortalStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortalStatus, context: context)
        type = Types::PortalStatus.new
        type.state = params[:state]
        type.error = MonitorErrorDetails.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module PortalSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortalSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortalSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortalSummary, context: context)
        type = Types::PortalSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.start_url = params[:start_url]
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type.role_arn = params[:role_arn]
        type.status = PortalStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ProjectResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectResource, context: context)
        type = Types::ProjectResource.new
        type.id = params[:id]
        type
      end
    end

    module ProjectSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProjectSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectSummary, context: context)
        type = Types::ProjectSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.creation_date = params[:creation_date]
        type.last_update_date = params[:last_update_date]
        type
      end
    end

    module Property
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Property, context: context)
        type = Types::Property.new
        type.id = params[:id]
        type.name = params[:name]
        type.alias = params[:alias]
        type.notification = PropertyNotification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.data_type = params[:data_type]
        type.unit = params[:unit]
        type.type = PropertyType.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type
      end
    end

    module PropertyNotification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyNotification, context: context)
        type = Types::PropertyNotification.new
        type.topic = params[:topic]
        type.state = params[:state]
        type
      end
    end

    module PropertyType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyType, context: context)
        type = Types::PropertyType.new
        type.attribute = Attribute.build(params[:attribute], context: "#{context}[:attribute]") unless params[:attribute].nil?
        type.measurement = Measurement.build(params[:measurement], context: "#{context}[:measurement]") unless params[:measurement].nil?
        type.transform = Transform.build(params[:transform], context: "#{context}[:transform]") unless params[:transform].nil?
        type.metric = Metric.build(params[:metric], context: "#{context}[:metric]") unless params[:metric].nil?
        type
      end
    end

    module PutAssetPropertyValueEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutAssetPropertyValueEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutAssetPropertyValueEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAssetPropertyValueEntry, context: context)
        type = Types::PutAssetPropertyValueEntry.new
        type.entry_id = params[:entry_id]
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type.property_values = AssetPropertyValues.build(params[:property_values], context: "#{context}[:property_values]") unless params[:property_values].nil?
        type
      end
    end

    module PutDefaultEncryptionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDefaultEncryptionConfigurationInput, context: context)
        type = Types::PutDefaultEncryptionConfigurationInput.new
        type.encryption_type = params[:encryption_type]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module PutDefaultEncryptionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDefaultEncryptionConfigurationOutput, context: context)
        type = Types::PutDefaultEncryptionConfigurationOutput.new
        type.encryption_type = params[:encryption_type]
        type.kms_key_arn = params[:kms_key_arn]
        type.configuration_status = ConfigurationStatus.build(params[:configuration_status], context: "#{context}[:configuration_status]") unless params[:configuration_status].nil?
        type
      end
    end

    module PutLoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLoggingOptionsInput, context: context)
        type = Types::PutLoggingOptionsInput.new
        type.logging_options = LoggingOptions.build(params[:logging_options], context: "#{context}[:logging_options]") unless params[:logging_options].nil?
        type
      end
    end

    module PutLoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLoggingOptionsOutput, context: context)
        type = Types::PutLoggingOptionsOutput.new
        type
      end
    end

    module PutStorageConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStorageConfigurationInput, context: context)
        type = Types::PutStorageConfigurationInput.new
        type.storage_type = params[:storage_type]
        type.multi_layer_storage = MultiLayerStorage.build(params[:multi_layer_storage], context: "#{context}[:multi_layer_storage]") unless params[:multi_layer_storage].nil?
        type.disassociated_data_storage = params[:disassociated_data_storage]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type
      end
    end

    module PutStorageConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStorageConfigurationOutput, context: context)
        type = Types::PutStorageConfigurationOutput.new
        type.storage_type = params[:storage_type]
        type.multi_layer_storage = MultiLayerStorage.build(params[:multi_layer_storage], context: "#{context}[:multi_layer_storage]") unless params[:multi_layer_storage].nil?
        type.disassociated_data_storage = params[:disassociated_data_storage]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.configuration_status = ConfigurationStatus.build(params[:configuration_status], context: "#{context}[:configuration_status]") unless params[:configuration_status].nil?
        type
      end
    end

    module Qualities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.portal = PortalResource.build(params[:portal], context: "#{context}[:portal]") unless params[:portal].nil?
        type.project = ProjectResource.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_arn = params[:resource_arn]
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

    module RetentionPeriod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetentionPeriod, context: context)
        type = Types::RetentionPeriod.new
        type.number_of_days = params[:number_of_days]
        type.unlimited = params[:unlimited]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TimeInNanos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeInNanos, context: context)
        type = Types::TimeInNanos.new
        type.time_in_seconds = params[:time_in_seconds]
        type.offset_in_nanos = params[:offset_in_nanos]
        type
      end
    end

    module TimeSeriesSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimeSeriesSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimeSeriesSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeSeriesSummary, context: context)
        type = Types::TimeSeriesSummary.new
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.alias = params[:alias]
        type.time_series_id = params[:time_series_id]
        type.data_type = params[:data_type]
        type.data_type_spec = params[:data_type_spec]
        type.time_series_creation_date = params[:time_series_creation_date]
        type.time_series_last_update_date = params[:time_series_last_update_date]
        type
      end
    end

    module Timestamps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimeInNanos.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module Transform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Transform, context: context)
        type = Types::Transform.new
        type.expression = params[:expression]
        type.variables = ExpressionVariables.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.processing_config = TransformProcessingConfig.build(params[:processing_config], context: "#{context}[:processing_config]") unless params[:processing_config].nil?
        type
      end
    end

    module TransformProcessingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformProcessingConfig, context: context)
        type = Types::TransformProcessingConfig.new
        type.compute_location = params[:compute_location]
        type.forwarding_config = ForwardingConfig.build(params[:forwarding_config], context: "#{context}[:forwarding_config]") unless params[:forwarding_config].nil?
        type
      end
    end

    module TumblingWindow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TumblingWindow, context: context)
        type = Types::TumblingWindow.new
        type.interval = params[:interval]
        type.offset = params[:offset]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
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

    module UpdateAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccessPolicyInput, context: context)
        type = Types::UpdateAccessPolicyInput.new
        type.access_policy_id = params[:access_policy_id]
        type.access_policy_identity = Identity.build(params[:access_policy_identity], context: "#{context}[:access_policy_identity]") unless params[:access_policy_identity].nil?
        type.access_policy_resource = Resource.build(params[:access_policy_resource], context: "#{context}[:access_policy_resource]") unless params[:access_policy_resource].nil?
        type.access_policy_permission = params[:access_policy_permission]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccessPolicyOutput, context: context)
        type = Types::UpdateAccessPolicyOutput.new
        type
      end
    end

    module UpdateAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssetInput, context: context)
        type = Types::UpdateAssetInput.new
        type.asset_id = params[:asset_id]
        type.asset_name = params[:asset_name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.asset_description = params[:asset_description]
        type
      end
    end

    module UpdateAssetModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssetModelInput, context: context)
        type = Types::UpdateAssetModelInput.new
        type.asset_model_id = params[:asset_model_id]
        type.asset_model_name = params[:asset_model_name]
        type.asset_model_description = params[:asset_model_description]
        type.asset_model_properties = AssetModelProperties.build(params[:asset_model_properties], context: "#{context}[:asset_model_properties]") unless params[:asset_model_properties].nil?
        type.asset_model_hierarchies = AssetModelHierarchies.build(params[:asset_model_hierarchies], context: "#{context}[:asset_model_hierarchies]") unless params[:asset_model_hierarchies].nil?
        type.asset_model_composite_models = AssetModelCompositeModels.build(params[:asset_model_composite_models], context: "#{context}[:asset_model_composite_models]") unless params[:asset_model_composite_models].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateAssetModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssetModelOutput, context: context)
        type = Types::UpdateAssetModelOutput.new
        type.asset_model_status = AssetModelStatus.build(params[:asset_model_status], context: "#{context}[:asset_model_status]") unless params[:asset_model_status].nil?
        type
      end
    end

    module UpdateAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssetOutput, context: context)
        type = Types::UpdateAssetOutput.new
        type.asset_status = AssetStatus.build(params[:asset_status], context: "#{context}[:asset_status]") unless params[:asset_status].nil?
        type
      end
    end

    module UpdateAssetPropertyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssetPropertyInput, context: context)
        type = Types::UpdateAssetPropertyInput.new
        type.asset_id = params[:asset_id]
        type.property_id = params[:property_id]
        type.property_alias = params[:property_alias]
        type.property_notification_state = params[:property_notification_state]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateAssetPropertyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssetPropertyOutput, context: context)
        type = Types::UpdateAssetPropertyOutput.new
        type
      end
    end

    module UpdateDashboardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDashboardInput, context: context)
        type = Types::UpdateDashboardInput.new
        type.dashboard_id = params[:dashboard_id]
        type.dashboard_name = params[:dashboard_name]
        type.dashboard_description = params[:dashboard_description]
        type.dashboard_definition = params[:dashboard_definition]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateDashboardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDashboardOutput, context: context)
        type = Types::UpdateDashboardOutput.new
        type
      end
    end

    module UpdateGatewayCapabilityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayCapabilityConfigurationInput, context: context)
        type = Types::UpdateGatewayCapabilityConfigurationInput.new
        type.gateway_id = params[:gateway_id]
        type.capability_namespace = params[:capability_namespace]
        type.capability_configuration = params[:capability_configuration]
        type
      end
    end

    module UpdateGatewayCapabilityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayCapabilityConfigurationOutput, context: context)
        type = Types::UpdateGatewayCapabilityConfigurationOutput.new
        type.capability_namespace = params[:capability_namespace]
        type.capability_sync_status = params[:capability_sync_status]
        type
      end
    end

    module UpdateGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayInput, context: context)
        type = Types::UpdateGatewayInput.new
        type.gateway_id = params[:gateway_id]
        type.gateway_name = params[:gateway_name]
        type
      end
    end

    module UpdateGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayOutput, context: context)
        type = Types::UpdateGatewayOutput.new
        type
      end
    end

    module UpdatePortalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePortalInput, context: context)
        type = Types::UpdatePortalInput.new
        type.portal_id = params[:portal_id]
        type.portal_name = params[:portal_name]
        type.portal_description = params[:portal_description]
        type.portal_contact_email = params[:portal_contact_email]
        type.portal_logo_image = Image.build(params[:portal_logo_image], context: "#{context}[:portal_logo_image]") unless params[:portal_logo_image].nil?
        type.role_arn = params[:role_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.notification_sender_email = params[:notification_sender_email]
        type.alarms = Alarms.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type
      end
    end

    module UpdatePortalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePortalOutput, context: context)
        type = Types::UpdatePortalOutput.new
        type.portal_status = PortalStatus.build(params[:portal_status], context: "#{context}[:portal_status]") unless params[:portal_status].nil?
        type
      end
    end

    module UpdateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        type.project_id = params[:project_id]
        type.project_name = params[:project_name]
        type.project_description = params[:project_description]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        type
      end
    end

    module UserIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserIdentity, context: context)
        type = Types::UserIdentity.new
        type.id = params[:id]
        type
      end
    end

    module VariableValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VariableValue, context: context)
        type = Types::VariableValue.new
        type.property_id = params[:property_id]
        type.hierarchy_id = params[:hierarchy_id]
        type
      end
    end

    module Variant
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Variant, context: context)
        type = Types::Variant.new
        type.string_value = params[:string_value]
        type.integer_value = params[:integer_value]
        type.double_value = params[:double_value]
        type.boolean_value = params[:boolean_value]
        type
      end
    end

  end
end
