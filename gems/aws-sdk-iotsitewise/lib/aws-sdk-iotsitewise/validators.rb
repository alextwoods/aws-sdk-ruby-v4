# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::IoTSiteWise
  module Validators

    class AccessPolicySummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccessPolicySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessPolicySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPolicySummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Identity.validate!(input[:identity], context: "#{context}[:identity]") unless input[:identity].nil?
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
      end
    end

    class AggregateTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AggregatedValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregatedValue, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:quality], ::String, context: "#{context}[:quality]")
        Aggregates.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class AggregatedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregatedValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Aggregates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Aggregates, context: context)
        Hearth::Validator.validate!(input[:average], ::Float, context: "#{context}[:average]")
        Hearth::Validator.validate!(input[:count], ::Float, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:maximum], ::Float, context: "#{context}[:maximum]")
        Hearth::Validator.validate!(input[:minimum], ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate!(input[:sum], ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate!(input[:standard_deviation], ::Float, context: "#{context}[:standard_deviation]")
      end
    end

    class Alarms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alarms, context: context)
        Hearth::Validator.validate!(input[:alarm_role_arn], ::String, context: "#{context}[:alarm_role_arn]")
        Hearth::Validator.validate!(input[:notification_lambda_arn], ::String, context: "#{context}[:notification_lambda_arn]")
      end
    end

    class AssetCompositeModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetCompositeModel, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        AssetProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class AssetCompositeModels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetCompositeModel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetErrorDetails, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssetHierarchies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetHierarchy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetHierarchy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetHierarchy, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AssetHierarchyInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetHierarchyInfo, context: context)
        Hearth::Validator.validate!(input[:parent_asset_id], ::String, context: "#{context}[:parent_asset_id]")
        Hearth::Validator.validate!(input[:child_asset_id], ::String, context: "#{context}[:child_asset_id]")
      end
    end

    class AssetIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssetModelCompositeModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetModelCompositeModel, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        AssetModelProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class AssetModelCompositeModelDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetModelCompositeModelDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        AssetModelPropertyDefinitions.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class AssetModelCompositeModelDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetModelCompositeModelDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetModelCompositeModels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetModelCompositeModel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetModelHierarchies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetModelHierarchy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetModelHierarchy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetModelHierarchy, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:child_asset_model_id], ::String, context: "#{context}[:child_asset_model_id]")
      end
    end

    class AssetModelHierarchyDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetModelHierarchyDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:child_asset_model_id], ::String, context: "#{context}[:child_asset_model_id]")
      end
    end

    class AssetModelHierarchyDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetModelHierarchyDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetModelProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetModelProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetModelProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetModelProperty, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:data_type_spec], ::String, context: "#{context}[:data_type_spec]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        PropertyType.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
      end
    end

    class AssetModelPropertyDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetModelPropertyDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:data_type_spec], ::String, context: "#{context}[:data_type_spec]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        PropertyType.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
      end
    end

    class AssetModelPropertyDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetModelPropertyDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetModelStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetModelStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ErrorDetails.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class AssetModelSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetModelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetModelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetModelSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
        AssetModelStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class AssetProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetProperty, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        PropertyNotification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:data_type_spec], ::String, context: "#{context}[:data_type_spec]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class AssetPropertyValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetPropertyValue, context: context)
        Variant.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        TimeInNanos.validate!(input[:timestamp], context: "#{context}[:timestamp]") unless input[:timestamp].nil?
        Hearth::Validator.validate!(input[:quality], ::String, context: "#{context}[:quality]")
      end
    end

    class AssetPropertyValueHistory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetPropertyValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetPropertyValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetPropertyValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetRelationshipSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetRelationshipSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetRelationshipSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetRelationshipSummary, context: context)
        AssetHierarchyInfo.validate!(input[:hierarchy_info], context: "#{context}[:hierarchy_info]") unless input[:hierarchy_info].nil?
        Hearth::Validator.validate!(input[:relationship_type], ::String, context: "#{context}[:relationship_type]")
      end
    end

    class AssetStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ErrorDetails.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class AssetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
        AssetStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        AssetHierarchies.validate!(input[:hierarchies], context: "#{context}[:hierarchies]") unless input[:hierarchies].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class AssociateAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAssetsInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:hierarchy_id], ::String, context: "#{context}[:hierarchy_id]")
        Hearth::Validator.validate!(input[:child_asset_id], ::String, context: "#{context}[:child_asset_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class AssociateAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAssetsOutput, context: context)
      end
    end

    class AssociateTimeSeriesToAssetPropertyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTimeSeriesToAssetPropertyInput, context: context)
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class AssociateTimeSeriesToAssetPropertyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTimeSeriesToAssetPropertyOutput, context: context)
      end
    end

    class AssociatedAssetsSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociatedAssetsSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociatedAssetsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatedAssetsSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
        AssetStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        AssetHierarchies.validate!(input[:hierarchies], context: "#{context}[:hierarchies]") unless input[:hierarchies].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class Attribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attribute, context: context)
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class BatchAssociateProjectAssetsErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetErrorDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchAssociateProjectAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateProjectAssetsInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        IDs.validate!(input[:asset_ids], context: "#{context}[:asset_ids]") unless input[:asset_ids].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class BatchAssociateProjectAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateProjectAssetsOutput, context: context)
        BatchAssociateProjectAssetsErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDisassociateProjectAssetsErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetErrorDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDisassociateProjectAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateProjectAssetsInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        IDs.validate!(input[:asset_ids], context: "#{context}[:asset_ids]") unless input[:asset_ids].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class BatchDisassociateProjectAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateProjectAssetsOutput, context: context)
        BatchDisassociateProjectAssetsErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchGetAssetPropertyAggregatesEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyAggregatesEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyAggregatesEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyAggregatesEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
        AggregateTypes.validate!(input[:aggregate_types], context: "#{context}[:aggregate_types]") unless input[:aggregate_types].nil?
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Qualities.validate!(input[:qualities], context: "#{context}[:qualities]") unless input[:qualities].nil?
        Hearth::Validator.validate!(input[:time_ordering], ::String, context: "#{context}[:time_ordering]")
      end
    end

    class BatchGetAssetPropertyAggregatesErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyAggregatesErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyAggregatesErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyAggregatesErrorEntry, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
      end
    end

    class BatchGetAssetPropertyAggregatesErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyAggregatesErrorInfo, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_timestamp], ::Time, context: "#{context}[:error_timestamp]")
      end
    end

    class BatchGetAssetPropertyAggregatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyAggregatesInput, context: context)
        BatchGetAssetPropertyAggregatesEntries.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchGetAssetPropertyAggregatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyAggregatesOutput, context: context)
        BatchGetAssetPropertyAggregatesErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
        BatchGetAssetPropertyAggregatesSuccessEntries.validate!(input[:success_entries], context: "#{context}[:success_entries]") unless input[:success_entries].nil?
        BatchGetAssetPropertyAggregatesSkippedEntries.validate!(input[:skipped_entries], context: "#{context}[:skipped_entries]") unless input[:skipped_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchGetAssetPropertyAggregatesSkippedEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyAggregatesSkippedEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyAggregatesSkippedEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyAggregatesSkippedEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        Hearth::Validator.validate!(input[:completion_status], ::String, context: "#{context}[:completion_status]")
        BatchGetAssetPropertyAggregatesErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
      end
    end

    class BatchGetAssetPropertyAggregatesSuccessEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyAggregatesSuccessEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyAggregatesSuccessEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyAggregatesSuccessEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        AggregatedValues.validate!(input[:aggregated_values], context: "#{context}[:aggregated_values]") unless input[:aggregated_values].nil?
      end
    end

    class BatchGetAssetPropertyValueEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyValueEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyValueEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
      end
    end

    class BatchGetAssetPropertyValueErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyValueErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyValueErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueErrorEntry, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
      end
    end

    class BatchGetAssetPropertyValueErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueErrorInfo, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_timestamp], ::Time, context: "#{context}[:error_timestamp]")
      end
    end

    class BatchGetAssetPropertyValueHistoryEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyValueHistoryEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyValueHistoryEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueHistoryEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Qualities.validate!(input[:qualities], context: "#{context}[:qualities]") unless input[:qualities].nil?
        Hearth::Validator.validate!(input[:time_ordering], ::String, context: "#{context}[:time_ordering]")
      end
    end

    class BatchGetAssetPropertyValueHistoryErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyValueHistoryErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyValueHistoryErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueHistoryErrorEntry, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
      end
    end

    class BatchGetAssetPropertyValueHistoryErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueHistoryErrorInfo, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_timestamp], ::Time, context: "#{context}[:error_timestamp]")
      end
    end

    class BatchGetAssetPropertyValueHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueHistoryInput, context: context)
        BatchGetAssetPropertyValueHistoryEntries.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class BatchGetAssetPropertyValueHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueHistoryOutput, context: context)
        BatchGetAssetPropertyValueHistoryErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
        BatchGetAssetPropertyValueHistorySuccessEntries.validate!(input[:success_entries], context: "#{context}[:success_entries]") unless input[:success_entries].nil?
        BatchGetAssetPropertyValueHistorySkippedEntries.validate!(input[:skipped_entries], context: "#{context}[:skipped_entries]") unless input[:skipped_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchGetAssetPropertyValueHistorySkippedEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyValueHistorySkippedEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyValueHistorySkippedEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueHistorySkippedEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        Hearth::Validator.validate!(input[:completion_status], ::String, context: "#{context}[:completion_status]")
        BatchGetAssetPropertyValueHistoryErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
      end
    end

    class BatchGetAssetPropertyValueHistorySuccessEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyValueHistorySuccessEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyValueHistorySuccessEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueHistorySuccessEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        AssetPropertyValueHistory.validate!(input[:asset_property_value_history], context: "#{context}[:asset_property_value_history]") unless input[:asset_property_value_history].nil?
      end
    end

    class BatchGetAssetPropertyValueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueInput, context: context)
        BatchGetAssetPropertyValueEntries.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchGetAssetPropertyValueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueOutput, context: context)
        BatchGetAssetPropertyValueErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
        BatchGetAssetPropertyValueSuccessEntries.validate!(input[:success_entries], context: "#{context}[:success_entries]") unless input[:success_entries].nil?
        BatchGetAssetPropertyValueSkippedEntries.validate!(input[:skipped_entries], context: "#{context}[:skipped_entries]") unless input[:skipped_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchGetAssetPropertyValueSkippedEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyValueSkippedEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyValueSkippedEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueSkippedEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        Hearth::Validator.validate!(input[:completion_status], ::String, context: "#{context}[:completion_status]")
        BatchGetAssetPropertyValueErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
      end
    end

    class BatchGetAssetPropertyValueSuccessEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetAssetPropertyValueSuccessEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAssetPropertyValueSuccessEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAssetPropertyValueSuccessEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        AssetPropertyValue.validate!(input[:asset_property_value], context: "#{context}[:asset_property_value]") unless input[:asset_property_value].nil?
      end
    end

    class BatchPutAssetPropertyError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutAssetPropertyError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Timestamps.validate!(input[:timestamps], context: "#{context}[:timestamps]") unless input[:timestamps].nil?
      end
    end

    class BatchPutAssetPropertyErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchPutAssetPropertyErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchPutAssetPropertyErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutAssetPropertyErrorEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        BatchPutAssetPropertyErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchPutAssetPropertyErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchPutAssetPropertyError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchPutAssetPropertyValueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutAssetPropertyValueInput, context: context)
        PutAssetPropertyValueEntries.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class BatchPutAssetPropertyValueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutAssetPropertyValueOutput, context: context)
        BatchPutAssetPropertyErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
      end
    end

    class CompositeModelProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompositeModelProperty, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Property.validate!(input[:asset_property], context: "#{context}[:asset_property]") unless input[:asset_property].nil?
      end
    end

    class ConfigurationErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationErrorDetails, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfigurationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ConfigurationErrorDetails.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class ConflictingOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictingOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class CreateAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPolicyInput, context: context)
        Identity.validate!(input[:access_policy_identity], context: "#{context}[:access_policy_identity]") unless input[:access_policy_identity].nil?
        Resource.validate!(input[:access_policy_resource], context: "#{context}[:access_policy_resource]") unless input[:access_policy_resource].nil?
        Hearth::Validator.validate!(input[:access_policy_permission], ::String, context: "#{context}[:access_policy_permission]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:access_policy_id], ::String, context: "#{context}[:access_policy_id]")
        Hearth::Validator.validate!(input[:access_policy_arn], ::String, context: "#{context}[:access_policy_arn]")
      end
    end

    class CreateAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssetInput, context: context)
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:asset_description], ::String, context: "#{context}[:asset_description]")
      end
    end

    class CreateAssetModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssetModelInput, context: context)
        Hearth::Validator.validate!(input[:asset_model_name], ::String, context: "#{context}[:asset_model_name]")
        Hearth::Validator.validate!(input[:asset_model_description], ::String, context: "#{context}[:asset_model_description]")
        AssetModelPropertyDefinitions.validate!(input[:asset_model_properties], context: "#{context}[:asset_model_properties]") unless input[:asset_model_properties].nil?
        AssetModelHierarchyDefinitions.validate!(input[:asset_model_hierarchies], context: "#{context}[:asset_model_hierarchies]") unless input[:asset_model_hierarchies].nil?
        AssetModelCompositeModelDefinitions.validate!(input[:asset_model_composite_models], context: "#{context}[:asset_model_composite_models]") unless input[:asset_model_composite_models].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAssetModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssetModelOutput, context: context)
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Hearth::Validator.validate!(input[:asset_model_arn], ::String, context: "#{context}[:asset_model_arn]")
        AssetModelStatus.validate!(input[:asset_model_status], context: "#{context}[:asset_model_status]") unless input[:asset_model_status].nil?
      end
    end

    class CreateAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssetOutput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:asset_arn], ::String, context: "#{context}[:asset_arn]")
        AssetStatus.validate!(input[:asset_status], context: "#{context}[:asset_status]") unless input[:asset_status].nil?
      end
    end

    class CreateDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDashboardInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:dashboard_name], ::String, context: "#{context}[:dashboard_name]")
        Hearth::Validator.validate!(input[:dashboard_description], ::String, context: "#{context}[:dashboard_description]")
        Hearth::Validator.validate!(input[:dashboard_definition], ::String, context: "#{context}[:dashboard_definition]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDashboardOutput, context: context)
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:dashboard_arn], ::String, context: "#{context}[:dashboard_arn]")
      end
    end

    class CreateGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_name], ::String, context: "#{context}[:gateway_name]")
        GatewayPlatform.validate!(input[:gateway_platform], context: "#{context}[:gateway_platform]") unless input[:gateway_platform].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class CreatePortalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePortalInput, context: context)
        Hearth::Validator.validate!(input[:portal_name], ::String, context: "#{context}[:portal_name]")
        Hearth::Validator.validate!(input[:portal_description], ::String, context: "#{context}[:portal_description]")
        Hearth::Validator.validate!(input[:portal_contact_email], ::String, context: "#{context}[:portal_contact_email]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        ImageFile.validate!(input[:portal_logo_image_file], context: "#{context}[:portal_logo_image_file]") unless input[:portal_logo_image_file].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:portal_auth_mode], ::String, context: "#{context}[:portal_auth_mode]")
        Hearth::Validator.validate!(input[:notification_sender_email], ::String, context: "#{context}[:notification_sender_email]")
        Alarms.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
      end
    end

    class CreatePortalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePortalOutput, context: context)
        Hearth::Validator.validate!(input[:portal_id], ::String, context: "#{context}[:portal_id]")
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:portal_start_url], ::String, context: "#{context}[:portal_start_url]")
        PortalStatus.validate!(input[:portal_status], context: "#{context}[:portal_status]") unless input[:portal_status].nil?
        Hearth::Validator.validate!(input[:sso_application_id], ::String, context: "#{context}[:sso_application_id]")
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:portal_id], ::String, context: "#{context}[:portal_id]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:project_description], ::String, context: "#{context}[:project_description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class CustomerManagedS3Storage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerManagedS3Storage, context: context)
        Hearth::Validator.validate!(input[:s3_resource_arn], ::String, context: "#{context}[:s3_resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class DashboardSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DashboardSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DashboardSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
      end
    end

    class DeleteAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:access_policy_id], ::String, context: "#{context}[:access_policy_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPolicyOutput, context: context)
      end
    end

    class DeleteAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssetInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteAssetModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssetModelInput, context: context)
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteAssetModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssetModelOutput, context: context)
        AssetModelStatus.validate!(input[:asset_model_status], context: "#{context}[:asset_model_status]") unless input[:asset_model_status].nil?
      end
    end

    class DeleteAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssetOutput, context: context)
        AssetStatus.validate!(input[:asset_status], context: "#{context}[:asset_status]") unless input[:asset_status].nil?
      end
    end

    class DeleteDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDashboardInput, context: context)
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDashboardOutput, context: context)
      end
    end

    class DeleteGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
      end
    end

    class DeleteGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayOutput, context: context)
      end
    end

    class DeletePortalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePortalInput, context: context)
        Hearth::Validator.validate!(input[:portal_id], ::String, context: "#{context}[:portal_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeletePortalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePortalOutput, context: context)
        PortalStatus.validate!(input[:portal_status], context: "#{context}[:portal_status]") unless input[:portal_status].nil?
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
      end
    end

    class DeleteTimeSeriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTimeSeriesInput, context: context)
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteTimeSeriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTimeSeriesOutput, context: context)
      end
    end

    class DescribeAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:access_policy_id], ::String, context: "#{context}[:access_policy_id]")
      end
    end

    class DescribeAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccessPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:access_policy_id], ::String, context: "#{context}[:access_policy_id]")
        Hearth::Validator.validate!(input[:access_policy_arn], ::String, context: "#{context}[:access_policy_arn]")
        Identity.validate!(input[:access_policy_identity], context: "#{context}[:access_policy_identity]") unless input[:access_policy_identity].nil?
        Resource.validate!(input[:access_policy_resource], context: "#{context}[:access_policy_resource]") unless input[:access_policy_resource].nil?
        Hearth::Validator.validate!(input[:access_policy_permission], ::String, context: "#{context}[:access_policy_permission]")
        Hearth::Validator.validate!(input[:access_policy_creation_date], ::Time, context: "#{context}[:access_policy_creation_date]")
        Hearth::Validator.validate!(input[:access_policy_last_update_date], ::Time, context: "#{context}[:access_policy_last_update_date]")
      end
    end

    class DescribeAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssetInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
      end
    end

    class DescribeAssetModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssetModelInput, context: context)
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
      end
    end

    class DescribeAssetModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssetModelOutput, context: context)
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Hearth::Validator.validate!(input[:asset_model_arn], ::String, context: "#{context}[:asset_model_arn]")
        Hearth::Validator.validate!(input[:asset_model_name], ::String, context: "#{context}[:asset_model_name]")
        Hearth::Validator.validate!(input[:asset_model_description], ::String, context: "#{context}[:asset_model_description]")
        AssetModelProperties.validate!(input[:asset_model_properties], context: "#{context}[:asset_model_properties]") unless input[:asset_model_properties].nil?
        AssetModelHierarchies.validate!(input[:asset_model_hierarchies], context: "#{context}[:asset_model_hierarchies]") unless input[:asset_model_hierarchies].nil?
        AssetModelCompositeModels.validate!(input[:asset_model_composite_models], context: "#{context}[:asset_model_composite_models]") unless input[:asset_model_composite_models].nil?
        Hearth::Validator.validate!(input[:asset_model_creation_date], ::Time, context: "#{context}[:asset_model_creation_date]")
        Hearth::Validator.validate!(input[:asset_model_last_update_date], ::Time, context: "#{context}[:asset_model_last_update_date]")
        AssetModelStatus.validate!(input[:asset_model_status], context: "#{context}[:asset_model_status]") unless input[:asset_model_status].nil?
      end
    end

    class DescribeAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssetOutput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:asset_arn], ::String, context: "#{context}[:asset_arn]")
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        AssetProperties.validate!(input[:asset_properties], context: "#{context}[:asset_properties]") unless input[:asset_properties].nil?
        AssetHierarchies.validate!(input[:asset_hierarchies], context: "#{context}[:asset_hierarchies]") unless input[:asset_hierarchies].nil?
        AssetCompositeModels.validate!(input[:asset_composite_models], context: "#{context}[:asset_composite_models]") unless input[:asset_composite_models].nil?
        Hearth::Validator.validate!(input[:asset_creation_date], ::Time, context: "#{context}[:asset_creation_date]")
        Hearth::Validator.validate!(input[:asset_last_update_date], ::Time, context: "#{context}[:asset_last_update_date]")
        AssetStatus.validate!(input[:asset_status], context: "#{context}[:asset_status]") unless input[:asset_status].nil?
        Hearth::Validator.validate!(input[:asset_description], ::String, context: "#{context}[:asset_description]")
      end
    end

    class DescribeAssetPropertyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssetPropertyInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
      end
    end

    class DescribeAssetPropertyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssetPropertyOutput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Property.validate!(input[:asset_property], context: "#{context}[:asset_property]") unless input[:asset_property].nil?
        CompositeModelProperty.validate!(input[:composite_model], context: "#{context}[:composite_model]") unless input[:composite_model].nil?
      end
    end

    class DescribeDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDashboardInput, context: context)
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
      end
    end

    class DescribeDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDashboardOutput, context: context)
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:dashboard_arn], ::String, context: "#{context}[:dashboard_arn]")
        Hearth::Validator.validate!(input[:dashboard_name], ::String, context: "#{context}[:dashboard_name]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:dashboard_description], ::String, context: "#{context}[:dashboard_description]")
        Hearth::Validator.validate!(input[:dashboard_definition], ::String, context: "#{context}[:dashboard_definition]")
        Hearth::Validator.validate!(input[:dashboard_creation_date], ::Time, context: "#{context}[:dashboard_creation_date]")
        Hearth::Validator.validate!(input[:dashboard_last_update_date], ::Time, context: "#{context}[:dashboard_last_update_date]")
      end
    end

    class DescribeDefaultEncryptionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDefaultEncryptionConfigurationInput, context: context)
      end
    end

    class DescribeDefaultEncryptionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDefaultEncryptionConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        ConfigurationStatus.validate!(input[:configuration_status], context: "#{context}[:configuration_status]") unless input[:configuration_status].nil?
      end
    end

    class DescribeGatewayCapabilityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGatewayCapabilityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:capability_namespace], ::String, context: "#{context}[:capability_namespace]")
      end
    end

    class DescribeGatewayCapabilityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGatewayCapabilityConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:capability_namespace], ::String, context: "#{context}[:capability_namespace]")
        Hearth::Validator.validate!(input[:capability_configuration], ::String, context: "#{context}[:capability_configuration]")
        Hearth::Validator.validate!(input[:capability_sync_status], ::String, context: "#{context}[:capability_sync_status]")
      end
    end

    class DescribeGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
      end
    end

    class DescribeGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:gateway_name], ::String, context: "#{context}[:gateway_name]")
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        GatewayPlatform.validate!(input[:gateway_platform], context: "#{context}[:gateway_platform]") unless input[:gateway_platform].nil?
        GatewayCapabilitySummaries.validate!(input[:gateway_capability_summaries], context: "#{context}[:gateway_capability_summaries]") unless input[:gateway_capability_summaries].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
      end
    end

    class DescribeLoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingOptionsInput, context: context)
      end
    end

    class DescribeLoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingOptionsOutput, context: context)
        LoggingOptions.validate!(input[:logging_options], context: "#{context}[:logging_options]") unless input[:logging_options].nil?
      end
    end

    class DescribePortalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePortalInput, context: context)
        Hearth::Validator.validate!(input[:portal_id], ::String, context: "#{context}[:portal_id]")
      end
    end

    class DescribePortalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePortalOutput, context: context)
        Hearth::Validator.validate!(input[:portal_id], ::String, context: "#{context}[:portal_id]")
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:portal_name], ::String, context: "#{context}[:portal_name]")
        Hearth::Validator.validate!(input[:portal_description], ::String, context: "#{context}[:portal_description]")
        Hearth::Validator.validate!(input[:portal_client_id], ::String, context: "#{context}[:portal_client_id]")
        Hearth::Validator.validate!(input[:portal_start_url], ::String, context: "#{context}[:portal_start_url]")
        Hearth::Validator.validate!(input[:portal_contact_email], ::String, context: "#{context}[:portal_contact_email]")
        PortalStatus.validate!(input[:portal_status], context: "#{context}[:portal_status]") unless input[:portal_status].nil?
        Hearth::Validator.validate!(input[:portal_creation_date], ::Time, context: "#{context}[:portal_creation_date]")
        Hearth::Validator.validate!(input[:portal_last_update_date], ::Time, context: "#{context}[:portal_last_update_date]")
        ImageLocation.validate!(input[:portal_logo_image_location], context: "#{context}[:portal_logo_image_location]") unless input[:portal_logo_image_location].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:portal_auth_mode], ::String, context: "#{context}[:portal_auth_mode]")
        Hearth::Validator.validate!(input[:notification_sender_email], ::String, context: "#{context}[:notification_sender_email]")
        Alarms.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
      end
    end

    class DescribeProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
      end
    end

    class DescribeProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectOutput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:portal_id], ::String, context: "#{context}[:portal_id]")
        Hearth::Validator.validate!(input[:project_description], ::String, context: "#{context}[:project_description]")
        Hearth::Validator.validate!(input[:project_creation_date], ::Time, context: "#{context}[:project_creation_date]")
        Hearth::Validator.validate!(input[:project_last_update_date], ::Time, context: "#{context}[:project_last_update_date]")
      end
    end

    class DescribeStorageConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStorageConfigurationInput, context: context)
      end
    end

    class DescribeStorageConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStorageConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        MultiLayerStorage.validate!(input[:multi_layer_storage], context: "#{context}[:multi_layer_storage]") unless input[:multi_layer_storage].nil?
        Hearth::Validator.validate!(input[:disassociated_data_storage], ::String, context: "#{context}[:disassociated_data_storage]")
        RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        ConfigurationStatus.validate!(input[:configuration_status], context: "#{context}[:configuration_status]") unless input[:configuration_status].nil?
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
      end
    end

    class DescribeTimeSeriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTimeSeriesInput, context: context)
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
      end
    end

    class DescribeTimeSeriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTimeSeriesOutput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:time_series_id], ::String, context: "#{context}[:time_series_id]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:data_type_spec], ::String, context: "#{context}[:data_type_spec]")
        Hearth::Validator.validate!(input[:time_series_creation_date], ::Time, context: "#{context}[:time_series_creation_date]")
        Hearth::Validator.validate!(input[:time_series_last_update_date], ::Time, context: "#{context}[:time_series_last_update_date]")
      end
    end

    class DetailedError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetailedError, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DetailedErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DetailedError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisassociateAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAssetsInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:hierarchy_id], ::String, context: "#{context}[:hierarchy_id]")
        Hearth::Validator.validate!(input[:child_asset_id], ::String, context: "#{context}[:child_asset_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DisassociateAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAssetsOutput, context: context)
      end
    end

    class DisassociateTimeSeriesFromAssetPropertyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTimeSeriesFromAssetPropertyInput, context: context)
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DisassociateTimeSeriesFromAssetPropertyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTimeSeriesFromAssetPropertyOutput, context: context)
      end
    end

    class ErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetails, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        DetailedErrors.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class ExpressionVariable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpressionVariable, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        VariableValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class ExpressionVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExpressionVariable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ForwardingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForwardingConfig, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class GatewayCapabilitySummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GatewayCapabilitySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GatewayCapabilitySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayCapabilitySummary, context: context)
        Hearth::Validator.validate!(input[:capability_namespace], ::String, context: "#{context}[:capability_namespace]")
        Hearth::Validator.validate!(input[:capability_sync_status], ::String, context: "#{context}[:capability_sync_status]")
      end
    end

    class GatewayPlatform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayPlatform, context: context)
        Greengrass.validate!(input[:greengrass], context: "#{context}[:greengrass]") unless input[:greengrass].nil?
        GreengrassV2.validate!(input[:greengrass_v2], context: "#{context}[:greengrass_v2]") unless input[:greengrass_v2].nil?
      end
    end

    class GatewaySummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GatewaySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GatewaySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewaySummary, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:gateway_name], ::String, context: "#{context}[:gateway_name]")
        GatewayPlatform.validate!(input[:gateway_platform], context: "#{context}[:gateway_platform]") unless input[:gateway_platform].nil?
        GatewayCapabilitySummaries.validate!(input[:gateway_capability_summaries], context: "#{context}[:gateway_capability_summaries]") unless input[:gateway_capability_summaries].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
      end
    end

    class GetAssetPropertyAggregatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssetPropertyAggregatesInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
        AggregateTypes.validate!(input[:aggregate_types], context: "#{context}[:aggregate_types]") unless input[:aggregate_types].nil?
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
        Qualities.validate!(input[:qualities], context: "#{context}[:qualities]") unless input[:qualities].nil?
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:time_ordering], ::String, context: "#{context}[:time_ordering]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetAssetPropertyAggregatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssetPropertyAggregatesOutput, context: context)
        AggregatedValues.validate!(input[:aggregated_values], context: "#{context}[:aggregated_values]") unless input[:aggregated_values].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAssetPropertyValueHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssetPropertyValueHistoryInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Qualities.validate!(input[:qualities], context: "#{context}[:qualities]") unless input[:qualities].nil?
        Hearth::Validator.validate!(input[:time_ordering], ::String, context: "#{context}[:time_ordering]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetAssetPropertyValueHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssetPropertyValueHistoryOutput, context: context)
        AssetPropertyValueHistory.validate!(input[:asset_property_value_history], context: "#{context}[:asset_property_value_history]") unless input[:asset_property_value_history].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAssetPropertyValueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssetPropertyValueInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
      end
    end

    class GetAssetPropertyValueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssetPropertyValueOutput, context: context)
        AssetPropertyValue.validate!(input[:property_value], context: "#{context}[:property_value]") unless input[:property_value].nil?
      end
    end

    class GetInterpolatedAssetPropertyValuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInterpolatedAssetPropertyValuesInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
        Hearth::Validator.validate!(input[:start_time_in_seconds], ::Integer, context: "#{context}[:start_time_in_seconds]")
        Hearth::Validator.validate!(input[:start_time_offset_in_nanos], ::Integer, context: "#{context}[:start_time_offset_in_nanos]")
        Hearth::Validator.validate!(input[:end_time_in_seconds], ::Integer, context: "#{context}[:end_time_in_seconds]")
        Hearth::Validator.validate!(input[:end_time_offset_in_nanos], ::Integer, context: "#{context}[:end_time_offset_in_nanos]")
        Hearth::Validator.validate!(input[:quality], ::String, context: "#{context}[:quality]")
        Hearth::Validator.validate!(input[:interval_in_seconds], ::Integer, context: "#{context}[:interval_in_seconds]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:interval_window_in_seconds], ::Integer, context: "#{context}[:interval_window_in_seconds]")
      end
    end

    class GetInterpolatedAssetPropertyValuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInterpolatedAssetPropertyValuesOutput, context: context)
        InterpolatedAssetPropertyValues.validate!(input[:interpolated_asset_property_values], context: "#{context}[:interpolated_asset_property_values]") unless input[:interpolated_asset_property_values].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Greengrass
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Greengrass, context: context)
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
      end
    end

    class GreengrassV2
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GreengrassV2, context: context)
        Hearth::Validator.validate!(input[:core_device_thing_name], ::String, context: "#{context}[:core_device_thing_name]")
      end
    end

    class GroupIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupIdentity, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class IAMRoleIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IAMRoleIdentity, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class IAMUserIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IAMUserIdentity, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class IDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Identity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Identity, context: context)
        UserIdentity.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
        GroupIdentity.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
        IAMUserIdentity.validate!(input[:iam_user], context: "#{context}[:iam_user]") unless input[:iam_user].nil?
        IAMRoleIdentity.validate!(input[:iam_role], context: "#{context}[:iam_role]") unless input[:iam_role].nil?
      end
    end

    class Image
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Image, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        ImageFile.validate!(input[:file], context: "#{context}[:file]") unless input[:file].nil?
      end
    end

    class ImageFile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageFile, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ImageLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageLocation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InterpolatedAssetPropertyValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InterpolatedAssetPropertyValue, context: context)
        TimeInNanos.validate!(input[:timestamp], context: "#{context}[:timestamp]") unless input[:timestamp].nil?
        Variant.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class InterpolatedAssetPropertyValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InterpolatedAssetPropertyValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class ListAccessPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:iam_arn], ::String, context: "#{context}[:iam_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAccessPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPoliciesOutput, context: context)
        AccessPolicySummaries.validate!(input[:access_policy_summaries], context: "#{context}[:access_policy_summaries]") unless input[:access_policy_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssetModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetModelsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssetModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetModelsOutput, context: context)
        AssetModelSummaries.validate!(input[:asset_model_summaries], context: "#{context}[:asset_model_summaries]") unless input[:asset_model_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssetRelationshipsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetRelationshipsInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:traversal_type], ::String, context: "#{context}[:traversal_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssetRelationshipsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetRelationshipsOutput, context: context)
        AssetRelationshipSummaries.validate!(input[:asset_relationship_summaries], context: "#{context}[:asset_relationship_summaries]") unless input[:asset_relationship_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
      end
    end

    class ListAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssetsOutput, context: context)
        AssetSummaries.validate!(input[:asset_summaries], context: "#{context}[:asset_summaries]") unless input[:asset_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociatedAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedAssetsInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:hierarchy_id], ::String, context: "#{context}[:hierarchy_id]")
        Hearth::Validator.validate!(input[:traversal_direction], ::String, context: "#{context}[:traversal_direction]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssociatedAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedAssetsOutput, context: context)
        AssociatedAssetsSummaries.validate!(input[:asset_summaries], context: "#{context}[:asset_summaries]") unless input[:asset_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDashboardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDashboardsInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDashboardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDashboardsOutput, context: context)
        DashboardSummaries.validate!(input[:dashboard_summaries], context: "#{context}[:dashboard_summaries]") unless input[:dashboard_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewaysInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListGatewaysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewaysOutput, context: context)
        GatewaySummaries.validate!(input[:gateway_summaries], context: "#{context}[:gateway_summaries]") unless input[:gateway_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPortalsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortalsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPortalsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortalsOutput, context: context)
        PortalSummaries.validate!(input[:portal_summaries], context: "#{context}[:portal_summaries]") unless input[:portal_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectAssetsInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProjectAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectAssetsOutput, context: context)
        AssetIDs.validate!(input[:asset_ids], context: "#{context}[:asset_ids]") unless input[:asset_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:portal_id], ::String, context: "#{context}[:portal_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        ProjectSummaries.validate!(input[:project_summaries], context: "#{context}[:project_summaries]") unless input[:project_summaries].nil?
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

    class ListTimeSeriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTimeSeriesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:alias_prefix], ::String, context: "#{context}[:alias_prefix]")
        Hearth::Validator.validate!(input[:time_series_type], ::String, context: "#{context}[:time_series_type]")
      end
    end

    class ListTimeSeriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTimeSeriesOutput, context: context)
        TimeSeriesSummaries.validate!(input[:time_series_summaries], context: "#{context}[:time_series_summaries]") unless input[:time_series_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LoggingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingOptions, context: context)
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
      end
    end

    class Measurement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Measurement, context: context)
        MeasurementProcessingConfig.validate!(input[:processing_config], context: "#{context}[:processing_config]") unless input[:processing_config].nil?
      end
    end

    class MeasurementProcessingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeasurementProcessingConfig, context: context)
        ForwardingConfig.validate!(input[:forwarding_config], context: "#{context}[:forwarding_config]") unless input[:forwarding_config].nil?
      end
    end

    class Metric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metric, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        ExpressionVariables.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        MetricWindow.validate!(input[:window], context: "#{context}[:window]") unless input[:window].nil?
        MetricProcessingConfig.validate!(input[:processing_config], context: "#{context}[:processing_config]") unless input[:processing_config].nil?
      end
    end

    class MetricProcessingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricProcessingConfig, context: context)
        Hearth::Validator.validate!(input[:compute_location], ::String, context: "#{context}[:compute_location]")
      end
    end

    class MetricWindow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricWindow, context: context)
        TumblingWindow.validate!(input[:tumbling], context: "#{context}[:tumbling]") unless input[:tumbling].nil?
      end
    end

    class MonitorErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitorErrorDetails, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MultiLayerStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiLayerStorage, context: context)
        CustomerManagedS3Storage.validate!(input[:customer_managed_s3_storage], context: "#{context}[:customer_managed_s3_storage]") unless input[:customer_managed_s3_storage].nil?
      end
    end

    class PortalResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortalResource, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class PortalStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortalStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        MonitorErrorDetails.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class PortalSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortalSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortalSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortalSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:start_url], ::String, context: "#{context}[:start_url]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        PortalStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ProjectResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectResource, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ProjectSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_update_date], ::Time, context: "#{context}[:last_update_date]")
      end
    end

    class Property
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Property, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        PropertyNotification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        PropertyType.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
      end
    end

    class PropertyNotification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyNotification, context: context)
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class PropertyType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyType, context: context)
        Attribute.validate!(input[:attribute], context: "#{context}[:attribute]") unless input[:attribute].nil?
        Measurement.validate!(input[:measurement], context: "#{context}[:measurement]") unless input[:measurement].nil?
        Transform.validate!(input[:transform], context: "#{context}[:transform]") unless input[:transform].nil?
        Metric.validate!(input[:metric], context: "#{context}[:metric]") unless input[:metric].nil?
      end
    end

    class PutAssetPropertyValueEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PutAssetPropertyValueEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutAssetPropertyValueEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAssetPropertyValueEntry, context: context)
        Hearth::Validator.validate!(input[:entry_id], ::String, context: "#{context}[:entry_id]")
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
        AssetPropertyValues.validate!(input[:property_values], context: "#{context}[:property_values]") unless input[:property_values].nil?
      end
    end

    class PutDefaultEncryptionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDefaultEncryptionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class PutDefaultEncryptionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDefaultEncryptionConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        ConfigurationStatus.validate!(input[:configuration_status], context: "#{context}[:configuration_status]") unless input[:configuration_status].nil?
      end
    end

    class PutLoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingOptionsInput, context: context)
        LoggingOptions.validate!(input[:logging_options], context: "#{context}[:logging_options]") unless input[:logging_options].nil?
      end
    end

    class PutLoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingOptionsOutput, context: context)
      end
    end

    class PutStorageConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStorageConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        MultiLayerStorage.validate!(input[:multi_layer_storage], context: "#{context}[:multi_layer_storage]") unless input[:multi_layer_storage].nil?
        Hearth::Validator.validate!(input[:disassociated_data_storage], ::String, context: "#{context}[:disassociated_data_storage]")
        RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
      end
    end

    class PutStorageConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStorageConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        MultiLayerStorage.validate!(input[:multi_layer_storage], context: "#{context}[:multi_layer_storage]") unless input[:multi_layer_storage].nil?
        Hearth::Validator.validate!(input[:disassociated_data_storage], ::String, context: "#{context}[:disassociated_data_storage]")
        RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        ConfigurationStatus.validate!(input[:configuration_status], context: "#{context}[:configuration_status]") unless input[:configuration_status].nil?
      end
    end

    class Qualities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        PortalResource.validate!(input[:portal], context: "#{context}[:portal]") unless input[:portal].nil?
        ProjectResource.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RetentionPeriod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetentionPeriod, context: context)
        Hearth::Validator.validate!(input[:number_of_days], ::Integer, context: "#{context}[:number_of_days]")
        Hearth::Validator.validate!(input[:unlimited], ::TrueClass, ::FalseClass, context: "#{context}[:unlimited]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimeInNanos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeInNanos, context: context)
        Hearth::Validator.validate!(input[:time_in_seconds], ::Integer, context: "#{context}[:time_in_seconds]")
        Hearth::Validator.validate!(input[:offset_in_nanos], ::Integer, context: "#{context}[:offset_in_nanos]")
      end
    end

    class TimeSeriesSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TimeSeriesSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimeSeriesSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeSeriesSummary, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:time_series_id], ::String, context: "#{context}[:time_series_id]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:data_type_spec], ::String, context: "#{context}[:data_type_spec]")
        Hearth::Validator.validate!(input[:time_series_creation_date], ::Time, context: "#{context}[:time_series_creation_date]")
        Hearth::Validator.validate!(input[:time_series_last_update_date], ::Time, context: "#{context}[:time_series_last_update_date]")
      end
    end

    class Timestamps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TimeInNanos.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class Transform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Transform, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        ExpressionVariables.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        TransformProcessingConfig.validate!(input[:processing_config], context: "#{context}[:processing_config]") unless input[:processing_config].nil?
      end
    end

    class TransformProcessingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformProcessingConfig, context: context)
        Hearth::Validator.validate!(input[:compute_location], ::String, context: "#{context}[:compute_location]")
        ForwardingConfig.validate!(input[:forwarding_config], context: "#{context}[:forwarding_config]") unless input[:forwarding_config].nil?
      end
    end

    class TumblingWindow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TumblingWindow, context: context)
        Hearth::Validator.validate!(input[:interval], ::String, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:offset], ::String, context: "#{context}[:offset]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class UpdateAccessPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccessPolicyInput, context: context)
        Hearth::Validator.validate!(input[:access_policy_id], ::String, context: "#{context}[:access_policy_id]")
        Identity.validate!(input[:access_policy_identity], context: "#{context}[:access_policy_identity]") unless input[:access_policy_identity].nil?
        Resource.validate!(input[:access_policy_resource], context: "#{context}[:access_policy_resource]") unless input[:access_policy_resource].nil?
        Hearth::Validator.validate!(input[:access_policy_permission], ::String, context: "#{context}[:access_policy_permission]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateAccessPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccessPolicyOutput, context: context)
      end
    end

    class UpdateAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssetInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:asset_description], ::String, context: "#{context}[:asset_description]")
      end
    end

    class UpdateAssetModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssetModelInput, context: context)
        Hearth::Validator.validate!(input[:asset_model_id], ::String, context: "#{context}[:asset_model_id]")
        Hearth::Validator.validate!(input[:asset_model_name], ::String, context: "#{context}[:asset_model_name]")
        Hearth::Validator.validate!(input[:asset_model_description], ::String, context: "#{context}[:asset_model_description]")
        AssetModelProperties.validate!(input[:asset_model_properties], context: "#{context}[:asset_model_properties]") unless input[:asset_model_properties].nil?
        AssetModelHierarchies.validate!(input[:asset_model_hierarchies], context: "#{context}[:asset_model_hierarchies]") unless input[:asset_model_hierarchies].nil?
        AssetModelCompositeModels.validate!(input[:asset_model_composite_models], context: "#{context}[:asset_model_composite_models]") unless input[:asset_model_composite_models].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateAssetModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssetModelOutput, context: context)
        AssetModelStatus.validate!(input[:asset_model_status], context: "#{context}[:asset_model_status]") unless input[:asset_model_status].nil?
      end
    end

    class UpdateAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssetOutput, context: context)
        AssetStatus.validate!(input[:asset_status], context: "#{context}[:asset_status]") unless input[:asset_status].nil?
      end
    end

    class UpdateAssetPropertyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssetPropertyInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:property_alias], ::String, context: "#{context}[:property_alias]")
        Hearth::Validator.validate!(input[:property_notification_state], ::String, context: "#{context}[:property_notification_state]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateAssetPropertyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssetPropertyOutput, context: context)
      end
    end

    class UpdateDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDashboardInput, context: context)
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:dashboard_name], ::String, context: "#{context}[:dashboard_name]")
        Hearth::Validator.validate!(input[:dashboard_description], ::String, context: "#{context}[:dashboard_description]")
        Hearth::Validator.validate!(input[:dashboard_definition], ::String, context: "#{context}[:dashboard_definition]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDashboardOutput, context: context)
      end
    end

    class UpdateGatewayCapabilityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayCapabilityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:capability_namespace], ::String, context: "#{context}[:capability_namespace]")
        Hearth::Validator.validate!(input[:capability_configuration], ::String, context: "#{context}[:capability_configuration]")
      end
    end

    class UpdateGatewayCapabilityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayCapabilityConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:capability_namespace], ::String, context: "#{context}[:capability_namespace]")
        Hearth::Validator.validate!(input[:capability_sync_status], ::String, context: "#{context}[:capability_sync_status]")
      end
    end

    class UpdateGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_id], ::String, context: "#{context}[:gateway_id]")
        Hearth::Validator.validate!(input[:gateway_name], ::String, context: "#{context}[:gateway_name]")
      end
    end

    class UpdateGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayOutput, context: context)
      end
    end

    class UpdatePortalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePortalInput, context: context)
        Hearth::Validator.validate!(input[:portal_id], ::String, context: "#{context}[:portal_id]")
        Hearth::Validator.validate!(input[:portal_name], ::String, context: "#{context}[:portal_name]")
        Hearth::Validator.validate!(input[:portal_description], ::String, context: "#{context}[:portal_description]")
        Hearth::Validator.validate!(input[:portal_contact_email], ::String, context: "#{context}[:portal_contact_email]")
        Image.validate!(input[:portal_logo_image], context: "#{context}[:portal_logo_image]") unless input[:portal_logo_image].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:notification_sender_email], ::String, context: "#{context}[:notification_sender_email]")
        Alarms.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
      end
    end

    class UpdatePortalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePortalOutput, context: context)
        PortalStatus.validate!(input[:portal_status], context: "#{context}[:portal_status]") unless input[:portal_status].nil?
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:project_description], ::String, context: "#{context}[:project_description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectOutput, context: context)
      end
    end

    class UserIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserIdentity, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class VariableValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VariableValue, context: context)
        Hearth::Validator.validate!(input[:property_id], ::String, context: "#{context}[:property_id]")
        Hearth::Validator.validate!(input[:hierarchy_id], ::String, context: "#{context}[:hierarchy_id]")
      end
    end

    class Variant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Variant, context: context)
        Hearth::Validator.validate!(input[:string_value], ::String, context: "#{context}[:string_value]")
        Hearth::Validator.validate!(input[:integer_value], ::Integer, context: "#{context}[:integer_value]")
        Hearth::Validator.validate!(input[:double_value], ::Float, context: "#{context}[:double_value]")
        Hearth::Validator.validate!(input[:boolean_value], ::TrueClass, ::FalseClass, context: "#{context}[:boolean_value]")
      end
    end

  end
end
