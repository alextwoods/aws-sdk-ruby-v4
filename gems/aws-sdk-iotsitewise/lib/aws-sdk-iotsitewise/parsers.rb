# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTSiteWise
  module Parsers

    # Operation Parser for AssociateAssets
    class AssociateAssets
      def self.parse(http_resp)
        data = Types::AssociateAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictingOperationException
    class ConflictingOperationException
      def self.parse(http_resp)
        data = Types::ConflictingOperationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
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
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AssociateTimeSeriesToAssetProperty
    class AssociateTimeSeriesToAssetProperty
      def self.parse(http_resp)
        data = Types::AssociateTimeSeriesToAssetPropertyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for BatchAssociateProjectAssets
    class BatchAssociateProjectAssets
      def self.parse(http_resp)
        data = Types::BatchAssociateProjectAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (BatchAssociateProjectAssetsErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchAssociateProjectAssetsErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetErrorDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetErrorDetails
      def self.parse(map)
        data = Types::AssetErrorDetails.new
        data.asset_id = map['assetId']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for BatchDisassociateProjectAssets
    class BatchDisassociateProjectAssets
      def self.parse(http_resp)
        data = Types::BatchDisassociateProjectAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (BatchDisassociateProjectAssetsErrors.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchDisassociateProjectAssetsErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetErrorDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for BatchGetAssetPropertyAggregates
    class BatchGetAssetPropertyAggregates
      def self.parse(http_resp)
        data = Types::BatchGetAssetPropertyAggregatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (BatchGetAssetPropertyAggregatesErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data.success_entries = (BatchGetAssetPropertyAggregatesSuccessEntries.parse(map['successEntries']) unless map['successEntries'].nil?)
        data.skipped_entries = (BatchGetAssetPropertyAggregatesSkippedEntries.parse(map['skippedEntries']) unless map['skippedEntries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BatchGetAssetPropertyAggregatesSkippedEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetAssetPropertyAggregatesSkippedEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyAggregatesSkippedEntry
      def self.parse(map)
        data = Types::BatchGetAssetPropertyAggregatesSkippedEntry.new
        data.entry_id = map['entryId']
        data.completion_status = map['completionStatus']
        data.error_info = (BatchGetAssetPropertyAggregatesErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        return data
      end
    end

    class BatchGetAssetPropertyAggregatesErrorInfo
      def self.parse(map)
        data = Types::BatchGetAssetPropertyAggregatesErrorInfo.new
        data.error_code = map['errorCode']
        data.error_timestamp = Time.at(map['errorTimestamp'].to_i) if map['errorTimestamp']
        return data
      end
    end

    class BatchGetAssetPropertyAggregatesSuccessEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetAssetPropertyAggregatesSuccessEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyAggregatesSuccessEntry
      def self.parse(map)
        data = Types::BatchGetAssetPropertyAggregatesSuccessEntry.new
        data.entry_id = map['entryId']
        data.aggregated_values = (AggregatedValues.parse(map['aggregatedValues']) unless map['aggregatedValues'].nil?)
        return data
      end
    end

    class AggregatedValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << AggregatedValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class AggregatedValue
      def self.parse(map)
        data = Types::AggregatedValue.new
        data.timestamp = Time.at(map['timestamp'].to_i) if map['timestamp']
        data.quality = map['quality']
        data.value = (Aggregates.parse(map['value']) unless map['value'].nil?)
        return data
      end
    end

    class Aggregates
      def self.parse(map)
        data = Types::Aggregates.new
        data.average = Hearth::NumberHelper.deserialize(map['average'])
        data.count = Hearth::NumberHelper.deserialize(map['count'])
        data.maximum = Hearth::NumberHelper.deserialize(map['maximum'])
        data.minimum = Hearth::NumberHelper.deserialize(map['minimum'])
        data.sum = Hearth::NumberHelper.deserialize(map['sum'])
        data.standard_deviation = Hearth::NumberHelper.deserialize(map['standardDeviation'])
        return data
      end
    end

    class BatchGetAssetPropertyAggregatesErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetAssetPropertyAggregatesErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyAggregatesErrorEntry
      def self.parse(map)
        data = Types::BatchGetAssetPropertyAggregatesErrorEntry.new
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.entry_id = map['entryId']
        return data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchGetAssetPropertyValue
    class BatchGetAssetPropertyValue
      def self.parse(http_resp)
        data = Types::BatchGetAssetPropertyValueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (BatchGetAssetPropertyValueErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data.success_entries = (BatchGetAssetPropertyValueSuccessEntries.parse(map['successEntries']) unless map['successEntries'].nil?)
        data.skipped_entries = (BatchGetAssetPropertyValueSkippedEntries.parse(map['skippedEntries']) unless map['skippedEntries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BatchGetAssetPropertyValueSkippedEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetAssetPropertyValueSkippedEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyValueSkippedEntry
      def self.parse(map)
        data = Types::BatchGetAssetPropertyValueSkippedEntry.new
        data.entry_id = map['entryId']
        data.completion_status = map['completionStatus']
        data.error_info = (BatchGetAssetPropertyValueErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        return data
      end
    end

    class BatchGetAssetPropertyValueErrorInfo
      def self.parse(map)
        data = Types::BatchGetAssetPropertyValueErrorInfo.new
        data.error_code = map['errorCode']
        data.error_timestamp = Time.at(map['errorTimestamp'].to_i) if map['errorTimestamp']
        return data
      end
    end

    class BatchGetAssetPropertyValueSuccessEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetAssetPropertyValueSuccessEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyValueSuccessEntry
      def self.parse(map)
        data = Types::BatchGetAssetPropertyValueSuccessEntry.new
        data.entry_id = map['entryId']
        data.asset_property_value = (AssetPropertyValue.parse(map['assetPropertyValue']) unless map['assetPropertyValue'].nil?)
        return data
      end
    end

    class AssetPropertyValue
      def self.parse(map)
        data = Types::AssetPropertyValue.new
        data.value = (Variant.parse(map['value']) unless map['value'].nil?)
        data.timestamp = (TimeInNanos.parse(map['timestamp']) unless map['timestamp'].nil?)
        data.quality = map['quality']
        return data
      end
    end

    class TimeInNanos
      def self.parse(map)
        data = Types::TimeInNanos.new
        data.time_in_seconds = map['timeInSeconds']
        data.offset_in_nanos = map['offsetInNanos']
        return data
      end
    end

    class Variant
      def self.parse(map)
        data = Types::Variant.new
        data.string_value = map['stringValue']
        data.integer_value = map['integerValue']
        data.double_value = Hearth::NumberHelper.deserialize(map['doubleValue'])
        data.boolean_value = map['booleanValue']
        return data
      end
    end

    class BatchGetAssetPropertyValueErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetAssetPropertyValueErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyValueErrorEntry
      def self.parse(map)
        data = Types::BatchGetAssetPropertyValueErrorEntry.new
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.entry_id = map['entryId']
        return data
      end
    end

    # Operation Parser for BatchGetAssetPropertyValueHistory
    class BatchGetAssetPropertyValueHistory
      def self.parse(http_resp)
        data = Types::BatchGetAssetPropertyValueHistoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (BatchGetAssetPropertyValueHistoryErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data.success_entries = (BatchGetAssetPropertyValueHistorySuccessEntries.parse(map['successEntries']) unless map['successEntries'].nil?)
        data.skipped_entries = (BatchGetAssetPropertyValueHistorySkippedEntries.parse(map['skippedEntries']) unless map['skippedEntries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BatchGetAssetPropertyValueHistorySkippedEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetAssetPropertyValueHistorySkippedEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyValueHistorySkippedEntry
      def self.parse(map)
        data = Types::BatchGetAssetPropertyValueHistorySkippedEntry.new
        data.entry_id = map['entryId']
        data.completion_status = map['completionStatus']
        data.error_info = (BatchGetAssetPropertyValueHistoryErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        return data
      end
    end

    class BatchGetAssetPropertyValueHistoryErrorInfo
      def self.parse(map)
        data = Types::BatchGetAssetPropertyValueHistoryErrorInfo.new
        data.error_code = map['errorCode']
        data.error_timestamp = Time.at(map['errorTimestamp'].to_i) if map['errorTimestamp']
        return data
      end
    end

    class BatchGetAssetPropertyValueHistorySuccessEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetAssetPropertyValueHistorySuccessEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyValueHistorySuccessEntry
      def self.parse(map)
        data = Types::BatchGetAssetPropertyValueHistorySuccessEntry.new
        data.entry_id = map['entryId']
        data.asset_property_value_history = (AssetPropertyValueHistory.parse(map['assetPropertyValueHistory']) unless map['assetPropertyValueHistory'].nil?)
        return data
      end
    end

    class AssetPropertyValueHistory
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetPropertyValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyValueHistoryErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetAssetPropertyValueHistoryErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetAssetPropertyValueHistoryErrorEntry
      def self.parse(map)
        data = Types::BatchGetAssetPropertyValueHistoryErrorEntry.new
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.entry_id = map['entryId']
        return data
      end
    end

    # Operation Parser for BatchPutAssetPropertyValue
    class BatchPutAssetPropertyValue
      def self.parse(http_resp)
        data = Types::BatchPutAssetPropertyValueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (BatchPutAssetPropertyErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data
      end
    end

    class BatchPutAssetPropertyErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchPutAssetPropertyErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchPutAssetPropertyErrorEntry
      def self.parse(map)
        data = Types::BatchPutAssetPropertyErrorEntry.new
        data.entry_id = map['entryId']
        data.errors = (BatchPutAssetPropertyErrors.parse(map['errors']) unless map['errors'].nil?)
        return data
      end
    end

    class BatchPutAssetPropertyErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchPutAssetPropertyError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchPutAssetPropertyError
      def self.parse(map)
        data = Types::BatchPutAssetPropertyError.new
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.timestamps = (Timestamps.parse(map['timestamps']) unless map['timestamps'].nil?)
        return data
      end
    end

    class Timestamps
      def self.parse(list)
        data = []
        list.map do |value|
          data << TimeInNanos.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateAccessPolicy
    class CreateAccessPolicy
      def self.parse(http_resp)
        data = Types::CreateAccessPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_policy_id = map['accessPolicyId']
        data.access_policy_arn = map['accessPolicyArn']
        data
      end
    end

    # Operation Parser for CreateAsset
    class CreateAsset
      def self.parse(http_resp)
        data = Types::CreateAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_id = map['assetId']
        data.asset_arn = map['assetArn']
        data.asset_status = (AssetStatus.parse(map['assetStatus']) unless map['assetStatus'].nil?)
        data
      end
    end

    class AssetStatus
      def self.parse(map)
        data = Types::AssetStatus.new
        data.state = map['state']
        data.error = (ErrorDetails.parse(map['error']) unless map['error'].nil?)
        return data
      end
    end

    class ErrorDetails
      def self.parse(map)
        data = Types::ErrorDetails.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data.details = (DetailedErrors.parse(map['details']) unless map['details'].nil?)
        return data
      end
    end

    class DetailedErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << DetailedError.parse(value) unless value.nil?
        end
        data
      end
    end

    class DetailedError
      def self.parse(map)
        data = Types::DetailedError.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Operation Parser for CreateAssetModel
    class CreateAssetModel
      def self.parse(http_resp)
        data = Types::CreateAssetModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_model_id = map['assetModelId']
        data.asset_model_arn = map['assetModelArn']
        data.asset_model_status = (AssetModelStatus.parse(map['assetModelStatus']) unless map['assetModelStatus'].nil?)
        data
      end
    end

    class AssetModelStatus
      def self.parse(map)
        data = Types::AssetModelStatus.new
        data.state = map['state']
        data.error = (ErrorDetails.parse(map['error']) unless map['error'].nil?)
        return data
      end
    end

    # Operation Parser for CreateDashboard
    class CreateDashboard
      def self.parse(http_resp)
        data = Types::CreateDashboardOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_id = map['dashboardId']
        data.dashboard_arn = map['dashboardArn']
        data
      end
    end

    # Operation Parser for CreateGateway
    class CreateGateway
      def self.parse(http_resp)
        data = Types::CreateGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.gateway_id = map['gatewayId']
        data.gateway_arn = map['gatewayArn']
        data
      end
    end

    # Operation Parser for CreatePortal
    class CreatePortal
      def self.parse(http_resp)
        data = Types::CreatePortalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_id = map['portalId']
        data.portal_arn = map['portalArn']
        data.portal_start_url = map['portalStartUrl']
        data.portal_status = (PortalStatus.parse(map['portalStatus']) unless map['portalStatus'].nil?)
        data.sso_application_id = map['ssoApplicationId']
        data
      end
    end

    class PortalStatus
      def self.parse(map)
        data = Types::PortalStatus.new
        data.state = map['state']
        data.error = (MonitorErrorDetails.parse(map['error']) unless map['error'].nil?)
        return data
      end
    end

    class MonitorErrorDetails
      def self.parse(map)
        data = Types::MonitorErrorDetails.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project_id = map['projectId']
        data.project_arn = map['projectArn']
        data
      end
    end

    # Operation Parser for DeleteAccessPolicy
    class DeleteAccessPolicy
      def self.parse(http_resp)
        data = Types::DeleteAccessPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAsset
    class DeleteAsset
      def self.parse(http_resp)
        data = Types::DeleteAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_status = (AssetStatus.parse(map['assetStatus']) unless map['assetStatus'].nil?)
        data
      end
    end

    # Operation Parser for DeleteAssetModel
    class DeleteAssetModel
      def self.parse(http_resp)
        data = Types::DeleteAssetModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_model_status = (AssetModelStatus.parse(map['assetModelStatus']) unless map['assetModelStatus'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDashboard
    class DeleteDashboard
      def self.parse(http_resp)
        data = Types::DeleteDashboardOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteGateway
    class DeleteGateway
      def self.parse(http_resp)
        data = Types::DeleteGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePortal
    class DeletePortal
      def self.parse(http_resp)
        data = Types::DeletePortalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_status = (PortalStatus.parse(map['portalStatus']) unless map['portalStatus'].nil?)
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteTimeSeries
    class DeleteTimeSeries
      def self.parse(http_resp)
        data = Types::DeleteTimeSeriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAccessPolicy
    class DescribeAccessPolicy
      def self.parse(http_resp)
        data = Types::DescribeAccessPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_policy_id = map['accessPolicyId']
        data.access_policy_arn = map['accessPolicyArn']
        data.access_policy_identity = (Identity.parse(map['accessPolicyIdentity']) unless map['accessPolicyIdentity'].nil?)
        data.access_policy_resource = (Resource.parse(map['accessPolicyResource']) unless map['accessPolicyResource'].nil?)
        data.access_policy_permission = map['accessPolicyPermission']
        data.access_policy_creation_date = Time.at(map['accessPolicyCreationDate'].to_i) if map['accessPolicyCreationDate']
        data.access_policy_last_update_date = Time.at(map['accessPolicyLastUpdateDate'].to_i) if map['accessPolicyLastUpdateDate']
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.portal = (PortalResource.parse(map['portal']) unless map['portal'].nil?)
        data.project = (ProjectResource.parse(map['project']) unless map['project'].nil?)
        return data
      end
    end

    class ProjectResource
      def self.parse(map)
        data = Types::ProjectResource.new
        data.id = map['id']
        return data
      end
    end

    class PortalResource
      def self.parse(map)
        data = Types::PortalResource.new
        data.id = map['id']
        return data
      end
    end

    class Identity
      def self.parse(map)
        data = Types::Identity.new
        data.user = (UserIdentity.parse(map['user']) unless map['user'].nil?)
        data.group = (GroupIdentity.parse(map['group']) unless map['group'].nil?)
        data.iam_user = (IAMUserIdentity.parse(map['iamUser']) unless map['iamUser'].nil?)
        data.iam_role = (IAMRoleIdentity.parse(map['iamRole']) unless map['iamRole'].nil?)
        return data
      end
    end

    class IAMRoleIdentity
      def self.parse(map)
        data = Types::IAMRoleIdentity.new
        data.arn = map['arn']
        return data
      end
    end

    class IAMUserIdentity
      def self.parse(map)
        data = Types::IAMUserIdentity.new
        data.arn = map['arn']
        return data
      end
    end

    class GroupIdentity
      def self.parse(map)
        data = Types::GroupIdentity.new
        data.id = map['id']
        return data
      end
    end

    class UserIdentity
      def self.parse(map)
        data = Types::UserIdentity.new
        data.id = map['id']
        return data
      end
    end

    # Operation Parser for DescribeAsset
    class DescribeAsset
      def self.parse(http_resp)
        data = Types::DescribeAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_id = map['assetId']
        data.asset_arn = map['assetArn']
        data.asset_name = map['assetName']
        data.asset_model_id = map['assetModelId']
        data.asset_properties = (AssetProperties.parse(map['assetProperties']) unless map['assetProperties'].nil?)
        data.asset_hierarchies = (AssetHierarchies.parse(map['assetHierarchies']) unless map['assetHierarchies'].nil?)
        data.asset_composite_models = (AssetCompositeModels.parse(map['assetCompositeModels']) unless map['assetCompositeModels'].nil?)
        data.asset_creation_date = Time.at(map['assetCreationDate'].to_i) if map['assetCreationDate']
        data.asset_last_update_date = Time.at(map['assetLastUpdateDate'].to_i) if map['assetLastUpdateDate']
        data.asset_status = (AssetStatus.parse(map['assetStatus']) unless map['assetStatus'].nil?)
        data.asset_description = map['assetDescription']
        data
      end
    end

    class AssetCompositeModels
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetCompositeModel.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetCompositeModel
      def self.parse(map)
        data = Types::AssetCompositeModel.new
        data.name = map['name']
        data.description = map['description']
        data.type = map['type']
        data.properties = (AssetProperties.parse(map['properties']) unless map['properties'].nil?)
        return data
      end
    end

    class AssetProperties
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetProperty
      def self.parse(map)
        data = Types::AssetProperty.new
        data.id = map['id']
        data.name = map['name']
        data.alias = map['alias']
        data.notification = (PropertyNotification.parse(map['notification']) unless map['notification'].nil?)
        data.data_type = map['dataType']
        data.data_type_spec = map['dataTypeSpec']
        data.unit = map['unit']
        return data
      end
    end

    class PropertyNotification
      def self.parse(map)
        data = Types::PropertyNotification.new
        data.topic = map['topic']
        data.state = map['state']
        return data
      end
    end

    class AssetHierarchies
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetHierarchy.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetHierarchy
      def self.parse(map)
        data = Types::AssetHierarchy.new
        data.id = map['id']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for DescribeAssetModel
    class DescribeAssetModel
      def self.parse(http_resp)
        data = Types::DescribeAssetModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_model_id = map['assetModelId']
        data.asset_model_arn = map['assetModelArn']
        data.asset_model_name = map['assetModelName']
        data.asset_model_description = map['assetModelDescription']
        data.asset_model_properties = (AssetModelProperties.parse(map['assetModelProperties']) unless map['assetModelProperties'].nil?)
        data.asset_model_hierarchies = (AssetModelHierarchies.parse(map['assetModelHierarchies']) unless map['assetModelHierarchies'].nil?)
        data.asset_model_composite_models = (AssetModelCompositeModels.parse(map['assetModelCompositeModels']) unless map['assetModelCompositeModels'].nil?)
        data.asset_model_creation_date = Time.at(map['assetModelCreationDate'].to_i) if map['assetModelCreationDate']
        data.asset_model_last_update_date = Time.at(map['assetModelLastUpdateDate'].to_i) if map['assetModelLastUpdateDate']
        data.asset_model_status = (AssetModelStatus.parse(map['assetModelStatus']) unless map['assetModelStatus'].nil?)
        data
      end
    end

    class AssetModelCompositeModels
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetModelCompositeModel.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetModelCompositeModel
      def self.parse(map)
        data = Types::AssetModelCompositeModel.new
        data.name = map['name']
        data.description = map['description']
        data.type = map['type']
        data.properties = (AssetModelProperties.parse(map['properties']) unless map['properties'].nil?)
        return data
      end
    end

    class AssetModelProperties
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetModelProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetModelProperty
      def self.parse(map)
        data = Types::AssetModelProperty.new
        data.id = map['id']
        data.name = map['name']
        data.data_type = map['dataType']
        data.data_type_spec = map['dataTypeSpec']
        data.unit = map['unit']
        data.type = (PropertyType.parse(map['type']) unless map['type'].nil?)
        return data
      end
    end

    class PropertyType
      def self.parse(map)
        data = Types::PropertyType.new
        data.attribute = (Attribute.parse(map['attribute']) unless map['attribute'].nil?)
        data.measurement = (Measurement.parse(map['measurement']) unless map['measurement'].nil?)
        data.transform = (Transform.parse(map['transform']) unless map['transform'].nil?)
        data.metric = (Metric.parse(map['metric']) unless map['metric'].nil?)
        return data
      end
    end

    class Metric
      def self.parse(map)
        data = Types::Metric.new
        data.expression = map['expression']
        data.variables = (ExpressionVariables.parse(map['variables']) unless map['variables'].nil?)
        data.window = (MetricWindow.parse(map['window']) unless map['window'].nil?)
        data.processing_config = (MetricProcessingConfig.parse(map['processingConfig']) unless map['processingConfig'].nil?)
        return data
      end
    end

    class MetricProcessingConfig
      def self.parse(map)
        data = Types::MetricProcessingConfig.new
        data.compute_location = map['computeLocation']
        return data
      end
    end

    class MetricWindow
      def self.parse(map)
        data = Types::MetricWindow.new
        data.tumbling = (TumblingWindow.parse(map['tumbling']) unless map['tumbling'].nil?)
        return data
      end
    end

    class TumblingWindow
      def self.parse(map)
        data = Types::TumblingWindow.new
        data.interval = map['interval']
        data.offset = map['offset']
        return data
      end
    end

    class ExpressionVariables
      def self.parse(list)
        data = []
        list.map do |value|
          data << ExpressionVariable.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExpressionVariable
      def self.parse(map)
        data = Types::ExpressionVariable.new
        data.name = map['name']
        data.value = (VariableValue.parse(map['value']) unless map['value'].nil?)
        return data
      end
    end

    class VariableValue
      def self.parse(map)
        data = Types::VariableValue.new
        data.property_id = map['propertyId']
        data.hierarchy_id = map['hierarchyId']
        return data
      end
    end

    class Transform
      def self.parse(map)
        data = Types::Transform.new
        data.expression = map['expression']
        data.variables = (ExpressionVariables.parse(map['variables']) unless map['variables'].nil?)
        data.processing_config = (TransformProcessingConfig.parse(map['processingConfig']) unless map['processingConfig'].nil?)
        return data
      end
    end

    class TransformProcessingConfig
      def self.parse(map)
        data = Types::TransformProcessingConfig.new
        data.compute_location = map['computeLocation']
        data.forwarding_config = (ForwardingConfig.parse(map['forwardingConfig']) unless map['forwardingConfig'].nil?)
        return data
      end
    end

    class ForwardingConfig
      def self.parse(map)
        data = Types::ForwardingConfig.new
        data.state = map['state']
        return data
      end
    end

    class Measurement
      def self.parse(map)
        data = Types::Measurement.new
        data.processing_config = (MeasurementProcessingConfig.parse(map['processingConfig']) unless map['processingConfig'].nil?)
        return data
      end
    end

    class MeasurementProcessingConfig
      def self.parse(map)
        data = Types::MeasurementProcessingConfig.new
        data.forwarding_config = (ForwardingConfig.parse(map['forwardingConfig']) unless map['forwardingConfig'].nil?)
        return data
      end
    end

    class Attribute
      def self.parse(map)
        data = Types::Attribute.new
        data.default_value = map['defaultValue']
        return data
      end
    end

    class AssetModelHierarchies
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetModelHierarchy.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetModelHierarchy
      def self.parse(map)
        data = Types::AssetModelHierarchy.new
        data.id = map['id']
        data.name = map['name']
        data.child_asset_model_id = map['childAssetModelId']
        return data
      end
    end

    # Operation Parser for DescribeAssetProperty
    class DescribeAssetProperty
      def self.parse(http_resp)
        data = Types::DescribeAssetPropertyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_id = map['assetId']
        data.asset_name = map['assetName']
        data.asset_model_id = map['assetModelId']
        data.asset_property = (Property.parse(map['assetProperty']) unless map['assetProperty'].nil?)
        data.composite_model = (CompositeModelProperty.parse(map['compositeModel']) unless map['compositeModel'].nil?)
        data
      end
    end

    class CompositeModelProperty
      def self.parse(map)
        data = Types::CompositeModelProperty.new
        data.name = map['name']
        data.type = map['type']
        data.asset_property = (Property.parse(map['assetProperty']) unless map['assetProperty'].nil?)
        return data
      end
    end

    class Property
      def self.parse(map)
        data = Types::Property.new
        data.id = map['id']
        data.name = map['name']
        data.alias = map['alias']
        data.notification = (PropertyNotification.parse(map['notification']) unless map['notification'].nil?)
        data.data_type = map['dataType']
        data.unit = map['unit']
        data.type = (PropertyType.parse(map['type']) unless map['type'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeDashboard
    class DescribeDashboard
      def self.parse(http_resp)
        data = Types::DescribeDashboardOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_id = map['dashboardId']
        data.dashboard_arn = map['dashboardArn']
        data.dashboard_name = map['dashboardName']
        data.project_id = map['projectId']
        data.dashboard_description = map['dashboardDescription']
        data.dashboard_definition = map['dashboardDefinition']
        data.dashboard_creation_date = Time.at(map['dashboardCreationDate'].to_i) if map['dashboardCreationDate']
        data.dashboard_last_update_date = Time.at(map['dashboardLastUpdateDate'].to_i) if map['dashboardLastUpdateDate']
        data
      end
    end

    # Operation Parser for DescribeDefaultEncryptionConfiguration
    class DescribeDefaultEncryptionConfiguration
      def self.parse(http_resp)
        data = Types::DescribeDefaultEncryptionConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.encryption_type = map['encryptionType']
        data.kms_key_arn = map['kmsKeyArn']
        data.configuration_status = (ConfigurationStatus.parse(map['configurationStatus']) unless map['configurationStatus'].nil?)
        data
      end
    end

    class ConfigurationStatus
      def self.parse(map)
        data = Types::ConfigurationStatus.new
        data.state = map['state']
        data.error = (ConfigurationErrorDetails.parse(map['error']) unless map['error'].nil?)
        return data
      end
    end

    class ConfigurationErrorDetails
      def self.parse(map)
        data = Types::ConfigurationErrorDetails.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for DescribeGateway
    class DescribeGateway
      def self.parse(http_resp)
        data = Types::DescribeGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.gateway_id = map['gatewayId']
        data.gateway_name = map['gatewayName']
        data.gateway_arn = map['gatewayArn']
        data.gateway_platform = (GatewayPlatform.parse(map['gatewayPlatform']) unless map['gatewayPlatform'].nil?)
        data.gateway_capability_summaries = (GatewayCapabilitySummaries.parse(map['gatewayCapabilitySummaries']) unless map['gatewayCapabilitySummaries'].nil?)
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        data
      end
    end

    class GatewayCapabilitySummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << GatewayCapabilitySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class GatewayCapabilitySummary
      def self.parse(map)
        data = Types::GatewayCapabilitySummary.new
        data.capability_namespace = map['capabilityNamespace']
        data.capability_sync_status = map['capabilitySyncStatus']
        return data
      end
    end

    class GatewayPlatform
      def self.parse(map)
        data = Types::GatewayPlatform.new
        data.greengrass = (Greengrass.parse(map['greengrass']) unless map['greengrass'].nil?)
        data.greengrass_v2 = (GreengrassV2.parse(map['greengrassV2']) unless map['greengrassV2'].nil?)
        return data
      end
    end

    class GreengrassV2
      def self.parse(map)
        data = Types::GreengrassV2.new
        data.core_device_thing_name = map['coreDeviceThingName']
        return data
      end
    end

    class Greengrass
      def self.parse(map)
        data = Types::Greengrass.new
        data.group_arn = map['groupArn']
        return data
      end
    end

    # Operation Parser for DescribeGatewayCapabilityConfiguration
    class DescribeGatewayCapabilityConfiguration
      def self.parse(http_resp)
        data = Types::DescribeGatewayCapabilityConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.gateway_id = map['gatewayId']
        data.capability_namespace = map['capabilityNamespace']
        data.capability_configuration = map['capabilityConfiguration']
        data.capability_sync_status = map['capabilitySyncStatus']
        data
      end
    end

    # Operation Parser for DescribeLoggingOptions
    class DescribeLoggingOptions
      def self.parse(http_resp)
        data = Types::DescribeLoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.logging_options = (LoggingOptions.parse(map['loggingOptions']) unless map['loggingOptions'].nil?)
        data
      end
    end

    class LoggingOptions
      def self.parse(map)
        data = Types::LoggingOptions.new
        data.level = map['level']
        return data
      end
    end

    # Operation Parser for DescribePortal
    class DescribePortal
      def self.parse(http_resp)
        data = Types::DescribePortalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_id = map['portalId']
        data.portal_arn = map['portalArn']
        data.portal_name = map['portalName']
        data.portal_description = map['portalDescription']
        data.portal_client_id = map['portalClientId']
        data.portal_start_url = map['portalStartUrl']
        data.portal_contact_email = map['portalContactEmail']
        data.portal_status = (PortalStatus.parse(map['portalStatus']) unless map['portalStatus'].nil?)
        data.portal_creation_date = Time.at(map['portalCreationDate'].to_i) if map['portalCreationDate']
        data.portal_last_update_date = Time.at(map['portalLastUpdateDate'].to_i) if map['portalLastUpdateDate']
        data.portal_logo_image_location = (ImageLocation.parse(map['portalLogoImageLocation']) unless map['portalLogoImageLocation'].nil?)
        data.role_arn = map['roleArn']
        data.portal_auth_mode = map['portalAuthMode']
        data.notification_sender_email = map['notificationSenderEmail']
        data.alarms = (Alarms.parse(map['alarms']) unless map['alarms'].nil?)
        data
      end
    end

    class Alarms
      def self.parse(map)
        data = Types::Alarms.new
        data.alarm_role_arn = map['alarmRoleArn']
        data.notification_lambda_arn = map['notificationLambdaArn']
        return data
      end
    end

    class ImageLocation
      def self.parse(map)
        data = Types::ImageLocation.new
        data.id = map['id']
        data.url = map['url']
        return data
      end
    end

    # Operation Parser for DescribeProject
    class DescribeProject
      def self.parse(http_resp)
        data = Types::DescribeProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project_id = map['projectId']
        data.project_arn = map['projectArn']
        data.project_name = map['projectName']
        data.portal_id = map['portalId']
        data.project_description = map['projectDescription']
        data.project_creation_date = Time.at(map['projectCreationDate'].to_i) if map['projectCreationDate']
        data.project_last_update_date = Time.at(map['projectLastUpdateDate'].to_i) if map['projectLastUpdateDate']
        data
      end
    end

    # Operation Parser for DescribeStorageConfiguration
    class DescribeStorageConfiguration
      def self.parse(http_resp)
        data = Types::DescribeStorageConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.storage_type = map['storageType']
        data.multi_layer_storage = (MultiLayerStorage.parse(map['multiLayerStorage']) unless map['multiLayerStorage'].nil?)
        data.disassociated_data_storage = map['disassociatedDataStorage']
        data.retention_period = (RetentionPeriod.parse(map['retentionPeriod']) unless map['retentionPeriod'].nil?)
        data.configuration_status = (ConfigurationStatus.parse(map['configurationStatus']) unless map['configurationStatus'].nil?)
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        data
      end
    end

    class RetentionPeriod
      def self.parse(map)
        data = Types::RetentionPeriod.new
        data.number_of_days = map['numberOfDays']
        data.unlimited = map['unlimited']
        return data
      end
    end

    class MultiLayerStorage
      def self.parse(map)
        data = Types::MultiLayerStorage.new
        data.customer_managed_s3_storage = (CustomerManagedS3Storage.parse(map['customerManagedS3Storage']) unless map['customerManagedS3Storage'].nil?)
        return data
      end
    end

    class CustomerManagedS3Storage
      def self.parse(map)
        data = Types::CustomerManagedS3Storage.new
        data.s3_resource_arn = map['s3ResourceArn']
        data.role_arn = map['roleArn']
        return data
      end
    end

    # Operation Parser for DescribeTimeSeries
    class DescribeTimeSeries
      def self.parse(http_resp)
        data = Types::DescribeTimeSeriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_id = map['assetId']
        data.property_id = map['propertyId']
        data.alias = map['alias']
        data.time_series_id = map['timeSeriesId']
        data.data_type = map['dataType']
        data.data_type_spec = map['dataTypeSpec']
        data.time_series_creation_date = Time.at(map['timeSeriesCreationDate'].to_i) if map['timeSeriesCreationDate']
        data.time_series_last_update_date = Time.at(map['timeSeriesLastUpdateDate'].to_i) if map['timeSeriesLastUpdateDate']
        data
      end
    end

    # Operation Parser for DisassociateAssets
    class DisassociateAssets
      def self.parse(http_resp)
        data = Types::DisassociateAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateTimeSeriesFromAssetProperty
    class DisassociateTimeSeriesFromAssetProperty
      def self.parse(http_resp)
        data = Types::DisassociateTimeSeriesFromAssetPropertyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAssetPropertyAggregates
    class GetAssetPropertyAggregates
      def self.parse(http_resp)
        data = Types::GetAssetPropertyAggregatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.aggregated_values = (AggregatedValues.parse(map['aggregatedValues']) unless map['aggregatedValues'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for GetAssetPropertyValue
    class GetAssetPropertyValue
      def self.parse(http_resp)
        data = Types::GetAssetPropertyValueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.property_value = (AssetPropertyValue.parse(map['propertyValue']) unless map['propertyValue'].nil?)
        data
      end
    end

    # Operation Parser for GetAssetPropertyValueHistory
    class GetAssetPropertyValueHistory
      def self.parse(http_resp)
        data = Types::GetAssetPropertyValueHistoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_property_value_history = (AssetPropertyValueHistory.parse(map['assetPropertyValueHistory']) unless map['assetPropertyValueHistory'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for GetInterpolatedAssetPropertyValues
    class GetInterpolatedAssetPropertyValues
      def self.parse(http_resp)
        data = Types::GetInterpolatedAssetPropertyValuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.interpolated_asset_property_values = (InterpolatedAssetPropertyValues.parse(map['interpolatedAssetPropertyValues']) unless map['interpolatedAssetPropertyValues'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class InterpolatedAssetPropertyValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << InterpolatedAssetPropertyValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class InterpolatedAssetPropertyValue
      def self.parse(map)
        data = Types::InterpolatedAssetPropertyValue.new
        data.timestamp = (TimeInNanos.parse(map['timestamp']) unless map['timestamp'].nil?)
        data.value = (Variant.parse(map['value']) unless map['value'].nil?)
        return data
      end
    end

    # Operation Parser for ListAccessPolicies
    class ListAccessPolicies
      def self.parse(http_resp)
        data = Types::ListAccessPoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_policy_summaries = (AccessPolicySummaries.parse(map['accessPolicySummaries']) unless map['accessPolicySummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AccessPolicySummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AccessPolicySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccessPolicySummary
      def self.parse(map)
        data = Types::AccessPolicySummary.new
        data.id = map['id']
        data.identity = (Identity.parse(map['identity']) unless map['identity'].nil?)
        data.resource = (Resource.parse(map['resource']) unless map['resource'].nil?)
        data.permission = map['permission']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        return data
      end
    end

    # Operation Parser for ListAssetModels
    class ListAssetModels
      def self.parse(http_resp)
        data = Types::ListAssetModelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_model_summaries = (AssetModelSummaries.parse(map['assetModelSummaries']) unless map['assetModelSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssetModelSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetModelSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetModelSummary
      def self.parse(map)
        data = Types::AssetModelSummary.new
        data.id = map['id']
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        data.status = (AssetModelStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    # Operation Parser for ListAssetRelationships
    class ListAssetRelationships
      def self.parse(http_resp)
        data = Types::ListAssetRelationshipsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_relationship_summaries = (AssetRelationshipSummaries.parse(map['assetRelationshipSummaries']) unless map['assetRelationshipSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssetRelationshipSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetRelationshipSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetRelationshipSummary
      def self.parse(map)
        data = Types::AssetRelationshipSummary.new
        data.hierarchy_info = (AssetHierarchyInfo.parse(map['hierarchyInfo']) unless map['hierarchyInfo'].nil?)
        data.relationship_type = map['relationshipType']
        return data
      end
    end

    class AssetHierarchyInfo
      def self.parse(map)
        data = Types::AssetHierarchyInfo.new
        data.parent_asset_id = map['parentAssetId']
        data.child_asset_id = map['childAssetId']
        return data
      end
    end

    # Operation Parser for ListAssets
    class ListAssets
      def self.parse(http_resp)
        data = Types::ListAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_summaries = (AssetSummaries.parse(map['assetSummaries']) unless map['assetSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssetSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssetSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetSummary
      def self.parse(map)
        data = Types::AssetSummary.new
        data.id = map['id']
        data.arn = map['arn']
        data.name = map['name']
        data.asset_model_id = map['assetModelId']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        data.status = (AssetStatus.parse(map['status']) unless map['status'].nil?)
        data.hierarchies = (AssetHierarchies.parse(map['hierarchies']) unless map['hierarchies'].nil?)
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for ListAssociatedAssets
    class ListAssociatedAssets
      def self.parse(http_resp)
        data = Types::ListAssociatedAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_summaries = (AssociatedAssetsSummaries.parse(map['assetSummaries']) unless map['assetSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssociatedAssetsSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssociatedAssetsSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssociatedAssetsSummary
      def self.parse(map)
        data = Types::AssociatedAssetsSummary.new
        data.id = map['id']
        data.arn = map['arn']
        data.name = map['name']
        data.asset_model_id = map['assetModelId']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        data.status = (AssetStatus.parse(map['status']) unless map['status'].nil?)
        data.hierarchies = (AssetHierarchies.parse(map['hierarchies']) unless map['hierarchies'].nil?)
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for ListDashboards
    class ListDashboards
      def self.parse(http_resp)
        data = Types::ListDashboardsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_summaries = (DashboardSummaries.parse(map['dashboardSummaries']) unless map['dashboardSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DashboardSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DashboardSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DashboardSummary
      def self.parse(map)
        data = Types::DashboardSummary.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        return data
      end
    end

    # Operation Parser for ListGateways
    class ListGateways
      def self.parse(http_resp)
        data = Types::ListGatewaysOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.gateway_summaries = (GatewaySummaries.parse(map['gatewaySummaries']) unless map['gatewaySummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class GatewaySummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << GatewaySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class GatewaySummary
      def self.parse(map)
        data = Types::GatewaySummary.new
        data.gateway_id = map['gatewayId']
        data.gateway_name = map['gatewayName']
        data.gateway_platform = (GatewayPlatform.parse(map['gatewayPlatform']) unless map['gatewayPlatform'].nil?)
        data.gateway_capability_summaries = (GatewayCapabilitySummaries.parse(map['gatewayCapabilitySummaries']) unless map['gatewayCapabilitySummaries'].nil?)
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        return data
      end
    end

    # Operation Parser for ListPortals
    class ListPortals
      def self.parse(http_resp)
        data = Types::ListPortalsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_summaries = (PortalSummaries.parse(map['portalSummaries']) unless map['portalSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PortalSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << PortalSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PortalSummary
      def self.parse(map)
        data = Types::PortalSummary.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.start_url = map['startUrl']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        data.role_arn = map['roleArn']
        data.status = (PortalStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    # Operation Parser for ListProjectAssets
    class ListProjectAssets
      def self.parse(http_resp)
        data = Types::ListProjectAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_ids = (AssetIDs.parse(map['assetIds']) unless map['assetIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssetIDs
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project_summaries = (ProjectSummaries.parse(map['projectSummaries']) unless map['projectSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ProjectSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << ProjectSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProjectSummary
      def self.parse(map)
        data = Types::ProjectSummary.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_update_date = Time.at(map['lastUpdateDate'].to_i) if map['lastUpdateDate']
        return data
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

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListTimeSeries
    class ListTimeSeries
      def self.parse(http_resp)
        data = Types::ListTimeSeriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.time_series_summaries = (TimeSeriesSummaries.parse(map['TimeSeriesSummaries']) unless map['TimeSeriesSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TimeSeriesSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << TimeSeriesSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TimeSeriesSummary
      def self.parse(map)
        data = Types::TimeSeriesSummary.new
        data.asset_id = map['assetId']
        data.property_id = map['propertyId']
        data.alias = map['alias']
        data.time_series_id = map['timeSeriesId']
        data.data_type = map['dataType']
        data.data_type_spec = map['dataTypeSpec']
        data.time_series_creation_date = Time.at(map['timeSeriesCreationDate'].to_i) if map['timeSeriesCreationDate']
        data.time_series_last_update_date = Time.at(map['timeSeriesLastUpdateDate'].to_i) if map['timeSeriesLastUpdateDate']
        return data
      end
    end

    # Operation Parser for PutDefaultEncryptionConfiguration
    class PutDefaultEncryptionConfiguration
      def self.parse(http_resp)
        data = Types::PutDefaultEncryptionConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.encryption_type = map['encryptionType']
        data.kms_key_arn = map['kmsKeyArn']
        data.configuration_status = (ConfigurationStatus.parse(map['configurationStatus']) unless map['configurationStatus'].nil?)
        data
      end
    end

    # Operation Parser for PutLoggingOptions
    class PutLoggingOptions
      def self.parse(http_resp)
        data = Types::PutLoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutStorageConfiguration
    class PutStorageConfiguration
      def self.parse(http_resp)
        data = Types::PutStorageConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.storage_type = map['storageType']
        data.multi_layer_storage = (MultiLayerStorage.parse(map['multiLayerStorage']) unless map['multiLayerStorage'].nil?)
        data.disassociated_data_storage = map['disassociatedDataStorage']
        data.retention_period = (RetentionPeriod.parse(map['retentionPeriod']) unless map['retentionPeriod'].nil?)
        data.configuration_status = (ConfigurationStatus.parse(map['configurationStatus']) unless map['configurationStatus'].nil?)
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

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_name = map['resourceName']
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

    # Operation Parser for UpdateAccessPolicy
    class UpdateAccessPolicy
      def self.parse(http_resp)
        data = Types::UpdateAccessPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAsset
    class UpdateAsset
      def self.parse(http_resp)
        data = Types::UpdateAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_status = (AssetStatus.parse(map['assetStatus']) unless map['assetStatus'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAssetModel
    class UpdateAssetModel
      def self.parse(http_resp)
        data = Types::UpdateAssetModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.asset_model_status = (AssetModelStatus.parse(map['assetModelStatus']) unless map['assetModelStatus'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAssetProperty
    class UpdateAssetProperty
      def self.parse(http_resp)
        data = Types::UpdateAssetPropertyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDashboard
    class UpdateDashboard
      def self.parse(http_resp)
        data = Types::UpdateDashboardOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateGateway
    class UpdateGateway
      def self.parse(http_resp)
        data = Types::UpdateGatewayOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateGatewayCapabilityConfiguration
    class UpdateGatewayCapabilityConfiguration
      def self.parse(http_resp)
        data = Types::UpdateGatewayCapabilityConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.capability_namespace = map['capabilityNamespace']
        data.capability_sync_status = map['capabilitySyncStatus']
        data
      end
    end

    # Operation Parser for UpdatePortal
    class UpdatePortal
      def self.parse(http_resp)
        data = Types::UpdatePortalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_status = (PortalStatus.parse(map['portalStatus']) unless map['portalStatus'].nil?)
        data
      end
    end

    # Operation Parser for UpdateProject
    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
