# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTSiteWise
  module Builders

    # Operation Builder for AssociateAssets
    class AssociateAssets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<assetId>s/associate',
            assetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['hierarchyId'] = input[:hierarchy_id] unless input[:hierarchy_id].nil?
        data['childAssetId'] = input[:child_asset_id] unless input[:child_asset_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateTimeSeriesToAssetProperty
    class AssociateTimeSeriesToAssetProperty
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/timeseries/associate')
        params = Hearth::Query::ParamList.new
        params['alias'] = input[:alias].to_s unless input[:alias].nil?
        params['assetId'] = input[:asset_id].to_s unless input[:asset_id].nil?
        params['propertyId'] = input[:property_id].to_s unless input[:property_id].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchAssociateProjectAssets
    class BatchAssociateProjectAssets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_id].to_s.empty?
          raise ArgumentError, "HTTP label :project_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectId>s/assets/associate',
            projectId: Hearth::HTTP.uri_escape(input[:project_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assetIds'] = Builders::IDs.build(input[:asset_ids]) unless input[:asset_ids].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IDs
    class IDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDisassociateProjectAssets
    class BatchDisassociateProjectAssets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_id].to_s.empty?
          raise ArgumentError, "HTTP label :project_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectId>s/assets/disassociate',
            projectId: Hearth::HTTP.uri_escape(input[:project_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assetIds'] = Builders::IDs.build(input[:asset_ids]) unless input[:asset_ids].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchGetAssetPropertyAggregates
    class BatchGetAssetPropertyAggregates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/properties/batch/aggregates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entries'] = Builders::BatchGetAssetPropertyAggregatesEntries.build(input[:entries]) unless input[:entries].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchGetAssetPropertyAggregatesEntries
    class BatchGetAssetPropertyAggregatesEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BatchGetAssetPropertyAggregatesEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchGetAssetPropertyAggregatesEntry
    class BatchGetAssetPropertyAggregatesEntry
      def self.build(input)
        data = {}
        data['entryId'] = input[:entry_id] unless input[:entry_id].nil?
        data['assetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['propertyId'] = input[:property_id] unless input[:property_id].nil?
        data['propertyAlias'] = input[:property_alias] unless input[:property_alias].nil?
        data['aggregateTypes'] = Builders::AggregateTypes.build(input[:aggregate_types]) unless input[:aggregate_types].nil?
        data['resolution'] = input[:resolution] unless input[:resolution].nil?
        data['startDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_date]).to_i unless input[:start_date].nil?
        data['endDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_date]).to_i unless input[:end_date].nil?
        data['qualities'] = Builders::Qualities.build(input[:qualities]) unless input[:qualities].nil?
        data['timeOrdering'] = input[:time_ordering] unless input[:time_ordering].nil?
        data
      end
    end

    # List Builder for Qualities
    class Qualities
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AggregateTypes
    class AggregateTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetAssetPropertyValue
    class BatchGetAssetPropertyValue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/properties/batch/latest')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entries'] = Builders::BatchGetAssetPropertyValueEntries.build(input[:entries]) unless input[:entries].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchGetAssetPropertyValueEntries
    class BatchGetAssetPropertyValueEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BatchGetAssetPropertyValueEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchGetAssetPropertyValueEntry
    class BatchGetAssetPropertyValueEntry
      def self.build(input)
        data = {}
        data['entryId'] = input[:entry_id] unless input[:entry_id].nil?
        data['assetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['propertyId'] = input[:property_id] unless input[:property_id].nil?
        data['propertyAlias'] = input[:property_alias] unless input[:property_alias].nil?
        data
      end
    end

    # Operation Builder for BatchGetAssetPropertyValueHistory
    class BatchGetAssetPropertyValueHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/properties/batch/history')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entries'] = Builders::BatchGetAssetPropertyValueHistoryEntries.build(input[:entries]) unless input[:entries].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchGetAssetPropertyValueHistoryEntries
    class BatchGetAssetPropertyValueHistoryEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BatchGetAssetPropertyValueHistoryEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchGetAssetPropertyValueHistoryEntry
    class BatchGetAssetPropertyValueHistoryEntry
      def self.build(input)
        data = {}
        data['entryId'] = input[:entry_id] unless input[:entry_id].nil?
        data['assetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['propertyId'] = input[:property_id] unless input[:property_id].nil?
        data['propertyAlias'] = input[:property_alias] unless input[:property_alias].nil?
        data['startDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_date]).to_i unless input[:start_date].nil?
        data['endDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_date]).to_i unless input[:end_date].nil?
        data['qualities'] = Builders::Qualities.build(input[:qualities]) unless input[:qualities].nil?
        data['timeOrdering'] = input[:time_ordering] unless input[:time_ordering].nil?
        data
      end
    end

    # Operation Builder for BatchPutAssetPropertyValue
    class BatchPutAssetPropertyValue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/properties')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entries'] = Builders::PutAssetPropertyValueEntries.build(input[:entries]) unless input[:entries].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PutAssetPropertyValueEntries
    class PutAssetPropertyValueEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PutAssetPropertyValueEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PutAssetPropertyValueEntry
    class PutAssetPropertyValueEntry
      def self.build(input)
        data = {}
        data['entryId'] = input[:entry_id] unless input[:entry_id].nil?
        data['assetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['propertyId'] = input[:property_id] unless input[:property_id].nil?
        data['propertyAlias'] = input[:property_alias] unless input[:property_alias].nil?
        data['propertyValues'] = Builders::AssetPropertyValues.build(input[:property_values]) unless input[:property_values].nil?
        data
      end
    end

    # List Builder for AssetPropertyValues
    class AssetPropertyValues
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetPropertyValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetPropertyValue
    class AssetPropertyValue
      def self.build(input)
        data = {}
        data['value'] = Builders::Variant.build(input[:value]) unless input[:value].nil?
        data['timestamp'] = Builders::TimeInNanos.build(input[:timestamp]) unless input[:timestamp].nil?
        data['quality'] = input[:quality] unless input[:quality].nil?
        data
      end
    end

    # Structure Builder for TimeInNanos
    class TimeInNanos
      def self.build(input)
        data = {}
        data['timeInSeconds'] = input[:time_in_seconds] unless input[:time_in_seconds].nil?
        data['offsetInNanos'] = input[:offset_in_nanos] unless input[:offset_in_nanos].nil?
        data
      end
    end

    # Structure Builder for Variant
    class Variant
      def self.build(input)
        data = {}
        data['stringValue'] = input[:string_value] unless input[:string_value].nil?
        data['integerValue'] = input[:integer_value] unless input[:integer_value].nil?
        data['doubleValue'] = Hearth::NumberHelper.serialize(input[:double_value]) unless input[:double_value].nil?
        data['booleanValue'] = input[:boolean_value] unless input[:boolean_value].nil?
        data
      end
    end

    # Operation Builder for CreateAccessPolicy
    class CreateAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/access-policies')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accessPolicyIdentity'] = Builders::Identity.build(input[:access_policy_identity]) unless input[:access_policy_identity].nil?
        data['accessPolicyResource'] = Builders::Resource.build(input[:access_policy_resource]) unless input[:access_policy_resource].nil?
        data['accessPolicyPermission'] = input[:access_policy_permission] unless input[:access_policy_permission].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
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

    # Structure Builder for Resource
    class Resource
      def self.build(input)
        data = {}
        data['portal'] = Builders::PortalResource.build(input[:portal]) unless input[:portal].nil?
        data['project'] = Builders::ProjectResource.build(input[:project]) unless input[:project].nil?
        data
      end
    end

    # Structure Builder for ProjectResource
    class ProjectResource
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Structure Builder for PortalResource
    class PortalResource
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Structure Builder for Identity
    class Identity
      def self.build(input)
        data = {}
        data['user'] = Builders::UserIdentity.build(input[:user]) unless input[:user].nil?
        data['group'] = Builders::GroupIdentity.build(input[:group]) unless input[:group].nil?
        data['iamUser'] = Builders::IAMUserIdentity.build(input[:iam_user]) unless input[:iam_user].nil?
        data['iamRole'] = Builders::IAMRoleIdentity.build(input[:iam_role]) unless input[:iam_role].nil?
        data
      end
    end

    # Structure Builder for IAMRoleIdentity
    class IAMRoleIdentity
      def self.build(input)
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Structure Builder for IAMUserIdentity
    class IAMUserIdentity
      def self.build(input)
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Structure Builder for GroupIdentity
    class GroupIdentity
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Structure Builder for UserIdentity
    class UserIdentity
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Operation Builder for CreateAsset
    class CreateAsset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/assets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assetName'] = input[:asset_name] unless input[:asset_name].nil?
        data['assetModelId'] = input[:asset_model_id] unless input[:asset_model_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['assetDescription'] = input[:asset_description] unless input[:asset_description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAssetModel
    class CreateAssetModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/asset-models')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assetModelName'] = input[:asset_model_name] unless input[:asset_model_name].nil?
        data['assetModelDescription'] = input[:asset_model_description] unless input[:asset_model_description].nil?
        data['assetModelProperties'] = Builders::AssetModelPropertyDefinitions.build(input[:asset_model_properties]) unless input[:asset_model_properties].nil?
        data['assetModelHierarchies'] = Builders::AssetModelHierarchyDefinitions.build(input[:asset_model_hierarchies]) unless input[:asset_model_hierarchies].nil?
        data['assetModelCompositeModels'] = Builders::AssetModelCompositeModelDefinitions.build(input[:asset_model_composite_models]) unless input[:asset_model_composite_models].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssetModelCompositeModelDefinitions
    class AssetModelCompositeModelDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetModelCompositeModelDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetModelCompositeModelDefinition
    class AssetModelCompositeModelDefinition
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['properties'] = Builders::AssetModelPropertyDefinitions.build(input[:properties]) unless input[:properties].nil?
        data
      end
    end

    # List Builder for AssetModelPropertyDefinitions
    class AssetModelPropertyDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetModelPropertyDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetModelPropertyDefinition
    class AssetModelPropertyDefinition
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['dataType'] = input[:data_type] unless input[:data_type].nil?
        data['dataTypeSpec'] = input[:data_type_spec] unless input[:data_type_spec].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data['type'] = Builders::PropertyType.build(input[:type]) unless input[:type].nil?
        data
      end
    end

    # Structure Builder for PropertyType
    class PropertyType
      def self.build(input)
        data = {}
        data['attribute'] = Builders::Attribute.build(input[:attribute]) unless input[:attribute].nil?
        data['measurement'] = Builders::Measurement.build(input[:measurement]) unless input[:measurement].nil?
        data['transform'] = Builders::Transform.build(input[:transform]) unless input[:transform].nil?
        data['metric'] = Builders::Metric.build(input[:metric]) unless input[:metric].nil?
        data
      end
    end

    # Structure Builder for Metric
    class Metric
      def self.build(input)
        data = {}
        data['expression'] = input[:expression] unless input[:expression].nil?
        data['variables'] = Builders::ExpressionVariables.build(input[:variables]) unless input[:variables].nil?
        data['window'] = Builders::MetricWindow.build(input[:window]) unless input[:window].nil?
        data['processingConfig'] = Builders::MetricProcessingConfig.build(input[:processing_config]) unless input[:processing_config].nil?
        data
      end
    end

    # Structure Builder for MetricProcessingConfig
    class MetricProcessingConfig
      def self.build(input)
        data = {}
        data['computeLocation'] = input[:compute_location] unless input[:compute_location].nil?
        data
      end
    end

    # Structure Builder for MetricWindow
    class MetricWindow
      def self.build(input)
        data = {}
        data['tumbling'] = Builders::TumblingWindow.build(input[:tumbling]) unless input[:tumbling].nil?
        data
      end
    end

    # Structure Builder for TumblingWindow
    class TumblingWindow
      def self.build(input)
        data = {}
        data['interval'] = input[:interval] unless input[:interval].nil?
        data['offset'] = input[:offset] unless input[:offset].nil?
        data
      end
    end

    # List Builder for ExpressionVariables
    class ExpressionVariables
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ExpressionVariable.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ExpressionVariable
    class ExpressionVariable
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = Builders::VariableValue.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Structure Builder for VariableValue
    class VariableValue
      def self.build(input)
        data = {}
        data['propertyId'] = input[:property_id] unless input[:property_id].nil?
        data['hierarchyId'] = input[:hierarchy_id] unless input[:hierarchy_id].nil?
        data
      end
    end

    # Structure Builder for Transform
    class Transform
      def self.build(input)
        data = {}
        data['expression'] = input[:expression] unless input[:expression].nil?
        data['variables'] = Builders::ExpressionVariables.build(input[:variables]) unless input[:variables].nil?
        data['processingConfig'] = Builders::TransformProcessingConfig.build(input[:processing_config]) unless input[:processing_config].nil?
        data
      end
    end

    # Structure Builder for TransformProcessingConfig
    class TransformProcessingConfig
      def self.build(input)
        data = {}
        data['computeLocation'] = input[:compute_location] unless input[:compute_location].nil?
        data['forwardingConfig'] = Builders::ForwardingConfig.build(input[:forwarding_config]) unless input[:forwarding_config].nil?
        data
      end
    end

    # Structure Builder for ForwardingConfig
    class ForwardingConfig
      def self.build(input)
        data = {}
        data['state'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # Structure Builder for Measurement
    class Measurement
      def self.build(input)
        data = {}
        data['processingConfig'] = Builders::MeasurementProcessingConfig.build(input[:processing_config]) unless input[:processing_config].nil?
        data
      end
    end

    # Structure Builder for MeasurementProcessingConfig
    class MeasurementProcessingConfig
      def self.build(input)
        data = {}
        data['forwardingConfig'] = Builders::ForwardingConfig.build(input[:forwarding_config]) unless input[:forwarding_config].nil?
        data
      end
    end

    # Structure Builder for Attribute
    class Attribute
      def self.build(input)
        data = {}
        data['defaultValue'] = input[:default_value] unless input[:default_value].nil?
        data
      end
    end

    # List Builder for AssetModelHierarchyDefinitions
    class AssetModelHierarchyDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetModelHierarchyDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetModelHierarchyDefinition
    class AssetModelHierarchyDefinition
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['childAssetModelId'] = input[:child_asset_model_id] unless input[:child_asset_model_id].nil?
        data
      end
    end

    # Operation Builder for CreateDashboard
    class CreateDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/dashboards')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['projectId'] = input[:project_id] unless input[:project_id].nil?
        data['dashboardName'] = input[:dashboard_name] unless input[:dashboard_name].nil?
        data['dashboardDescription'] = input[:dashboard_description] unless input[:dashboard_description].nil?
        data['dashboardDefinition'] = input[:dashboard_definition] unless input[:dashboard_definition].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateGateway
    class CreateGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/20200301/gateways')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['gatewayName'] = input[:gateway_name] unless input[:gateway_name].nil?
        data['gatewayPlatform'] = Builders::GatewayPlatform.build(input[:gateway_platform]) unless input[:gateway_platform].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for GatewayPlatform
    class GatewayPlatform
      def self.build(input)
        data = {}
        data['greengrass'] = Builders::Greengrass.build(input[:greengrass]) unless input[:greengrass].nil?
        data['greengrassV2'] = Builders::GreengrassV2.build(input[:greengrass_v2]) unless input[:greengrass_v2].nil?
        data
      end
    end

    # Structure Builder for GreengrassV2
    class GreengrassV2
      def self.build(input)
        data = {}
        data['coreDeviceThingName'] = input[:core_device_thing_name] unless input[:core_device_thing_name].nil?
        data
      end
    end

    # Structure Builder for Greengrass
    class Greengrass
      def self.build(input)
        data = {}
        data['groupArn'] = input[:group_arn] unless input[:group_arn].nil?
        data
      end
    end

    # Operation Builder for CreatePortal
    class CreatePortal
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/portals')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['portalName'] = input[:portal_name] unless input[:portal_name].nil?
        data['portalDescription'] = input[:portal_description] unless input[:portal_description].nil?
        data['portalContactEmail'] = input[:portal_contact_email] unless input[:portal_contact_email].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['portalLogoImageFile'] = Builders::ImageFile.build(input[:portal_logo_image_file]) unless input[:portal_logo_image_file].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['portalAuthMode'] = input[:portal_auth_mode] unless input[:portal_auth_mode].nil?
        data['notificationSenderEmail'] = input[:notification_sender_email] unless input[:notification_sender_email].nil?
        data['alarms'] = Builders::Alarms.build(input[:alarms]) unless input[:alarms].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Alarms
    class Alarms
      def self.build(input)
        data = {}
        data['alarmRoleArn'] = input[:alarm_role_arn] unless input[:alarm_role_arn].nil?
        data['notificationLambdaArn'] = input[:notification_lambda_arn] unless input[:notification_lambda_arn].nil?
        data
      end
    end

    # Structure Builder for ImageFile
    class ImageFile
      def self.build(input)
        data = {}
        data['data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['portalId'] = input[:portal_id] unless input[:portal_id].nil?
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        data['projectDescription'] = input[:project_description] unless input[:project_description].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAccessPolicy
    class DeleteAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:access_policy_id].to_s.empty?
          raise ArgumentError, "HTTP label :access_policy_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/access-policies/%<accessPolicyId>s',
            accessPolicyId: Hearth::HTTP.uri_escape(input[:access_policy_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAsset
    class DeleteAsset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<assetId>s',
            assetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAssetModel
    class DeleteAssetModel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:asset_model_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_model_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/asset-models/%<assetModelId>s',
            assetModelId: Hearth::HTTP.uri_escape(input[:asset_model_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDashboard
    class DeleteDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dashboards/%<dashboardId>s',
            dashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteGateway
    class DeleteGateway
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:gateway_id].to_s.empty?
          raise ArgumentError, "HTTP label :gateway_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/20200301/gateways/%<gatewayId>s',
            gatewayId: Hearth::HTTP.uri_escape(input[:gateway_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePortal
    class DeletePortal
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:portal_id].to_s.empty?
          raise ArgumentError, "HTTP label :portal_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalId>s',
            portalId: Hearth::HTTP.uri_escape(input[:portal_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project_id].to_s.empty?
          raise ArgumentError, "HTTP label :project_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectId>s',
            projectId: Hearth::HTTP.uri_escape(input[:project_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTimeSeries
    class DeleteTimeSeries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/timeseries/delete')
        params = Hearth::Query::ParamList.new
        params['alias'] = input[:alias].to_s unless input[:alias].nil?
        params['assetId'] = input[:asset_id].to_s unless input[:asset_id].nil?
        params['propertyId'] = input[:property_id].to_s unless input[:property_id].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccessPolicy
    class DescribeAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:access_policy_id].to_s.empty?
          raise ArgumentError, "HTTP label :access_policy_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/access-policies/%<accessPolicyId>s',
            accessPolicyId: Hearth::HTTP.uri_escape(input[:access_policy_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAsset
    class DescribeAsset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<assetId>s',
            assetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAssetModel
    class DescribeAssetModel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:asset_model_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_model_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/asset-models/%<assetModelId>s',
            assetModelId: Hearth::HTTP.uri_escape(input[:asset_model_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAssetProperty
    class DescribeAssetProperty
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        if input[:property_id].to_s.empty?
          raise ArgumentError, "HTTP label :property_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<assetId>s/properties/%<propertyId>s',
            assetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s),
            propertyId: Hearth::HTTP.uri_escape(input[:property_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDashboard
    class DescribeDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dashboards/%<dashboardId>s',
            dashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDefaultEncryptionConfiguration
    class DescribeDefaultEncryptionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/configuration/account/encryption')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeGateway
    class DescribeGateway
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:gateway_id].to_s.empty?
          raise ArgumentError, "HTTP label :gateway_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/20200301/gateways/%<gatewayId>s',
            gatewayId: Hearth::HTTP.uri_escape(input[:gateway_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeGatewayCapabilityConfiguration
    class DescribeGatewayCapabilityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:gateway_id].to_s.empty?
          raise ArgumentError, "HTTP label :gateway_id cannot be nil or empty."
        end
        if input[:capability_namespace].to_s.empty?
          raise ArgumentError, "HTTP label :capability_namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/20200301/gateways/%<gatewayId>s/capability/%<capabilityNamespace>s',
            gatewayId: Hearth::HTTP.uri_escape(input[:gateway_id].to_s),
            capabilityNamespace: Hearth::HTTP.uri_escape(input[:capability_namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeLoggingOptions
    class DescribeLoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/logging')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePortal
    class DescribePortal
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:portal_id].to_s.empty?
          raise ArgumentError, "HTTP label :portal_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalId>s',
            portalId: Hearth::HTTP.uri_escape(input[:portal_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProject
    class DescribeProject
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_id].to_s.empty?
          raise ArgumentError, "HTTP label :project_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectId>s',
            projectId: Hearth::HTTP.uri_escape(input[:project_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeStorageConfiguration
    class DescribeStorageConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/configuration/account/storage')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeTimeSeries
    class DescribeTimeSeries
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/timeseries/describe')
        params = Hearth::Query::ParamList.new
        params['alias'] = input[:alias].to_s unless input[:alias].nil?
        params['assetId'] = input[:asset_id].to_s unless input[:asset_id].nil?
        params['propertyId'] = input[:property_id].to_s unless input[:property_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateAssets
    class DisassociateAssets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<assetId>s/disassociate',
            assetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['hierarchyId'] = input[:hierarchy_id] unless input[:hierarchy_id].nil?
        data['childAssetId'] = input[:child_asset_id] unless input[:child_asset_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateTimeSeriesFromAssetProperty
    class DisassociateTimeSeriesFromAssetProperty
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/timeseries/disassociate')
        params = Hearth::Query::ParamList.new
        params['alias'] = input[:alias].to_s unless input[:alias].nil?
        params['assetId'] = input[:asset_id].to_s unless input[:asset_id].nil?
        params['propertyId'] = input[:property_id].to_s unless input[:property_id].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAssetPropertyAggregates
    class GetAssetPropertyAggregates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/properties/aggregates')
        params = Hearth::Query::ParamList.new
        params['assetId'] = input[:asset_id].to_s unless input[:asset_id].nil?
        params['propertyId'] = input[:property_id].to_s unless input[:property_id].nil?
        params['propertyAlias'] = input[:property_alias].to_s unless input[:property_alias].nil?
        unless input[:aggregate_types].nil? || input[:aggregate_types].empty?
          params['aggregateTypes'] = input[:aggregate_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['resolution'] = input[:resolution].to_s unless input[:resolution].nil?
        unless input[:qualities].nil? || input[:qualities].empty?
          params['qualities'] = input[:qualities].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['startDate'] = Hearth::TimeHelper.to_date_time(input[:start_date]) unless input[:start_date].nil?
        params['endDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        params['timeOrdering'] = input[:time_ordering].to_s unless input[:time_ordering].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssetPropertyValue
    class GetAssetPropertyValue
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/properties/latest')
        params = Hearth::Query::ParamList.new
        params['assetId'] = input[:asset_id].to_s unless input[:asset_id].nil?
        params['propertyId'] = input[:property_id].to_s unless input[:property_id].nil?
        params['propertyAlias'] = input[:property_alias].to_s unless input[:property_alias].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssetPropertyValueHistory
    class GetAssetPropertyValueHistory
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/properties/history')
        params = Hearth::Query::ParamList.new
        params['assetId'] = input[:asset_id].to_s unless input[:asset_id].nil?
        params['propertyId'] = input[:property_id].to_s unless input[:property_id].nil?
        params['propertyAlias'] = input[:property_alias].to_s unless input[:property_alias].nil?
        params['startDate'] = Hearth::TimeHelper.to_date_time(input[:start_date]) unless input[:start_date].nil?
        params['endDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        unless input[:qualities].nil? || input[:qualities].empty?
          params['qualities'] = input[:qualities].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['timeOrdering'] = input[:time_ordering].to_s unless input[:time_ordering].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetInterpolatedAssetPropertyValues
    class GetInterpolatedAssetPropertyValues
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/properties/interpolated')
        params = Hearth::Query::ParamList.new
        params['assetId'] = input[:asset_id].to_s unless input[:asset_id].nil?
        params['propertyId'] = input[:property_id].to_s unless input[:property_id].nil?
        params['propertyAlias'] = input[:property_alias].to_s unless input[:property_alias].nil?
        params['startTimeInSeconds'] = input[:start_time_in_seconds].to_s unless input[:start_time_in_seconds].nil?
        params['startTimeOffsetInNanos'] = input[:start_time_offset_in_nanos].to_s unless input[:start_time_offset_in_nanos].nil?
        params['endTimeInSeconds'] = input[:end_time_in_seconds].to_s unless input[:end_time_in_seconds].nil?
        params['endTimeOffsetInNanos'] = input[:end_time_offset_in_nanos].to_s unless input[:end_time_offset_in_nanos].nil?
        params['quality'] = input[:quality].to_s unless input[:quality].nil?
        params['intervalInSeconds'] = input[:interval_in_seconds].to_s unless input[:interval_in_seconds].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['type'] = input[:type].to_s unless input[:type].nil?
        params['intervalWindowInSeconds'] = input[:interval_window_in_seconds].to_s unless input[:interval_window_in_seconds].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAccessPolicies
    class ListAccessPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/access-policies')
        params = Hearth::Query::ParamList.new
        params['identityType'] = input[:identity_type].to_s unless input[:identity_type].nil?
        params['identityId'] = input[:identity_id].to_s unless input[:identity_id].nil?
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params['resourceId'] = input[:resource_id].to_s unless input[:resource_id].nil?
        params['iamArn'] = input[:iam_arn].to_s unless input[:iam_arn].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssetModels
    class ListAssetModels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/asset-models')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssetRelationships
    class ListAssetRelationships
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<assetId>s/assetRelationships',
            assetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['traversalType'] = input[:traversal_type].to_s unless input[:traversal_type].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssets
    class ListAssets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assets')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['assetModelId'] = input[:asset_model_id].to_s unless input[:asset_model_id].nil?
        params['filter'] = input[:filter].to_s unless input[:filter].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssociatedAssets
    class ListAssociatedAssets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<assetId>s/hierarchies',
            assetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['hierarchyId'] = input[:hierarchy_id].to_s unless input[:hierarchy_id].nil?
        params['traversalDirection'] = input[:traversal_direction].to_s unless input[:traversal_direction].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDashboards
    class ListDashboards
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/dashboards')
        params = Hearth::Query::ParamList.new
        params['projectId'] = input[:project_id].to_s unless input[:project_id].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGateways
    class ListGateways
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/20200301/gateways')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPortals
    class ListPortals
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/portals')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProjectAssets
    class ListProjectAssets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_id].to_s.empty?
          raise ArgumentError, "HTTP label :project_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectId>s/assets',
            projectId: Hearth::HTTP.uri_escape(input[:project_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
        params['portalId'] = input[:portal_id].to_s unless input[:portal_id].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTimeSeries
    class ListTimeSeries
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/timeseries')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['assetId'] = input[:asset_id].to_s unless input[:asset_id].nil?
        params['aliasPrefix'] = input[:alias_prefix].to_s unless input[:alias_prefix].nil?
        params['timeSeriesType'] = input[:time_series_type].to_s unless input[:time_series_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutDefaultEncryptionConfiguration
    class PutDefaultEncryptionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/configuration/account/encryption')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['encryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutLoggingOptions
    class PutLoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/logging')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['loggingOptions'] = Builders::LoggingOptions.build(input[:logging_options]) unless input[:logging_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoggingOptions
    class LoggingOptions
      def self.build(input)
        data = {}
        data['level'] = input[:level] unless input[:level].nil?
        data
      end
    end

    # Operation Builder for PutStorageConfiguration
    class PutStorageConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/configuration/account/storage')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['storageType'] = input[:storage_type] unless input[:storage_type].nil?
        data['multiLayerStorage'] = Builders::MultiLayerStorage.build(input[:multi_layer_storage]) unless input[:multi_layer_storage].nil?
        data['disassociatedDataStorage'] = input[:disassociated_data_storage] unless input[:disassociated_data_storage].nil?
        data['retentionPeriod'] = Builders::RetentionPeriod.build(input[:retention_period]) unless input[:retention_period].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RetentionPeriod
    class RetentionPeriod
      def self.build(input)
        data = {}
        data['numberOfDays'] = input[:number_of_days] unless input[:number_of_days].nil?
        data['unlimited'] = input[:unlimited] unless input[:unlimited].nil?
        data
      end
    end

    # Structure Builder for MultiLayerStorage
    class MultiLayerStorage
      def self.build(input)
        data = {}
        data['customerManagedS3Storage'] = Builders::CustomerManagedS3Storage.build(input[:customer_managed_s3_storage]) unless input[:customer_managed_s3_storage].nil?
        data
      end
    end

    # Structure Builder for CustomerManagedS3Storage
    class CustomerManagedS3Storage
      def self.build(input)
        data = {}
        data['s3ResourceArn'] = input[:s3_resource_arn] unless input[:s3_resource_arn].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
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
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
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

    # Operation Builder for UpdateAccessPolicy
    class UpdateAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:access_policy_id].to_s.empty?
          raise ArgumentError, "HTTP label :access_policy_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/access-policies/%<accessPolicyId>s',
            accessPolicyId: Hearth::HTTP.uri_escape(input[:access_policy_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accessPolicyIdentity'] = Builders::Identity.build(input[:access_policy_identity]) unless input[:access_policy_identity].nil?
        data['accessPolicyResource'] = Builders::Resource.build(input[:access_policy_resource]) unless input[:access_policy_resource].nil?
        data['accessPolicyPermission'] = input[:access_policy_permission] unless input[:access_policy_permission].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAsset
    class UpdateAsset
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<assetId>s',
            assetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assetName'] = input[:asset_name] unless input[:asset_name].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['assetDescription'] = input[:asset_description] unless input[:asset_description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAssetModel
    class UpdateAssetModel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:asset_model_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_model_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/asset-models/%<assetModelId>s',
            assetModelId: Hearth::HTTP.uri_escape(input[:asset_model_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assetModelName'] = input[:asset_model_name] unless input[:asset_model_name].nil?
        data['assetModelDescription'] = input[:asset_model_description] unless input[:asset_model_description].nil?
        data['assetModelProperties'] = Builders::AssetModelProperties.build(input[:asset_model_properties]) unless input[:asset_model_properties].nil?
        data['assetModelHierarchies'] = Builders::AssetModelHierarchies.build(input[:asset_model_hierarchies]) unless input[:asset_model_hierarchies].nil?
        data['assetModelCompositeModels'] = Builders::AssetModelCompositeModels.build(input[:asset_model_composite_models]) unless input[:asset_model_composite_models].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssetModelCompositeModels
    class AssetModelCompositeModels
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetModelCompositeModel.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetModelCompositeModel
    class AssetModelCompositeModel
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['properties'] = Builders::AssetModelProperties.build(input[:properties]) unless input[:properties].nil?
        data
      end
    end

    # List Builder for AssetModelProperties
    class AssetModelProperties
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetModelProperty.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetModelProperty
    class AssetModelProperty
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['dataType'] = input[:data_type] unless input[:data_type].nil?
        data['dataTypeSpec'] = input[:data_type_spec] unless input[:data_type_spec].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data['type'] = Builders::PropertyType.build(input[:type]) unless input[:type].nil?
        data
      end
    end

    # List Builder for AssetModelHierarchies
    class AssetModelHierarchies
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetModelHierarchy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetModelHierarchy
    class AssetModelHierarchy
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['childAssetModelId'] = input[:child_asset_model_id] unless input[:child_asset_model_id].nil?
        data
      end
    end

    # Operation Builder for UpdateAssetProperty
    class UpdateAssetProperty
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        if input[:property_id].to_s.empty?
          raise ArgumentError, "HTTP label :property_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assets/%<assetId>s/properties/%<propertyId>s',
            assetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s),
            propertyId: Hearth::HTTP.uri_escape(input[:property_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['propertyAlias'] = input[:property_alias] unless input[:property_alias].nil?
        data['propertyNotificationState'] = input[:property_notification_state] unless input[:property_notification_state].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDashboard
    class UpdateDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dashboards/%<dashboardId>s',
            dashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['dashboardName'] = input[:dashboard_name] unless input[:dashboard_name].nil?
        data['dashboardDescription'] = input[:dashboard_description] unless input[:dashboard_description].nil?
        data['dashboardDefinition'] = input[:dashboard_definition] unless input[:dashboard_definition].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGateway
    class UpdateGateway
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:gateway_id].to_s.empty?
          raise ArgumentError, "HTTP label :gateway_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/20200301/gateways/%<gatewayId>s',
            gatewayId: Hearth::HTTP.uri_escape(input[:gateway_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['gatewayName'] = input[:gateway_name] unless input[:gateway_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGatewayCapabilityConfiguration
    class UpdateGatewayCapabilityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:gateway_id].to_s.empty?
          raise ArgumentError, "HTTP label :gateway_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/20200301/gateways/%<gatewayId>s/capability',
            gatewayId: Hearth::HTTP.uri_escape(input[:gateway_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['capabilityNamespace'] = input[:capability_namespace] unless input[:capability_namespace].nil?
        data['capabilityConfiguration'] = input[:capability_configuration] unless input[:capability_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePortal
    class UpdatePortal
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:portal_id].to_s.empty?
          raise ArgumentError, "HTTP label :portal_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalId>s',
            portalId: Hearth::HTTP.uri_escape(input[:portal_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['portalName'] = input[:portal_name] unless input[:portal_name].nil?
        data['portalDescription'] = input[:portal_description] unless input[:portal_description].nil?
        data['portalContactEmail'] = input[:portal_contact_email] unless input[:portal_contact_email].nil?
        data['portalLogoImage'] = Builders::Image.build(input[:portal_logo_image]) unless input[:portal_logo_image].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['notificationSenderEmail'] = input[:notification_sender_email] unless input[:notification_sender_email].nil?
        data['alarms'] = Builders::Alarms.build(input[:alarms]) unless input[:alarms].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Image
    class Image
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['file'] = Builders::ImageFile.build(input[:file]) unless input[:file].nil?
        data
      end
    end

    # Operation Builder for UpdateProject
    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:project_id].to_s.empty?
          raise ArgumentError, "HTTP label :project_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectId>s',
            projectId: Hearth::HTTP.uri_escape(input[:project_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        data['projectDescription'] = input[:project_description] unless input[:project_description].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
