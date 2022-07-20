# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Location
  module Builders

    # Operation Builder for AssociateTrackerConsumer
    class AssociateTrackerConsumer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s/consumers',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ConsumerArn'] = input[:consumer_arn] unless input[:consumer_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchDeleteDevicePositionHistory
    class BatchDeleteDevicePositionHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s/delete-positions',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceIds'] = DeviceIdsList.build(input[:device_ids]) unless input[:device_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeviceIdsList
    class DeviceIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDeleteGeofence
    class BatchDeleteGeofence
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:collection_name].to_s.empty?
          raise ArgumentError, "HTTP label :collection_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/geofencing/v0/collections/%<CollectionName>s/delete-geofences',
            CollectionName: Hearth::HTTP.uri_escape(input[:collection_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GeofenceIds'] = IdList.build(input[:geofence_ids]) unless input[:geofence_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IdList
    class IdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchEvaluateGeofences
    class BatchEvaluateGeofences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:collection_name].to_s.empty?
          raise ArgumentError, "HTTP label :collection_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/geofencing/v0/collections/%<CollectionName>s/positions',
            CollectionName: Hearth::HTTP.uri_escape(input[:collection_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DevicePositionUpdates'] = DevicePositionUpdateList.build(input[:device_position_updates]) unless input[:device_position_updates].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DevicePositionUpdateList
    class DevicePositionUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << DevicePositionUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DevicePositionUpdate
    class DevicePositionUpdate
      def self.build(input)
        data = {}
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        data['SampleTime'] = Hearth::TimeHelper.to_date_time(input[:sample_time]) unless input[:sample_time].nil?
        data['Position'] = Position.build(input[:position]) unless input[:position].nil?
        data['Accuracy'] = PositionalAccuracy.build(input[:accuracy]) unless input[:accuracy].nil?
        data['PositionProperties'] = PropertyMap.build(input[:position_properties]) unless input[:position_properties].nil?
        data
      end
    end

    # Map Builder for PropertyMap
    class PropertyMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for PositionalAccuracy
    class PositionalAccuracy
      def self.build(input)
        data = {}
        data['Horizontal'] = Hearth::NumberHelper.serialize(input[:horizontal]) unless input[:horizontal].nil?
        data
      end
    end

    # List Builder for Position
    class Position
      def self.build(input)
        data = []
        input.each do |element|
          data << Hearth::NumberHelper.serialize(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetDevicePosition
    class BatchGetDevicePosition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s/get-positions',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceIds'] = IdList.build(input[:device_ids]) unless input[:device_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchPutGeofence
    class BatchPutGeofence
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:collection_name].to_s.empty?
          raise ArgumentError, "HTTP label :collection_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/geofencing/v0/collections/%<CollectionName>s/put-geofences',
            CollectionName: Hearth::HTTP.uri_escape(input[:collection_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Entries'] = BatchPutGeofenceRequestEntryList.build(input[:entries]) unless input[:entries].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchPutGeofenceRequestEntryList
    class BatchPutGeofenceRequestEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << BatchPutGeofenceRequestEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchPutGeofenceRequestEntry
    class BatchPutGeofenceRequestEntry
      def self.build(input)
        data = {}
        data['GeofenceId'] = input[:geofence_id] unless input[:geofence_id].nil?
        data['Geometry'] = GeofenceGeometry.build(input[:geometry]) unless input[:geometry].nil?
        data
      end
    end

    # Structure Builder for GeofenceGeometry
    class GeofenceGeometry
      def self.build(input)
        data = {}
        data['Polygon'] = LinearRings.build(input[:polygon]) unless input[:polygon].nil?
        data
      end
    end

    # List Builder for LinearRings
    class LinearRings
      def self.build(input)
        data = []
        input.each do |element|
          data << LinearRing.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for LinearRing
    class LinearRing
      def self.build(input)
        data = []
        input.each do |element|
          data << Position.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchUpdateDevicePosition
    class BatchUpdateDevicePosition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s/positions',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Updates'] = DevicePositionUpdateList.build(input[:updates]) unless input[:updates].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CalculateRoute
    class CalculateRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:calculator_name].to_s.empty?
          raise ArgumentError, "HTTP label :calculator_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routes/v0/calculators/%<CalculatorName>s/calculate/route',
            CalculatorName: Hearth::HTTP.uri_escape(input[:calculator_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeparturePosition'] = Position.build(input[:departure_position]) unless input[:departure_position].nil?
        data['DestinationPosition'] = Position.build(input[:destination_position]) unless input[:destination_position].nil?
        data['WaypointPositions'] = WaypointPositionList.build(input[:waypoint_positions]) unless input[:waypoint_positions].nil?
        data['TravelMode'] = input[:travel_mode] unless input[:travel_mode].nil?
        data['DepartureTime'] = Hearth::TimeHelper.to_date_time(input[:departure_time]) unless input[:departure_time].nil?
        data['DepartNow'] = input[:depart_now] unless input[:depart_now].nil?
        data['DistanceUnit'] = input[:distance_unit] unless input[:distance_unit].nil?
        data['IncludeLegGeometry'] = input[:include_leg_geometry] unless input[:include_leg_geometry].nil?
        data['CarModeOptions'] = CalculateRouteCarModeOptions.build(input[:car_mode_options]) unless input[:car_mode_options].nil?
        data['TruckModeOptions'] = CalculateRouteTruckModeOptions.build(input[:truck_mode_options]) unless input[:truck_mode_options].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CalculateRouteTruckModeOptions
    class CalculateRouteTruckModeOptions
      def self.build(input)
        data = {}
        data['AvoidFerries'] = input[:avoid_ferries] unless input[:avoid_ferries].nil?
        data['AvoidTolls'] = input[:avoid_tolls] unless input[:avoid_tolls].nil?
        data['Dimensions'] = TruckDimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['Weight'] = TruckWeight.build(input[:weight]) unless input[:weight].nil?
        data
      end
    end

    # Structure Builder for TruckWeight
    class TruckWeight
      def self.build(input)
        data = {}
        data['Total'] = Hearth::NumberHelper.serialize(input[:total]) unless input[:total].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Structure Builder for TruckDimensions
    class TruckDimensions
      def self.build(input)
        data = {}
        data['Length'] = Hearth::NumberHelper.serialize(input[:length]) unless input[:length].nil?
        data['Height'] = Hearth::NumberHelper.serialize(input[:height]) unless input[:height].nil?
        data['Width'] = Hearth::NumberHelper.serialize(input[:width]) unless input[:width].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Structure Builder for CalculateRouteCarModeOptions
    class CalculateRouteCarModeOptions
      def self.build(input)
        data = {}
        data['AvoidFerries'] = input[:avoid_ferries] unless input[:avoid_ferries].nil?
        data['AvoidTolls'] = input[:avoid_tolls] unless input[:avoid_tolls].nil?
        data
      end
    end

    # List Builder for WaypointPositionList
    class WaypointPositionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Position.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CalculateRouteMatrix
    class CalculateRouteMatrix
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:calculator_name].to_s.empty?
          raise ArgumentError, "HTTP label :calculator_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routes/v0/calculators/%<CalculatorName>s/calculate/route-matrix',
            CalculatorName: Hearth::HTTP.uri_escape(input[:calculator_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeparturePositions'] = PositionList.build(input[:departure_positions]) unless input[:departure_positions].nil?
        data['DestinationPositions'] = PositionList.build(input[:destination_positions]) unless input[:destination_positions].nil?
        data['TravelMode'] = input[:travel_mode] unless input[:travel_mode].nil?
        data['DepartureTime'] = Hearth::TimeHelper.to_date_time(input[:departure_time]) unless input[:departure_time].nil?
        data['DepartNow'] = input[:depart_now] unless input[:depart_now].nil?
        data['DistanceUnit'] = input[:distance_unit] unless input[:distance_unit].nil?
        data['CarModeOptions'] = CalculateRouteCarModeOptions.build(input[:car_mode_options]) unless input[:car_mode_options].nil?
        data['TruckModeOptions'] = CalculateRouteTruckModeOptions.build(input[:truck_mode_options]) unless input[:truck_mode_options].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PositionList
    class PositionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Position.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateGeofenceCollection
    class CreateGeofenceCollection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/geofencing/v0/collections')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CollectionName'] = input[:collection_name] unless input[:collection_name].nil?
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['PricingPlanDataSource'] = input[:pricing_plan_data_source] unless input[:pricing_plan_data_source].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for CreateMap
    class CreateMap
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/maps/v0/maps')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MapName'] = input[:map_name] unless input[:map_name].nil?
        data['Configuration'] = MapConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MapConfiguration
    class MapConfiguration
      def self.build(input)
        data = {}
        data['Style'] = input[:style] unless input[:style].nil?
        data
      end
    end

    # Operation Builder for CreatePlaceIndex
    class CreatePlaceIndex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/places/v0/indexes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['DataSource'] = input[:data_source] unless input[:data_source].nil?
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DataSourceConfiguration'] = DataSourceConfiguration.build(input[:data_source_configuration]) unless input[:data_source_configuration].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataSourceConfiguration
    class DataSourceConfiguration
      def self.build(input)
        data = {}
        data['IntendedUse'] = input[:intended_use] unless input[:intended_use].nil?
        data
      end
    end

    # Operation Builder for CreateRouteCalculator
    class CreateRouteCalculator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/routes/v0/calculators')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CalculatorName'] = input[:calculator_name] unless input[:calculator_name].nil?
        data['DataSource'] = input[:data_source] unless input[:data_source].nil?
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTracker
    class CreateTracker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tracking/v0/trackers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TrackerName'] = input[:tracker_name] unless input[:tracker_name].nil?
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['PricingPlanDataSource'] = input[:pricing_plan_data_source] unless input[:pricing_plan_data_source].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['PositionFiltering'] = input[:position_filtering] unless input[:position_filtering].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteGeofenceCollection
    class DeleteGeofenceCollection
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:collection_name].to_s.empty?
          raise ArgumentError, "HTTP label :collection_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/geofencing/v0/collections/%<CollectionName>s',
            CollectionName: Hearth::HTTP.uri_escape(input[:collection_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMap
    class DeleteMap
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:map_name].to_s.empty?
          raise ArgumentError, "HTTP label :map_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/maps/v0/maps/%<MapName>s',
            MapName: Hearth::HTTP.uri_escape(input[:map_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePlaceIndex
    class DeletePlaceIndex
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:index_name].to_s.empty?
          raise ArgumentError, "HTTP label :index_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/places/v0/indexes/%<IndexName>s',
            IndexName: Hearth::HTTP.uri_escape(input[:index_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRouteCalculator
    class DeleteRouteCalculator
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:calculator_name].to_s.empty?
          raise ArgumentError, "HTTP label :calculator_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routes/v0/calculators/%<CalculatorName>s',
            CalculatorName: Hearth::HTTP.uri_escape(input[:calculator_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTracker
    class DeleteTracker
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeGeofenceCollection
    class DescribeGeofenceCollection
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:collection_name].to_s.empty?
          raise ArgumentError, "HTTP label :collection_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/geofencing/v0/collections/%<CollectionName>s',
            CollectionName: Hearth::HTTP.uri_escape(input[:collection_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeMap
    class DescribeMap
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:map_name].to_s.empty?
          raise ArgumentError, "HTTP label :map_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/maps/v0/maps/%<MapName>s',
            MapName: Hearth::HTTP.uri_escape(input[:map_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePlaceIndex
    class DescribePlaceIndex
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:index_name].to_s.empty?
          raise ArgumentError, "HTTP label :index_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/places/v0/indexes/%<IndexName>s',
            IndexName: Hearth::HTTP.uri_escape(input[:index_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRouteCalculator
    class DescribeRouteCalculator
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:calculator_name].to_s.empty?
          raise ArgumentError, "HTTP label :calculator_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routes/v0/calculators/%<CalculatorName>s',
            CalculatorName: Hearth::HTTP.uri_escape(input[:calculator_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeTracker
    class DescribeTracker
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateTrackerConsumer
    class DisassociateTrackerConsumer
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        if input[:consumer_arn].to_s.empty?
          raise ArgumentError, "HTTP label :consumer_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s/consumers/%<ConsumerArn>s',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s),
            ConsumerArn: Hearth::HTTP.uri_escape(input[:consumer_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDevicePosition
    class GetDevicePosition
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s/devices/%<DeviceId>s/positions/latest',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s),
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDevicePositionHistory
    class GetDevicePositionHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s/devices/%<DeviceId>s/list-positions',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s),
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['StartTimeInclusive'] = Hearth::TimeHelper.to_date_time(input[:start_time_inclusive]) unless input[:start_time_inclusive].nil?
        data['EndTimeExclusive'] = Hearth::TimeHelper.to_date_time(input[:end_time_exclusive]) unless input[:end_time_exclusive].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGeofence
    class GetGeofence
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:collection_name].to_s.empty?
          raise ArgumentError, "HTTP label :collection_name cannot be nil or empty."
        end
        if input[:geofence_id].to_s.empty?
          raise ArgumentError, "HTTP label :geofence_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/geofencing/v0/collections/%<CollectionName>s/geofences/%<GeofenceId>s',
            CollectionName: Hearth::HTTP.uri_escape(input[:collection_name].to_s),
            GeofenceId: Hearth::HTTP.uri_escape(input[:geofence_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMapGlyphs
    class GetMapGlyphs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:map_name].to_s.empty?
          raise ArgumentError, "HTTP label :map_name cannot be nil or empty."
        end
        if input[:font_stack].to_s.empty?
          raise ArgumentError, "HTTP label :font_stack cannot be nil or empty."
        end
        if input[:font_unicode_range].to_s.empty?
          raise ArgumentError, "HTTP label :font_unicode_range cannot be nil or empty."
        end
        http_req.append_path(format(
            '/maps/v0/maps/%<MapName>s/glyphs/%<FontStack>s/%<FontUnicodeRange>s',
            MapName: Hearth::HTTP.uri_escape(input[:map_name].to_s),
            FontStack: Hearth::HTTP.uri_escape(input[:font_stack].to_s),
            FontUnicodeRange: Hearth::HTTP.uri_escape(input[:font_unicode_range].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMapSprites
    class GetMapSprites
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:map_name].to_s.empty?
          raise ArgumentError, "HTTP label :map_name cannot be nil or empty."
        end
        if input[:file_name].to_s.empty?
          raise ArgumentError, "HTTP label :file_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/maps/v0/maps/%<MapName>s/sprites/%<FileName>s',
            MapName: Hearth::HTTP.uri_escape(input[:map_name].to_s),
            FileName: Hearth::HTTP.uri_escape(input[:file_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMapStyleDescriptor
    class GetMapStyleDescriptor
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:map_name].to_s.empty?
          raise ArgumentError, "HTTP label :map_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/maps/v0/maps/%<MapName>s/style-descriptor',
            MapName: Hearth::HTTP.uri_escape(input[:map_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMapTile
    class GetMapTile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:map_name].to_s.empty?
          raise ArgumentError, "HTTP label :map_name cannot be nil or empty."
        end
        if input[:z].to_s.empty?
          raise ArgumentError, "HTTP label :z cannot be nil or empty."
        end
        if input[:x].to_s.empty?
          raise ArgumentError, "HTTP label :x cannot be nil or empty."
        end
        if input[:y].to_s.empty?
          raise ArgumentError, "HTTP label :y cannot be nil or empty."
        end
        http_req.append_path(format(
            '/maps/v0/maps/%<MapName>s/tiles/%<Z>s/%<X>s/%<Y>s',
            MapName: Hearth::HTTP.uri_escape(input[:map_name].to_s),
            Z: Hearth::HTTP.uri_escape(input[:z].to_s),
            X: Hearth::HTTP.uri_escape(input[:x].to_s),
            Y: Hearth::HTTP.uri_escape(input[:y].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDevicePositions
    class ListDevicePositions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s/list-positions',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGeofenceCollections
    class ListGeofenceCollections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/geofencing/v0/list-collections')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGeofences
    class ListGeofences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:collection_name].to_s.empty?
          raise ArgumentError, "HTTP label :collection_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/geofencing/v0/collections/%<CollectionName>s/list-geofences',
            CollectionName: Hearth::HTTP.uri_escape(input[:collection_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMaps
    class ListMaps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/maps/v0/list-maps')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPlaceIndexes
    class ListPlaceIndexes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/places/v0/list-indexes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRouteCalculators
    class ListRouteCalculators
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/routes/v0/list-calculators')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTrackerConsumers
    class ListTrackerConsumers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s/list-consumers',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTrackers
    class ListTrackers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tracking/v0/list-trackers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutGeofence
    class PutGeofence
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:collection_name].to_s.empty?
          raise ArgumentError, "HTTP label :collection_name cannot be nil or empty."
        end
        if input[:geofence_id].to_s.empty?
          raise ArgumentError, "HTTP label :geofence_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/geofencing/v0/collections/%<CollectionName>s/geofences/%<GeofenceId>s',
            CollectionName: Hearth::HTTP.uri_escape(input[:collection_name].to_s),
            GeofenceId: Hearth::HTTP.uri_escape(input[:geofence_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Geometry'] = GeofenceGeometry.build(input[:geometry]) unless input[:geometry].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchPlaceIndexForPosition
    class SearchPlaceIndexForPosition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:index_name].to_s.empty?
          raise ArgumentError, "HTTP label :index_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/places/v0/indexes/%<IndexName>s/search/position',
            IndexName: Hearth::HTTP.uri_escape(input[:index_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Position'] = Position.build(input[:position]) unless input[:position].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Language'] = input[:language] unless input[:language].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchPlaceIndexForSuggestions
    class SearchPlaceIndexForSuggestions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:index_name].to_s.empty?
          raise ArgumentError, "HTTP label :index_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/places/v0/indexes/%<IndexName>s/search/suggestions',
            IndexName: Hearth::HTTP.uri_escape(input[:index_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['BiasPosition'] = Position.build(input[:bias_position]) unless input[:bias_position].nil?
        data['FilterBBox'] = BoundingBox.build(input[:filter_b_box]) unless input[:filter_b_box].nil?
        data['FilterCountries'] = CountryCodeList.build(input[:filter_countries]) unless input[:filter_countries].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Language'] = input[:language] unless input[:language].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CountryCodeList
    class CountryCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for BoundingBox
    class BoundingBox
      def self.build(input)
        data = []
        input.each do |element|
          data << Hearth::NumberHelper.serialize(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchPlaceIndexForText
    class SearchPlaceIndexForText
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:index_name].to_s.empty?
          raise ArgumentError, "HTTP label :index_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/places/v0/indexes/%<IndexName>s/search/text',
            IndexName: Hearth::HTTP.uri_escape(input[:index_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['BiasPosition'] = Position.build(input[:bias_position]) unless input[:bias_position].nil?
        data['FilterBBox'] = BoundingBox.build(input[:filter_b_box]) unless input[:filter_b_box].nil?
        data['FilterCountries'] = CountryCodeList.build(input[:filter_countries]) unless input[:filter_countries].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Language'] = input[:language] unless input[:language].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateGeofenceCollection
    class UpdateGeofenceCollection
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:collection_name].to_s.empty?
          raise ArgumentError, "HTTP label :collection_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/geofencing/v0/collections/%<CollectionName>s',
            CollectionName: Hearth::HTTP.uri_escape(input[:collection_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['PricingPlanDataSource'] = input[:pricing_plan_data_source] unless input[:pricing_plan_data_source].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMap
    class UpdateMap
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:map_name].to_s.empty?
          raise ArgumentError, "HTTP label :map_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/maps/v0/maps/%<MapName>s',
            MapName: Hearth::HTTP.uri_escape(input[:map_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePlaceIndex
    class UpdatePlaceIndex
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:index_name].to_s.empty?
          raise ArgumentError, "HTTP label :index_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/places/v0/indexes/%<IndexName>s',
            IndexName: Hearth::HTTP.uri_escape(input[:index_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DataSourceConfiguration'] = DataSourceConfiguration.build(input[:data_source_configuration]) unless input[:data_source_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRouteCalculator
    class UpdateRouteCalculator
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:calculator_name].to_s.empty?
          raise ArgumentError, "HTTP label :calculator_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routes/v0/calculators/%<CalculatorName>s',
            CalculatorName: Hearth::HTTP.uri_escape(input[:calculator_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTracker
    class UpdateTracker
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:tracker_name].to_s.empty?
          raise ArgumentError, "HTTP label :tracker_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tracking/v0/trackers/%<TrackerName>s',
            TrackerName: Hearth::HTTP.uri_escape(input[:tracker_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data['PricingPlanDataSource'] = input[:pricing_plan_data_source] unless input[:pricing_plan_data_source].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['PositionFiltering'] = input[:position_filtering] unless input[:position_filtering].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
