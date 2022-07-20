# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Location
  module Stubs

    # Operation Stubber for AssociateTrackerConsumer
    class AssociateTrackerConsumer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchDeleteDevicePositionHistory
    class BatchDeleteDevicePositionHistory
      def self.default(visited=[])
        {
          errors: BatchDeleteDevicePositionHistoryErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = BatchDeleteDevicePositionHistoryErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchDeleteDevicePositionHistoryErrorList
    class BatchDeleteDevicePositionHistoryErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteDevicePositionHistoryErrorList')
        visited = visited + ['BatchDeleteDevicePositionHistoryErrorList']
        [
          BatchDeleteDevicePositionHistoryError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDeleteDevicePositionHistoryError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDeleteDevicePositionHistoryError
    class BatchDeleteDevicePositionHistoryError
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteDevicePositionHistoryError')
        visited = visited + ['BatchDeleteDevicePositionHistoryError']
        {
          device_id: 'device_id',
          error: BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDeleteDevicePositionHistoryError.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['Error'] = BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for BatchItemError
    class BatchItemError
      def self.default(visited=[])
        return nil if visited.include?('BatchItemError')
        visited = visited + ['BatchItemError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchItemError.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for BatchDeleteGeofence
    class BatchDeleteGeofence
      def self.default(visited=[])
        {
          errors: BatchDeleteGeofenceErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = BatchDeleteGeofenceErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchDeleteGeofenceErrorList
    class BatchDeleteGeofenceErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteGeofenceErrorList')
        visited = visited + ['BatchDeleteGeofenceErrorList']
        [
          BatchDeleteGeofenceError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDeleteGeofenceError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDeleteGeofenceError
    class BatchDeleteGeofenceError
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteGeofenceError')
        visited = visited + ['BatchDeleteGeofenceError']
        {
          geofence_id: 'geofence_id',
          error: BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDeleteGeofenceError.new
        data = {}
        data['GeofenceId'] = stub[:geofence_id] unless stub[:geofence_id].nil?
        data['Error'] = BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for BatchEvaluateGeofences
    class BatchEvaluateGeofences
      def self.default(visited=[])
        {
          errors: BatchEvaluateGeofencesErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = BatchEvaluateGeofencesErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchEvaluateGeofencesErrorList
    class BatchEvaluateGeofencesErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchEvaluateGeofencesErrorList')
        visited = visited + ['BatchEvaluateGeofencesErrorList']
        [
          BatchEvaluateGeofencesError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchEvaluateGeofencesError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchEvaluateGeofencesError
    class BatchEvaluateGeofencesError
      def self.default(visited=[])
        return nil if visited.include?('BatchEvaluateGeofencesError')
        visited = visited + ['BatchEvaluateGeofencesError']
        {
          device_id: 'device_id',
          sample_time: Time.now,
          error: BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchEvaluateGeofencesError.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['Error'] = BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for BatchGetDevicePosition
    class BatchGetDevicePosition
      def self.default(visited=[])
        {
          errors: BatchGetDevicePositionErrorList.default(visited),
          device_positions: DevicePositionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = BatchGetDevicePositionErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        data['DevicePositions'] = DevicePositionList.stub(stub[:device_positions]) unless stub[:device_positions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DevicePositionList
    class DevicePositionList
      def self.default(visited=[])
        return nil if visited.include?('DevicePositionList')
        visited = visited + ['DevicePositionList']
        [
          DevicePosition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DevicePosition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DevicePosition
    class DevicePosition
      def self.default(visited=[])
        return nil if visited.include?('DevicePosition')
        visited = visited + ['DevicePosition']
        {
          device_id: 'device_id',
          sample_time: Time.now,
          received_time: Time.now,
          position: Position.default(visited),
          accuracy: PositionalAccuracy.default(visited),
          position_properties: PropertyMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DevicePosition.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['ReceivedTime'] = Hearth::TimeHelper.to_date_time(stub[:received_time]) unless stub[:received_time].nil?
        data['Position'] = Position.stub(stub[:position]) unless stub[:position].nil?
        data['Accuracy'] = PositionalAccuracy.stub(stub[:accuracy]) unless stub[:accuracy].nil?
        data['PositionProperties'] = PropertyMap.stub(stub[:position_properties]) unless stub[:position_properties].nil?
        data
      end
    end

    # Map Stubber for PropertyMap
    class PropertyMap
      def self.default(visited=[])
        return nil if visited.include?('PropertyMap')
        visited = visited + ['PropertyMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for PositionalAccuracy
    class PositionalAccuracy
      def self.default(visited=[])
        return nil if visited.include?('PositionalAccuracy')
        visited = visited + ['PositionalAccuracy']
        {
          horizontal: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::PositionalAccuracy.new
        data = {}
        data['Horizontal'] = Hearth::NumberHelper.serialize(stub[:horizontal])
        data
      end
    end

    # List Stubber for Position
    class Position
      def self.default(visited=[])
        return nil if visited.include?('Position')
        visited = visited + ['Position']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    # List Stubber for BatchGetDevicePositionErrorList
    class BatchGetDevicePositionErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchGetDevicePositionErrorList')
        visited = visited + ['BatchGetDevicePositionErrorList']
        [
          BatchGetDevicePositionError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetDevicePositionError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetDevicePositionError
    class BatchGetDevicePositionError
      def self.default(visited=[])
        return nil if visited.include?('BatchGetDevicePositionError')
        visited = visited + ['BatchGetDevicePositionError']
        {
          device_id: 'device_id',
          error: BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetDevicePositionError.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['Error'] = BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for BatchPutGeofence
    class BatchPutGeofence
      def self.default(visited=[])
        {
          successes: BatchPutGeofenceSuccessList.default(visited),
          errors: BatchPutGeofenceErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Successes'] = BatchPutGeofenceSuccessList.stub(stub[:successes]) unless stub[:successes].nil?
        data['Errors'] = BatchPutGeofenceErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchPutGeofenceErrorList
    class BatchPutGeofenceErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchPutGeofenceErrorList')
        visited = visited + ['BatchPutGeofenceErrorList']
        [
          BatchPutGeofenceError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchPutGeofenceError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPutGeofenceError
    class BatchPutGeofenceError
      def self.default(visited=[])
        return nil if visited.include?('BatchPutGeofenceError')
        visited = visited + ['BatchPutGeofenceError']
        {
          geofence_id: 'geofence_id',
          error: BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutGeofenceError.new
        data = {}
        data['GeofenceId'] = stub[:geofence_id] unless stub[:geofence_id].nil?
        data['Error'] = BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # List Stubber for BatchPutGeofenceSuccessList
    class BatchPutGeofenceSuccessList
      def self.default(visited=[])
        return nil if visited.include?('BatchPutGeofenceSuccessList')
        visited = visited + ['BatchPutGeofenceSuccessList']
        [
          BatchPutGeofenceSuccess.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchPutGeofenceSuccess.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPutGeofenceSuccess
    class BatchPutGeofenceSuccess
      def self.default(visited=[])
        return nil if visited.include?('BatchPutGeofenceSuccess')
        visited = visited + ['BatchPutGeofenceSuccess']
        {
          geofence_id: 'geofence_id',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutGeofenceSuccess.new
        data = {}
        data['GeofenceId'] = stub[:geofence_id] unless stub[:geofence_id].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for BatchUpdateDevicePosition
    class BatchUpdateDevicePosition
      def self.default(visited=[])
        {
          errors: BatchUpdateDevicePositionErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = BatchUpdateDevicePositionErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchUpdateDevicePositionErrorList
    class BatchUpdateDevicePositionErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdateDevicePositionErrorList')
        visited = visited + ['BatchUpdateDevicePositionErrorList']
        [
          BatchUpdateDevicePositionError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchUpdateDevicePositionError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchUpdateDevicePositionError
    class BatchUpdateDevicePositionError
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdateDevicePositionError')
        visited = visited + ['BatchUpdateDevicePositionError']
        {
          device_id: 'device_id',
          sample_time: Time.now,
          error: BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchUpdateDevicePositionError.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['Error'] = BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for CalculateRoute
    class CalculateRoute
      def self.default(visited=[])
        {
          legs: LegList.default(visited),
          summary: CalculateRouteSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Legs'] = LegList.stub(stub[:legs]) unless stub[:legs].nil?
        data['Summary'] = CalculateRouteSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CalculateRouteSummary
    class CalculateRouteSummary
      def self.default(visited=[])
        return nil if visited.include?('CalculateRouteSummary')
        visited = visited + ['CalculateRouteSummary']
        {
          route_b_box: BoundingBox.default(visited),
          data_source: 'data_source',
          distance: 1.0,
          duration_seconds: 1.0,
          distance_unit: 'distance_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CalculateRouteSummary.new
        data = {}
        data['RouteBBox'] = BoundingBox.stub(stub[:route_b_box]) unless stub[:route_b_box].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['Distance'] = Hearth::NumberHelper.serialize(stub[:distance])
        data['DurationSeconds'] = Hearth::NumberHelper.serialize(stub[:duration_seconds])
        data['DistanceUnit'] = stub[:distance_unit] unless stub[:distance_unit].nil?
        data
      end
    end

    # List Stubber for BoundingBox
    class BoundingBox
      def self.default(visited=[])
        return nil if visited.include?('BoundingBox')
        visited = visited + ['BoundingBox']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    # List Stubber for LegList
    class LegList
      def self.default(visited=[])
        return nil if visited.include?('LegList')
        visited = visited + ['LegList']
        [
          Leg.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Leg.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Leg
    class Leg
      def self.default(visited=[])
        return nil if visited.include?('Leg')
        visited = visited + ['Leg']
        {
          start_position: Position.default(visited),
          end_position: Position.default(visited),
          distance: 1.0,
          duration_seconds: 1.0,
          geometry: LegGeometry.default(visited),
          steps: StepList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Leg.new
        data = {}
        data['StartPosition'] = Position.stub(stub[:start_position]) unless stub[:start_position].nil?
        data['EndPosition'] = Position.stub(stub[:end_position]) unless stub[:end_position].nil?
        data['Distance'] = Hearth::NumberHelper.serialize(stub[:distance])
        data['DurationSeconds'] = Hearth::NumberHelper.serialize(stub[:duration_seconds])
        data['Geometry'] = LegGeometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data['Steps'] = StepList.stub(stub[:steps]) unless stub[:steps].nil?
        data
      end
    end

    # List Stubber for StepList
    class StepList
      def self.default(visited=[])
        return nil if visited.include?('StepList')
        visited = visited + ['StepList']
        [
          Step.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Step.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Step
    class Step
      def self.default(visited=[])
        return nil if visited.include?('Step')
        visited = visited + ['Step']
        {
          start_position: Position.default(visited),
          end_position: Position.default(visited),
          distance: 1.0,
          duration_seconds: 1.0,
          geometry_offset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Step.new
        data = {}
        data['StartPosition'] = Position.stub(stub[:start_position]) unless stub[:start_position].nil?
        data['EndPosition'] = Position.stub(stub[:end_position]) unless stub[:end_position].nil?
        data['Distance'] = Hearth::NumberHelper.serialize(stub[:distance])
        data['DurationSeconds'] = Hearth::NumberHelper.serialize(stub[:duration_seconds])
        data['GeometryOffset'] = stub[:geometry_offset] unless stub[:geometry_offset].nil?
        data
      end
    end

    # Structure Stubber for LegGeometry
    class LegGeometry
      def self.default(visited=[])
        return nil if visited.include?('LegGeometry')
        visited = visited + ['LegGeometry']
        {
          line_string: LineString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LegGeometry.new
        data = {}
        data['LineString'] = LineString.stub(stub[:line_string]) unless stub[:line_string].nil?
        data
      end
    end

    # List Stubber for LineString
    class LineString
      def self.default(visited=[])
        return nil if visited.include?('LineString')
        visited = visited + ['LineString']
        [
          Position.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Position.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CalculateRouteMatrix
    class CalculateRouteMatrix
      def self.default(visited=[])
        {
          route_matrix: RouteMatrix.default(visited),
          snapped_departure_positions: PositionList.default(visited),
          snapped_destination_positions: PositionList.default(visited),
          summary: CalculateRouteMatrixSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RouteMatrix'] = RouteMatrix.stub(stub[:route_matrix]) unless stub[:route_matrix].nil?
        data['SnappedDeparturePositions'] = PositionList.stub(stub[:snapped_departure_positions]) unless stub[:snapped_departure_positions].nil?
        data['SnappedDestinationPositions'] = PositionList.stub(stub[:snapped_destination_positions]) unless stub[:snapped_destination_positions].nil?
        data['Summary'] = CalculateRouteMatrixSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CalculateRouteMatrixSummary
    class CalculateRouteMatrixSummary
      def self.default(visited=[])
        return nil if visited.include?('CalculateRouteMatrixSummary')
        visited = visited + ['CalculateRouteMatrixSummary']
        {
          data_source: 'data_source',
          route_count: 1,
          error_count: 1,
          distance_unit: 'distance_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CalculateRouteMatrixSummary.new
        data = {}
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['RouteCount'] = stub[:route_count] unless stub[:route_count].nil?
        data['ErrorCount'] = stub[:error_count] unless stub[:error_count].nil?
        data['DistanceUnit'] = stub[:distance_unit] unless stub[:distance_unit].nil?
        data
      end
    end

    # List Stubber for PositionList
    class PositionList
      def self.default(visited=[])
        return nil if visited.include?('PositionList')
        visited = visited + ['PositionList']
        [
          Position.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Position.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for RouteMatrix
    class RouteMatrix
      def self.default(visited=[])
        return nil if visited.include?('RouteMatrix')
        visited = visited + ['RouteMatrix']
        [
          RouteMatrixRow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RouteMatrixRow.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for RouteMatrixRow
    class RouteMatrixRow
      def self.default(visited=[])
        return nil if visited.include?('RouteMatrixRow')
        visited = visited + ['RouteMatrixRow']
        [
          RouteMatrixEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RouteMatrixEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RouteMatrixEntry
    class RouteMatrixEntry
      def self.default(visited=[])
        return nil if visited.include?('RouteMatrixEntry')
        visited = visited + ['RouteMatrixEntry']
        {
          distance: 1.0,
          duration_seconds: 1.0,
          error: RouteMatrixEntryError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteMatrixEntry.new
        data = {}
        data['Distance'] = Hearth::NumberHelper.serialize(stub[:distance])
        data['DurationSeconds'] = Hearth::NumberHelper.serialize(stub[:duration_seconds])
        data['Error'] = RouteMatrixEntryError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for RouteMatrixEntryError
    class RouteMatrixEntryError
      def self.default(visited=[])
        return nil if visited.include?('RouteMatrixEntryError')
        visited = visited + ['RouteMatrixEntryError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteMatrixEntryError.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CreateGeofenceCollection
    class CreateGeofenceCollection
      def self.default(visited=[])
        {
          collection_name: 'collection_name',
          collection_arn: 'collection_arn',
          create_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CollectionName'] = stub[:collection_name] unless stub[:collection_name].nil?
        data['CollectionArn'] = stub[:collection_arn] unless stub[:collection_arn].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMap
    class CreateMap
      def self.default(visited=[])
        {
          map_name: 'map_name',
          map_arn: 'map_arn',
          create_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MapName'] = stub[:map_name] unless stub[:map_name].nil?
        data['MapArn'] = stub[:map_arn] unless stub[:map_arn].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePlaceIndex
    class CreatePlaceIndex
      def self.default(visited=[])
        {
          index_name: 'index_name',
          index_arn: 'index_arn',
          create_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['IndexArn'] = stub[:index_arn] unless stub[:index_arn].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRouteCalculator
    class CreateRouteCalculator
      def self.default(visited=[])
        {
          calculator_name: 'calculator_name',
          calculator_arn: 'calculator_arn',
          create_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CalculatorName'] = stub[:calculator_name] unless stub[:calculator_name].nil?
        data['CalculatorArn'] = stub[:calculator_arn] unless stub[:calculator_arn].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTracker
    class CreateTracker
      def self.default(visited=[])
        {
          tracker_name: 'tracker_name',
          tracker_arn: 'tracker_arn',
          create_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TrackerName'] = stub[:tracker_name] unless stub[:tracker_name].nil?
        data['TrackerArn'] = stub[:tracker_arn] unless stub[:tracker_arn].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteGeofenceCollection
    class DeleteGeofenceCollection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMap
    class DeleteMap
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePlaceIndex
    class DeletePlaceIndex
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRouteCalculator
    class DeleteRouteCalculator
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTracker
    class DeleteTracker
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeGeofenceCollection
    class DescribeGeofenceCollection
      def self.default(visited=[])
        {
          collection_name: 'collection_name',
          collection_arn: 'collection_arn',
          description: 'description',
          pricing_plan: 'pricing_plan',
          pricing_plan_data_source: 'pricing_plan_data_source',
          kms_key_id: 'kms_key_id',
          tags: TagMap.default(visited),
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CollectionName'] = stub[:collection_name] unless stub[:collection_name].nil?
        data['CollectionArn'] = stub[:collection_arn] unless stub[:collection_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['PricingPlanDataSource'] = stub[:pricing_plan_data_source] unless stub[:pricing_plan_data_source].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeMap
    class DescribeMap
      def self.default(visited=[])
        {
          map_name: 'map_name',
          map_arn: 'map_arn',
          pricing_plan: 'pricing_plan',
          data_source: 'data_source',
          configuration: MapConfiguration.default(visited),
          description: 'description',
          tags: TagMap.default(visited),
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MapName'] = stub[:map_name] unless stub[:map_name].nil?
        data['MapArn'] = stub[:map_arn] unless stub[:map_arn].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['Configuration'] = MapConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MapConfiguration
    class MapConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MapConfiguration')
        visited = visited + ['MapConfiguration']
        {
          style: 'style',
        }
      end

      def self.stub(stub)
        stub ||= Types::MapConfiguration.new
        data = {}
        data['Style'] = stub[:style] unless stub[:style].nil?
        data
      end
    end

    # Operation Stubber for DescribePlaceIndex
    class DescribePlaceIndex
      def self.default(visited=[])
        {
          index_name: 'index_name',
          index_arn: 'index_arn',
          pricing_plan: 'pricing_plan',
          description: 'description',
          create_time: Time.now,
          update_time: Time.now,
          data_source: 'data_source',
          data_source_configuration: DataSourceConfiguration.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['IndexArn'] = stub[:index_arn] unless stub[:index_arn].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['DataSourceConfiguration'] = DataSourceConfiguration.stub(stub[:data_source_configuration]) unless stub[:data_source_configuration].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DataSourceConfiguration
    class DataSourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DataSourceConfiguration')
        visited = visited + ['DataSourceConfiguration']
        {
          intended_use: 'intended_use',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceConfiguration.new
        data = {}
        data['IntendedUse'] = stub[:intended_use] unless stub[:intended_use].nil?
        data
      end
    end

    # Operation Stubber for DescribeRouteCalculator
    class DescribeRouteCalculator
      def self.default(visited=[])
        {
          calculator_name: 'calculator_name',
          calculator_arn: 'calculator_arn',
          pricing_plan: 'pricing_plan',
          description: 'description',
          create_time: Time.now,
          update_time: Time.now,
          data_source: 'data_source',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CalculatorName'] = stub[:calculator_name] unless stub[:calculator_name].nil?
        data['CalculatorArn'] = stub[:calculator_arn] unless stub[:calculator_arn].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeTracker
    class DescribeTracker
      def self.default(visited=[])
        {
          tracker_name: 'tracker_name',
          tracker_arn: 'tracker_arn',
          description: 'description',
          pricing_plan: 'pricing_plan',
          pricing_plan_data_source: 'pricing_plan_data_source',
          tags: TagMap.default(visited),
          create_time: Time.now,
          update_time: Time.now,
          kms_key_id: 'kms_key_id',
          position_filtering: 'position_filtering',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TrackerName'] = stub[:tracker_name] unless stub[:tracker_name].nil?
        data['TrackerArn'] = stub[:tracker_arn] unless stub[:tracker_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['PricingPlanDataSource'] = stub[:pricing_plan_data_source] unless stub[:pricing_plan_data_source].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['PositionFiltering'] = stub[:position_filtering] unless stub[:position_filtering].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateTrackerConsumer
    class DisassociateTrackerConsumer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDevicePosition
    class GetDevicePosition
      def self.default(visited=[])
        {
          device_id: 'device_id',
          sample_time: Time.now,
          received_time: Time.now,
          position: Position.default(visited),
          accuracy: PositionalAccuracy.default(visited),
          position_properties: PropertyMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['ReceivedTime'] = Hearth::TimeHelper.to_date_time(stub[:received_time]) unless stub[:received_time].nil?
        data['Position'] = Position.stub(stub[:position]) unless stub[:position].nil?
        data['Accuracy'] = PositionalAccuracy.stub(stub[:accuracy]) unless stub[:accuracy].nil?
        data['PositionProperties'] = PropertyMap.stub(stub[:position_properties]) unless stub[:position_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDevicePositionHistory
    class GetDevicePositionHistory
      def self.default(visited=[])
        {
          device_positions: DevicePositionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DevicePositions'] = DevicePositionList.stub(stub[:device_positions]) unless stub[:device_positions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGeofence
    class GetGeofence
      def self.default(visited=[])
        {
          geofence_id: 'geofence_id',
          geometry: GeofenceGeometry.default(visited),
          status: 'status',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GeofenceId'] = stub[:geofence_id] unless stub[:geofence_id].nil?
        data['Geometry'] = GeofenceGeometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GeofenceGeometry
    class GeofenceGeometry
      def self.default(visited=[])
        return nil if visited.include?('GeofenceGeometry')
        visited = visited + ['GeofenceGeometry']
        {
          polygon: LinearRings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GeofenceGeometry.new
        data = {}
        data['Polygon'] = LinearRings.stub(stub[:polygon]) unless stub[:polygon].nil?
        data
      end
    end

    # List Stubber for LinearRings
    class LinearRings
      def self.default(visited=[])
        return nil if visited.include?('LinearRings')
        visited = visited + ['LinearRings']
        [
          LinearRing.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LinearRing.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for LinearRing
    class LinearRing
      def self.default(visited=[])
        return nil if visited.include?('LinearRing')
        visited = visited + ['LinearRing']
        [
          Position.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Position.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetMapGlyphs
    class GetMapGlyphs
      def self.default(visited=[])
        {
          blob: 'blob',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = ::StringIO.new(stub[:blob] || '')
      end
    end

    # Operation Stubber for GetMapSprites
    class GetMapSprites
      def self.default(visited=[])
        {
          blob: 'blob',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = ::StringIO.new(stub[:blob] || '')
      end
    end

    # Operation Stubber for GetMapStyleDescriptor
    class GetMapStyleDescriptor
      def self.default(visited=[])
        {
          blob: 'blob',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = ::StringIO.new(stub[:blob] || '')
      end
    end

    # Operation Stubber for GetMapTile
    class GetMapTile
      def self.default(visited=[])
        {
          blob: 'blob',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = ::StringIO.new(stub[:blob] || '')
      end
    end

    # Operation Stubber for ListDevicePositions
    class ListDevicePositions
      def self.default(visited=[])
        {
          entries: ListDevicePositionsResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = ListDevicePositionsResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListDevicePositionsResponseEntryList
    class ListDevicePositionsResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListDevicePositionsResponseEntryList')
        visited = visited + ['ListDevicePositionsResponseEntryList']
        [
          ListDevicePositionsResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListDevicePositionsResponseEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListDevicePositionsResponseEntry
    class ListDevicePositionsResponseEntry
      def self.default(visited=[])
        return nil if visited.include?('ListDevicePositionsResponseEntry')
        visited = visited + ['ListDevicePositionsResponseEntry']
        {
          device_id: 'device_id',
          sample_time: Time.now,
          position: Position.default(visited),
          accuracy: PositionalAccuracy.default(visited),
          position_properties: PropertyMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListDevicePositionsResponseEntry.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['Position'] = Position.stub(stub[:position]) unless stub[:position].nil?
        data['Accuracy'] = PositionalAccuracy.stub(stub[:accuracy]) unless stub[:accuracy].nil?
        data['PositionProperties'] = PropertyMap.stub(stub[:position_properties]) unless stub[:position_properties].nil?
        data
      end
    end

    # Operation Stubber for ListGeofenceCollections
    class ListGeofenceCollections
      def self.default(visited=[])
        {
          entries: ListGeofenceCollectionsResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = ListGeofenceCollectionsResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListGeofenceCollectionsResponseEntryList
    class ListGeofenceCollectionsResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListGeofenceCollectionsResponseEntryList')
        visited = visited + ['ListGeofenceCollectionsResponseEntryList']
        [
          ListGeofenceCollectionsResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListGeofenceCollectionsResponseEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListGeofenceCollectionsResponseEntry
    class ListGeofenceCollectionsResponseEntry
      def self.default(visited=[])
        return nil if visited.include?('ListGeofenceCollectionsResponseEntry')
        visited = visited + ['ListGeofenceCollectionsResponseEntry']
        {
          collection_name: 'collection_name',
          description: 'description',
          pricing_plan: 'pricing_plan',
          pricing_plan_data_source: 'pricing_plan_data_source',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListGeofenceCollectionsResponseEntry.new
        data = {}
        data['CollectionName'] = stub[:collection_name] unless stub[:collection_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['PricingPlanDataSource'] = stub[:pricing_plan_data_source] unless stub[:pricing_plan_data_source].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for ListGeofences
    class ListGeofences
      def self.default(visited=[])
        {
          entries: ListGeofenceResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = ListGeofenceResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListGeofenceResponseEntryList
    class ListGeofenceResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListGeofenceResponseEntryList')
        visited = visited + ['ListGeofenceResponseEntryList']
        [
          ListGeofenceResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListGeofenceResponseEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListGeofenceResponseEntry
    class ListGeofenceResponseEntry
      def self.default(visited=[])
        return nil if visited.include?('ListGeofenceResponseEntry')
        visited = visited + ['ListGeofenceResponseEntry']
        {
          geofence_id: 'geofence_id',
          geometry: GeofenceGeometry.default(visited),
          status: 'status',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListGeofenceResponseEntry.new
        data = {}
        data['GeofenceId'] = stub[:geofence_id] unless stub[:geofence_id].nil?
        data['Geometry'] = GeofenceGeometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for ListMaps
    class ListMaps
      def self.default(visited=[])
        {
          entries: ListMapsResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = ListMapsResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListMapsResponseEntryList
    class ListMapsResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListMapsResponseEntryList')
        visited = visited + ['ListMapsResponseEntryList']
        [
          ListMapsResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListMapsResponseEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListMapsResponseEntry
    class ListMapsResponseEntry
      def self.default(visited=[])
        return nil if visited.include?('ListMapsResponseEntry')
        visited = visited + ['ListMapsResponseEntry']
        {
          map_name: 'map_name',
          description: 'description',
          data_source: 'data_source',
          pricing_plan: 'pricing_plan',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListMapsResponseEntry.new
        data = {}
        data['MapName'] = stub[:map_name] unless stub[:map_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for ListPlaceIndexes
    class ListPlaceIndexes
      def self.default(visited=[])
        {
          entries: ListPlaceIndexesResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = ListPlaceIndexesResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListPlaceIndexesResponseEntryList
    class ListPlaceIndexesResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListPlaceIndexesResponseEntryList')
        visited = visited + ['ListPlaceIndexesResponseEntryList']
        [
          ListPlaceIndexesResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListPlaceIndexesResponseEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListPlaceIndexesResponseEntry
    class ListPlaceIndexesResponseEntry
      def self.default(visited=[])
        return nil if visited.include?('ListPlaceIndexesResponseEntry')
        visited = visited + ['ListPlaceIndexesResponseEntry']
        {
          index_name: 'index_name',
          description: 'description',
          data_source: 'data_source',
          pricing_plan: 'pricing_plan',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListPlaceIndexesResponseEntry.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for ListRouteCalculators
    class ListRouteCalculators
      def self.default(visited=[])
        {
          entries: ListRouteCalculatorsResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = ListRouteCalculatorsResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListRouteCalculatorsResponseEntryList
    class ListRouteCalculatorsResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListRouteCalculatorsResponseEntryList')
        visited = visited + ['ListRouteCalculatorsResponseEntryList']
        [
          ListRouteCalculatorsResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListRouteCalculatorsResponseEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListRouteCalculatorsResponseEntry
    class ListRouteCalculatorsResponseEntry
      def self.default(visited=[])
        return nil if visited.include?('ListRouteCalculatorsResponseEntry')
        visited = visited + ['ListRouteCalculatorsResponseEntry']
        {
          calculator_name: 'calculator_name',
          description: 'description',
          data_source: 'data_source',
          pricing_plan: 'pricing_plan',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListRouteCalculatorsResponseEntry.new
        data = {}
        data['CalculatorName'] = stub[:calculator_name] unless stub[:calculator_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTrackerConsumers
    class ListTrackerConsumers
      def self.default(visited=[])
        {
          consumer_arns: ArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConsumerArns'] = ArnList.stub(stub[:consumer_arns]) unless stub[:consumer_arns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ArnList
    class ArnList
      def self.default(visited=[])
        return nil if visited.include?('ArnList')
        visited = visited + ['ArnList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTrackers
    class ListTrackers
      def self.default(visited=[])
        {
          entries: ListTrackersResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = ListTrackersResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListTrackersResponseEntryList
    class ListTrackersResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListTrackersResponseEntryList')
        visited = visited + ['ListTrackersResponseEntryList']
        [
          ListTrackersResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListTrackersResponseEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListTrackersResponseEntry
    class ListTrackersResponseEntry
      def self.default(visited=[])
        return nil if visited.include?('ListTrackersResponseEntry')
        visited = visited + ['ListTrackersResponseEntry']
        {
          tracker_name: 'tracker_name',
          description: 'description',
          pricing_plan: 'pricing_plan',
          pricing_plan_data_source: 'pricing_plan_data_source',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListTrackersResponseEntry.new
        data = {}
        data['TrackerName'] = stub[:tracker_name] unless stub[:tracker_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['PricingPlan'] = stub[:pricing_plan] unless stub[:pricing_plan].nil?
        data['PricingPlanDataSource'] = stub[:pricing_plan_data_source] unless stub[:pricing_plan_data_source].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for PutGeofence
    class PutGeofence
      def self.default(visited=[])
        {
          geofence_id: 'geofence_id',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GeofenceId'] = stub[:geofence_id] unless stub[:geofence_id].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchPlaceIndexForPosition
    class SearchPlaceIndexForPosition
      def self.default(visited=[])
        {
          summary: SearchPlaceIndexForPositionSummary.default(visited),
          results: SearchForPositionResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Summary'] = SearchPlaceIndexForPositionSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['Results'] = SearchForPositionResultList.stub(stub[:results]) unless stub[:results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SearchForPositionResultList
    class SearchForPositionResultList
      def self.default(visited=[])
        return nil if visited.include?('SearchForPositionResultList')
        visited = visited + ['SearchForPositionResultList']
        [
          SearchForPositionResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SearchForPositionResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SearchForPositionResult
    class SearchForPositionResult
      def self.default(visited=[])
        return nil if visited.include?('SearchForPositionResult')
        visited = visited + ['SearchForPositionResult']
        {
          place: Place.default(visited),
          distance: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchForPositionResult.new
        data = {}
        data['Place'] = Place.stub(stub[:place]) unless stub[:place].nil?
        data['Distance'] = Hearth::NumberHelper.serialize(stub[:distance])
        data
      end
    end

    # Structure Stubber for Place
    class Place
      def self.default(visited=[])
        return nil if visited.include?('Place')
        visited = visited + ['Place']
        {
          label: 'label',
          geometry: PlaceGeometry.default(visited),
          address_number: 'address_number',
          street: 'street',
          neighborhood: 'neighborhood',
          municipality: 'municipality',
          sub_region: 'sub_region',
          region: 'region',
          country: 'country',
          postal_code: 'postal_code',
          interpolated: false,
          time_zone: TimeZone.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Place.new
        data = {}
        data['Label'] = stub[:label] unless stub[:label].nil?
        data['Geometry'] = PlaceGeometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data['AddressNumber'] = stub[:address_number] unless stub[:address_number].nil?
        data['Street'] = stub[:street] unless stub[:street].nil?
        data['Neighborhood'] = stub[:neighborhood] unless stub[:neighborhood].nil?
        data['Municipality'] = stub[:municipality] unless stub[:municipality].nil?
        data['SubRegion'] = stub[:sub_region] unless stub[:sub_region].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['PostalCode'] = stub[:postal_code] unless stub[:postal_code].nil?
        data['Interpolated'] = stub[:interpolated] unless stub[:interpolated].nil?
        data['TimeZone'] = TimeZone.stub(stub[:time_zone]) unless stub[:time_zone].nil?
        data
      end
    end

    # Structure Stubber for TimeZone
    class TimeZone
      def self.default(visited=[])
        return nil if visited.include?('TimeZone')
        visited = visited + ['TimeZone']
        {
          name: 'name',
          offset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeZone.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Offset'] = stub[:offset] unless stub[:offset].nil?
        data
      end
    end

    # Structure Stubber for PlaceGeometry
    class PlaceGeometry
      def self.default(visited=[])
        return nil if visited.include?('PlaceGeometry')
        visited = visited + ['PlaceGeometry']
        {
          point: Position.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PlaceGeometry.new
        data = {}
        data['Point'] = Position.stub(stub[:point]) unless stub[:point].nil?
        data
      end
    end

    # Structure Stubber for SearchPlaceIndexForPositionSummary
    class SearchPlaceIndexForPositionSummary
      def self.default(visited=[])
        return nil if visited.include?('SearchPlaceIndexForPositionSummary')
        visited = visited + ['SearchPlaceIndexForPositionSummary']
        {
          position: Position.default(visited),
          max_results: 1,
          data_source: 'data_source',
          language: 'language',
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchPlaceIndexForPositionSummary.new
        data = {}
        data['Position'] = Position.stub(stub[:position]) unless stub[:position].nil?
        data['MaxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['Language'] = stub[:language] unless stub[:language].nil?
        data
      end
    end

    # Operation Stubber for SearchPlaceIndexForSuggestions
    class SearchPlaceIndexForSuggestions
      def self.default(visited=[])
        {
          summary: SearchPlaceIndexForSuggestionsSummary.default(visited),
          results: SearchForSuggestionsResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Summary'] = SearchPlaceIndexForSuggestionsSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['Results'] = SearchForSuggestionsResultList.stub(stub[:results]) unless stub[:results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SearchForSuggestionsResultList
    class SearchForSuggestionsResultList
      def self.default(visited=[])
        return nil if visited.include?('SearchForSuggestionsResultList')
        visited = visited + ['SearchForSuggestionsResultList']
        [
          SearchForSuggestionsResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SearchForSuggestionsResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SearchForSuggestionsResult
    class SearchForSuggestionsResult
      def self.default(visited=[])
        return nil if visited.include?('SearchForSuggestionsResult')
        visited = visited + ['SearchForSuggestionsResult']
        {
          text: 'text',
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchForSuggestionsResult.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data
      end
    end

    # Structure Stubber for SearchPlaceIndexForSuggestionsSummary
    class SearchPlaceIndexForSuggestionsSummary
      def self.default(visited=[])
        return nil if visited.include?('SearchPlaceIndexForSuggestionsSummary')
        visited = visited + ['SearchPlaceIndexForSuggestionsSummary']
        {
          text: 'text',
          bias_position: Position.default(visited),
          filter_b_box: BoundingBox.default(visited),
          filter_countries: CountryCodeList.default(visited),
          max_results: 1,
          data_source: 'data_source',
          language: 'language',
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchPlaceIndexForSuggestionsSummary.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['BiasPosition'] = Position.stub(stub[:bias_position]) unless stub[:bias_position].nil?
        data['FilterBBox'] = BoundingBox.stub(stub[:filter_b_box]) unless stub[:filter_b_box].nil?
        data['FilterCountries'] = CountryCodeList.stub(stub[:filter_countries]) unless stub[:filter_countries].nil?
        data['MaxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['Language'] = stub[:language] unless stub[:language].nil?
        data
      end
    end

    # List Stubber for CountryCodeList
    class CountryCodeList
      def self.default(visited=[])
        return nil if visited.include?('CountryCodeList')
        visited = visited + ['CountryCodeList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for SearchPlaceIndexForText
    class SearchPlaceIndexForText
      def self.default(visited=[])
        {
          summary: SearchPlaceIndexForTextSummary.default(visited),
          results: SearchForTextResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Summary'] = SearchPlaceIndexForTextSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['Results'] = SearchForTextResultList.stub(stub[:results]) unless stub[:results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SearchForTextResultList
    class SearchForTextResultList
      def self.default(visited=[])
        return nil if visited.include?('SearchForTextResultList')
        visited = visited + ['SearchForTextResultList']
        [
          SearchForTextResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SearchForTextResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SearchForTextResult
    class SearchForTextResult
      def self.default(visited=[])
        return nil if visited.include?('SearchForTextResult')
        visited = visited + ['SearchForTextResult']
        {
          place: Place.default(visited),
          distance: 1.0,
          relevance: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchForTextResult.new
        data = {}
        data['Place'] = Place.stub(stub[:place]) unless stub[:place].nil?
        data['Distance'] = Hearth::NumberHelper.serialize(stub[:distance])
        data['Relevance'] = Hearth::NumberHelper.serialize(stub[:relevance])
        data
      end
    end

    # Structure Stubber for SearchPlaceIndexForTextSummary
    class SearchPlaceIndexForTextSummary
      def self.default(visited=[])
        return nil if visited.include?('SearchPlaceIndexForTextSummary')
        visited = visited + ['SearchPlaceIndexForTextSummary']
        {
          text: 'text',
          bias_position: Position.default(visited),
          filter_b_box: BoundingBox.default(visited),
          filter_countries: CountryCodeList.default(visited),
          max_results: 1,
          result_b_box: BoundingBox.default(visited),
          data_source: 'data_source',
          language: 'language',
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchPlaceIndexForTextSummary.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['BiasPosition'] = Position.stub(stub[:bias_position]) unless stub[:bias_position].nil?
        data['FilterBBox'] = BoundingBox.stub(stub[:filter_b_box]) unless stub[:filter_b_box].nil?
        data['FilterCountries'] = CountryCodeList.stub(stub[:filter_countries]) unless stub[:filter_countries].nil?
        data['MaxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['ResultBBox'] = BoundingBox.stub(stub[:result_b_box]) unless stub[:result_b_box].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['Language'] = stub[:language] unless stub[:language].nil?
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGeofenceCollection
    class UpdateGeofenceCollection
      def self.default(visited=[])
        {
          collection_name: 'collection_name',
          collection_arn: 'collection_arn',
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CollectionName'] = stub[:collection_name] unless stub[:collection_name].nil?
        data['CollectionArn'] = stub[:collection_arn] unless stub[:collection_arn].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMap
    class UpdateMap
      def self.default(visited=[])
        {
          map_name: 'map_name',
          map_arn: 'map_arn',
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MapName'] = stub[:map_name] unless stub[:map_name].nil?
        data['MapArn'] = stub[:map_arn] unless stub[:map_arn].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePlaceIndex
    class UpdatePlaceIndex
      def self.default(visited=[])
        {
          index_name: 'index_name',
          index_arn: 'index_arn',
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['IndexArn'] = stub[:index_arn] unless stub[:index_arn].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRouteCalculator
    class UpdateRouteCalculator
      def self.default(visited=[])
        {
          calculator_name: 'calculator_name',
          calculator_arn: 'calculator_arn',
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CalculatorName'] = stub[:calculator_name] unless stub[:calculator_name].nil?
        data['CalculatorArn'] = stub[:calculator_arn] unless stub[:calculator_arn].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTracker
    class UpdateTracker
      def self.default(visited=[])
        {
          tracker_name: 'tracker_name',
          tracker_arn: 'tracker_arn',
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TrackerName'] = stub[:tracker_name] unless stub[:tracker_name].nil?
        data['TrackerArn'] = stub[:tracker_arn] unless stub[:tracker_arn].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
