# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Location
  module Types

    # <p>The request was denied because of insufficient access or permissions. Check with an
    #       administrator to verify your permissions.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to be associated with a geofence collection.</p>
    #
    #   @return [String]
    #
    # @!attribute consumer_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker
    #               resource. Used when you need to specify a resource across all AWS.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AssociateTrackerConsumerInput = ::Struct.new(
      :tracker_name,
      :consumer_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateTrackerConsumerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the tracker resource details.</p>
    #
    # @!attribute device_id
    #   <p>The ID of the device for this position.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Contains the batch request error details associated with the request.</p>
    #
    #   @return [BatchItemError]
    #
    BatchDeleteDevicePositionHistoryError = ::Struct.new(
      :device_id,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to delete the device position history from.</p>
    #
    #   @return [String]
    #
    # @!attribute device_ids
    #   <p>Devices whose position history you want to delete.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, for two devices:
    #                      <code>“DeviceIds” : [DeviceId1,DeviceId2]</code>
    #                  </p>
    #              </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    BatchDeleteDevicePositionHistoryInput = ::Struct.new(
      :tracker_name,
      :device_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>Contains error details for each device history that failed to delete.</p>
    #
    #   @return [Array<BatchDeleteDevicePositionHistoryError>]
    #
    BatchDeleteDevicePositionHistoryOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains error details for each geofence that failed to delete from the geofence
    #             collection.</p>
    #
    # @!attribute geofence_id
    #   <p>The geofence associated with the error message.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Contains details associated to the batch error.</p>
    #
    #   @return [BatchItemError]
    #
    BatchDeleteGeofenceError = ::Struct.new(
      :geofence_id,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The geofence collection storing the geofences to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute geofence_ids
    #   <p>The batch of geofences to be deleted.</p>
    #
    #   @return [Array<String>]
    #
    BatchDeleteGeofenceInput = ::Struct.new(
      :collection_name,
      :geofence_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>Contains error details for each geofence that failed to delete.</p>
    #
    #   @return [Array<BatchDeleteGeofenceError>]
    #
    BatchDeleteGeofenceOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains error details for each device that failed to evaluate its position against
    #             the geofences in a given geofence collection.</p>
    #
    # @!attribute device_id
    #   <p>The device associated with the position evaluation error.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_time
    #   <p>Specifies a timestamp for when the error occurred in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute error
    #   <p>Contains details associated to the batch error.</p>
    #
    #   @return [BatchItemError]
    #
    BatchEvaluateGeofencesError = ::Struct.new(
      :device_id,
      :sample_time,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The geofence collection used in evaluating the position of devices against its
    #               geofences.</p>
    #
    #   @return [String]
    #
    # @!attribute device_position_updates
    #   <p>Contains device details for each device to be evaluated against the given geofence
    #               collection.</p>
    #
    #   @return [Array<DevicePositionUpdate>]
    #
    BatchEvaluateGeofencesInput = ::Struct.new(
      :collection_name,
      :device_position_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>Contains error details for each device that failed to evaluate its position against
    #               the given geofence collection.</p>
    #
    #   @return [Array<BatchEvaluateGeofencesError>]
    #
    BatchEvaluateGeofencesOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains error details for each device that didn't return a position.</p>
    #
    # @!attribute device_id
    #   <p>The ID of the device that didn't return a position.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Contains details related to the error code.</p>
    #
    #   @return [BatchItemError]
    #
    BatchGetDevicePositionError = ::Struct.new(
      :device_id,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource retrieving the device position.</p>
    #
    #   @return [String]
    #
    # @!attribute device_ids
    #   <p>Devices whose position you want to retrieve.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, for two devices:
    #                      <code>device-ids=DeviceId1&amp;device-ids=DeviceId2</code>
    #                  </p>
    #              </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    BatchGetDevicePositionInput = ::Struct.new(
      :tracker_name,
      :device_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>Contains  error details for each device that failed to send its position to the tracker
    #               resource.</p>
    #
    #   @return [Array<BatchGetDevicePositionError>]
    #
    # @!attribute device_positions
    #   <p>Contains device position details such as the device ID, position, and timestamps for
    #               when the position was received and sampled.</p>
    #
    #   @return [Array<DevicePosition>]
    #
    BatchGetDevicePositionOutput = ::Struct.new(
      :errors,
      :device_positions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the batch request error details associated with the request.</p>
    #
    # @!attribute code
    #   <p>The error code associated with the batch request error.</p>
    #
    #   Enum, one of: ["AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message with the reason for the batch request error.</p>
    #
    #   @return [String]
    #
    BatchItemError = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains error details for each geofence that failed to be stored in a given geofence
    #             collection.</p>
    #
    # @!attribute geofence_id
    #   <p>The geofence associated with the error message.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Contains details associated to the batch error.</p>
    #
    #   @return [BatchItemError]
    #
    BatchPutGeofenceError = ::Struct.new(
      :geofence_id,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The geofence collection storing the geofences.</p>
    #
    #   @return [String]
    #
    # @!attribute entries
    #   <p>The batch of geofences to be stored in a geofence collection.</p>
    #
    #   @return [Array<BatchPutGeofenceRequestEntry>]
    #
    BatchPutGeofenceInput = ::Struct.new(
      :collection_name,
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successes
    #   <p>Contains each geofence that was successfully stored in a geofence collection.</p>
    #
    #   @return [Array<BatchPutGeofenceSuccess>]
    #
    # @!attribute errors
    #   <p>Contains additional error details for each geofence that failed to be stored in a
    #               geofence collection.</p>
    #
    #   @return [Array<BatchPutGeofenceError>]
    #
    BatchPutGeofenceOutput = ::Struct.new(
      :successes,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains geofence geometry details. </p>
    #
    # @!attribute geofence_id
    #   <p>The identifier for the geofence to be stored in a given geofence collection.</p>
    #
    #   @return [String]
    #
    # @!attribute geometry
    #   <p>Contains the polygon details to specify the position of the geofence.</p>
    #           <note>
    #               <p>Each <a href="https://docs.aws.amazon.com/location-geofences/latest/APIReference/API_GeofenceGeometry.html">geofence polygon</a> can have a maximum of 1,000 vertices.</p>
    #           </note>
    #
    #   @return [GeofenceGeometry]
    #
    BatchPutGeofenceRequestEntry = ::Struct.new(
      :geofence_id,
      :geometry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a summary of each geofence that was successfully stored in a given geofence
    #             collection.</p>
    #
    # @!attribute geofence_id
    #   <p>The geofence successfully stored in a geofence collection.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the geofence was stored in a geofence collection in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the geofence was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    BatchPutGeofenceSuccess = ::Struct.new(
      :geofence_id,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains  error details for each device that failed to update its position.</p>
    #
    # @!attribute device_id
    #   <p>The device associated with the failed location update.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_time
    #   <p>The timestamp at which the device position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute error
    #   <p>Contains details related to the error code such as the error code and error
    #               message.</p>
    #
    #   @return [BatchItemError]
    #
    BatchUpdateDevicePositionError = ::Struct.new(
      :device_id,
      :sample_time,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
    #   <p>Contains the position update details for each device.</p>
    #
    #   @return [Array<DevicePositionUpdate>]
    #
    BatchUpdateDevicePositionInput = ::Struct.new(
      :tracker_name,
      :updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>Contains  error details for each device that failed to update its position.</p>
    #
    #   @return [Array<BatchUpdateDevicePositionError>]
    #
    BatchUpdateDevicePositionOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about additional route preferences for requests that specify
    #                 <code>TravelMode</code> as <code>Car</code>.</p>
    #
    # @!attribute avoid_ferries
    #   <p>Avoids ferries when calculating routes.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute avoid_tolls
    #   <p>Avoids tolls when calculating routes.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    CalculateRouteCarModeOptions = ::Struct.new(
      :avoid_ferries,
      :avoid_tolls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource that you want to use to calculate the route.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute departure_position
    #   <p>The start position for the route. Defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World Geodetic
    #               System (WGS 84)</a> format:
    #                   <code>[longitude, latitude]</code>.</p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>[-123.115, 49.285]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>If you specify a departure that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. If Esri is the provider for your route calculator,
    #                   specifying a route that is longer than 400 km returns a <code>400
    #                       RoutesValidationException</code> error.</p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute destination_position
    #   <p>The finish position for the route. Defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World Geodetic
    #               System (WGS 84)</a> format:
    #                   <code>[longitude, latitude]</code>.</p>
    #           <ul>
    #               <li>
    #                   <p> For example, <code>[-122.339, 47.615]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>If you specify a destination that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. </p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute waypoint_positions
    #   <p>Specifies an ordered list of up to 23 intermediate positions to include along a route
    #               between the departure position and destination position. </p>
    #           <ul>
    #               <li>
    #                   <p>For example, from the <code>DeparturePosition</code>
    #                       <code>[-123.115, 49.285]</code>, the route follows the order that the waypoint
    #                       positions are given <code>[[-122.757, 49.0021],[-122.349, 47.620]]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>If you specify a waypoint position that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. </p>
    #               <p>Specifying more than 23 waypoints returns a <code>400 ValidationException</code>
    #                   error.</p>
    #               <p>If Esri is the provider for your route calculator, specifying a route that is
    #                   longer than 400 km returns a <code>400 RoutesValidationException</code>
    #                   error.</p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    #   @return [Array<Array<Float>>]
    #
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed
    #               of travel and road compatibility.</p>
    #           <p>The <code>TravelMode</code> you specify also determines how you specify route
    #               preferences: </p>
    #           <ul>
    #               <li>
    #                   <p>If traveling by <code>Car</code> use the <code>CarModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                   <p>If traveling by <code>Truck</code> use the <code>TruckModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #           <p>Default Value: <code>Car</code>
    #            </p>
    #
    #   Enum, one of: ["Car", "Truck", "Walking"]
    #
    #   @return [String]
    #
    # @!attribute departure_time
    #   <p>Specifies the desired time of departure. Uses the given time to calculate the route.
    #               Otherwise, the best time of day to travel with the best traffic conditions is used to
    #               calculate the route.</p>
    #           <note>
    #               <p>Setting a departure time in the past returns a <code>400
    #                       ValidationException</code> error.</p>
    #           </note>
    #           <ul>
    #               <li>
    #                   <p>In <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
    #                           8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. For example,
    #                           <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Time]
    #
    # @!attribute depart_now
    #   <p>Sets the time of departure as the current time. Uses the current time to calculate a
    #               route. Otherwise, the best time of day to travel with the best traffic conditions is
    #               used to calculate the route.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute distance_unit
    #   <p>Set the unit system to specify the distance.</p>
    #           <p>Default Value: <code>Kilometers</code>
    #            </p>
    #
    #   Enum, one of: ["Kilometers", "Miles"]
    #
    #   @return [String]
    #
    # @!attribute include_leg_geometry
    #   <p>Set to include the geometry details in the result for each path between a pair of
    #               positions.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute car_mode_options
    #   <p>Specifies route preferences when traveling by <code>Car</code>, such as avoiding
    #               routes that use ferries or tolls.</p>
    #           <p>Requirements: <code>TravelMode</code> must be specified as <code>Car</code>.</p>
    #
    #   @return [CalculateRouteCarModeOptions]
    #
    # @!attribute truck_mode_options
    #   <p>Specifies route preferences when traveling by <code>Truck</code>, such as avoiding
    #               routes that use ferries or tolls, and truck specifications to consider when choosing an
    #               optimal road.</p>
    #           <p>Requirements: <code>TravelMode</code> must be specified as <code>Truck</code>.</p>
    #
    #   @return [CalculateRouteTruckModeOptions]
    #
    CalculateRouteInput = ::Struct.new(
      :calculator_name,
      :departure_position,
      :destination_position,
      :waypoint_positions,
      :travel_mode,
      :departure_time,
      :depart_now,
      :distance_unit,
      :include_leg_geometry,
      :car_mode_options,
      :truck_mode_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::CalculateRouteInput "\
          "calculator_name=#{calculator_name || 'nil'}, "\
          "departure_position=\"[SENSITIVE]\", "\
          "destination_position=\"[SENSITIVE]\", "\
          "waypoint_positions=#{waypoint_positions || 'nil'}, "\
          "travel_mode=#{travel_mode || 'nil'}, "\
          "departure_time=#{departure_time || 'nil'}, "\
          "depart_now=#{depart_now || 'nil'}, "\
          "distance_unit=#{distance_unit || 'nil'}, "\
          "include_leg_geometry=#{include_leg_geometry || 'nil'}, "\
          "car_mode_options=#{car_mode_options || 'nil'}, "\
          "truck_mode_options=#{truck_mode_options || 'nil'}>"
      end
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource that you want to use to calculate the route
    #               matrix. </p>
    #
    #   @return [String]
    #
    # @!attribute departure_positions
    #   <p>The list of departure (origin) positions for the route matrix. An array of points,
    #               each of which is itself a 2-value array defined in <a href="https://earth-info.nga.mil/GandG/wgs84/index.html">WGS 84</a> format:
    #                   <code>[longitude, latitude]</code>. For example, <code>[-123.115,
    #               49.285]</code>.</p>
    #           <important>
    #               <p>Depending on the data provider selected in the route calculator resource there may
    #                   be additional restrictions on the inputs you can choose. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html matrix-routing-position-limits"> Position restrictions</a> in the <i>Amazon Location Service Developer
    #                       Guide</i>.</p>
    #           </important>
    #           <note>
    #               <p>For route calculators that use Esri as the data provider, if you specify a
    #                   departure that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html"> moves the
    #                       position to the nearest road</a>. The snapped value is available in the
    #                   result in <code>SnappedDeparturePositions</code>.</p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    #   @return [Array<Array<Float>>]
    #
    # @!attribute destination_positions
    #   <p>The list of destination positions for the route matrix. An array of points, each of
    #               which is itself a 2-value array defined in <a href="https://earth-info.nga.mil/GandG/wgs84/index.html">WGS 84</a> format:
    #                   <code>[longitude, latitude]</code>. For example, <code>[-122.339,
    #               47.615]</code>
    #            </p>
    #           <important>
    #               <p>Depending on the data provider selected in the route calculator resource there may
    #                   be additional restrictions on the inputs you can choose. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html matrix-routing-position-limits"> Position restrictions</a> in the <i>Amazon Location Service Developer
    #                       Guide</i>.</p>
    #           </important>
    #           <note>
    #               <p>For route calculators that use Esri as the data provider, if you specify a
    #                   destination that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html"> moves the
    #                       position to the nearest road</a>. The snapped value is available in the
    #                   result in <code>SnappedDestinationPositions</code>.</p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    #   @return [Array<Array<Float>>]
    #
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed
    #               of travel and road compatibility.</p>
    #           <p>The <code>TravelMode</code> you specify also determines how you specify route
    #               preferences: </p>
    #           <ul>
    #               <li>
    #                   <p>If traveling by <code>Car</code> use the <code>CarModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                   <p>If traveling by <code>Truck</code> use the <code>TruckModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #           <p>Default Value: <code>Car</code>
    #            </p>
    #
    #   Enum, one of: ["Car", "Truck", "Walking"]
    #
    #   @return [String]
    #
    # @!attribute departure_time
    #   <p>Specifies the desired time of departure. Uses the given time to calculate the route
    #               matrix. You can't set both <code>DepartureTime</code> and <code>DepartNow</code>. If
    #               neither is set, the best time of day to travel with the best traffic conditions is used
    #               to calculate the route matrix.</p>
    #           <note>
    #               <p>Setting a departure time in the past returns a <code>400
    #                       ValidationException</code> error.</p>
    #           </note>
    #           <ul>
    #               <li>
    #                   <p>In <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
    #                           8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. For example,
    #                           <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Time]
    #
    # @!attribute depart_now
    #   <p>Sets the time of departure as the current time. Uses the current time to calculate the
    #               route matrix. You can't set both <code>DepartureTime</code> and <code>DepartNow</code>.
    #               If neither is set, the best time of day to travel with the best traffic conditions is
    #               used to calculate the route matrix.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute distance_unit
    #   <p>Set the unit system to specify the distance.</p>
    #           <p>Default Value: <code>Kilometers</code>
    #            </p>
    #
    #   Enum, one of: ["Kilometers", "Miles"]
    #
    #   @return [String]
    #
    # @!attribute car_mode_options
    #   <p>Specifies route preferences when traveling by <code>Car</code>, such as avoiding
    #               routes that use ferries or tolls.</p>
    #           <p>Requirements: <code>TravelMode</code> must be specified as <code>Car</code>.</p>
    #
    #   @return [CalculateRouteCarModeOptions]
    #
    # @!attribute truck_mode_options
    #   <p>Specifies route preferences when traveling by <code>Truck</code>, such as avoiding
    #               routes that use ferries or tolls, and truck specifications to consider when choosing an
    #               optimal road.</p>
    #           <p>Requirements: <code>TravelMode</code> must be specified as <code>Truck</code>.</p>
    #
    #   @return [CalculateRouteTruckModeOptions]
    #
    CalculateRouteMatrixInput = ::Struct.new(
      :calculator_name,
      :departure_positions,
      :destination_positions,
      :travel_mode,
      :departure_time,
      :depart_now,
      :distance_unit,
      :car_mode_options,
      :truck_mode_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the result of the route matrix calculation.</p>
    #
    # @!attribute route_matrix
    #   <p>The calculated route matrix containing the results for all pairs of
    #                   <code>DeparturePositions</code> to <code>DestinationPositions</code>. Each row
    #               corresponds to one entry in <code>DeparturePositions</code>. Each entry in the row
    #               corresponds to the route from that entry in <code>DeparturePositions</code> to an entry
    #               in <code>DestinationPositions</code>. </p>
    #
    #   @return [Array<Array<RouteMatrixEntry>>]
    #
    # @!attribute snapped_departure_positions
    #   <p>For routes calculated using an Esri route calculator resource, departure positions are
    #               snapped to the closest road. For Esri route calculator resources, this returns the list
    #               of departure/origin positions used for calculation of the
    #               <code>RouteMatrix</code>.</p>
    #
    #   @return [Array<Array<Float>>]
    #
    # @!attribute snapped_destination_positions
    #   <p>The list of destination positions for the route matrix used for calculation of the
    #                   <code>RouteMatrix</code>.</p>
    #
    #   @return [Array<Array<Float>>]
    #
    # @!attribute summary
    #   <p>Contains information about the route matrix, <code>DataSource</code>,
    #                   <code>DistanceUnit</code>, <code>RouteCount</code> and
    #               <code>ErrorCount</code>.</p>
    #
    #   @return [CalculateRouteMatrixSummary]
    #
    CalculateRouteMatrixOutput = ::Struct.new(
      :route_matrix,
      :snapped_departure_positions,
      :snapped_destination_positions,
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the calculated route matrix.</p>
    #
    # @!attribute data_source
    #   <p>The data provider of traffic and road network data used to calculate the routes.
    #               Indicates one of the available providers:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Amazon Location Service data
    #                   providers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute route_count
    #   <p>The count of cells in the route matrix. Equal to the number of
    #                   <code>DeparturePositions</code> multiplied by the number of
    #                   <code>DestinationPositions</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute error_count
    #   <p>The count of error results in the route matrix. If this number is 0, all routes were
    #               calculated successfully.</p>
    #
    #   @return [Integer]
    #
    # @!attribute distance_unit
    #   <p>The unit of measurement for route distances.</p>
    #
    #   Enum, one of: ["Kilometers", "Miles"]
    #
    #   @return [String]
    #
    CalculateRouteMatrixSummary = ::Struct.new(
      :data_source,
      :route_count,
      :error_count,
      :distance_unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the result of the route calculation. Metadata includes legs and route
    #             summary.</p>
    #
    # @!attribute legs
    #   <p>Contains details about each path between a pair of positions included along a route
    #               such as: <code>StartPosition</code>, <code>EndPosition</code>, <code>Distance</code>,
    #                   <code>DurationSeconds</code>, <code>Geometry</code>, and <code>Steps</code>. The
    #               number of legs returned corresponds to one fewer than the total number of positions in
    #               the request. </p>
    #           <p>For example, a route with a departure position and destination position returns one
    #               leg with the positions <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">snapped to a nearby
    #                   road</a>:</p>
    #           <ul>
    #               <li>
    #                   <p>The <code>StartPosition</code> is the departure position.</p>
    #               </li>
    #               <li>
    #                   <p>The <code>EndPosition</code> is the destination position.</p>
    #               </li>
    #            </ul>
    #           <p>A route with a waypoint between the departure and destination position returns two
    #               legs with the positions snapped to a nearby road:</p>
    #           <ul>
    #               <li>
    #                   <p>Leg 1: The <code>StartPosition</code> is the departure position . The
    #                           <code>EndPosition</code> is the waypoint positon.</p>
    #               </li>
    #               <li>
    #                   <p>Leg 2: The <code>StartPosition</code> is the waypoint position. The
    #                           <code>EndPosition</code> is the destination position.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Leg>]
    #
    # @!attribute summary
    #   <p>Contains information about the whole route, such as: <code>RouteBBox</code>,
    #                   <code>DataSource</code>, <code>Distance</code>, <code>DistanceUnit</code>, and
    #                   <code>DurationSeconds</code>.</p>
    #
    #   @return [CalculateRouteSummary]
    #
    CalculateRouteOutput = ::Struct.new(
      :legs,
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the calculated route.</p>
    #
    # @!attribute route_b_box
    #   <p>Specifies a geographical box surrounding a route. Used to zoom into a route when
    #               displaying it in a map. For example, <code>[min x, min y, max x, max y]</code>.</p>
    #           <p>The first 2 <code>bbox</code> parameters describe the lower southwest corner: </p>
    #           <ul>
    #               <li>
    #                   <p>The first <code>bbox</code> position is the X coordinate or longitude of the
    #                       lower southwest corner. </p>
    #               </li>
    #               <li>
    #                   <p>The second <code>bbox</code> position is the Y coordinate or latitude of the
    #                       lower southwest corner. </p>
    #               </li>
    #            </ul>
    #           <p>The next 2 <code>bbox</code> parameters describe the upper northeast corner: </p>
    #           <ul>
    #               <li>
    #                   <p>The third <code>bbox</code> position is the X coordinate, or longitude of the
    #                       upper northeast corner. </p>
    #               </li>
    #               <li>
    #                   <p>The fourth <code>bbox</code> position is the Y coordinate, or latitude of the
    #                       upper northeast corner. </p>
    #               </li>
    #            </ul>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-5 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute data_source
    #   <p>The data provider of traffic and road network data used to calculate the route.
    #               Indicates one of the available providers:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute distance
    #   <p>The total distance covered by the route. The sum of the distance travelled between
    #               every stop on the route.</p>
    #           <note>
    #               <p>If Esri is the data source for the route calculator, the route distance can’t be
    #                   greater than 400 km. If the route exceeds 400 km, the response is a <code>400
    #                       RoutesValidationException</code> error.</p>
    #           </note>
    #
    #   @return [Float]
    #
    # @!attribute duration_seconds
    #   <p>The total travel time for the route measured in seconds. The sum of the travel time
    #               between every stop on the
    #               route.</p>
    #
    #   @return [Float]
    #
    # @!attribute distance_unit
    #   <p>The unit of measurement for route distances.</p>
    #
    #   Enum, one of: ["Kilometers", "Miles"]
    #
    #   @return [String]
    #
    CalculateRouteSummary = ::Struct.new(
      :route_b_box,
      :data_source,
      :distance,
      :duration_seconds,
      :distance_unit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::CalculateRouteSummary "\
          "route_b_box=\"[SENSITIVE]\", "\
          "data_source=#{data_source || 'nil'}, "\
          "distance=#{distance || 'nil'}, "\
          "duration_seconds=#{duration_seconds || 'nil'}, "\
          "distance_unit=#{distance_unit || 'nil'}>"
      end
    end

    # <p>Contains details about additional route preferences for requests that specify
    #                 <code>TravelMode</code> as <code>Truck</code>.</p>
    #
    # @!attribute avoid_ferries
    #   <p>Avoids ferries when calculating routes.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute avoid_tolls
    #   <p>Avoids tolls when calculating routes.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute dimensions
    #   <p>Specifies the truck's dimension specifications including length, height, width, and
    #               unit of measurement. Used to avoid roads that can't support the truck's
    #               dimensions.</p>
    #
    #   @return [TruckDimensions]
    #
    # @!attribute weight
    #   <p>Specifies the truck's weight specifications including total weight and unit of
    #               measurement. Used to avoid roads that can't support the truck's weight.</p>
    #
    #   @return [TruckWeight]
    #
    CalculateRouteTruckModeOptions = ::Struct.new(
      :avoid_ferries,
      :avoid_tolls,
      :dimensions,
      :weight,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was unsuccessful because of a conflict.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>A custom name for the geofence collection.</p>
    #           <p>Requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                   <p>Must be a unique geofence collection name.</p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExampleGeofenceCollection</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #
    #   @deprecated
    #     Deprecated. No longer allowed.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the geofence collection.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Applies one or more tags to the geofence collection. A tag is a key-value pair helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                   <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">AWS KMS customer managed key</a>. Enter a key ID, key ARN, alias name, or alias ARN.
    #   	</p>
    #
    #   @return [String]
    #
    CreateGeofenceCollectionInput = ::Struct.new(
      :collection_name,
      :pricing_plan,
      :pricing_plan_data_source,
      :description,
      :tags,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The name for the geofence collection.</p>
    #
    #   @return [String]
    #
    # @!attribute collection_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection resource. Used when you
    #               need to specify a resource across all AWS. </p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the geofence collection was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    CreateGeofenceCollectionOutput = ::Struct.new(
      :collection_name,
      :collection_arn,
      :create_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The name for the map resource.</p>
    #           <p>Requirements:</p>
    #           <ul>
    #               <li>
    #                  <p>Must contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique map resource name. </p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExampleMap</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>Specifies the map style selected from an available data provider.</p>
    #
    #   @return [MapConfiguration]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the map resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Applies one or more tags to the map resource. A tag is a key-value pair helps manage,
    #               identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length:  256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters: + - = . _ : /
    #                       @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    CreateMapInput = ::Struct.new(
      :map_name,
      :configuration,
      :pricing_plan,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The name of the map resource.</p>
    #
    #   @return [String]
    #
    # @!attribute map_arn
    #   <p>The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across
    #               all AWS.</p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                       <code>arn:aws:geo:region:account-id:maps/ExampleMap</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the map resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #
    #   @return [Time]
    #
    CreateMapOutput = ::Struct.new(
      :map_name,
      :map_arn,
      :create_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource. </p>
    #           <p>Requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_).</p>
    #               </li>
    #               <li>
    #                   <p>Must be a unique place index resource name.</p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExamplePlaceIndex</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>Specifies the geospatial data provider for the new place index.</p>
    #           <note>
    #               <p>This field is case-sensitive. Enter the valid values as shown. For example,
    #                   entering <code>HERE</code> returns an error.</p>
    #           </note>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code> – For additional information about <a href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri</a>'s coverage in your region of interest, see <a href="https://developers.arcgis.com/rest/geocode/api-reference/geocode-coverage.htm">Esri details on geocoding coverage</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code> – For additional information about <a href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE
    #                           Technologies</a>' coverage in your region of interest, see <a href="https://developer.here.com/documentation/geocoder/dev_guide/topics/coverage-geocoder.html">HERE details on goecoding coverage</a>.</p>
    #                   <important>
    #                       <p>If you specify HERE Technologies (<code>Here</code>) as the data provider,
    #                           you may not <a href="https://docs.aws.amazon.com/location-places/latest/APIReference/API_DataSourceConfiguration.html">store results</a> for locations in Japan. For more information, see
    #                           the <a href="https://aws.amazon.com/service-terms/">AWS Service
    #                               Terms</a> for Amazon Location Service.</p>
    #                   </important>
    #               </li>
    #            </ul>
    #           <p>For additional information , see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Data
    #                   providers</a> on the <i>Amazon Location Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for the place index resource.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_configuration
    #   <p>Specifies the data storage option requesting Places.</p>
    #
    #   @return [DataSourceConfiguration]
    #
    # @!attribute tags
    #   <p>Applies one or more tags to the place index resource. A tag is a key-value pair that
    #               helps you manage, identify, search, and filter your resources.</p>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource.</p>
    #               </li>
    #               <li>
    #                   <p>Each tag key must be unique and must have exactly one associated value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @</p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    CreatePlaceIndexInput = ::Struct.new(
      :index_name,
      :data_source,
      :pricing_plan,
      :description,
      :data_source_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_name
    #   <p>The name for the place index resource.</p>
    #
    #   @return [String]
    #
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) for the place index resource. Used to specify a
    #               resource across AWS. </p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:place-index/ExamplePlaceIndex</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the place index resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    CreatePlaceIndexOutput = ::Struct.new(
      :index_name,
      :index_arn,
      :create_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource. </p>
    #           <p>Requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9) , hyphens (-), periods (.),
    #                       and underscores (_).</p>
    #               </li>
    #               <li>
    #                   <p>Must be a unique Route calculator resource name.</p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExampleRouteCalculator</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>Specifies the data provider of traffic and road network data.</p>
    #           <note>
    #               <p>This field is case-sensitive. Enter the valid values as shown. For example,
    #                   entering <code>HERE</code> returns an error. Route calculators that use Esri as a
    #                   data source only calculate routes that are shorter than 400 km.</p>
    #           </note>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code> – For additional information about <a href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri</a>'s coverage in your region of interest, see <a href="https://doc.arcgis.com/en/arcgis-online/reference/network-coverage.htm">Esri details on street networks and traffic coverage</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code> – For additional information about <a href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE
    #                           Technologies</a>' coverage in your region of interest, see <a href="https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/car-routing.html">HERE car routing coverage</a> and <a href="https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/truck-routing.html">HERE truck routing coverage</a>.</p>
    #               </li>
    #            </ul>
    #           <p>For additional information , see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Data
    #                   providers</a> on the <i>Amazon Location Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for the route calculator resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Applies one or more tags to the route calculator resource. A tag is a key-value pair
    #               helps manage, identify, search, and filter your resources by labelling them.</p>
    #           <ul>
    #               <li>
    #                   <p>For example: { <code>"tag1" : "value1"</code>, <code>"tag2" :
    #                       "value2"</code>}</p>
    #               </li>
    #            </ul>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                   <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    CreateRouteCalculatorInput = ::Struct.new(
      :calculator_name,
      :data_source,
      :pricing_plan,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource. </p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>ExampleRouteCalculator</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute calculator_arn
    #   <p>The Amazon Resource Name (ARN) for the route calculator resource. Use the ARN when you
    #               specify a resource across all AWS.</p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:route-calculator/ExampleCalculator</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp when the route calculator resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Time]
    #
    CreateRouteCalculatorOutput = ::Struct.new(
      :calculator_name,
      :calculator_arn,
      :create_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name for the tracker resource.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-), periods (.), and underscores (_).</p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique tracker resource name.</p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExampleTracker</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #              <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">AWS KMS customer managed key</a>. Enter a key ID, key ARN, alias name, or alias ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #
    #   @deprecated
    #     Deprecated. No longer allowed.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the tracker resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Applies one or more tags to the tracker resource. A tag is a key-value pair helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                   <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute position_filtering
    #   <p>Specifies the position filtering for the tracker resource.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>TimeBased</code> - Location updates are evaluated against linked geofence collections,
    #                       but not every location update is stored. If your update frequency is more often than 30 seconds,
    #                       only one update per 30 seconds is stored for each unique device ID.
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>DistanceBased</code> - If the device has moved less than 30 m (98.4 ft), location updates are
    #                       ignored. Location updates within this area are neither evaluated against linked geofence collections, nor stored.
    #                       This helps control costs by reducing the number of geofence evaluations and historical device positions to paginate through.
    #                       Distance-based filtering can also reduce the effects of GPS noise when displaying device trajectories on a map.
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AccuracyBased</code> - If the device has moved less than the measured accuracy,
    #                       location updates are ignored. For example, if two consecutive updates from a device
    #                       have a horizontal accuracy of 5 m and 10 m, the second update is ignored if the device
    #                       has moved less than 15 m. Ignored location updates are neither evaluated against
    #                       linked geofence collections, nor stored. This can reduce the effects of GPS noise
    #                       when displaying device trajectories on a map, and can help control your costs by reducing the
    #                       number of geofence evaluations.
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>This field is optional. If not specified, the default value is <code>TimeBased</code>.</p>
    #
    #   Enum, one of: ["TimeBased", "DistanceBased", "AccuracyBased"]
    #
    #   @return [String]
    #
    CreateTrackerInput = ::Struct.new(
      :tracker_name,
      :pricing_plan,
      :kms_key_id,
      :pricing_plan_data_source,
      :description,
      :tags,
      :position_filtering,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tracker_arn
    #   <p>The Amazon Resource Name (ARN) for the tracker resource. Used when you need to specify
    #               a resource across all AWS.</p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:tracker/ExampleTracker</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the tracker resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    CreateTrackerOutput = ::Struct.new(
      :tracker_name,
      :tracker_arn,
      :create_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the data storage option chosen for requesting Places.</p>
    #         <important>
    #             <p>When using Amazon Location Places:</p>
    #             <ul>
    #                <li>
    #                     <p>If using HERE Technologies as a data provider, you can't store results for
    #                         locations in Japan by setting <code>IntendedUse</code> to
    #                             <code>Storage</code>. parameter.</p>
    #                 </li>
    #                <li>
    #                     <p>Under the <code>MobileAssetTracking</code> or
    #                             <code>MobilAssetManagement</code> pricing plan, you can't store results
    #                         from your place index resources by setting <code>IntendedUse</code> to
    #                             <code>Storage</code>. This returns a validation exception error.</p>
    #                 </li>
    #             </ul>
    #             <p>For more information, see the <a href="https://aws.amazon.com/service-terms/">AWS Service Terms</a> for Amazon Location Service.</p>
    #         </important>
    #
    # @!attribute intended_use
    #   <p>Specifies how the results of an operation will be stored by the caller. </p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SingleUse</code> specifies that the results won't be stored. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Storage</code> specifies that the result can be cached or stored in a
    #                       database.</p>
    #               </li>
    #            </ul>
    #           <p>Default value: <code>SingleUse</code>
    #            </p>
    #
    #   Enum, one of: ["SingleUse", "Storage"]
    #
    #   @return [String]
    #
    DataSourceConfiguration = ::Struct.new(
      :intended_use,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteGeofenceCollectionInput = ::Struct.new(
      :collection_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGeofenceCollectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The name of the map resource to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteMapInput = ::Struct.new(
      :map_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMapOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource to be deleted.</p>
    #
    #   @return [String]
    #
    DeletePlaceIndexInput = ::Struct.new(
      :index_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePlaceIndexOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteRouteCalculatorInput = ::Struct.new(
      :calculator_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRouteCalculatorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteTrackerInput = ::Struct.new(
      :tracker_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTrackerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection.</p>
    #
    #   @return [String]
    #
    DescribeGeofenceCollectionInput = ::Struct.new(
      :collection_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection.</p>
    #
    #   @return [String]
    #
    # @!attribute collection_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection resource. Used when you
    #               need to specify a resource across all AWS. </p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for the geofence collection.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_data_source
    #   <p>No longer used. Always returns an empty string.</p>
    #
    #   @deprecated
    #     Deprecated. Unused.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">AWS KMS customer managed key</a> assigned to the Amazon Location resource</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Displays the key, value pairs of tags associated with this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the geofence resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the geofence collection was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    DescribeGeofenceCollectionOutput = ::Struct.new(
      :collection_name,
      :collection_arn,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :kms_key_id,
      :tags,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The name of the map resource.</p>
    #
    #   @return [String]
    #
    DescribeMapInput = ::Struct.new(
      :map_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The map style selected from an available provider.</p>
    #
    #   @return [String]
    #
    # @!attribute map_arn
    #   <p>The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across
    #               all AWS.</p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                       <code>arn:aws:geo:region:account-id:maps/ExampleMap</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>Specifies the data provider for the associated map tiles.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>Specifies the map tile style selected from a partner data provider.</p>
    #
    #   @return [MapConfiguration]
    #
    # @!attribute description
    #   <p>The optional description for the map resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the map resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the map resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the map resource was last update in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #
    #   @return [Time]
    #
    DescribeMapOutput = ::Struct.new(
      :map_name,
      :map_arn,
      :pricing_plan,
      :data_source,
      :configuration,
      :description,
      :tags,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource.</p>
    #
    #   @return [String]
    #
    DescribePlaceIndexInput = ::Struct.new(
      :index_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource being described.</p>
    #
    #   @return [String]
    #
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) for the place index resource. Used to specify a
    #               resource across AWS. </p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:place-index/ExamplePlaceIndex</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for the place index resource.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the place index resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the place index resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute data_source
    #   <p>The data provider of geospatial data. Values can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_configuration
    #   <p>The specified data storage option for requesting Places.</p>
    #
    #   @return [DataSourceConfiguration]
    #
    # @!attribute tags
    #   <p>Tags associated with place index resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribePlaceIndexOutput = ::Struct.new(
      :index_name,
      :index_arn,
      :pricing_plan,
      :description,
      :create_time,
      :update_time,
      :data_source,
      :data_source_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource.</p>
    #
    #   @return [String]
    #
    DescribeRouteCalculatorInput = ::Struct.new(
      :calculator_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource being described.</p>
    #
    #   @return [String]
    #
    # @!attribute calculator_arn
    #   <p>The Amazon Resource Name (ARN) for the Route calculator resource. Use the ARN when you
    #               specify a resource across AWS.</p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:route-calculator/ExampleCalculator</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description of the route calculator resource.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp when the route calculator resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp when the route calculator resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Time]
    #
    # @!attribute data_source
    #   <p>The data provider of traffic and road network data. Indicates one of the available
    #               providers:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with route calculator resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeRouteCalculatorOutput = ::Struct.new(
      :calculator_name,
      :calculator_arn,
      :pricing_plan,
      :description,
      :create_time,
      :update_time,
      :data_source,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource.</p>
    #
    #   @return [String]
    #
    DescribeTrackerInput = ::Struct.new(
      :tracker_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tracker_arn
    #   <p>The Amazon Resource Name (ARN) for the tracker resource. Used when you need to specify
    #               a resource across all AWS.</p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:tracker/ExampleTracker</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for the tracker resource.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_data_source
    #   <p>No longer used. Always returns an empty string.</p>
    #
    #   @deprecated
    #     Deprecated. Unused.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the tracker resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the tracker resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the tracker resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">AWS KMS customer managed key</a> assigned to the Amazon Location resource.</p>
    #
    #   @return [String]
    #
    # @!attribute position_filtering
    #   <p>The position filtering method of the tracker resource.</p>
    #
    #   Enum, one of: ["TimeBased", "DistanceBased", "AccuracyBased"]
    #
    #   @return [String]
    #
    DescribeTrackerOutput = ::Struct.new(
      :tracker_name,
      :tracker_arn,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :tags,
      :create_time,
      :update_time,
      :kms_key_id,
      :position_filtering,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the device position details.</p>
    #
    # @!attribute device_id
    #   <p>The device whose position you retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute received_time
    #   <p>The timestamp for when the tracker resource received the device position in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute position
    #   <p>The last known device position.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute accuracy
    #   <p>The accuracy of the device position.</p>
    #
    #   @return [PositionalAccuracy]
    #
    # @!attribute position_properties
    #   <p>The properties associated with the position.</p>
    #
    #   @return [Hash<String, String>]
    #
    DevicePosition = ::Struct.new(
      :device_id,
      :sample_time,
      :received_time,
      :position,
      :accuracy,
      :position_properties,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::DevicePosition "\
          "device_id=#{device_id || 'nil'}, "\
          "sample_time=#{sample_time || 'nil'}, "\
          "received_time=#{received_time || 'nil'}, "\
          "position=\"[SENSITIVE]\", "\
          "accuracy=#{accuracy || 'nil'}, "\
          "position_properties=\"[SENSITIVE]\">"
      end
    end

    # <p>Contains the position update details for a device.</p>
    #
    # @!attribute device_id
    #   <p>The device associated to the position update.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute position
    #   <p>The latest device position defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">WGS 84</a> format:
    #               <code>[X or longitude, Y or latitude]</code>.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute accuracy
    #   <p>The accuracy of the device position.</p>
    #
    #   @return [PositionalAccuracy]
    #
    # @!attribute position_properties
    #   <p>Associates one of more properties with the position update. A property is a key-value
    #               pair stored with the position update and added to any geofence event the update may
    #               trigger.</p>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #
    #   @return [Hash<String, String>]
    #
    DevicePositionUpdate = ::Struct.new(
      :device_id,
      :sample_time,
      :position,
      :accuracy,
      :position_properties,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::DevicePositionUpdate "\
          "device_id=#{device_id || 'nil'}, "\
          "sample_time=#{sample_time || 'nil'}, "\
          "position=\"[SENSITIVE]\", "\
          "accuracy=#{accuracy || 'nil'}, "\
          "position_properties=\"[SENSITIVE]\">"
      end
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to be dissociated from the consumer.</p>
    #
    #   @return [String]
    #
    # @!attribute consumer_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection to be disassociated from
    #               the tracker resource. Used when you need to specify a resource across all AWS. </p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DisassociateTrackerConsumerInput = ::Struct.new(
      :tracker_name,
      :consumer_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateTrackerConsumerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the geofence geometry details.</p>
    #         <note>
    #             <p>Amazon Location doesn't currently support polygons with holes, multipolygons, polygons
    #                 that are wound clockwise, or that cross the antimeridian. </p>
    #         </note>
    #
    # @!attribute polygon
    #   <p>An array of 1 or more linear rings. A linear ring is an array of 4 or more vertices,
    #               where the first and last vertex are the same to form a closed boundary. Each vertex is a
    #               2-dimensional point of the form: <code>[longitude, latitude]</code>. </p>
    #           <p>The first linear ring is an outer ring, describing the polygon's boundary. Subsequent
    #               linear rings may be inner or outer rings to describe holes and islands. Outer rings must
    #               list their vertices in counter-clockwise order around the ring's center, where the left
    #               side is the polygon's exterior. Inner rings must list their vertices in clockwise order,
    #               where the left side is the polygon's interior.</p>
    #
    #   @return [Array<Array<Array<Float>>>]
    #
    GeofenceGeometry = ::Struct.new(
      :polygon,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource receiving the request for the device position history.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The device whose position history you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute start_time_inclusive
    #   <p>Specify the start time for the position history in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the value will be 24 hours
    #               prior to the time that the request is made.</p>
    #           <p>Requirement:</p>
    #            <ul>
    #               <li>
    #                  <p>The time specified for <code>StartTimeInclusive</code> must be before
    #                           <code>EndTimeExclusive</code>.</p>
    #              </li>
    #            </ul>
    #
    #   @return [Time]
    #
    # @!attribute end_time_exclusive
    #   <p>Specify the end time for the position history in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the value will be the time
    #               that the request is made.</p>
    #           <p>Requirement:</p>
    #            <ul>
    #               <li>
    #                  <p>The time specified for <code>EndTimeExclusive</code> must be after the time for
    #                           <code>StartTimeInclusive</code>.</p>
    #              </li>
    #            </ul>
    #
    #   @return [Time]
    #
    # @!attribute max_results
    #   <p>An optional limit for the number of device positions returned in a single call.</p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    GetDevicePositionHistoryInput = ::Struct.new(
      :tracker_name,
      :device_id,
      :next_token,
      :start_time_inclusive,
      :end_time_exclusive,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_positions
    #   <p>Contains the position history details for the requested device.</p>
    #
    #   @return [Array<DevicePosition>]
    #
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results.</p>
    #
    #   @return [String]
    #
    GetDevicePositionHistoryOutput = ::Struct.new(
      :device_positions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource receiving the position update.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The device whose position you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetDevicePositionInput = ::Struct.new(
      :tracker_name,
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The device whose position you retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601 </a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute received_time
    #   <p>The timestamp for when the tracker resource received the device position in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601 </a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute position
    #   <p>The last known device position.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute accuracy
    #   <p>The accuracy of the device position.</p>
    #
    #   @return [PositionalAccuracy]
    #
    # @!attribute position_properties
    #   <p>The properties associated with the position.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetDevicePositionOutput = ::Struct.new(
      :device_id,
      :sample_time,
      :received_time,
      :position,
      :accuracy,
      :position_properties,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::GetDevicePositionOutput "\
          "device_id=#{device_id || 'nil'}, "\
          "sample_time=#{sample_time || 'nil'}, "\
          "received_time=#{received_time || 'nil'}, "\
          "position=\"[SENSITIVE]\", "\
          "accuracy=#{accuracy || 'nil'}, "\
          "position_properties=\"[SENSITIVE]\">"
      end
    end

    # @!attribute collection_name
    #   <p>The geofence collection storing the target geofence.</p>
    #
    #   @return [String]
    #
    # @!attribute geofence_id
    #   <p>The geofence you're retrieving details for.</p>
    #
    #   @return [String]
    #
    GetGeofenceInput = ::Struct.new(
      :collection_name,
      :geofence_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute geofence_id
    #   <p>The geofence identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute geometry
    #   <p>Contains the geofence geometry details describing a polygon.</p>
    #
    #   @return [GeofenceGeometry]
    #
    # @!attribute status
    #   <p>Identifies the state of the geofence. A geofence will hold one of the following
    #               states:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ACTIVE</code> — The geofence has been indexed by the system. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> — The geofence is being processed by the system.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code> — The geofence failed to be indexed by the system.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETED</code> — The geofence has been deleted from the system
    #                       index.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETING</code> — The geofence is being deleted from the system
    #                       index.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the geofence collection was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the geofence collection was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    GetGeofenceOutput = ::Struct.new(
      :geofence_id,
      :geometry,
      :status,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The map resource associated with the glyph ﬁle.</p>
    #
    #   @return [String]
    #
    # @!attribute font_stack
    #   <p>A comma-separated list of fonts to load glyphs from in order of preference. For
    #               example, <code>Noto Sans Regular, Arial Unicode</code>.</p>
    #           <p>Valid fonts stacks for <a href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri</a> styles: </p>
    #           <ul>
    #               <li>
    #                   <p>VectorEsriDarkGrayCanvas – <code>Ubuntu Medium Italic</code> | <code>Ubuntu
    #                           Medium</code> | <code>Ubuntu Italic</code> | <code>Ubuntu Regular</code> |
    #                           <code>Ubuntu Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorEsriLightGrayCanvas – <code>Ubuntu Italic</code> | <code>Ubuntu
    #                           Regular</code> | <code>Ubuntu Light</code> | <code>Ubuntu Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorEsriTopographic – <code>Noto Sans Italic</code> | <code>Noto Sans
    #                           Regular</code> | <code>Noto Sans Bold</code> | <code>Noto Serif
    #                           Regular</code> | <code>Roboto Condensed Light Italic</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorEsriStreets – <code>Arial Regular</code> | <code>Arial Italic</code> |
    #                           <code>Arial Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorEsriNavigation – <code>Arial Regular</code> | <code>Arial Italic</code>
    #                       | <code>Arial Bold</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE Technologies</a> styles: </p>
    #           <ul>
    #               <li>
    #                   <p>VectorHereBerlin – <code>Fira
    #                       GO Regular</code> | <code>Fira GO Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorHereExplore, VectorHereExploreTruck – <code>Firo GO Italic</code> |
    #                       <code>Fira GO Map</code> | <code>Fira GO Map Bold</code> | <code>Noto Sans CJK
    #                       JP Bold</code> | <code>Noto Sans CJK JP Light</code> | <code>Noto Sans CJK
    #                       JP Regular</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute font_unicode_range
    #   <p>A Unicode range of characters to download glyphs for. Each response will contain 256
    #               characters. For example, 0–255 includes all characters from range <code>U+0000</code> to
    #                   <code>00FF</code>. Must be aligned to multiples of 256.</p>
    #
    #   @return [String]
    #
    GetMapGlyphsInput = ::Struct.new(
      :map_name,
      :font_stack,
      :font_unicode_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @see https://github.com/mapbox/node-fontnik Documentation
    #
    # @!attribute blob
    #   <p>The blob's content type.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The map glyph content type. For example, <code>application/octet-stream</code>.</p>
    #
    #   @return [String]
    #
    GetMapGlyphsOutput = ::Struct.new(
      :blob,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The map resource associated with the sprite ﬁle.</p>
    #
    #   @return [String]
    #
    # @!attribute file_name
    #   <p>The name of the sprite ﬁle. Use the following ﬁle names for the sprite sheet:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>sprites.png</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sprites@2x.png</code> for high pixel density displays</p>
    #               </li>
    #            </ul>
    #           <p>For the JSON document contain image offsets. Use the following ﬁle names:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>sprites.json</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sprites@2x.json</code> for high pixel density displays</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    GetMapSpritesInput = ::Struct.new(
      :map_name,
      :file_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blob
    #   <p>Contains the body of the sprite sheet or JSON offset ﬁle.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The content type of the sprite sheet and offsets. For example, the sprite sheet
    #               content type is <code>image/png</code>, and the sprite offset JSON document is
    #                   <code>application/json</code>. </p>
    #
    #   @return [String]
    #
    GetMapSpritesOutput = ::Struct.new(
      :blob,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The map resource to retrieve the style descriptor from.</p>
    #
    #   @return [String]
    #
    GetMapStyleDescriptorInput = ::Struct.new(
      :map_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blob
    #   <p>Contains the body of the style descriptor.</p>
    #
    #   @see https://docs.mapbox.com/mapbox-gl-js/style-spec/ Specification
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The style descriptor's content type. For example,
    #               <code>application/json</code>.</p>
    #
    #   @return [String]
    #
    GetMapStyleDescriptorOutput = ::Struct.new(
      :blob,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The map resource to retrieve the map tiles from.</p>
    #
    #   @return [String]
    #
    # @!attribute z
    #   <p>The zoom value for the map tile.</p>
    #
    #   @return [String]
    #
    # @!attribute x
    #   <p>The X axis value for the map tile.</p>
    #
    #   @return [String]
    #
    # @!attribute y
    #   <p>The Y axis value for the map tile. </p>
    #
    #   @return [String]
    #
    GetMapTileInput = ::Struct.new(
      :map_name,
      :z,
      :x,
      :y,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blob
    #   <p>Contains Mapbox Vector Tile (MVT) data.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The map tile's content type. For example,
    #                   <code>application/vnd.mapbox-vector-tile</code>.</p>
    #
    #   @return [String]
    #
    GetMapTileOutput = ::Struct.new(
      :blob,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request has failed to process because of an unknown server error, exception, or failure.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the calculated route's details for each path between a pair of positions. The
    #             number of legs returned corresponds to one fewer than the total number of positions in
    #             the request. </p>
    #         <p>For example, a route with a departure position and destination position returns one
    #             leg with the positions <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">snapped to a nearby
    #                 road</a>:</p>
    #         <ul>
    #             <li>
    #                 <p>The <code>StartPosition</code> is the departure position.</p>
    #             </li>
    #             <li>
    #                 <p>The <code>EndPosition</code> is the destination position.</p>
    #             </li>
    #          </ul>
    #         <p>A route with a waypoint between the departure and destination position returns two
    #             legs with the positions snapped to a nearby road:</p>
    #         <ul>
    #             <li>
    #                 <p>Leg 1: The <code>StartPosition</code> is the departure position . The
    #                         <code>EndPosition</code> is the waypoint positon.</p>
    #             </li>
    #             <li>
    #                 <p>Leg 2: The <code>StartPosition</code> is the waypoint position. The
    #                         <code>EndPosition</code> is the destination position.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute start_position
    #   <p>The starting position of the leg. Follows the format
    #               <code>[longitude,latitude]</code>.</p>
    #           <note>
    #               <p>If the <code>StartPosition</code> isn't located on a road, it's <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">snapped to a
    #                       nearby road</a>. </p>
    #           </note>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute end_position
    #   <p>The terminating position of the leg. Follows the format
    #                   <code>[longitude,latitude]</code>.</p>
    #           <note>
    #               <p>If the <code>EndPosition</code> isn't located on a road, it's <a href="https://docs.aws.amazon.com/location/latest/developerguide/nap-to-nearby-road.html">snapped to a nearby
    #                       road</a>. </p>
    #           </note>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute distance
    #   <p>The distance between the leg's <code>StartPosition</code> and <code>EndPosition</code>
    #               along a calculated route. </p>
    #           <ul>
    #               <li>
    #                   <p>The default measurement is <code>Kilometers</code> unless the request
    #                       specifies a <code>DistanceUnit</code> of <code>Miles</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute duration_seconds
    #   <p>The estimated travel time between the leg's <code>StartPosition</code> and
    #                   <code>EndPosition</code>. The travel mode and departure time that you specify in the
    #               request determines the calculated time.</p>
    #
    #   @return [Float]
    #
    # @!attribute geometry
    #   <p>Contains the calculated route's path as a linestring geometry.</p>
    #
    #   @return [LegGeometry]
    #
    # @!attribute steps
    #   <p>Contains a list of steps, which represent subsections of a leg. Each step provides
    #               instructions for how to move to the next step in the leg such as the step's start
    #               position, end position, travel distance, travel duration, and geometry offset.</p>
    #
    #   @return [Array<Step>]
    #
    Leg = ::Struct.new(
      :start_position,
      :end_position,
      :distance,
      :duration_seconds,
      :geometry,
      :steps,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::Leg "\
          "start_position=\"[SENSITIVE]\", "\
          "end_position=\"[SENSITIVE]\", "\
          "distance=#{distance || 'nil'}, "\
          "duration_seconds=#{duration_seconds || 'nil'}, "\
          "geometry=#{geometry || 'nil'}, "\
          "steps=#{steps || 'nil'}>"
      end
    end

    # <p>Contains the geometry details for each path between a pair of positions. Used in
    #             plotting a route leg on a map.</p>
    #
    # @!attribute line_string
    #   <p>An ordered list of positions used to plot a route on a map. </p>
    #           <p>The first position is closest to the start position for the leg, and the last position
    #               is the closest to the end position for the leg.</p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>[[-123.117, 49.284],[-123.115, 49.285],[-123.115,
    #                           49.285]]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.4 Documentation
    #
    #   @return [Array<Array<Float>>]
    #
    LegGeometry = ::Struct.new(
      :line_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource containing the requested devices.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>An optional limit for the number of entries returned in a single call.</p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #
    #   @return [String]
    #
    ListDevicePositionsInput = ::Struct.new(
      :tracker_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>Contains details about each device's last known position. These details includes the device ID,
    #               the time when the position was sampled on the device, the time that the service received the update, and the most recent coordinates.</p>
    #
    #   @return [Array<ListDevicePositionsResponseEntry>]
    #
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results.</p>
    #
    #   @return [String]
    #
    ListDevicePositionsOutput = ::Struct.new(
      :entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the tracker resource details.</p>
    #
    # @!attribute device_id
    #   <p>The ID of the device for this position.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_time
    #   <p>The timestamp at which the device position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute position
    #   <p>The last known device position. Empty if no positions currently stored.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute accuracy
    #   <p>The accuracy of the device position.</p>
    #
    #   @return [PositionalAccuracy]
    #
    # @!attribute position_properties
    #   <p>The properties associated with the position.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListDevicePositionsResponseEntry = ::Struct.new(
      :device_id,
      :sample_time,
      :position,
      :accuracy,
      :position_properties,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::ListDevicePositionsResponseEntry "\
          "device_id=#{device_id || 'nil'}, "\
          "sample_time=#{sample_time || 'nil'}, "\
          "position=\"[SENSITIVE]\", "\
          "accuracy=#{accuracy || 'nil'}, "\
          "position_properties=\"[SENSITIVE]\">"
      end
    end

    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    #   @return [String]
    #
    ListGeofenceCollectionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>Lists the geofence collections that exist in your AWS account.</p>
    #
    #   @return [Array<ListGeofenceCollectionsResponseEntry>]
    #
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListGeofenceCollectionsOutput = ::Struct.new(
      :entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the geofence collection details.</p>
    #
    # @!attribute collection_name
    #   <p>The name of the geofence collection.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the geofence collection</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_data_source
    #   <p>No longer used. Always returns an empty string.</p>
    #
    #   @deprecated
    #     Deprecated. Unused.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the geofence collection was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>Specifies a timestamp for when the resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    ListGeofenceCollectionsResponseEntry = ::Struct.new(
      :collection_name,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a list of geofences stored in a given geofence collection.</p>
    #
    # @!attribute geofence_id
    #   <p>The geofence identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute geometry
    #   <p>Contains the geofence geometry details describing a polygon.</p>
    #
    #   @return [GeofenceGeometry]
    #
    # @!attribute status
    #   <p>Identifies the state of the geofence. A geofence will hold one of the following
    #               states:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ACTIVE</code> — The geofence has been indexed by the system. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> — The geofence is being processed by the system.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code> — The geofence failed to be indexed by the system.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETED</code> — The geofence has been deleted from the system
    #                       index.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETING</code> — The geofence is being deleted from the system
    #                       index.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the geofence was stored in a geofence collection in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the geofence was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    ListGeofenceResponseEntry = ::Struct.new(
      :geofence_id,
      :geometry,
      :status,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection storing the list of geofences.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>An optional limit for the number of geofences returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    ListGeofencesInput = ::Struct.new(
      :collection_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>Contains a list of geofences stored in the geofence collection.</p>
    #
    #   @return [Array<ListGeofenceResponseEntry>]
    #
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListGeofencesOutput = ::Struct.new(
      :entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    #   @return [String]
    #
    ListMapsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>Contains a list of maps in your AWS account</p>
    #
    #   @return [Array<ListMapsResponseEntry>]
    #
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the token in a following request to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListMapsOutput = ::Struct.new(
      :entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details of an existing map resource in your AWS account.</p>
    #
    # @!attribute map_name
    #   <p>The name of the associated map resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the map resource.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>Specifies the data provider for the associated map tiles.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the map resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the map resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #
    #   @return [Time]
    #
    ListMapsResponseEntry = ::Struct.new(
      :map_name,
      :description,
      :data_source,
      :pricing_plan,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>An optional limit for the maximum number of results returned in a single call.</p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    #   @return [String]
    #
    ListPlaceIndexesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>Lists the place index resources that exist in your AWS account</p>
    #
    #   @return [Array<ListPlaceIndexesResponseEntry>]
    #
    # @!attribute next_token
    #   <p>A pagination token indicating that there are additional pages available. You can use
    #               the token in a new request to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListPlaceIndexesOutput = ::Struct.new(
      :entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A place index resource listed in your AWS account.</p>
    #
    # @!attribute index_name
    #   <p>The name of the place index resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for the place index resource.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>The data provider of geospatial data. Values can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the place index resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the place index resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    ListPlaceIndexesResponseEntry = ::Struct.new(
      :index_name,
      :description,
      :data_source,
      :pricing_plan,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>An optional maximum number of results returned in a single call.</p>
    #           <p>Default Value: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #           <p>Default Value: <code>null</code>
    #            </p>
    #
    #   @return [String]
    #
    ListRouteCalculatorsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>Lists the route calculator resources that exist in your AWS account</p>
    #
    #   @return [Array<ListRouteCalculatorsResponseEntry>]
    #
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a subsequent request to fetch the next set of results.</p>
    #
    #   @return [String]
    #
    ListRouteCalculatorsOutput = ::Struct.new(
      :entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A route calculator resource listed in your AWS account.</p>
    #
    # @!attribute calculator_name
    #   <p>The name of the route calculator resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description of the route calculator resource.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>The data provider of traffic and road network data. Indicates one of the available
    #               providers:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp when the route calculator resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp when the route calculator resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Time]
    #
    ListRouteCalculatorsResponseEntry = ::Struct.new(
      :calculator_name,
      :description,
      :data_source,
      :pricing_plan,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
    #   	        <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>Tags that have been applied to the specified resource. Tags are mapped from the tag key to the tag value: <code>"TagKey" : "TagValue"</code>.</p>
    #   	        <ul>
    #               <li>
    #                  <p>Format example: <code>{"tag1" : "value1", "tag2" : "value2"} </code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource whose associated geofence collections you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #
    #   @return [String]
    #
    ListTrackerConsumersInput = ::Struct.new(
      :tracker_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute consumer_arns
    #   <p>Contains the list of geofence collection ARNs associated to the tracker resource.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results. </p>
    #
    #   @return [String]
    #
    ListTrackerConsumersOutput = ::Struct.new(
      :consumer_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    #   @return [String]
    #
    ListTrackersInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>Contains tracker resources in your AWS account. Details include tracker name,
    #               description and timestamps for when the tracker was created and last updated.</p>
    #
    #   @return [Array<ListTrackersResponseEntry>]
    #
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results.  </p>
    #
    #   @return [String]
    #
    ListTrackersOutput = ::Struct.new(
      :entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the tracker resource details.</p>
    #
    # @!attribute tracker_name
    #   <p>The name of the tracker resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the tracker resource.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>Always returns <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_data_source
    #   <p>No longer used. Always returns an empty string.</p>
    #
    #   @deprecated
    #     Deprecated. Unused.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the tracker resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    ListTrackersResponseEntry = ::Struct.new(
      :tracker_name,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the map tile style selected from an available provider.</p>
    #
    # @!attribute style
    #   <p>Specifies the map style selected from an available data provider.</p>
    #           <p>Valid <a href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri map styles</a>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>VectorEsriDarkGrayCanvas</code> – The Esri Dark Gray Canvas map style. A
    #                       vector basemap with a dark gray, neutral background with minimal colors, labels,
    #                       and features that's designed to draw attention to your thematic content. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RasterEsriImagery</code> – The Esri Imagery map style. A raster basemap
    #                       that provides one meter or better satellite and aerial imagery in many parts of
    #                       the world and lower resolution satellite imagery worldwide. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VectorEsriLightGrayCanvas</code> – The Esri Light Gray Canvas map style,
    #                       which provides a detailed vector basemap with a light gray, neutral background
    #                       style with minimal colors, labels, and features that's designed to draw
    #                       attention to your thematic content. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VectorEsriTopographic</code> – The Esri Light map style, which provides
    #                       a detailed vector basemap with a classic Esri map style.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VectorEsriStreets</code> – The Esri World Streets map style, which
    #                       provides a detailed vector basemap for the world symbolized with a classic Esri
    #                       street map style. The vector tile layer is similar in content and style to the
    #                       World Street Map raster map.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VectorEsriNavigation</code> – The Esri World Navigation map style, which
    #                       provides a detailed basemap for the world symbolized with a custom navigation
    #                       map style that's designed for use during the day in mobile devices.</p>
    #               </li>
    #            </ul>
    #           <p>Valid <a href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE
    #                   Technologies map styles</a>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>VectorHereBerlin</code> – The HERE Berlin map style is a high contrast
    #                       detailed base map of the world that blends 3D and 2D rendering.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VectorHereExplore</code> – A default HERE map style containing a
    #                       neutral, global map and its features including roads, buildings, landmarks,
    #                       and water features. It also now includes a fully designed map of Japan.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VectorHereExploreTruck</code> – A global map containing truck
    #                       restrictions and attributes (e.g. width / height / HAZMAT) symbolized with
    #                       highlighted segments and icons on top of HERE Explore to support use cases
    #                       within transport and logistics.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    MapConfiguration = ::Struct.new(
      :style,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about addresses or points of interest that match the search
    #             criteria.</p>
    #         <p>Not all details are included with all responses. Some details may only be returned
    #             by specific data partners.</p>
    #
    # @!attribute label
    #   <p>The full name and address of the point of interest such as a city, region, or country.
    #               For example, <code>123 Any Street, Any Town, USA</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute geometry
    #   <p>Places uses a point geometry to specify a location or a Place.</p>
    #
    #   @return [PlaceGeometry]
    #
    # @!attribute address_number
    #   <p>The numerical portion of an address, such as a building number. </p>
    #
    #   @return [String]
    #
    # @!attribute street
    #   <p>The name for a street or a road to identify a location. For example, <code>Main
    #                   Street</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute neighborhood
    #   <p>The name of a community district. For example, <code>Downtown</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute municipality
    #   <p>A name for a local area, such as a city or town name. For example,
    #                   <code>Toronto</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute sub_region
    #   <p>A country, or an area that's part of a larger region. For example, <code>Metro
    #                   Vancouver</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>A name for an area or geographical division, such as a province or state name. For
    #               example, <code>British Columbia</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>A country/region specified using <a href="https://www.iso.org/iso-3166-country-codes.html">ISO 3166</a> 3-digit
    #               country/region code. For example, <code>CAN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute postal_code
    #   <p>A group of numbers and letters in a country-specific format, which accompanies the
    #               address for the purpose of identifying a location. </p>
    #
    #   @return [String]
    #
    # @!attribute interpolated
    #   <p>
    #               <code>True</code> if the result is interpolated from other known places.</p>
    #           <p>
    #               <code>False</code> if the Place is a known place.</p>
    #           <p>Not returned when the partner does not provide the information.</p>
    #           <p>For example, returns <code>False</code> for an address location that is found in the
    #               partner data, but returns <code>True</code> if an address does not exist in the partner
    #               data and its location is calculated by interpolating between other known addresses.
    #           </p>
    #
    #   @return [Boolean]
    #
    # @!attribute time_zone
    #   <p>The time zone in which the <code>Place</code> is located. Returned only when using
    #               Here as the selected partner.</p>
    #
    #   @return [TimeZone]
    #
    Place = ::Struct.new(
      :label,
      :geometry,
      :address_number,
      :street,
      :neighborhood,
      :municipality,
      :sub_region,
      :region,
      :country,
      :postal_code,
      :interpolated,
      :time_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Places uses a point geometry to specify a location or a Place.</p>
    #
    # @!attribute point
    #   <p>A single point geometry specifies a location for a Place using <a href="https://gisgeography.com/wgs84-world-geodetic-system/">WGS 84</a>
    #               coordinates:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <i>x</i> — Specifies the x coordinate or longitude. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>y</i> — Specifies the y coordinate or latitude. </p>
    #               </li>
    #            </ul>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    PlaceGeometry = ::Struct.new(
      :point,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::PlaceGeometry "\
          "point=\"[SENSITIVE]\">"
      end
    end

    # <p>Defines the level of certainty of the position.</p>
    #
    # @!attribute horizontal
    #   <p>Estimated maximum distance, in meters, between the measured position and the true
    #               position of a device, along the Earth's surface.</p>
    #
    #   @return [Float]
    #
    PositionalAccuracy = ::Struct.new(
      :horizontal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The geofence collection to store the geofence in.</p>
    #
    #   @return [String]
    #
    # @!attribute geofence_id
    #   <p>An identifier for the geofence. For example, <code>ExampleGeofence-1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute geometry
    #   <p>Contains the polygon details to specify the position of the geofence.</p>
    #           <note>
    #               <p>Each <a href="https://docs.aws.amazon.com/location-geofences/latest/APIReference/API_GeofenceGeometry.html">geofence polygon</a> can have a maximum of 1,000 vertices.</p>
    #           </note>
    #
    #   @return [GeofenceGeometry]
    #
    PutGeofenceInput = ::Struct.new(
      :collection_name,
      :geofence_id,
      :geometry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute geofence_id
    #   <p>The geofence identifier entered in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp for when the geofence was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the geofence was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    PutGeofenceOutput = ::Struct.new(
      :geofence_id,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource that you've entered was not found in your AWS account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result for the calculated route of one <code>DeparturePosition</code>
    #             <code>DestinationPosition</code> pair.</p>
    #
    # @!attribute distance
    #   <p>The total distance of travel for the route.</p>
    #
    #   @return [Float]
    #
    # @!attribute duration_seconds
    #   <p>The expected duration of travel for the route.</p>
    #
    #   @return [Float]
    #
    # @!attribute error
    #   <p>An error corresponding to the calculation of a route between the
    #                   <code>DeparturePosition</code> and <code>DestinationPosition</code>.</p>
    #
    #   @return [RouteMatrixEntryError]
    #
    RouteMatrixEntry = ::Struct.new(
      :distance,
      :duration_seconds,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error corresponding to the calculation of a route between the
    #                 <code>DeparturePosition</code> and <code>DestinationPosition</code>.</p>
    #         <p>The error code can be one of the following:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>RouteNotFound</code> - Unable to find a valid route with the given
    #                     parameters.</p>
    #             </li>
    #          </ul>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>RouteTooLong</code> - Route calculation went beyond the maximum size of
    #                     a route and was terminated before completion.</p>
    #             </li>
    #          </ul>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>PositionsNotFound</code> - One or more of the input positions were not
    #                     found on the route network.</p>
    #             </li>
    #          </ul>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>DestinationPositionNotFound</code> - The destination position was not
    #                     found on the route network.</p>
    #             </li>
    #          </ul>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>DeparturePositionNotFound</code> - The departure position was not found
    #                     on the route network.</p>
    #             </li>
    #          </ul>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>OtherValidationError</code> - The given inputs were not valid or a route
    #                     was not found. More information is given in the error
    #                     <code>Message</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute code
    #   <p>The type of error which occurred for the route calculation.</p>
    #
    #   Enum, one of: ["RouteNotFound", "RouteTooLong", "PositionsNotFound", "DestinationPositionNotFound", "DeparturePositionNotFound", "OtherValidationError"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message about the error that occurred for the route calculation.</p>
    #
    #   @return [String]
    #
    RouteMatrixEntryError = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a search result from a position search query that is run on a place index
    #             resource.</p>
    #
    # @!attribute place
    #   <p>Details about the search result, such as its address and position.</p>
    #
    #   @return [Place]
    #
    # @!attribute distance
    #   <p>The distance in meters of a great-circle arc between the query position and the
    #               result.</p>
    #           <note>
    #               <p>A great-circle arc is the shortest path on a sphere, in this case the Earth. This
    #                   returns the shortest distance between two locations.</p>
    #           </note>
    #
    #   @return [Float]
    #
    SearchForPositionResult = ::Struct.new(
      :place,
      :distance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a place suggestion resulting from a place suggestion query that is run on a
    #             place index resource.</p>
    #
    # @!attribute text
    #   <p>The text of the place suggestion, typically formatted as an address string.</p>
    #
    #   @return [String]
    #
    SearchForSuggestionsResult = ::Struct.new(
      :text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a search result from a text search query that is run on a place index
    #             resource.</p>
    #
    # @!attribute place
    #   <p>Details about the search result, such as its address and position.</p>
    #
    #   @return [Place]
    #
    # @!attribute distance
    #   <p>The distance in meters of a great-circle arc between the bias position specified and
    #               the result. <code>Distance</code> will be returned only if a bias position was specified
    #               in the query.</p>
    #           <note>
    #               <p>A great-circle arc is the shortest path on a sphere, in this case the Earth. This
    #                   returns the shortest distance between two locations.</p>
    #           </note>
    #
    #   @return [Float]
    #
    # @!attribute relevance
    #   <p>The relative confidence in the match for a result among the results returned. For
    #               example, if more fields for an address match (including house number, street, city,
    #               country/region, and postal code), the relevance score is closer to 1.</p>
    #           <p>Returned only when the partner selected is Esri.</p>
    #
    #   @return [Float]
    #
    SearchForTextResult = ::Struct.new(
      :place,
      :distance,
      :relevance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    #
    #   @return [String]
    #
    # @!attribute position
    #   <p>Specifies the longitude and latitude of the position to query.</p>
    #           <p> This parameter must contain a pair of numbers. The first number represents the X
    #               coordinate, or longitude; the second number represents the Y coordinate, or
    #               latitude.</p>
    #           <p>For example, <code>[-123.1174, 49.2847]</code> represents a position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute max_results
    #   <p>An optional parameter. The maximum number of results returned per request.</p>
    #           <p>Default value: <code>50</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #           <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #           <p>For an example, we'll use the Greek language. You search for a location around Athens,
    #               Greece, with the <code>language</code> parameter set to <code>en</code>. The
    #                   <code>city</code> in the results will most likely be returned as
    #               <code>Athens</code>.</p>
    #           <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #                   <code>city</code> in the results will more likely be returned as
    #               <code>Αθήνα</code>.</p>
    #           <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #
    #   @return [String]
    #
    SearchPlaceIndexForPositionInput = ::Struct.new(
      :index_name,
      :position,
      :max_results,
      :language,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Location::Types::SearchPlaceIndexForPositionInput "\
          "index_name=#{index_name || 'nil'}, "\
          "position=\"[SENSITIVE]\", "\
          "max_results=#{max_results || 'nil'}, "\
          "language=#{language || 'nil'}>"
      end
    end

    # @!attribute summary
    #   <p>Contains a summary of the request. Echoes the input values for <code>Position</code>,
    #                   <code>Language</code>, <code>MaxResults</code>, and the <code>DataSource</code> of
    #               the place index. </p>
    #
    #   @return [SearchPlaceIndexForPositionSummary]
    #
    # @!attribute results
    #   <p>Returns a list of Places closest to the specified position. Each result contains
    #               additional information about the Places returned.</p>
    #
    #   @return [Array<SearchForPositionResult>]
    #
    SearchPlaceIndexForPositionOutput = ::Struct.new(
      :summary,
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the request sent by using
    #             <code>SearchPlaceIndexForPosition</code>.</p>
    #
    # @!attribute position
    #   <p>The position specified in the request.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute max_results
    #   <p>Contains the optional result count limit that is specified in the request.</p>
    #           <p>Default value: <code>50</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute data_source
    #   <p>The geospatial data provider attached to the place index resource specified in the
    #               request. Values can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>Esri</p>
    #               </li>
    #               <li>
    #                   <p>Here</p>
    #               </li>
    #            </ul>
    #           <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute language
    #   <p>The preferred language used to return results. Matches the language in the request.
    #               The value is a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a>
    #               language tag, for example, <code>en</code> for English.</p>
    #
    #   @return [String]
    #
    SearchPlaceIndexForPositionSummary = ::Struct.new(
      :position,
      :max_results,
      :data_source,
      :language,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Location::Types::SearchPlaceIndexForPositionSummary "\
          "position=\"[SENSITIVE]\", "\
          "max_results=#{max_results || 'nil'}, "\
          "data_source=#{data_source || 'nil'}, "\
          "language=#{language || 'nil'}>"
      end
    end

    # @!attribute index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>The free-form partial text to use to generate place suggestions. For example,
    #                   <code>eiffel tow</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute bias_position
    #   <p>An optional parameter that indicates a preference for place suggestions that are
    #               closer to a specified position.</p>
    #           <p> If provided, this parameter must contain a pair of numbers. The first number
    #               represents the X coordinate, or longitude; the second number represents the Y
    #               coordinate, or latitude.</p>
    #           <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #           <note>
    #               <p>
    #                  <code>BiasPosition</code> and <code>FilterBBox</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #           </note>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute filter_b_box
    #   <p>An optional parameter that limits the search results by returning only suggestions
    #               within a specified bounding box.</p>
    #           <p> If provided, this parameter must contain a total of four consecutive numbers in two
    #               pairs. The first pair of numbers represents the X and Y coordinates (longitude and
    #               latitude, respectively) of the southwest corner of the bounding box; the second pair of
    #               numbers represents the X and Y coordinates (longitude and latitude, respectively) of the
    #               northeast corner of the bounding box.</p>
    #           <p>For example, <code>[-12.7935, -37.4835, -12.0684, -36.9542]</code> represents a
    #               bounding box where the southwest corner has longitude <code>-12.7935</code> and latitude
    #                   <code>-37.4835</code>, and the northeast corner has longitude <code>-12.0684</code>
    #               and latitude <code>-36.9542</code>.</p>
    #           <note>
    #               <p>
    #                  <code>FilterBBox</code> and <code>BiasPosition</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #           </note>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-5 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute filter_countries
    #   <p>An optional parameter that limits the search results by returning only suggestions
    #               within the provided list of countries.</p>
    #           <ul>
    #               <li>
    #                   <p>Use the <a href="https://www.iso.org/iso-3166-country-codes.html">ISO
    #                           3166</a> 3-digit country code. For example, Australia uses three
    #                       upper-case characters: <code>AUS</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>An optional parameter. The maximum number of results returned per request. </p>
    #           <p>The default: <code>5</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #           <p>This setting affects the languages used in the results. If no language is specified,
    #               or not supported for a particular result, the partner automatically chooses a language
    #               for the result.</p>
    #           <p>For an example, we'll use the Greek language. You search for <code>Athens, Gr</code>
    #               to get suggestions with the <code>language</code> parameter set to <code>en</code>. The
    #               results found will most likely be returned as <code>Athens, Greece</code>.</p>
    #           <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #               result found will more likely be returned as <code>Αθήνα, Ελλάδα</code>.</p>
    #           <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #
    #   @return [String]
    #
    SearchPlaceIndexForSuggestionsInput = ::Struct.new(
      :index_name,
      :text,
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :max_results,
      :language,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::SearchPlaceIndexForSuggestionsInput "\
          "index_name=#{index_name || 'nil'}, "\
          "text=\"[SENSITIVE]\", "\
          "bias_position=\"[SENSITIVE]\", "\
          "filter_b_box=\"[SENSITIVE]\", "\
          "filter_countries=#{filter_countries || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "language=#{language || 'nil'}>"
      end
    end

    # @!attribute summary
    #   <p>Contains a summary of the request. Echoes the input values for
    #                   <code>BiasPosition</code>, <code>FilterBBox</code>, <code>FilterCountries</code>,
    #                   <code>Language</code>, <code>MaxResults</code>, and <code>Text</code>. Also includes
    #               the <code>DataSource</code> of the place index. </p>
    #
    #   @return [SearchPlaceIndexForSuggestionsSummary]
    #
    # @!attribute results
    #   <p>A list of place suggestions that best match the search text.</p>
    #
    #   @return [Array<SearchForSuggestionsResult>]
    #
    SearchPlaceIndexForSuggestionsOutput = ::Struct.new(
      :summary,
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the request sent by using
    #             <code>SearchPlaceIndexForSuggestions</code>.</p>
    #
    # @!attribute text
    #   <p>The free-form partial text input specified in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute bias_position
    #   <p>Contains the coordinates for the optional bias position specified in the
    #               request.</p>
    #           <p>This parameter contains a pair of numbers. The first number represents the X
    #               coordinate, or longitude; the second number represents the Y coordinate, or
    #               latitude.</p>
    #           <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute filter_b_box
    #   <p>Contains the coordinates for the optional bounding box specified in the
    #               request.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-5 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute filter_countries
    #   <p>Contains the optional country filter specified in the request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>Contains the optional result count limit specified in the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_source
    #   <p>The geospatial data provider attached to the place index resource specified in the
    #               request. Values can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>Esri</p>
    #               </li>
    #               <li>
    #                   <p>Here</p>
    #               </li>
    #            </ul>
    #           <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute language
    #   <p>The preferred language used to return results. Matches the language in the request.
    #               The value is a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a>
    #               language tag, for example, <code>en</code> for English.</p>
    #
    #   @return [String]
    #
    SearchPlaceIndexForSuggestionsSummary = ::Struct.new(
      :text,
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :max_results,
      :data_source,
      :language,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::SearchPlaceIndexForSuggestionsSummary "\
          "text=\"[SENSITIVE]\", "\
          "bias_position=\"[SENSITIVE]\", "\
          "filter_b_box=\"[SENSITIVE]\", "\
          "filter_countries=#{filter_countries || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "data_source=#{data_source || 'nil'}, "\
          "language=#{language || 'nil'}>"
      end
    end

    # @!attribute index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>The address, name, city, or region to be used in the search in free-form text format.
    #               For example, <code>123 Any Street</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute bias_position
    #   <p>An optional parameter that indicates a preference for places that are closer to a
    #               specified position.</p>
    #           <p> If provided, this parameter must contain a pair of numbers. The first number
    #               represents the X coordinate, or longitude; the second number represents the Y
    #               coordinate, or latitude.</p>
    #           <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #           <note>
    #               <p>
    #                  <code>BiasPosition</code> and <code>FilterBBox</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #           </note>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute filter_b_box
    #   <p>An optional parameter that limits the search results by returning only places that are
    #               within the provided bounding box.</p>
    #           <p> If provided, this parameter must contain a total of four consecutive numbers in two
    #               pairs. The first pair of numbers represents the X and Y coordinates (longitude and
    #               latitude, respectively) of the southwest corner of the bounding box; the second pair of
    #               numbers represents the X and Y coordinates (longitude and latitude, respectively) of the
    #               northeast corner of the bounding box.</p>
    #           <p>For example, <code>[-12.7935, -37.4835, -12.0684, -36.9542]</code> represents a
    #               bounding box where the southwest corner has longitude <code>-12.7935</code> and latitude
    #                   <code>-37.4835</code>, and the northeast corner has longitude <code>-12.0684</code>
    #               and latitude <code>-36.9542</code>.</p>
    #           <note>
    #               <p>
    #                  <code>FilterBBox</code> and <code>BiasPosition</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #           </note>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-5 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute filter_countries
    #   <p>An optional parameter that limits the search results by returning only places that are
    #               in a specified list of countries.</p>
    #           <ul>
    #               <li>
    #                   <p>Valid values include <a href="https://www.iso.org/iso-3166-country-codes.html">ISO 3166</a>
    #                       3-digit country codes. For example, Australia uses three upper-case characters:
    #                           <code>AUS</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>An optional parameter. The maximum number of results returned per request. </p>
    #           <p>The default: <code>50</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #           <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #           <p>For an example, we'll use the Greek language. You search for <code>Athens,
    #                   Greece</code>, with the <code>language</code> parameter set to <code>en</code>. The
    #               result found will most likely be returned as <code>Athens</code>.</p>
    #           <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #               result found will more likely be returned as <code>Αθήνα</code>.</p>
    #           <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #
    #   @return [String]
    #
    SearchPlaceIndexForTextInput = ::Struct.new(
      :index_name,
      :text,
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :max_results,
      :language,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Location::Types::SearchPlaceIndexForTextInput "\
          "index_name=#{index_name || 'nil'}, "\
          "text=\"[SENSITIVE]\", "\
          "bias_position=\"[SENSITIVE]\", "\
          "filter_b_box=\"[SENSITIVE]\", "\
          "filter_countries=#{filter_countries || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "language=#{language || 'nil'}>"
      end
    end

    # @!attribute summary
    #   <p>Contains a summary of the request. Echoes the input values for
    #                   <code>BiasPosition</code>, <code>FilterBBox</code>, <code>FilterCountries</code>,
    #                   <code>Language</code>, <code>MaxResults</code>, and <code>Text</code>. Also includes
    #               the <code>DataSource</code> of the place index and the bounding box,
    #                   <code>ResultBBox</code>, which surrounds the search results. </p>
    #
    #   @return [SearchPlaceIndexForTextSummary]
    #
    # @!attribute results
    #   <p>A list of Places matching the input text. Each result contains additional information
    #               about the specific point of interest. </p>
    #           <p>Not all response properties are included with all responses. Some properties may
    #               only be returned by specific data partners.</p>
    #
    #   @return [Array<SearchForTextResult>]
    #
    SearchPlaceIndexForTextOutput = ::Struct.new(
      :summary,
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the request sent by using <code>SearchPlaceIndexForText</code>.</p>
    #
    # @!attribute text
    #   <p>The search text specified in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute bias_position
    #   <p>Contains the coordinates for the optional bias position specified in the
    #               request.</p>
    #           <p>This parameter contains a pair of numbers. The first number represents the X
    #               coordinate, or longitude; the second number represents the Y coordinate, or
    #               latitude.</p>
    #           <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute filter_b_box
    #   <p>Contains the coordinates for the optional bounding box specified in the
    #               request.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-5 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute filter_countries
    #   <p>Contains the optional country filter specified in the request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>Contains the optional result count limit specified in the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute result_b_box
    #   <p>The bounding box that fully contains all search results.</p>
    #           <note>
    #               <p>If you specified the optional <code>FilterBBox</code> parameter in the request,
    #                       <code>ResultBBox</code> is contained within <code>FilterBBox</code>.</p>
    #           </note>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-5 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute data_source
    #   <p>The geospatial data provider attached to the place index resource specified in the
    #               request. Values can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>Esri</p>
    #               </li>
    #               <li>
    #                   <p>Here</p>
    #               </li>
    #            </ul>
    #           <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute language
    #   <p>The preferred language used to return results. Matches the language in the request.
    #               The value is a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a>
    #               language tag, for example, <code>en</code> for English.</p>
    #
    #   @return [String]
    #
    SearchPlaceIndexForTextSummary = ::Struct.new(
      :text,
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :max_results,
      :result_b_box,
      :data_source,
      :language,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Location::Types::SearchPlaceIndexForTextSummary "\
          "text=\"[SENSITIVE]\", "\
          "bias_position=\"[SENSITIVE]\", "\
          "filter_b_box=\"[SENSITIVE]\", "\
          "filter_countries=#{filter_countries || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "result_b_box=\"[SENSITIVE]\", "\
          "data_source=#{data_source || 'nil'}, "\
          "language=#{language || 'nil'}>"
      end
    end

    # <p>The operation was denied because the request would exceed the maximum <a href="https://docs.aws.amazon.com/location/latest/developerguide/location-quotas.html">quota</a>
    #       set for Amazon Location Service.</p>
    #
    # @!attribute message
    #   <p>A message with the reason for the service quota exceeded exception error.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Represents an element of a leg within a route. A step contains instructions for how
    #             to move to the next step in the leg. </p>
    #
    # @!attribute start_position
    #   <p>The starting position of a step. If the position is the first step in the leg, this
    #               position is the same as the start position of the leg.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute end_position
    #   <p>The end position of a step. If the position the last step in the leg, this position is
    #               the same as the end position of the leg.</p>
    #
    #   @see https://tools.ietf.org/html/rfc7946 section-3.1.1 Documentation
    #
    #   @return [Array<Float>]
    #
    # @!attribute distance
    #   <p>The travel distance between the step's <code>StartPosition</code> and
    #                   <code>EndPosition</code>.</p>
    #
    #   @return [Float]
    #
    # @!attribute duration_seconds
    #   <p>The estimated travel time, in seconds, from the step's <code>StartPosition</code> to
    #               the <code>EndPosition</code>. . The travel mode and departure time that you specify in
    #               the request determines the calculated time.</p>
    #
    #   @return [Float]
    #
    # @!attribute geometry_offset
    #   <p>Represents the start position, or index, in a sequence of steps within the leg's line
    #               string geometry. For example, the index of the first step in a leg geometry is
    #                   <code>0</code>. </p>
    #           <p>Included in the response for queries that set <code>IncludeLegGeometry</code> to
    #                   <code>True</code>. </p>
    #
    #   @return [Integer]
    #
    Step = ::Struct.new(
      :start_position,
      :end_position,
      :distance,
      :duration_seconds,
      :geometry_offset,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Location::Types::Step "\
          "start_position=\"[SENSITIVE]\", "\
          "end_position=\"[SENSITIVE]\", "\
          "distance=#{distance || 'nil'}, "\
          "duration_seconds=#{duration_seconds || 'nil'}, "\
          "geometry_offset=#{geometry_offset || 'nil'}>"
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to update.</p>
    #   	        <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Applies one or more tags to specific resource. A tag is a key-value pair that helps you
    #               manage, identify, search, and filter your resources.</p>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource.</p>
    #               </li>
    #               <li>
    #                   <p>Each tag key must be unique and must have exactly one associated value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters: + -
    #                       = . _ : / @</p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied because of request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a time zone. Includes the name of the time zone and the offset from
    #             UTC in seconds.</p>
    #
    # @!attribute name
    #   <p>The name of the time zone, following the <a href="https://www.iana.org/time-zones">
    #                   IANA time zone standard</a>. For example,
    #               <code>America/Los_Angeles</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute offset
    #   <p>The time zone's offset, in seconds, from UTC.</p>
    #
    #   @return [Integer]
    #
    TimeZone = ::Struct.new(
      :name,
      :offset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about the truck dimensions in the unit of measurement that you
    #             specify. Used to filter out roads that can't support or allow the specified dimensions
    #             for requests that specify <code>TravelMode</code> as <code>Truck</code>.</p>
    #
    # @!attribute length
    #   <p>The length of the truck.</p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>15.5</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute height
    #   <p>The height of the truck.</p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>4.5</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute width
    #   <p>The width of the truck.</p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>4.5</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute unit
    #   <p> Specifies the unit of measurement for the truck dimensions.</p>
    #           <p>Default Value: <code>Meters</code>
    #            </p>
    #
    #   Enum, one of: ["Meters", "Feet"]
    #
    #   @return [String]
    #
    TruckDimensions = ::Struct.new(
      :length,
      :height,
      :width,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about the truck's weight specifications. Used to avoid roads that
    #             can't support or allow the total weight for requests that specify
    #                 <code>TravelMode</code> as <code>Truck</code>.</p>
    #
    # @!attribute total
    #   <p>The total weight of the truck. </p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>3500</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute unit
    #   <p>The unit of measurement to use for the truck weight.</p>
    #           <p>Default Value: <code>Kilograms</code>
    #            </p>
    #
    #   Enum, one of: ["Kilograms", "Pounds"]
    #
    #   @return [String]
    #
    TruckWeight = ::Struct.new(
      :total,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove tags.</p>
    #   	        <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the specified resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection to update.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #
    #   @deprecated
    #     Deprecated. No longer allowed.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Updates the description for the geofence collection.</p>
    #
    #   @return [String]
    #
    UpdateGeofenceCollectionInput = ::Struct.new(
      :collection_name,
      :pricing_plan,
      :pricing_plan_data_source,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the updated geofence collection.</p>
    #
    #   @return [String]
    #
    # @!attribute collection_arn
    #   <p>The Amazon Resource Name (ARN) of the updated geofence collection. Used to specify a
    #               resource across AWS.</p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p>The time when the geofence collection was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #
    #   @return [Time]
    #
    UpdateGeofenceCollectionOutput = ::Struct.new(
      :collection_name,
      :collection_arn,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The name of the map resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Updates the description for the map resource.</p>
    #
    #   @return [String]
    #
    UpdateMapInput = ::Struct.new(
      :map_name,
      :pricing_plan,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute map_name
    #   <p>The name of the updated map resource.</p>
    #
    #   @return [String]
    #
    # @!attribute map_arn
    #   <p>The Amazon Resource Name (ARN) of the updated map resource. Used to specify a resource
    #               across AWS.</p>
    #           <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:maps/ExampleMap</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the map resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    UpdateMapOutput = ::Struct.new(
      :map_name,
      :map_arn,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Updates the description for the place index resource.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_configuration
    #   <p>Updates the data storage option for the place index resource.</p>
    #
    #   @return [DataSourceConfiguration]
    #
    UpdatePlaceIndexInput = ::Struct.new(
      :index_name,
      :pricing_plan,
      :description,
      :data_source_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute index_name
    #   <p>The name of the updated place index resource.</p>
    #
    #   @return [String]
    #
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) of the upated place index resource. Used to specify a
    #               resource across AWS.</p>
    #           <ul>
    #               <li>
    #                   <p>Format example: <code>arn:aws:geo:region:account-id:place-
    #                           index/ExamplePlaceIndex</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the place index resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    UpdatePlaceIndexOutput = ::Struct.new(
      :index_name,
      :index_arn,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Updates the description for the route calculator resource.</p>
    #
    #   @return [String]
    #
    UpdateRouteCalculatorInput = ::Struct.new(
      :calculator_name,
      :pricing_plan,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the updated route calculator resource.</p>
    #
    #   @return [String]
    #
    # @!attribute calculator_arn
    #   <p>The Amazon Resource Name (ARN) of the updated route calculator resource. Used to
    #               specify a resource across AWS.</p>
    #           <ul>
    #               <li>
    #                   <p>Format example: <code>arn:aws:geo:region:account-id:route-
    #                           calculator/ExampleCalculator</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the route calculator was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    UpdateRouteCalculatorOutput = ::Struct.new(
      :calculator_name,
      :calculator_arn,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    #   Enum, one of: ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #
    #   @deprecated
    #     Deprecated. No longer allowed.
    #     Since: 2022-02-01
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Updates the description for the tracker resource.</p>
    #
    #   @return [String]
    #
    # @!attribute position_filtering
    #   <p>Updates the position filtering for the tracker resource.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>TimeBased</code> - Location updates are evaluated against linked geofence collections,
    #                       but not every location update is stored. If your update frequency is more often than 30 seconds,
    #                       only one update per 30 seconds is stored for each unique device ID.
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>DistanceBased</code> - If the device has moved less than 30 m (98.4 ft), location updates are
    #                       ignored. Location updates within this distance are neither evaluated against linked geofence collections, nor stored.
    #                       This helps control costs by reducing the number of geofence evaluations and historical device positions to paginate through.
    #                       Distance-based filtering can also reduce the effects of GPS noise when displaying device trajectories on a map.
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AccuracyBased</code> - If the device has moved less than the measured accuracy,
    #                       location updates are ignored. For example, if two consecutive updates from a device
    #                       have a horizontal accuracy of 5 m and 10 m, the second update is ignored if the device
    #                       has moved less than 15 m. Ignored location updates are neither evaluated against
    #                       linked geofence collections, nor stored. This helps educe the effects of GPS noise
    #                       when displaying device trajectories on a map, and can help control costs by reducing the
    #                       number of geofence evaluations.
    #                   </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["TimeBased", "DistanceBased", "AccuracyBased"]
    #
    #   @return [String]
    #
    UpdateTrackerInput = ::Struct.new(
      :tracker_name,
      :pricing_plan,
      :pricing_plan_data_source,
      :description,
      :position_filtering,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the updated tracker resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tracker_arn
    #   <p>The Amazon Resource Name (ARN) of the updated tracker resource. Used to specify a resource across
    #               AWS.</p>
    #               <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:tracker/ExampleTracker</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p>The timestamp for when the tracker resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #
    #   @return [Time]
    #
    UpdateTrackerOutput = ::Struct.new(
      :tracker_name,
      :tracker_arn,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input failed to meet the constraints specified by the AWS service. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A message with the reason for the validation exception error.</p>
    #
    #   Enum, one of: ["UnknownOperation", "Missing", "CannotParse", "FieldValidationFailed", "Other"]
    #
    #   @return [String]
    #
    # @!attribute field_list
    #   <p>The field where the invalid entry was detected.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input failed to meet the constraints specified by the AWS service in a specified
    #       field. </p>
    #
    # @!attribute name
    #   <p>The field name where the invalid entry was detected.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message with the reason for the validation exception error.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
