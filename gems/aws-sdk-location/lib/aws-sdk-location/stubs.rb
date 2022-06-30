# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

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
          errors: Stubs::BatchDeleteDevicePositionHistoryErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = Stubs::BatchDeleteDevicePositionHistoryErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchDeleteDevicePositionHistoryErrorList
    class BatchDeleteDevicePositionHistoryErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteDevicePositionHistoryErrorList')
        visited = visited + ['BatchDeleteDevicePositionHistoryErrorList']
        [
          Stubs::BatchDeleteDevicePositionHistoryError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchDeleteDevicePositionHistoryError.stub(element) unless element.nil?
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
          error: Stubs::BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDeleteDevicePositionHistoryError.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['Error'] = Stubs::BatchItemError.stub(stub[:error]) unless stub[:error].nil?
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
          errors: Stubs::BatchDeleteGeofenceErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = Stubs::BatchDeleteGeofenceErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchDeleteGeofenceErrorList
    class BatchDeleteGeofenceErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteGeofenceErrorList')
        visited = visited + ['BatchDeleteGeofenceErrorList']
        [
          Stubs::BatchDeleteGeofenceError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchDeleteGeofenceError.stub(element) unless element.nil?
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
          error: Stubs::BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDeleteGeofenceError.new
        data = {}
        data['GeofenceId'] = stub[:geofence_id] unless stub[:geofence_id].nil?
        data['Error'] = Stubs::BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for BatchEvaluateGeofences
    class BatchEvaluateGeofences
      def self.default(visited=[])
        {
          errors: Stubs::BatchEvaluateGeofencesErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = Stubs::BatchEvaluateGeofencesErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchEvaluateGeofencesErrorList
    class BatchEvaluateGeofencesErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchEvaluateGeofencesErrorList')
        visited = visited + ['BatchEvaluateGeofencesErrorList']
        [
          Stubs::BatchEvaluateGeofencesError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchEvaluateGeofencesError.stub(element) unless element.nil?
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
          error: Stubs::BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchEvaluateGeofencesError.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['Error'] = Stubs::BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for BatchGetDevicePosition
    class BatchGetDevicePosition
      def self.default(visited=[])
        {
          errors: Stubs::BatchGetDevicePositionErrorList.default(visited),
          device_positions: Stubs::DevicePositionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = Stubs::BatchGetDevicePositionErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        data['DevicePositions'] = Stubs::DevicePositionList.stub(stub[:device_positions]) unless stub[:device_positions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DevicePositionList
    class DevicePositionList
      def self.default(visited=[])
        return nil if visited.include?('DevicePositionList')
        visited = visited + ['DevicePositionList']
        [
          Stubs::DevicePosition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DevicePosition.stub(element) unless element.nil?
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
          position: Stubs::Position.default(visited),
          accuracy: Stubs::PositionalAccuracy.default(visited),
          position_properties: Stubs::PropertyMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DevicePosition.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['ReceivedTime'] = Hearth::TimeHelper.to_date_time(stub[:received_time]) unless stub[:received_time].nil?
        data['Position'] = Stubs::Position.stub(stub[:position]) unless stub[:position].nil?
        data['Accuracy'] = Stubs::PositionalAccuracy.stub(stub[:accuracy]) unless stub[:accuracy].nil?
        data['PositionProperties'] = Stubs::PropertyMap.stub(stub[:position_properties]) unless stub[:position_properties].nil?
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
          Stubs::BatchGetDevicePositionError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchGetDevicePositionError.stub(element) unless element.nil?
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
          error: Stubs::BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetDevicePositionError.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['Error'] = Stubs::BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for BatchPutGeofence
    class BatchPutGeofence
      def self.default(visited=[])
        {
          successes: Stubs::BatchPutGeofenceSuccessList.default(visited),
          errors: Stubs::BatchPutGeofenceErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Successes'] = Stubs::BatchPutGeofenceSuccessList.stub(stub[:successes]) unless stub[:successes].nil?
        data['Errors'] = Stubs::BatchPutGeofenceErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchPutGeofenceErrorList
    class BatchPutGeofenceErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchPutGeofenceErrorList')
        visited = visited + ['BatchPutGeofenceErrorList']
        [
          Stubs::BatchPutGeofenceError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchPutGeofenceError.stub(element) unless element.nil?
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
          error: Stubs::BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutGeofenceError.new
        data = {}
        data['GeofenceId'] = stub[:geofence_id] unless stub[:geofence_id].nil?
        data['Error'] = Stubs::BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # List Stubber for BatchPutGeofenceSuccessList
    class BatchPutGeofenceSuccessList
      def self.default(visited=[])
        return nil if visited.include?('BatchPutGeofenceSuccessList')
        visited = visited + ['BatchPutGeofenceSuccessList']
        [
          Stubs::BatchPutGeofenceSuccess.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchPutGeofenceSuccess.stub(element) unless element.nil?
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
          errors: Stubs::BatchUpdateDevicePositionErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = Stubs::BatchUpdateDevicePositionErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchUpdateDevicePositionErrorList
    class BatchUpdateDevicePositionErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchUpdateDevicePositionErrorList')
        visited = visited + ['BatchUpdateDevicePositionErrorList']
        [
          Stubs::BatchUpdateDevicePositionError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchUpdateDevicePositionError.stub(element) unless element.nil?
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
          error: Stubs::BatchItemError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchUpdateDevicePositionError.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['Error'] = Stubs::BatchItemError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for CalculateRoute
    class CalculateRoute
      def self.default(visited=[])
        {
          legs: Stubs::LegList.default(visited),
          summary: Stubs::CalculateRouteSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Legs'] = Stubs::LegList.stub(stub[:legs]) unless stub[:legs].nil?
        data['Summary'] = Stubs::CalculateRouteSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CalculateRouteSummary
    class CalculateRouteSummary
      def self.default(visited=[])
        return nil if visited.include?('CalculateRouteSummary')
        visited = visited + ['CalculateRouteSummary']
        {
          route_b_box: Stubs::BoundingBox.default(visited),
          data_source: 'data_source',
          distance: 1.0,
          duration_seconds: 1.0,
          distance_unit: 'distance_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CalculateRouteSummary.new
        data = {}
        data['RouteBBox'] = Stubs::BoundingBox.stub(stub[:route_b_box]) unless stub[:route_b_box].nil?
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
          Stubs::Leg.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Leg.stub(element) unless element.nil?
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
          start_position: Stubs::Position.default(visited),
          end_position: Stubs::Position.default(visited),
          distance: 1.0,
          duration_seconds: 1.0,
          geometry: Stubs::LegGeometry.default(visited),
          steps: Stubs::StepList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Leg.new
        data = {}
        data['StartPosition'] = Stubs::Position.stub(stub[:start_position]) unless stub[:start_position].nil?
        data['EndPosition'] = Stubs::Position.stub(stub[:end_position]) unless stub[:end_position].nil?
        data['Distance'] = Hearth::NumberHelper.serialize(stub[:distance])
        data['DurationSeconds'] = Hearth::NumberHelper.serialize(stub[:duration_seconds])
        data['Geometry'] = Stubs::LegGeometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data['Steps'] = Stubs::StepList.stub(stub[:steps]) unless stub[:steps].nil?
        data
      end
    end

    # List Stubber for StepList
    class StepList
      def self.default(visited=[])
        return nil if visited.include?('StepList')
        visited = visited + ['StepList']
        [
          Stubs::Step.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Step.stub(element) unless element.nil?
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
          start_position: Stubs::Position.default(visited),
          end_position: Stubs::Position.default(visited),
          distance: 1.0,
          duration_seconds: 1.0,
          geometry_offset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Step.new
        data = {}
        data['StartPosition'] = Stubs::Position.stub(stub[:start_position]) unless stub[:start_position].nil?
        data['EndPosition'] = Stubs::Position.stub(stub[:end_position]) unless stub[:end_position].nil?
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
          line_string: Stubs::LineString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LegGeometry.new
        data = {}
        data['LineString'] = Stubs::LineString.stub(stub[:line_string]) unless stub[:line_string].nil?
        data
      end
    end

    # List Stubber for LineString
    class LineString
      def self.default(visited=[])
        return nil if visited.include?('LineString')
        visited = visited + ['LineString']
        [
          Stubs::Position.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Position.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CalculateRouteMatrix
    class CalculateRouteMatrix
      def self.default(visited=[])
        {
          route_matrix: Stubs::RouteMatrix.default(visited),
          snapped_departure_positions: Stubs::PositionList.default(visited),
          snapped_destination_positions: Stubs::PositionList.default(visited),
          summary: Stubs::CalculateRouteMatrixSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RouteMatrix'] = Stubs::RouteMatrix.stub(stub[:route_matrix]) unless stub[:route_matrix].nil?
        data['SnappedDeparturePositions'] = Stubs::PositionList.stub(stub[:snapped_departure_positions]) unless stub[:snapped_departure_positions].nil?
        data['SnappedDestinationPositions'] = Stubs::PositionList.stub(stub[:snapped_destination_positions]) unless stub[:snapped_destination_positions].nil?
        data['Summary'] = Stubs::CalculateRouteMatrixSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          Stubs::Position.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Position.stub(element) unless element.nil?
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
          Stubs::RouteMatrixRow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RouteMatrixRow.stub(element) unless element.nil?
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
          Stubs::RouteMatrixEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RouteMatrixEntry.stub(element) unless element.nil?
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
          error: Stubs::RouteMatrixEntryError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteMatrixEntry.new
        data = {}
        data['Distance'] = Hearth::NumberHelper.serialize(stub[:distance])
        data['DurationSeconds'] = Hearth::NumberHelper.serialize(stub[:duration_seconds])
        data['Error'] = Stubs::RouteMatrixEntryError.stub(stub[:error]) unless stub[:error].nil?
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          tags: Stubs::TagMap.default(visited),
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
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          configuration: Stubs::MapConfiguration.default(visited),
          description: 'description',
          tags: Stubs::TagMap.default(visited),
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
        data['Configuration'] = Stubs::MapConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data_source_configuration: Stubs::DataSourceConfiguration.default(visited),
          tags: Stubs::TagMap.default(visited),
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
        data['DataSourceConfiguration'] = Stubs::DataSourceConfiguration.stub(stub[:data_source_configuration]) unless stub[:data_source_configuration].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          tags: Stubs::TagMap.default(visited),
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
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          tags: Stubs::TagMap.default(visited),
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
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['PositionFiltering'] = stub[:position_filtering] unless stub[:position_filtering].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          position: Stubs::Position.default(visited),
          accuracy: Stubs::PositionalAccuracy.default(visited),
          position_properties: Stubs::PropertyMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['ReceivedTime'] = Hearth::TimeHelper.to_date_time(stub[:received_time]) unless stub[:received_time].nil?
        data['Position'] = Stubs::Position.stub(stub[:position]) unless stub[:position].nil?
        data['Accuracy'] = Stubs::PositionalAccuracy.stub(stub[:accuracy]) unless stub[:accuracy].nil?
        data['PositionProperties'] = Stubs::PropertyMap.stub(stub[:position_properties]) unless stub[:position_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDevicePositionHistory
    class GetDevicePositionHistory
      def self.default(visited=[])
        {
          device_positions: Stubs::DevicePositionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DevicePositions'] = Stubs::DevicePositionList.stub(stub[:device_positions]) unless stub[:device_positions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGeofence
    class GetGeofence
      def self.default(visited=[])
        {
          geofence_id: 'geofence_id',
          geometry: Stubs::GeofenceGeometry.default(visited),
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
        data['Geometry'] = Stubs::GeofenceGeometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_date_time(stub[:create_time]) unless stub[:create_time].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:update_time]) unless stub[:update_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GeofenceGeometry
    class GeofenceGeometry
      def self.default(visited=[])
        return nil if visited.include?('GeofenceGeometry')
        visited = visited + ['GeofenceGeometry']
        {
          polygon: Stubs::LinearRings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GeofenceGeometry.new
        data = {}
        data['Polygon'] = Stubs::LinearRings.stub(stub[:polygon]) unless stub[:polygon].nil?
        data
      end
    end

    # List Stubber for LinearRings
    class LinearRings
      def self.default(visited=[])
        return nil if visited.include?('LinearRings')
        visited = visited + ['LinearRings']
        [
          Stubs::LinearRing.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LinearRing.stub(element) unless element.nil?
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
          Stubs::Position.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Position.stub(element) unless element.nil?
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
        http_resp.body = StringIO.new(stub[:blob] || '')
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
        http_resp.body = StringIO.new(stub[:blob] || '')
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
        http_resp.body = StringIO.new(stub[:blob] || '')
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
        http_resp.body = StringIO.new(stub[:blob] || '')
      end
    end

    # Operation Stubber for ListDevicePositions
    class ListDevicePositions
      def self.default(visited=[])
        {
          entries: Stubs::ListDevicePositionsResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = Stubs::ListDevicePositionsResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListDevicePositionsResponseEntryList
    class ListDevicePositionsResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListDevicePositionsResponseEntryList')
        visited = visited + ['ListDevicePositionsResponseEntryList']
        [
          Stubs::ListDevicePositionsResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListDevicePositionsResponseEntry.stub(element) unless element.nil?
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
          position: Stubs::Position.default(visited),
          accuracy: Stubs::PositionalAccuracy.default(visited),
          position_properties: Stubs::PropertyMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListDevicePositionsResponseEntry.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(stub[:sample_time]) unless stub[:sample_time].nil?
        data['Position'] = Stubs::Position.stub(stub[:position]) unless stub[:position].nil?
        data['Accuracy'] = Stubs::PositionalAccuracy.stub(stub[:accuracy]) unless stub[:accuracy].nil?
        data['PositionProperties'] = Stubs::PropertyMap.stub(stub[:position_properties]) unless stub[:position_properties].nil?
        data
      end
    end

    # Operation Stubber for ListGeofenceCollections
    class ListGeofenceCollections
      def self.default(visited=[])
        {
          entries: Stubs::ListGeofenceCollectionsResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = Stubs::ListGeofenceCollectionsResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListGeofenceCollectionsResponseEntryList
    class ListGeofenceCollectionsResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListGeofenceCollectionsResponseEntryList')
        visited = visited + ['ListGeofenceCollectionsResponseEntryList']
        [
          Stubs::ListGeofenceCollectionsResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListGeofenceCollectionsResponseEntry.stub(element) unless element.nil?
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
          entries: Stubs::ListGeofenceResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = Stubs::ListGeofenceResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListGeofenceResponseEntryList
    class ListGeofenceResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListGeofenceResponseEntryList')
        visited = visited + ['ListGeofenceResponseEntryList']
        [
          Stubs::ListGeofenceResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListGeofenceResponseEntry.stub(element) unless element.nil?
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
          geometry: Stubs::GeofenceGeometry.default(visited),
          status: 'status',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListGeofenceResponseEntry.new
        data = {}
        data['GeofenceId'] = stub[:geofence_id] unless stub[:geofence_id].nil?
        data['Geometry'] = Stubs::GeofenceGeometry.stub(stub[:geometry]) unless stub[:geometry].nil?
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
          entries: Stubs::ListMapsResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = Stubs::ListMapsResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListMapsResponseEntryList
    class ListMapsResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListMapsResponseEntryList')
        visited = visited + ['ListMapsResponseEntryList']
        [
          Stubs::ListMapsResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListMapsResponseEntry.stub(element) unless element.nil?
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
          entries: Stubs::ListPlaceIndexesResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = Stubs::ListPlaceIndexesResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListPlaceIndexesResponseEntryList
    class ListPlaceIndexesResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListPlaceIndexesResponseEntryList')
        visited = visited + ['ListPlaceIndexesResponseEntryList']
        [
          Stubs::ListPlaceIndexesResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListPlaceIndexesResponseEntry.stub(element) unless element.nil?
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
          entries: Stubs::ListRouteCalculatorsResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = Stubs::ListRouteCalculatorsResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListRouteCalculatorsResponseEntryList
    class ListRouteCalculatorsResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListRouteCalculatorsResponseEntryList')
        visited = visited + ['ListRouteCalculatorsResponseEntryList']
        [
          Stubs::ListRouteCalculatorsResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListRouteCalculatorsResponseEntry.stub(element) unless element.nil?
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
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTrackerConsumers
    class ListTrackerConsumers
      def self.default(visited=[])
        {
          consumer_arns: Stubs::ArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConsumerArns'] = Stubs::ArnList.stub(stub[:consumer_arns]) unless stub[:consumer_arns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          entries: Stubs::ListTrackersResponseEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Entries'] = Stubs::ListTrackersResponseEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListTrackersResponseEntryList
    class ListTrackersResponseEntryList
      def self.default(visited=[])
        return nil if visited.include?('ListTrackersResponseEntryList')
        visited = visited + ['ListTrackersResponseEntryList']
        [
          Stubs::ListTrackersResponseEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListTrackersResponseEntry.stub(element) unless element.nil?
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchPlaceIndexForPosition
    class SearchPlaceIndexForPosition
      def self.default(visited=[])
        {
          summary: Stubs::SearchPlaceIndexForPositionSummary.default(visited),
          results: Stubs::SearchForPositionResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Summary'] = Stubs::SearchPlaceIndexForPositionSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['Results'] = Stubs::SearchForPositionResultList.stub(stub[:results]) unless stub[:results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SearchForPositionResultList
    class SearchForPositionResultList
      def self.default(visited=[])
        return nil if visited.include?('SearchForPositionResultList')
        visited = visited + ['SearchForPositionResultList']
        [
          Stubs::SearchForPositionResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SearchForPositionResult.stub(element) unless element.nil?
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
          place: Stubs::Place.default(visited),
          distance: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchForPositionResult.new
        data = {}
        data['Place'] = Stubs::Place.stub(stub[:place]) unless stub[:place].nil?
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
          geometry: Stubs::PlaceGeometry.default(visited),
          address_number: 'address_number',
          street: 'street',
          neighborhood: 'neighborhood',
          municipality: 'municipality',
          sub_region: 'sub_region',
          region: 'region',
          country: 'country',
          postal_code: 'postal_code',
          interpolated: false,
          time_zone: Stubs::TimeZone.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Place.new
        data = {}
        data['Label'] = stub[:label] unless stub[:label].nil?
        data['Geometry'] = Stubs::PlaceGeometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data['AddressNumber'] = stub[:address_number] unless stub[:address_number].nil?
        data['Street'] = stub[:street] unless stub[:street].nil?
        data['Neighborhood'] = stub[:neighborhood] unless stub[:neighborhood].nil?
        data['Municipality'] = stub[:municipality] unless stub[:municipality].nil?
        data['SubRegion'] = stub[:sub_region] unless stub[:sub_region].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['PostalCode'] = stub[:postal_code] unless stub[:postal_code].nil?
        data['Interpolated'] = stub[:interpolated] unless stub[:interpolated].nil?
        data['TimeZone'] = Stubs::TimeZone.stub(stub[:time_zone]) unless stub[:time_zone].nil?
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
          point: Stubs::Position.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PlaceGeometry.new
        data = {}
        data['Point'] = Stubs::Position.stub(stub[:point]) unless stub[:point].nil?
        data
      end
    end

    # Structure Stubber for SearchPlaceIndexForPositionSummary
    class SearchPlaceIndexForPositionSummary
      def self.default(visited=[])
        return nil if visited.include?('SearchPlaceIndexForPositionSummary')
        visited = visited + ['SearchPlaceIndexForPositionSummary']
        {
          position: Stubs::Position.default(visited),
          max_results: 1,
          data_source: 'data_source',
          language: 'language',
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchPlaceIndexForPositionSummary.new
        data = {}
        data['Position'] = Stubs::Position.stub(stub[:position]) unless stub[:position].nil?
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
          summary: Stubs::SearchPlaceIndexForSuggestionsSummary.default(visited),
          results: Stubs::SearchForSuggestionsResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Summary'] = Stubs::SearchPlaceIndexForSuggestionsSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['Results'] = Stubs::SearchForSuggestionsResultList.stub(stub[:results]) unless stub[:results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SearchForSuggestionsResultList
    class SearchForSuggestionsResultList
      def self.default(visited=[])
        return nil if visited.include?('SearchForSuggestionsResultList')
        visited = visited + ['SearchForSuggestionsResultList']
        [
          Stubs::SearchForSuggestionsResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SearchForSuggestionsResult.stub(element) unless element.nil?
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
          bias_position: Stubs::Position.default(visited),
          filter_b_box: Stubs::BoundingBox.default(visited),
          filter_countries: Stubs::CountryCodeList.default(visited),
          max_results: 1,
          data_source: 'data_source',
          language: 'language',
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchPlaceIndexForSuggestionsSummary.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['BiasPosition'] = Stubs::Position.stub(stub[:bias_position]) unless stub[:bias_position].nil?
        data['FilterBBox'] = Stubs::BoundingBox.stub(stub[:filter_b_box]) unless stub[:filter_b_box].nil?
        data['FilterCountries'] = Stubs::CountryCodeList.stub(stub[:filter_countries]) unless stub[:filter_countries].nil?
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
          summary: Stubs::SearchPlaceIndexForTextSummary.default(visited),
          results: Stubs::SearchForTextResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Summary'] = Stubs::SearchPlaceIndexForTextSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['Results'] = Stubs::SearchForTextResultList.stub(stub[:results]) unless stub[:results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SearchForTextResultList
    class SearchForTextResultList
      def self.default(visited=[])
        return nil if visited.include?('SearchForTextResultList')
        visited = visited + ['SearchForTextResultList']
        [
          Stubs::SearchForTextResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SearchForTextResult.stub(element) unless element.nil?
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
          place: Stubs::Place.default(visited),
          distance: 1.0,
          relevance: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchForTextResult.new
        data = {}
        data['Place'] = Stubs::Place.stub(stub[:place]) unless stub[:place].nil?
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
          bias_position: Stubs::Position.default(visited),
          filter_b_box: Stubs::BoundingBox.default(visited),
          filter_countries: Stubs::CountryCodeList.default(visited),
          max_results: 1,
          result_b_box: Stubs::BoundingBox.default(visited),
          data_source: 'data_source',
          language: 'language',
        }
      end

      def self.stub(stub)
        stub ||= Types::SearchPlaceIndexForTextSummary.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['BiasPosition'] = Stubs::Position.stub(stub[:bias_position]) unless stub[:bias_position].nil?
        data['FilterBBox'] = Stubs::BoundingBox.stub(stub[:filter_b_box]) unless stub[:filter_b_box].nil?
        data['FilterCountries'] = Stubs::CountryCodeList.stub(stub[:filter_countries]) unless stub[:filter_countries].nil?
        data['MaxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['ResultBBox'] = Stubs::BoundingBox.stub(stub[:result_b_box]) unless stub[:result_b_box].nil?
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
