# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Location
  module Parsers

    # Operation Parser for AssociateTrackerConsumer
    class AssociateTrackerConsumer
      def self.parse(http_resp)
        data = Types::AssociateTrackerConsumerOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.field_list = (ValidationExceptionFieldList.parse(map['fieldList']) unless map['fieldList'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
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

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchDeleteDevicePositionHistory
    class BatchDeleteDevicePositionHistory
      def self.parse(http_resp)
        data = Types::BatchDeleteDevicePositionHistoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (BatchDeleteDevicePositionHistoryErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchDeleteDevicePositionHistoryErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchDeleteDevicePositionHistoryError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchDeleteDevicePositionHistoryError
      def self.parse(map)
        data = Types::BatchDeleteDevicePositionHistoryError.new
        data.device_id = map['DeviceId']
        data.error = (BatchItemError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class BatchItemError
      def self.parse(map)
        data = Types::BatchItemError.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for BatchDeleteGeofence
    class BatchDeleteGeofence
      def self.parse(http_resp)
        data = Types::BatchDeleteGeofenceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (BatchDeleteGeofenceErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchDeleteGeofenceErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchDeleteGeofenceError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchDeleteGeofenceError
      def self.parse(map)
        data = Types::BatchDeleteGeofenceError.new
        data.geofence_id = map['GeofenceId']
        data.error = (BatchItemError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    # Operation Parser for BatchEvaluateGeofences
    class BatchEvaluateGeofences
      def self.parse(http_resp)
        data = Types::BatchEvaluateGeofencesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (BatchEvaluateGeofencesErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchEvaluateGeofencesErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchEvaluateGeofencesError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchEvaluateGeofencesError
      def self.parse(map)
        data = Types::BatchEvaluateGeofencesError.new
        data.device_id = map['DeviceId']
        data.sample_time = Time.parse(map['SampleTime']) if map['SampleTime']
        data.error = (BatchItemError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    # Operation Parser for BatchGetDevicePosition
    class BatchGetDevicePosition
      def self.parse(http_resp)
        data = Types::BatchGetDevicePositionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (BatchGetDevicePositionErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data.device_positions = (DevicePositionList.parse(map['DevicePositions']) unless map['DevicePositions'].nil?)
        data
      end
    end

    class DevicePositionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DevicePosition.parse(value) unless value.nil?
        end
        data
      end
    end

    class DevicePosition
      def self.parse(map)
        data = Types::DevicePosition.new
        data.device_id = map['DeviceId']
        data.sample_time = Time.parse(map['SampleTime']) if map['SampleTime']
        data.received_time = Time.parse(map['ReceivedTime']) if map['ReceivedTime']
        data.position = (Position.parse(map['Position']) unless map['Position'].nil?)
        data.accuracy = (PositionalAccuracy.parse(map['Accuracy']) unless map['Accuracy'].nil?)
        data.position_properties = (PropertyMap.parse(map['PositionProperties']) unless map['PositionProperties'].nil?)
        return data
      end
    end

    class PropertyMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class PositionalAccuracy
      def self.parse(map)
        data = Types::PositionalAccuracy.new
        data.horizontal = Hearth::NumberHelper.deserialize(map['Horizontal'])
        return data
      end
    end

    class Position
      def self.parse(list)
        data = []
        list.map do |value|
          data << Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetDevicePositionErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchGetDevicePositionError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetDevicePositionError
      def self.parse(map)
        data = Types::BatchGetDevicePositionError.new
        data.device_id = map['DeviceId']
        data.error = (BatchItemError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    # Operation Parser for BatchPutGeofence
    class BatchPutGeofence
      def self.parse(http_resp)
        data = Types::BatchPutGeofenceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.successes = (BatchPutGeofenceSuccessList.parse(map['Successes']) unless map['Successes'].nil?)
        data.errors = (BatchPutGeofenceErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchPutGeofenceErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchPutGeofenceError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchPutGeofenceError
      def self.parse(map)
        data = Types::BatchPutGeofenceError.new
        data.geofence_id = map['GeofenceId']
        data.error = (BatchItemError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class BatchPutGeofenceSuccessList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchPutGeofenceSuccess.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchPutGeofenceSuccess
      def self.parse(map)
        data = Types::BatchPutGeofenceSuccess.new
        data.geofence_id = map['GeofenceId']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        return data
      end
    end

    # Operation Parser for BatchUpdateDevicePosition
    class BatchUpdateDevicePosition
      def self.parse(http_resp)
        data = Types::BatchUpdateDevicePositionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (BatchUpdateDevicePositionErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchUpdateDevicePositionErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchUpdateDevicePositionError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchUpdateDevicePositionError
      def self.parse(map)
        data = Types::BatchUpdateDevicePositionError.new
        data.device_id = map['DeviceId']
        data.sample_time = Time.parse(map['SampleTime']) if map['SampleTime']
        data.error = (BatchItemError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    # Operation Parser for CalculateRoute
    class CalculateRoute
      def self.parse(http_resp)
        data = Types::CalculateRouteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.legs = (LegList.parse(map['Legs']) unless map['Legs'].nil?)
        data.summary = (CalculateRouteSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data
      end
    end

    class CalculateRouteSummary
      def self.parse(map)
        data = Types::CalculateRouteSummary.new
        data.route_b_box = (BoundingBox.parse(map['RouteBBox']) unless map['RouteBBox'].nil?)
        data.data_source = map['DataSource']
        data.distance = Hearth::NumberHelper.deserialize(map['Distance'])
        data.duration_seconds = Hearth::NumberHelper.deserialize(map['DurationSeconds'])
        data.distance_unit = map['DistanceUnit']
        return data
      end
    end

    class BoundingBox
      def self.parse(list)
        data = []
        list.map do |value|
          data << Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class LegList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Leg.parse(value) unless value.nil?
        end
        data
      end
    end

    class Leg
      def self.parse(map)
        data = Types::Leg.new
        data.start_position = (Position.parse(map['StartPosition']) unless map['StartPosition'].nil?)
        data.end_position = (Position.parse(map['EndPosition']) unless map['EndPosition'].nil?)
        data.distance = Hearth::NumberHelper.deserialize(map['Distance'])
        data.duration_seconds = Hearth::NumberHelper.deserialize(map['DurationSeconds'])
        data.geometry = (LegGeometry.parse(map['Geometry']) unless map['Geometry'].nil?)
        data.steps = (StepList.parse(map['Steps']) unless map['Steps'].nil?)
        return data
      end
    end

    class StepList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Step.parse(value) unless value.nil?
        end
        data
      end
    end

    class Step
      def self.parse(map)
        data = Types::Step.new
        data.start_position = (Position.parse(map['StartPosition']) unless map['StartPosition'].nil?)
        data.end_position = (Position.parse(map['EndPosition']) unless map['EndPosition'].nil?)
        data.distance = Hearth::NumberHelper.deserialize(map['Distance'])
        data.duration_seconds = Hearth::NumberHelper.deserialize(map['DurationSeconds'])
        data.geometry_offset = map['GeometryOffset']
        return data
      end
    end

    class LegGeometry
      def self.parse(map)
        data = Types::LegGeometry.new
        data.line_string = (LineString.parse(map['LineString']) unless map['LineString'].nil?)
        return data
      end
    end

    class LineString
      def self.parse(list)
        data = []
        list.map do |value|
          data << Position.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CalculateRouteMatrix
    class CalculateRouteMatrix
      def self.parse(http_resp)
        data = Types::CalculateRouteMatrixOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.route_matrix = (RouteMatrix.parse(map['RouteMatrix']) unless map['RouteMatrix'].nil?)
        data.snapped_departure_positions = (PositionList.parse(map['SnappedDeparturePositions']) unless map['SnappedDeparturePositions'].nil?)
        data.snapped_destination_positions = (PositionList.parse(map['SnappedDestinationPositions']) unless map['SnappedDestinationPositions'].nil?)
        data.summary = (CalculateRouteMatrixSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data
      end
    end

    class CalculateRouteMatrixSummary
      def self.parse(map)
        data = Types::CalculateRouteMatrixSummary.new
        data.data_source = map['DataSource']
        data.route_count = map['RouteCount']
        data.error_count = map['ErrorCount']
        data.distance_unit = map['DistanceUnit']
        return data
      end
    end

    class PositionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Position.parse(value) unless value.nil?
        end
        data
      end
    end

    class RouteMatrix
      def self.parse(list)
        data = []
        list.map do |value|
          data << RouteMatrixRow.parse(value) unless value.nil?
        end
        data
      end
    end

    class RouteMatrixRow
      def self.parse(list)
        data = []
        list.map do |value|
          data << RouteMatrixEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class RouteMatrixEntry
      def self.parse(map)
        data = Types::RouteMatrixEntry.new
        data.distance = Hearth::NumberHelper.deserialize(map['Distance'])
        data.duration_seconds = Hearth::NumberHelper.deserialize(map['DurationSeconds'])
        data.error = (RouteMatrixEntryError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class RouteMatrixEntryError
      def self.parse(map)
        data = Types::RouteMatrixEntryError.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for CreateGeofenceCollection
    class CreateGeofenceCollection
      def self.parse(http_resp)
        data = Types::CreateGeofenceCollectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.collection_name = map['CollectionName']
        data.collection_arn = map['CollectionArn']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data
      end
    end

    # Operation Parser for CreateMap
    class CreateMap
      def self.parse(http_resp)
        data = Types::CreateMapOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.map_name = map['MapName']
        data.map_arn = map['MapArn']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data
      end
    end

    # Operation Parser for CreatePlaceIndex
    class CreatePlaceIndex
      def self.parse(http_resp)
        data = Types::CreatePlaceIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.index_name = map['IndexName']
        data.index_arn = map['IndexArn']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data
      end
    end

    # Operation Parser for CreateRouteCalculator
    class CreateRouteCalculator
      def self.parse(http_resp)
        data = Types::CreateRouteCalculatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.calculator_name = map['CalculatorName']
        data.calculator_arn = map['CalculatorArn']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data
      end
    end

    # Operation Parser for CreateTracker
    class CreateTracker
      def self.parse(http_resp)
        data = Types::CreateTrackerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tracker_name = map['TrackerName']
        data.tracker_arn = map['TrackerArn']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data
      end
    end

    # Operation Parser for DeleteGeofenceCollection
    class DeleteGeofenceCollection
      def self.parse(http_resp)
        data = Types::DeleteGeofenceCollectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteMap
    class DeleteMap
      def self.parse(http_resp)
        data = Types::DeleteMapOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePlaceIndex
    class DeletePlaceIndex
      def self.parse(http_resp)
        data = Types::DeletePlaceIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRouteCalculator
    class DeleteRouteCalculator
      def self.parse(http_resp)
        data = Types::DeleteRouteCalculatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteTracker
    class DeleteTracker
      def self.parse(http_resp)
        data = Types::DeleteTrackerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeGeofenceCollection
    class DescribeGeofenceCollection
      def self.parse(http_resp)
        data = Types::DescribeGeofenceCollectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.collection_name = map['CollectionName']
        data.collection_arn = map['CollectionArn']
        data.description = map['Description']
        data.pricing_plan = map['PricingPlan']
        data.pricing_plan_data_source = map['PricingPlanDataSource']
        data.kms_key_id = map['KmsKeyId']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
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

    # Operation Parser for DescribeMap
    class DescribeMap
      def self.parse(http_resp)
        data = Types::DescribeMapOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.map_name = map['MapName']
        data.map_arn = map['MapArn']
        data.pricing_plan = map['PricingPlan']
        data.data_source = map['DataSource']
        data.configuration = (MapConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.description = map['Description']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data
      end
    end

    class MapConfiguration
      def self.parse(map)
        data = Types::MapConfiguration.new
        data.style = map['Style']
        return data
      end
    end

    # Operation Parser for DescribePlaceIndex
    class DescribePlaceIndex
      def self.parse(http_resp)
        data = Types::DescribePlaceIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.index_name = map['IndexName']
        data.index_arn = map['IndexArn']
        data.pricing_plan = map['PricingPlan']
        data.description = map['Description']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data.data_source = map['DataSource']
        data.data_source_configuration = (DataSourceConfiguration.parse(map['DataSourceConfiguration']) unless map['DataSourceConfiguration'].nil?)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class DataSourceConfiguration
      def self.parse(map)
        data = Types::DataSourceConfiguration.new
        data.intended_use = map['IntendedUse']
        return data
      end
    end

    # Operation Parser for DescribeRouteCalculator
    class DescribeRouteCalculator
      def self.parse(http_resp)
        data = Types::DescribeRouteCalculatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.calculator_name = map['CalculatorName']
        data.calculator_arn = map['CalculatorArn']
        data.pricing_plan = map['PricingPlan']
        data.description = map['Description']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data.data_source = map['DataSource']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeTracker
    class DescribeTracker
      def self.parse(http_resp)
        data = Types::DescribeTrackerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tracker_name = map['TrackerName']
        data.tracker_arn = map['TrackerArn']
        data.description = map['Description']
        data.pricing_plan = map['PricingPlan']
        data.pricing_plan_data_source = map['PricingPlanDataSource']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data.kms_key_id = map['KmsKeyId']
        data.position_filtering = map['PositionFiltering']
        data
      end
    end

    # Operation Parser for DisassociateTrackerConsumer
    class DisassociateTrackerConsumer
      def self.parse(http_resp)
        data = Types::DisassociateTrackerConsumerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetDevicePosition
    class GetDevicePosition
      def self.parse(http_resp)
        data = Types::GetDevicePositionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_id = map['DeviceId']
        data.sample_time = Time.parse(map['SampleTime']) if map['SampleTime']
        data.received_time = Time.parse(map['ReceivedTime']) if map['ReceivedTime']
        data.position = (Position.parse(map['Position']) unless map['Position'].nil?)
        data.accuracy = (PositionalAccuracy.parse(map['Accuracy']) unless map['Accuracy'].nil?)
        data.position_properties = (PropertyMap.parse(map['PositionProperties']) unless map['PositionProperties'].nil?)
        data
      end
    end

    # Operation Parser for GetDevicePositionHistory
    class GetDevicePositionHistory
      def self.parse(http_resp)
        data = Types::GetDevicePositionHistoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_positions = (DevicePositionList.parse(map['DevicePositions']) unless map['DevicePositions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetGeofence
    class GetGeofence
      def self.parse(http_resp)
        data = Types::GetGeofenceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.geofence_id = map['GeofenceId']
        data.geometry = (GeofenceGeometry.parse(map['Geometry']) unless map['Geometry'].nil?)
        data.status = map['Status']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data
      end
    end

    class GeofenceGeometry
      def self.parse(map)
        data = Types::GeofenceGeometry.new
        data.polygon = (LinearRings.parse(map['Polygon']) unless map['Polygon'].nil?)
        return data
      end
    end

    class LinearRings
      def self.parse(list)
        data = []
        list.map do |value|
          data << LinearRing.parse(value) unless value.nil?
        end
        data
      end
    end

    class LinearRing
      def self.parse(list)
        data = []
        list.map do |value|
          data << Position.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetMapGlyphs
    class GetMapGlyphs
      def self.parse(http_resp)
        data = Types::GetMapGlyphsOutput.new
        data.content_type = http_resp.headers['Content-Type']
        payload = http_resp.body.read
        data.blob = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetMapSprites
    class GetMapSprites
      def self.parse(http_resp)
        data = Types::GetMapSpritesOutput.new
        data.content_type = http_resp.headers['Content-Type']
        payload = http_resp.body.read
        data.blob = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetMapStyleDescriptor
    class GetMapStyleDescriptor
      def self.parse(http_resp)
        data = Types::GetMapStyleDescriptorOutput.new
        data.content_type = http_resp.headers['Content-Type']
        payload = http_resp.body.read
        data.blob = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetMapTile
    class GetMapTile
      def self.parse(http_resp)
        data = Types::GetMapTileOutput.new
        data.content_type = http_resp.headers['Content-Type']
        payload = http_resp.body.read
        data.blob = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for ListDevicePositions
    class ListDevicePositions
      def self.parse(http_resp)
        data = Types::ListDevicePositionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entries = (ListDevicePositionsResponseEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListDevicePositionsResponseEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListDevicePositionsResponseEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListDevicePositionsResponseEntry
      def self.parse(map)
        data = Types::ListDevicePositionsResponseEntry.new
        data.device_id = map['DeviceId']
        data.sample_time = Time.parse(map['SampleTime']) if map['SampleTime']
        data.position = (Position.parse(map['Position']) unless map['Position'].nil?)
        data.accuracy = (PositionalAccuracy.parse(map['Accuracy']) unless map['Accuracy'].nil?)
        data.position_properties = (PropertyMap.parse(map['PositionProperties']) unless map['PositionProperties'].nil?)
        return data
      end
    end

    # Operation Parser for ListGeofenceCollections
    class ListGeofenceCollections
      def self.parse(http_resp)
        data = Types::ListGeofenceCollectionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entries = (ListGeofenceCollectionsResponseEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListGeofenceCollectionsResponseEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListGeofenceCollectionsResponseEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListGeofenceCollectionsResponseEntry
      def self.parse(map)
        data = Types::ListGeofenceCollectionsResponseEntry.new
        data.collection_name = map['CollectionName']
        data.description = map['Description']
        data.pricing_plan = map['PricingPlan']
        data.pricing_plan_data_source = map['PricingPlanDataSource']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        return data
      end
    end

    # Operation Parser for ListGeofences
    class ListGeofences
      def self.parse(http_resp)
        data = Types::ListGeofencesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entries = (ListGeofenceResponseEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListGeofenceResponseEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListGeofenceResponseEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListGeofenceResponseEntry
      def self.parse(map)
        data = Types::ListGeofenceResponseEntry.new
        data.geofence_id = map['GeofenceId']
        data.geometry = (GeofenceGeometry.parse(map['Geometry']) unless map['Geometry'].nil?)
        data.status = map['Status']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        return data
      end
    end

    # Operation Parser for ListMaps
    class ListMaps
      def self.parse(http_resp)
        data = Types::ListMapsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entries = (ListMapsResponseEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListMapsResponseEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListMapsResponseEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListMapsResponseEntry
      def self.parse(map)
        data = Types::ListMapsResponseEntry.new
        data.map_name = map['MapName']
        data.description = map['Description']
        data.data_source = map['DataSource']
        data.pricing_plan = map['PricingPlan']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        return data
      end
    end

    # Operation Parser for ListPlaceIndexes
    class ListPlaceIndexes
      def self.parse(http_resp)
        data = Types::ListPlaceIndexesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entries = (ListPlaceIndexesResponseEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListPlaceIndexesResponseEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListPlaceIndexesResponseEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListPlaceIndexesResponseEntry
      def self.parse(map)
        data = Types::ListPlaceIndexesResponseEntry.new
        data.index_name = map['IndexName']
        data.description = map['Description']
        data.data_source = map['DataSource']
        data.pricing_plan = map['PricingPlan']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        return data
      end
    end

    # Operation Parser for ListRouteCalculators
    class ListRouteCalculators
      def self.parse(http_resp)
        data = Types::ListRouteCalculatorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entries = (ListRouteCalculatorsResponseEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListRouteCalculatorsResponseEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListRouteCalculatorsResponseEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListRouteCalculatorsResponseEntry
      def self.parse(map)
        data = Types::ListRouteCalculatorsResponseEntry.new
        data.calculator_name = map['CalculatorName']
        data.description = map['Description']
        data.data_source = map['DataSource']
        data.pricing_plan = map['PricingPlan']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListTrackerConsumers
    class ListTrackerConsumers
      def self.parse(http_resp)
        data = Types::ListTrackerConsumersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.consumer_arns = (ArnList.parse(map['ConsumerArns']) unless map['ConsumerArns'].nil?)
        data.next_token = map['NextToken']
        data
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

    # Operation Parser for ListTrackers
    class ListTrackers
      def self.parse(http_resp)
        data = Types::ListTrackersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entries = (ListTrackersResponseEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListTrackersResponseEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListTrackersResponseEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListTrackersResponseEntry
      def self.parse(map)
        data = Types::ListTrackersResponseEntry.new
        data.tracker_name = map['TrackerName']
        data.description = map['Description']
        data.pricing_plan = map['PricingPlan']
        data.pricing_plan_data_source = map['PricingPlanDataSource']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        return data
      end
    end

    # Operation Parser for PutGeofence
    class PutGeofence
      def self.parse(http_resp)
        data = Types::PutGeofenceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.geofence_id = map['GeofenceId']
        data.create_time = Time.parse(map['CreateTime']) if map['CreateTime']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data
      end
    end

    # Operation Parser for SearchPlaceIndexForPosition
    class SearchPlaceIndexForPosition
      def self.parse(http_resp)
        data = Types::SearchPlaceIndexForPositionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.summary = (SearchPlaceIndexForPositionSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data.results = (SearchForPositionResultList.parse(map['Results']) unless map['Results'].nil?)
        data
      end
    end

    class SearchForPositionResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SearchForPositionResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class SearchForPositionResult
      def self.parse(map)
        data = Types::SearchForPositionResult.new
        data.place = (Place.parse(map['Place']) unless map['Place'].nil?)
        data.distance = Hearth::NumberHelper.deserialize(map['Distance'])
        return data
      end
    end

    class Place
      def self.parse(map)
        data = Types::Place.new
        data.label = map['Label']
        data.geometry = (PlaceGeometry.parse(map['Geometry']) unless map['Geometry'].nil?)
        data.address_number = map['AddressNumber']
        data.street = map['Street']
        data.neighborhood = map['Neighborhood']
        data.municipality = map['Municipality']
        data.sub_region = map['SubRegion']
        data.region = map['Region']
        data.country = map['Country']
        data.postal_code = map['PostalCode']
        data.interpolated = map['Interpolated']
        data.time_zone = (TimeZone.parse(map['TimeZone']) unless map['TimeZone'].nil?)
        return data
      end
    end

    class TimeZone
      def self.parse(map)
        data = Types::TimeZone.new
        data.name = map['Name']
        data.offset = map['Offset']
        return data
      end
    end

    class PlaceGeometry
      def self.parse(map)
        data = Types::PlaceGeometry.new
        data.point = (Position.parse(map['Point']) unless map['Point'].nil?)
        return data
      end
    end

    class SearchPlaceIndexForPositionSummary
      def self.parse(map)
        data = Types::SearchPlaceIndexForPositionSummary.new
        data.position = (Position.parse(map['Position']) unless map['Position'].nil?)
        data.max_results = map['MaxResults']
        data.data_source = map['DataSource']
        data.language = map['Language']
        return data
      end
    end

    # Operation Parser for SearchPlaceIndexForSuggestions
    class SearchPlaceIndexForSuggestions
      def self.parse(http_resp)
        data = Types::SearchPlaceIndexForSuggestionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.summary = (SearchPlaceIndexForSuggestionsSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data.results = (SearchForSuggestionsResultList.parse(map['Results']) unless map['Results'].nil?)
        data
      end
    end

    class SearchForSuggestionsResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SearchForSuggestionsResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class SearchForSuggestionsResult
      def self.parse(map)
        data = Types::SearchForSuggestionsResult.new
        data.text = map['Text']
        return data
      end
    end

    class SearchPlaceIndexForSuggestionsSummary
      def self.parse(map)
        data = Types::SearchPlaceIndexForSuggestionsSummary.new
        data.text = map['Text']
        data.bias_position = (Position.parse(map['BiasPosition']) unless map['BiasPosition'].nil?)
        data.filter_b_box = (BoundingBox.parse(map['FilterBBox']) unless map['FilterBBox'].nil?)
        data.filter_countries = (CountryCodeList.parse(map['FilterCountries']) unless map['FilterCountries'].nil?)
        data.max_results = map['MaxResults']
        data.data_source = map['DataSource']
        data.language = map['Language']
        return data
      end
    end

    class CountryCodeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for SearchPlaceIndexForText
    class SearchPlaceIndexForText
      def self.parse(http_resp)
        data = Types::SearchPlaceIndexForTextOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.summary = (SearchPlaceIndexForTextSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data.results = (SearchForTextResultList.parse(map['Results']) unless map['Results'].nil?)
        data
      end
    end

    class SearchForTextResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SearchForTextResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class SearchForTextResult
      def self.parse(map)
        data = Types::SearchForTextResult.new
        data.place = (Place.parse(map['Place']) unless map['Place'].nil?)
        data.distance = Hearth::NumberHelper.deserialize(map['Distance'])
        data.relevance = Hearth::NumberHelper.deserialize(map['Relevance'])
        return data
      end
    end

    class SearchPlaceIndexForTextSummary
      def self.parse(map)
        data = Types::SearchPlaceIndexForTextSummary.new
        data.text = map['Text']
        data.bias_position = (Position.parse(map['BiasPosition']) unless map['BiasPosition'].nil?)
        data.filter_b_box = (BoundingBox.parse(map['FilterBBox']) unless map['FilterBBox'].nil?)
        data.filter_countries = (CountryCodeList.parse(map['FilterCountries']) unless map['FilterCountries'].nil?)
        data.max_results = map['MaxResults']
        data.result_b_box = (BoundingBox.parse(map['ResultBBox']) unless map['ResultBBox'].nil?)
        data.data_source = map['DataSource']
        data.language = map['Language']
        return data
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

    # Operation Parser for UpdateGeofenceCollection
    class UpdateGeofenceCollection
      def self.parse(http_resp)
        data = Types::UpdateGeofenceCollectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.collection_name = map['CollectionName']
        data.collection_arn = map['CollectionArn']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data
      end
    end

    # Operation Parser for UpdateMap
    class UpdateMap
      def self.parse(http_resp)
        data = Types::UpdateMapOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.map_name = map['MapName']
        data.map_arn = map['MapArn']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data
      end
    end

    # Operation Parser for UpdatePlaceIndex
    class UpdatePlaceIndex
      def self.parse(http_resp)
        data = Types::UpdatePlaceIndexOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.index_name = map['IndexName']
        data.index_arn = map['IndexArn']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data
      end
    end

    # Operation Parser for UpdateRouteCalculator
    class UpdateRouteCalculator
      def self.parse(http_resp)
        data = Types::UpdateRouteCalculatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.calculator_name = map['CalculatorName']
        data.calculator_arn = map['CalculatorArn']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data
      end
    end

    # Operation Parser for UpdateTracker
    class UpdateTracker
      def self.parse(http_resp)
        data = Types::UpdateTrackerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tracker_name = map['TrackerName']
        data.tracker_arn = map['TrackerArn']
        data.update_time = Time.parse(map['UpdateTime']) if map['UpdateTime']
        data
      end
    end
  end
end
