# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Location
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateTrackerConsumerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTrackerConsumerInput, context: context)
        type = Types::AssociateTrackerConsumerInput.new
        type.tracker_name = params[:tracker_name]
        type.consumer_arn = params[:consumer_arn]
        type
      end
    end

    module AssociateTrackerConsumerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTrackerConsumerOutput, context: context)
        type = Types::AssociateTrackerConsumerOutput.new
        type
      end
    end

    module BatchDeleteDevicePositionHistoryError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDevicePositionHistoryError, context: context)
        type = Types::BatchDeleteDevicePositionHistoryError.new
        type.device_id = params[:device_id]
        type.error = BatchItemError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module BatchDeleteDevicePositionHistoryErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDeleteDevicePositionHistoryError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDeleteDevicePositionHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDevicePositionHistoryInput, context: context)
        type = Types::BatchDeleteDevicePositionHistoryInput.new
        type.tracker_name = params[:tracker_name]
        type.device_ids = DeviceIdsList.build(params[:device_ids], context: "#{context}[:device_ids]") unless params[:device_ids].nil?
        type
      end
    end

    module BatchDeleteDevicePositionHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDevicePositionHistoryOutput, context: context)
        type = Types::BatchDeleteDevicePositionHistoryOutput.new
        type.errors = BatchDeleteDevicePositionHistoryErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDeleteGeofenceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteGeofenceError, context: context)
        type = Types::BatchDeleteGeofenceError.new
        type.geofence_id = params[:geofence_id]
        type.error = BatchItemError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module BatchDeleteGeofenceErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDeleteGeofenceError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDeleteGeofenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteGeofenceInput, context: context)
        type = Types::BatchDeleteGeofenceInput.new
        type.collection_name = params[:collection_name]
        type.geofence_ids = IdList.build(params[:geofence_ids], context: "#{context}[:geofence_ids]") unless params[:geofence_ids].nil?
        type
      end
    end

    module BatchDeleteGeofenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteGeofenceOutput, context: context)
        type = Types::BatchDeleteGeofenceOutput.new
        type.errors = BatchDeleteGeofenceErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchEvaluateGeofencesError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEvaluateGeofencesError, context: context)
        type = Types::BatchEvaluateGeofencesError.new
        type.device_id = params[:device_id]
        type.sample_time = params[:sample_time]
        type.error = BatchItemError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module BatchEvaluateGeofencesErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchEvaluateGeofencesError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchEvaluateGeofencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEvaluateGeofencesInput, context: context)
        type = Types::BatchEvaluateGeofencesInput.new
        type.collection_name = params[:collection_name]
        type.device_position_updates = DevicePositionUpdateList.build(params[:device_position_updates], context: "#{context}[:device_position_updates]") unless params[:device_position_updates].nil?
        type
      end
    end

    module BatchEvaluateGeofencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEvaluateGeofencesOutput, context: context)
        type = Types::BatchEvaluateGeofencesOutput.new
        type.errors = BatchEvaluateGeofencesErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchGetDevicePositionError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDevicePositionError, context: context)
        type = Types::BatchGetDevicePositionError.new
        type.device_id = params[:device_id]
        type.error = BatchItemError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module BatchGetDevicePositionErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetDevicePositionError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetDevicePositionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDevicePositionInput, context: context)
        type = Types::BatchGetDevicePositionInput.new
        type.tracker_name = params[:tracker_name]
        type.device_ids = IdList.build(params[:device_ids], context: "#{context}[:device_ids]") unless params[:device_ids].nil?
        type
      end
    end

    module BatchGetDevicePositionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDevicePositionOutput, context: context)
        type = Types::BatchGetDevicePositionOutput.new
        type.errors = BatchGetDevicePositionErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.device_positions = DevicePositionList.build(params[:device_positions], context: "#{context}[:device_positions]") unless params[:device_positions].nil?
        type
      end
    end

    module BatchItemError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchItemError, context: context)
        type = Types::BatchItemError.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module BatchPutGeofenceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutGeofenceError, context: context)
        type = Types::BatchPutGeofenceError.new
        type.geofence_id = params[:geofence_id]
        type.error = BatchItemError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module BatchPutGeofenceErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutGeofenceError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchPutGeofenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutGeofenceInput, context: context)
        type = Types::BatchPutGeofenceInput.new
        type.collection_name = params[:collection_name]
        type.entries = BatchPutGeofenceRequestEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module BatchPutGeofenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutGeofenceOutput, context: context)
        type = Types::BatchPutGeofenceOutput.new
        type.successes = BatchPutGeofenceSuccessList.build(params[:successes], context: "#{context}[:successes]") unless params[:successes].nil?
        type.errors = BatchPutGeofenceErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchPutGeofenceRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutGeofenceRequestEntry, context: context)
        type = Types::BatchPutGeofenceRequestEntry.new
        type.geofence_id = params[:geofence_id]
        type.geometry = GeofenceGeometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type
      end
    end

    module BatchPutGeofenceRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutGeofenceRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchPutGeofenceSuccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutGeofenceSuccess, context: context)
        type = Types::BatchPutGeofenceSuccess.new
        type.geofence_id = params[:geofence_id]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module BatchPutGeofenceSuccessList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutGeofenceSuccess.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchUpdateDevicePositionError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateDevicePositionError, context: context)
        type = Types::BatchUpdateDevicePositionError.new
        type.device_id = params[:device_id]
        type.sample_time = params[:sample_time]
        type.error = BatchItemError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module BatchUpdateDevicePositionErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchUpdateDevicePositionError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchUpdateDevicePositionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateDevicePositionInput, context: context)
        type = Types::BatchUpdateDevicePositionInput.new
        type.tracker_name = params[:tracker_name]
        type.updates = DevicePositionUpdateList.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type
      end
    end

    module BatchUpdateDevicePositionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateDevicePositionOutput, context: context)
        type = Types::BatchUpdateDevicePositionOutput.new
        type.errors = BatchUpdateDevicePositionErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BoundingBox
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CalculateRouteCarModeOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculateRouteCarModeOptions, context: context)
        type = Types::CalculateRouteCarModeOptions.new
        type.avoid_ferries = params[:avoid_ferries]
        type.avoid_tolls = params[:avoid_tolls]
        type
      end
    end

    module CalculateRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculateRouteInput, context: context)
        type = Types::CalculateRouteInput.new
        type.calculator_name = params[:calculator_name]
        type.departure_position = Position.build(params[:departure_position], context: "#{context}[:departure_position]") unless params[:departure_position].nil?
        type.destination_position = Position.build(params[:destination_position], context: "#{context}[:destination_position]") unless params[:destination_position].nil?
        type.waypoint_positions = WaypointPositionList.build(params[:waypoint_positions], context: "#{context}[:waypoint_positions]") unless params[:waypoint_positions].nil?
        type.travel_mode = params[:travel_mode]
        type.departure_time = params[:departure_time]
        type.depart_now = params[:depart_now]
        type.distance_unit = params[:distance_unit]
        type.include_leg_geometry = params[:include_leg_geometry]
        type.car_mode_options = CalculateRouteCarModeOptions.build(params[:car_mode_options], context: "#{context}[:car_mode_options]") unless params[:car_mode_options].nil?
        type.truck_mode_options = CalculateRouteTruckModeOptions.build(params[:truck_mode_options], context: "#{context}[:truck_mode_options]") unless params[:truck_mode_options].nil?
        type
      end
    end

    module CalculateRouteMatrixInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculateRouteMatrixInput, context: context)
        type = Types::CalculateRouteMatrixInput.new
        type.calculator_name = params[:calculator_name]
        type.departure_positions = PositionList.build(params[:departure_positions], context: "#{context}[:departure_positions]") unless params[:departure_positions].nil?
        type.destination_positions = PositionList.build(params[:destination_positions], context: "#{context}[:destination_positions]") unless params[:destination_positions].nil?
        type.travel_mode = params[:travel_mode]
        type.departure_time = params[:departure_time]
        type.depart_now = params[:depart_now]
        type.distance_unit = params[:distance_unit]
        type.car_mode_options = CalculateRouteCarModeOptions.build(params[:car_mode_options], context: "#{context}[:car_mode_options]") unless params[:car_mode_options].nil?
        type.truck_mode_options = CalculateRouteTruckModeOptions.build(params[:truck_mode_options], context: "#{context}[:truck_mode_options]") unless params[:truck_mode_options].nil?
        type
      end
    end

    module CalculateRouteMatrixOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculateRouteMatrixOutput, context: context)
        type = Types::CalculateRouteMatrixOutput.new
        type.route_matrix = RouteMatrix.build(params[:route_matrix], context: "#{context}[:route_matrix]") unless params[:route_matrix].nil?
        type.snapped_departure_positions = PositionList.build(params[:snapped_departure_positions], context: "#{context}[:snapped_departure_positions]") unless params[:snapped_departure_positions].nil?
        type.snapped_destination_positions = PositionList.build(params[:snapped_destination_positions], context: "#{context}[:snapped_destination_positions]") unless params[:snapped_destination_positions].nil?
        type.summary = CalculateRouteMatrixSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module CalculateRouteMatrixSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculateRouteMatrixSummary, context: context)
        type = Types::CalculateRouteMatrixSummary.new
        type.data_source = params[:data_source]
        type.route_count = params[:route_count]
        type.error_count = params[:error_count]
        type.distance_unit = params[:distance_unit]
        type
      end
    end

    module CalculateRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculateRouteOutput, context: context)
        type = Types::CalculateRouteOutput.new
        type.legs = LegList.build(params[:legs], context: "#{context}[:legs]") unless params[:legs].nil?
        type.summary = CalculateRouteSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module CalculateRouteSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculateRouteSummary, context: context)
        type = Types::CalculateRouteSummary.new
        type.route_b_box = BoundingBox.build(params[:route_b_box], context: "#{context}[:route_b_box]") unless params[:route_b_box].nil?
        type.data_source = params[:data_source]
        type.distance = params[:distance]
        type.duration_seconds = params[:duration_seconds]
        type.distance_unit = params[:distance_unit]
        type
      end
    end

    module CalculateRouteTruckModeOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculateRouteTruckModeOptions, context: context)
        type = Types::CalculateRouteTruckModeOptions.new
        type.avoid_ferries = params[:avoid_ferries]
        type.avoid_tolls = params[:avoid_tolls]
        type.dimensions = TruckDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.weight = TruckWeight.build(params[:weight], context: "#{context}[:weight]") unless params[:weight].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CountryCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateGeofenceCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGeofenceCollectionInput, context: context)
        type = Types::CreateGeofenceCollectionInput.new
        type.collection_name = params[:collection_name]
        type.pricing_plan = params[:pricing_plan]
        type.pricing_plan_data_source = params[:pricing_plan_data_source]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module CreateGeofenceCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGeofenceCollectionOutput, context: context)
        type = Types::CreateGeofenceCollectionOutput.new
        type.collection_name = params[:collection_name]
        type.collection_arn = params[:collection_arn]
        type.create_time = params[:create_time]
        type
      end
    end

    module CreateMapInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMapInput, context: context)
        type = Types::CreateMapInput.new
        type.map_name = params[:map_name]
        type.configuration = MapConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.pricing_plan = params[:pricing_plan]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMapOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMapOutput, context: context)
        type = Types::CreateMapOutput.new
        type.map_name = params[:map_name]
        type.map_arn = params[:map_arn]
        type.create_time = params[:create_time]
        type
      end
    end

    module CreatePlaceIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlaceIndexInput, context: context)
        type = Types::CreatePlaceIndexInput.new
        type.index_name = params[:index_name]
        type.data_source = params[:data_source]
        type.pricing_plan = params[:pricing_plan]
        type.description = params[:description]
        type.data_source_configuration = DataSourceConfiguration.build(params[:data_source_configuration], context: "#{context}[:data_source_configuration]") unless params[:data_source_configuration].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePlaceIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlaceIndexOutput, context: context)
        type = Types::CreatePlaceIndexOutput.new
        type.index_name = params[:index_name]
        type.index_arn = params[:index_arn]
        type.create_time = params[:create_time]
        type
      end
    end

    module CreateRouteCalculatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteCalculatorInput, context: context)
        type = Types::CreateRouteCalculatorInput.new
        type.calculator_name = params[:calculator_name]
        type.data_source = params[:data_source]
        type.pricing_plan = params[:pricing_plan]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRouteCalculatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteCalculatorOutput, context: context)
        type = Types::CreateRouteCalculatorOutput.new
        type.calculator_name = params[:calculator_name]
        type.calculator_arn = params[:calculator_arn]
        type.create_time = params[:create_time]
        type
      end
    end

    module CreateTrackerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrackerInput, context: context)
        type = Types::CreateTrackerInput.new
        type.tracker_name = params[:tracker_name]
        type.pricing_plan = params[:pricing_plan]
        type.kms_key_id = params[:kms_key_id]
        type.pricing_plan_data_source = params[:pricing_plan_data_source]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.position_filtering = params[:position_filtering]
        type
      end
    end

    module CreateTrackerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrackerOutput, context: context)
        type = Types::CreateTrackerOutput.new
        type.tracker_name = params[:tracker_name]
        type.tracker_arn = params[:tracker_arn]
        type.create_time = params[:create_time]
        type
      end
    end

    module DataSourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceConfiguration, context: context)
        type = Types::DataSourceConfiguration.new
        type.intended_use = params[:intended_use]
        type
      end
    end

    module DeleteGeofenceCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGeofenceCollectionInput, context: context)
        type = Types::DeleteGeofenceCollectionInput.new
        type.collection_name = params[:collection_name]
        type
      end
    end

    module DeleteGeofenceCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGeofenceCollectionOutput, context: context)
        type = Types::DeleteGeofenceCollectionOutput.new
        type
      end
    end

    module DeleteMapInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMapInput, context: context)
        type = Types::DeleteMapInput.new
        type.map_name = params[:map_name]
        type
      end
    end

    module DeleteMapOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMapOutput, context: context)
        type = Types::DeleteMapOutput.new
        type
      end
    end

    module DeletePlaceIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlaceIndexInput, context: context)
        type = Types::DeletePlaceIndexInput.new
        type.index_name = params[:index_name]
        type
      end
    end

    module DeletePlaceIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlaceIndexOutput, context: context)
        type = Types::DeletePlaceIndexOutput.new
        type
      end
    end

    module DeleteRouteCalculatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteCalculatorInput, context: context)
        type = Types::DeleteRouteCalculatorInput.new
        type.calculator_name = params[:calculator_name]
        type
      end
    end

    module DeleteRouteCalculatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteCalculatorOutput, context: context)
        type = Types::DeleteRouteCalculatorOutput.new
        type
      end
    end

    module DeleteTrackerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrackerInput, context: context)
        type = Types::DeleteTrackerInput.new
        type.tracker_name = params[:tracker_name]
        type
      end
    end

    module DeleteTrackerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrackerOutput, context: context)
        type = Types::DeleteTrackerOutput.new
        type
      end
    end

    module DescribeGeofenceCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGeofenceCollectionInput, context: context)
        type = Types::DescribeGeofenceCollectionInput.new
        type.collection_name = params[:collection_name]
        type
      end
    end

    module DescribeGeofenceCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGeofenceCollectionOutput, context: context)
        type = Types::DescribeGeofenceCollectionOutput.new
        type.collection_name = params[:collection_name]
        type.collection_arn = params[:collection_arn]
        type.description = params[:description]
        type.pricing_plan = params[:pricing_plan]
        type.pricing_plan_data_source = params[:pricing_plan_data_source]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module DescribeMapInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMapInput, context: context)
        type = Types::DescribeMapInput.new
        type.map_name = params[:map_name]
        type
      end
    end

    module DescribeMapOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMapOutput, context: context)
        type = Types::DescribeMapOutput.new
        type.map_name = params[:map_name]
        type.map_arn = params[:map_arn]
        type.pricing_plan = params[:pricing_plan]
        type.data_source = params[:data_source]
        type.configuration = MapConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module DescribePlaceIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePlaceIndexInput, context: context)
        type = Types::DescribePlaceIndexInput.new
        type.index_name = params[:index_name]
        type
      end
    end

    module DescribePlaceIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePlaceIndexOutput, context: context)
        type = Types::DescribePlaceIndexOutput.new
        type.index_name = params[:index_name]
        type.index_arn = params[:index_arn]
        type.pricing_plan = params[:pricing_plan]
        type.description = params[:description]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.data_source = params[:data_source]
        type.data_source_configuration = DataSourceConfiguration.build(params[:data_source_configuration], context: "#{context}[:data_source_configuration]") unless params[:data_source_configuration].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeRouteCalculatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRouteCalculatorInput, context: context)
        type = Types::DescribeRouteCalculatorInput.new
        type.calculator_name = params[:calculator_name]
        type
      end
    end

    module DescribeRouteCalculatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRouteCalculatorOutput, context: context)
        type = Types::DescribeRouteCalculatorOutput.new
        type.calculator_name = params[:calculator_name]
        type.calculator_arn = params[:calculator_arn]
        type.pricing_plan = params[:pricing_plan]
        type.description = params[:description]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.data_source = params[:data_source]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeTrackerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrackerInput, context: context)
        type = Types::DescribeTrackerInput.new
        type.tracker_name = params[:tracker_name]
        type
      end
    end

    module DescribeTrackerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrackerOutput, context: context)
        type = Types::DescribeTrackerOutput.new
        type.tracker_name = params[:tracker_name]
        type.tracker_arn = params[:tracker_arn]
        type.description = params[:description]
        type.pricing_plan = params[:pricing_plan]
        type.pricing_plan_data_source = params[:pricing_plan_data_source]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.kms_key_id = params[:kms_key_id]
        type.position_filtering = params[:position_filtering]
        type
      end
    end

    module DeviceIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DevicePosition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DevicePosition, context: context)
        type = Types::DevicePosition.new
        type.device_id = params[:device_id]
        type.sample_time = params[:sample_time]
        type.received_time = params[:received_time]
        type.position = Position.build(params[:position], context: "#{context}[:position]") unless params[:position].nil?
        type.accuracy = PositionalAccuracy.build(params[:accuracy], context: "#{context}[:accuracy]") unless params[:accuracy].nil?
        type.position_properties = PropertyMap.build(params[:position_properties], context: "#{context}[:position_properties]") unless params[:position_properties].nil?
        type
      end
    end

    module DevicePositionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DevicePosition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DevicePositionUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DevicePositionUpdate, context: context)
        type = Types::DevicePositionUpdate.new
        type.device_id = params[:device_id]
        type.sample_time = params[:sample_time]
        type.position = Position.build(params[:position], context: "#{context}[:position]") unless params[:position].nil?
        type.accuracy = PositionalAccuracy.build(params[:accuracy], context: "#{context}[:accuracy]") unless params[:accuracy].nil?
        type.position_properties = PropertyMap.build(params[:position_properties], context: "#{context}[:position_properties]") unless params[:position_properties].nil?
        type
      end
    end

    module DevicePositionUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DevicePositionUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisassociateTrackerConsumerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTrackerConsumerInput, context: context)
        type = Types::DisassociateTrackerConsumerInput.new
        type.tracker_name = params[:tracker_name]
        type.consumer_arn = params[:consumer_arn]
        type
      end
    end

    module DisassociateTrackerConsumerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTrackerConsumerOutput, context: context)
        type = Types::DisassociateTrackerConsumerOutput.new
        type
      end
    end

    module GeofenceGeometry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeofenceGeometry, context: context)
        type = Types::GeofenceGeometry.new
        type.polygon = LinearRings.build(params[:polygon], context: "#{context}[:polygon]") unless params[:polygon].nil?
        type
      end
    end

    module GetDevicePositionHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicePositionHistoryInput, context: context)
        type = Types::GetDevicePositionHistoryInput.new
        type.tracker_name = params[:tracker_name]
        type.device_id = params[:device_id]
        type.next_token = params[:next_token]
        type.start_time_inclusive = params[:start_time_inclusive]
        type.end_time_exclusive = params[:end_time_exclusive]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetDevicePositionHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicePositionHistoryOutput, context: context)
        type = Types::GetDevicePositionHistoryOutput.new
        type.device_positions = DevicePositionList.build(params[:device_positions], context: "#{context}[:device_positions]") unless params[:device_positions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDevicePositionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicePositionInput, context: context)
        type = Types::GetDevicePositionInput.new
        type.tracker_name = params[:tracker_name]
        type.device_id = params[:device_id]
        type
      end
    end

    module GetDevicePositionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicePositionOutput, context: context)
        type = Types::GetDevicePositionOutput.new
        type.device_id = params[:device_id]
        type.sample_time = params[:sample_time]
        type.received_time = params[:received_time]
        type.position = Position.build(params[:position], context: "#{context}[:position]") unless params[:position].nil?
        type.accuracy = PositionalAccuracy.build(params[:accuracy], context: "#{context}[:accuracy]") unless params[:accuracy].nil?
        type.position_properties = PropertyMap.build(params[:position_properties], context: "#{context}[:position_properties]") unless params[:position_properties].nil?
        type
      end
    end

    module GetGeofenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeofenceInput, context: context)
        type = Types::GetGeofenceInput.new
        type.collection_name = params[:collection_name]
        type.geofence_id = params[:geofence_id]
        type
      end
    end

    module GetGeofenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeofenceOutput, context: context)
        type = Types::GetGeofenceOutput.new
        type.geofence_id = params[:geofence_id]
        type.geometry = GeofenceGeometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type.status = params[:status]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module GetMapGlyphsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMapGlyphsInput, context: context)
        type = Types::GetMapGlyphsInput.new
        type.map_name = params[:map_name]
        type.font_stack = params[:font_stack]
        type.font_unicode_range = params[:font_unicode_range]
        type
      end
    end

    module GetMapGlyphsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMapGlyphsOutput, context: context)
        type = Types::GetMapGlyphsOutput.new
        type.blob = params[:blob]
        type.content_type = params[:content_type]
        type
      end
    end

    module GetMapSpritesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMapSpritesInput, context: context)
        type = Types::GetMapSpritesInput.new
        type.map_name = params[:map_name]
        type.file_name = params[:file_name]
        type
      end
    end

    module GetMapSpritesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMapSpritesOutput, context: context)
        type = Types::GetMapSpritesOutput.new
        type.blob = params[:blob]
        type.content_type = params[:content_type]
        type
      end
    end

    module GetMapStyleDescriptorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMapStyleDescriptorInput, context: context)
        type = Types::GetMapStyleDescriptorInput.new
        type.map_name = params[:map_name]
        type
      end
    end

    module GetMapStyleDescriptorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMapStyleDescriptorOutput, context: context)
        type = Types::GetMapStyleDescriptorOutput.new
        type.blob = params[:blob]
        type.content_type = params[:content_type]
        type
      end
    end

    module GetMapTileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMapTileInput, context: context)
        type = Types::GetMapTileInput.new
        type.map_name = params[:map_name]
        type.z = params[:z]
        type.x = params[:x]
        type.y = params[:y]
        type
      end
    end

    module GetMapTileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMapTileOutput, context: context)
        type = Types::GetMapTileOutput.new
        type.blob = params[:blob]
        type.content_type = params[:content_type]
        type
      end
    end

    module IdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module Leg
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Leg, context: context)
        type = Types::Leg.new
        type.start_position = Position.build(params[:start_position], context: "#{context}[:start_position]") unless params[:start_position].nil?
        type.end_position = Position.build(params[:end_position], context: "#{context}[:end_position]") unless params[:end_position].nil?
        type.distance = params[:distance]
        type.duration_seconds = params[:duration_seconds]
        type.geometry = LegGeometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type.steps = StepList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type
      end
    end

    module LegGeometry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LegGeometry, context: context)
        type = Types::LegGeometry.new
        type.line_string = LineString.build(params[:line_string], context: "#{context}[:line_string]") unless params[:line_string].nil?
        type
      end
    end

    module LegList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Leg.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LineString
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Position.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LinearRing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Position.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LinearRings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LinearRing.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListDevicePositionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicePositionsInput, context: context)
        type = Types::ListDevicePositionsInput.new
        type.tracker_name = params[:tracker_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicePositionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicePositionsOutput, context: context)
        type = Types::ListDevicePositionsOutput.new
        type.entries = ListDevicePositionsResponseEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicePositionsResponseEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicePositionsResponseEntry, context: context)
        type = Types::ListDevicePositionsResponseEntry.new
        type.device_id = params[:device_id]
        type.sample_time = params[:sample_time]
        type.position = Position.build(params[:position], context: "#{context}[:position]") unless params[:position].nil?
        type.accuracy = PositionalAccuracy.build(params[:accuracy], context: "#{context}[:accuracy]") unless params[:accuracy].nil?
        type.position_properties = PropertyMap.build(params[:position_properties], context: "#{context}[:position_properties]") unless params[:position_properties].nil?
        type
      end
    end

    module ListDevicePositionsResponseEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListDevicePositionsResponseEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListGeofenceCollectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeofenceCollectionsInput, context: context)
        type = Types::ListGeofenceCollectionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGeofenceCollectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeofenceCollectionsOutput, context: context)
        type = Types::ListGeofenceCollectionsOutput.new
        type.entries = ListGeofenceCollectionsResponseEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGeofenceCollectionsResponseEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeofenceCollectionsResponseEntry, context: context)
        type = Types::ListGeofenceCollectionsResponseEntry.new
        type.collection_name = params[:collection_name]
        type.description = params[:description]
        type.pricing_plan = params[:pricing_plan]
        type.pricing_plan_data_source = params[:pricing_plan_data_source]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module ListGeofenceCollectionsResponseEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListGeofenceCollectionsResponseEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListGeofenceResponseEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeofenceResponseEntry, context: context)
        type = Types::ListGeofenceResponseEntry.new
        type.geofence_id = params[:geofence_id]
        type.geometry = GeofenceGeometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type.status = params[:status]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module ListGeofenceResponseEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListGeofenceResponseEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListGeofencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeofencesInput, context: context)
        type = Types::ListGeofencesInput.new
        type.collection_name = params[:collection_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListGeofencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeofencesOutput, context: context)
        type = Types::ListGeofencesOutput.new
        type.entries = ListGeofenceResponseEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMapsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMapsInput, context: context)
        type = Types::ListMapsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMapsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMapsOutput, context: context)
        type = Types::ListMapsOutput.new
        type.entries = ListMapsResponseEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMapsResponseEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMapsResponseEntry, context: context)
        type = Types::ListMapsResponseEntry.new
        type.map_name = params[:map_name]
        type.description = params[:description]
        type.data_source = params[:data_source]
        type.pricing_plan = params[:pricing_plan]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module ListMapsResponseEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListMapsResponseEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListPlaceIndexesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlaceIndexesInput, context: context)
        type = Types::ListPlaceIndexesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlaceIndexesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlaceIndexesOutput, context: context)
        type = Types::ListPlaceIndexesOutput.new
        type.entries = ListPlaceIndexesResponseEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlaceIndexesResponseEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlaceIndexesResponseEntry, context: context)
        type = Types::ListPlaceIndexesResponseEntry.new
        type.index_name = params[:index_name]
        type.description = params[:description]
        type.data_source = params[:data_source]
        type.pricing_plan = params[:pricing_plan]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module ListPlaceIndexesResponseEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListPlaceIndexesResponseEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListRouteCalculatorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRouteCalculatorsInput, context: context)
        type = Types::ListRouteCalculatorsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRouteCalculatorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRouteCalculatorsOutput, context: context)
        type = Types::ListRouteCalculatorsOutput.new
        type.entries = ListRouteCalculatorsResponseEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRouteCalculatorsResponseEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRouteCalculatorsResponseEntry, context: context)
        type = Types::ListRouteCalculatorsResponseEntry.new
        type.calculator_name = params[:calculator_name]
        type.description = params[:description]
        type.data_source = params[:data_source]
        type.pricing_plan = params[:pricing_plan]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module ListRouteCalculatorsResponseEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListRouteCalculatorsResponseEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ListTrackerConsumersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrackerConsumersInput, context: context)
        type = Types::ListTrackerConsumersInput.new
        type.tracker_name = params[:tracker_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrackerConsumersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrackerConsumersOutput, context: context)
        type = Types::ListTrackerConsumersOutput.new
        type.consumer_arns = ArnList.build(params[:consumer_arns], context: "#{context}[:consumer_arns]") unless params[:consumer_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrackersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrackersInput, context: context)
        type = Types::ListTrackersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrackersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrackersOutput, context: context)
        type = Types::ListTrackersOutput.new
        type.entries = ListTrackersResponseEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrackersResponseEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrackersResponseEntry, context: context)
        type = Types::ListTrackersResponseEntry.new
        type.tracker_name = params[:tracker_name]
        type.description = params[:description]
        type.pricing_plan = params[:pricing_plan]
        type.pricing_plan_data_source = params[:pricing_plan_data_source]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module ListTrackersResponseEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListTrackersResponseEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MapConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MapConfiguration, context: context)
        type = Types::MapConfiguration.new
        type.style = params[:style]
        type
      end
    end

    module Place
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Place, context: context)
        type = Types::Place.new
        type.label = params[:label]
        type.geometry = PlaceGeometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type.address_number = params[:address_number]
        type.street = params[:street]
        type.neighborhood = params[:neighborhood]
        type.municipality = params[:municipality]
        type.sub_region = params[:sub_region]
        type.region = params[:region]
        type.country = params[:country]
        type.postal_code = params[:postal_code]
        type.interpolated = params[:interpolated]
        type.time_zone = TimeZone.build(params[:time_zone], context: "#{context}[:time_zone]") unless params[:time_zone].nil?
        type
      end
    end

    module PlaceGeometry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlaceGeometry, context: context)
        type = Types::PlaceGeometry.new
        type.point = Position.build(params[:point], context: "#{context}[:point]") unless params[:point].nil?
        type
      end
    end

    module Position
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PositionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Position.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PositionalAccuracy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PositionalAccuracy, context: context)
        type = Types::PositionalAccuracy.new
        type.horizontal = params[:horizontal]
        type
      end
    end

    module PropertyMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PutGeofenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutGeofenceInput, context: context)
        type = Types::PutGeofenceInput.new
        type.collection_name = params[:collection_name]
        type.geofence_id = params[:geofence_id]
        type.geometry = GeofenceGeometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type
      end
    end

    module PutGeofenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutGeofenceOutput, context: context)
        type = Types::PutGeofenceOutput.new
        type.geofence_id = params[:geofence_id]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
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

    module RouteMatrix
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RouteMatrixRow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RouteMatrixEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteMatrixEntry, context: context)
        type = Types::RouteMatrixEntry.new
        type.distance = params[:distance]
        type.duration_seconds = params[:duration_seconds]
        type.error = RouteMatrixEntryError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module RouteMatrixEntryError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteMatrixEntryError, context: context)
        type = Types::RouteMatrixEntryError.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module RouteMatrixRow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RouteMatrixEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchForPositionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchForPositionResult, context: context)
        type = Types::SearchForPositionResult.new
        type.place = Place.build(params[:place], context: "#{context}[:place]") unless params[:place].nil?
        type.distance = params[:distance]
        type
      end
    end

    module SearchForPositionResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchForPositionResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchForSuggestionsResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchForSuggestionsResult, context: context)
        type = Types::SearchForSuggestionsResult.new
        type.text = params[:text]
        type
      end
    end

    module SearchForSuggestionsResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchForSuggestionsResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchForTextResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchForTextResult, context: context)
        type = Types::SearchForTextResult.new
        type.place = Place.build(params[:place], context: "#{context}[:place]") unless params[:place].nil?
        type.distance = params[:distance]
        type.relevance = params[:relevance]
        type
      end
    end

    module SearchForTextResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchForTextResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchPlaceIndexForPositionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchPlaceIndexForPositionInput, context: context)
        type = Types::SearchPlaceIndexForPositionInput.new
        type.index_name = params[:index_name]
        type.position = Position.build(params[:position], context: "#{context}[:position]") unless params[:position].nil?
        type.max_results = params[:max_results]
        type.language = params[:language]
        type
      end
    end

    module SearchPlaceIndexForPositionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchPlaceIndexForPositionOutput, context: context)
        type = Types::SearchPlaceIndexForPositionOutput.new
        type.summary = SearchPlaceIndexForPositionSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type.results = SearchForPositionResultList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    module SearchPlaceIndexForPositionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchPlaceIndexForPositionSummary, context: context)
        type = Types::SearchPlaceIndexForPositionSummary.new
        type.position = Position.build(params[:position], context: "#{context}[:position]") unless params[:position].nil?
        type.max_results = params[:max_results]
        type.data_source = params[:data_source]
        type.language = params[:language]
        type
      end
    end

    module SearchPlaceIndexForSuggestionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchPlaceIndexForSuggestionsInput, context: context)
        type = Types::SearchPlaceIndexForSuggestionsInput.new
        type.index_name = params[:index_name]
        type.text = params[:text]
        type.bias_position = Position.build(params[:bias_position], context: "#{context}[:bias_position]") unless params[:bias_position].nil?
        type.filter_b_box = BoundingBox.build(params[:filter_b_box], context: "#{context}[:filter_b_box]") unless params[:filter_b_box].nil?
        type.filter_countries = CountryCodeList.build(params[:filter_countries], context: "#{context}[:filter_countries]") unless params[:filter_countries].nil?
        type.max_results = params[:max_results]
        type.language = params[:language]
        type
      end
    end

    module SearchPlaceIndexForSuggestionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchPlaceIndexForSuggestionsOutput, context: context)
        type = Types::SearchPlaceIndexForSuggestionsOutput.new
        type.summary = SearchPlaceIndexForSuggestionsSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type.results = SearchForSuggestionsResultList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    module SearchPlaceIndexForSuggestionsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchPlaceIndexForSuggestionsSummary, context: context)
        type = Types::SearchPlaceIndexForSuggestionsSummary.new
        type.text = params[:text]
        type.bias_position = Position.build(params[:bias_position], context: "#{context}[:bias_position]") unless params[:bias_position].nil?
        type.filter_b_box = BoundingBox.build(params[:filter_b_box], context: "#{context}[:filter_b_box]") unless params[:filter_b_box].nil?
        type.filter_countries = CountryCodeList.build(params[:filter_countries], context: "#{context}[:filter_countries]") unless params[:filter_countries].nil?
        type.max_results = params[:max_results]
        type.data_source = params[:data_source]
        type.language = params[:language]
        type
      end
    end

    module SearchPlaceIndexForTextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchPlaceIndexForTextInput, context: context)
        type = Types::SearchPlaceIndexForTextInput.new
        type.index_name = params[:index_name]
        type.text = params[:text]
        type.bias_position = Position.build(params[:bias_position], context: "#{context}[:bias_position]") unless params[:bias_position].nil?
        type.filter_b_box = BoundingBox.build(params[:filter_b_box], context: "#{context}[:filter_b_box]") unless params[:filter_b_box].nil?
        type.filter_countries = CountryCodeList.build(params[:filter_countries], context: "#{context}[:filter_countries]") unless params[:filter_countries].nil?
        type.max_results = params[:max_results]
        type.language = params[:language]
        type
      end
    end

    module SearchPlaceIndexForTextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchPlaceIndexForTextOutput, context: context)
        type = Types::SearchPlaceIndexForTextOutput.new
        type.summary = SearchPlaceIndexForTextSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type.results = SearchForTextResultList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    module SearchPlaceIndexForTextSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchPlaceIndexForTextSummary, context: context)
        type = Types::SearchPlaceIndexForTextSummary.new
        type.text = params[:text]
        type.bias_position = Position.build(params[:bias_position], context: "#{context}[:bias_position]") unless params[:bias_position].nil?
        type.filter_b_box = BoundingBox.build(params[:filter_b_box], context: "#{context}[:filter_b_box]") unless params[:filter_b_box].nil?
        type.filter_countries = CountryCodeList.build(params[:filter_countries], context: "#{context}[:filter_countries]") unless params[:filter_countries].nil?
        type.max_results = params[:max_results]
        type.result_b_box = BoundingBox.build(params[:result_b_box], context: "#{context}[:result_b_box]") unless params[:result_b_box].nil?
        type.data_source = params[:data_source]
        type.language = params[:language]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Step
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Step, context: context)
        type = Types::Step.new
        type.start_position = Position.build(params[:start_position], context: "#{context}[:start_position]") unless params[:start_position].nil?
        type.end_position = Position.build(params[:end_position], context: "#{context}[:end_position]") unless params[:end_position].nil?
        type.distance = params[:distance]
        type.duration_seconds = params[:duration_seconds]
        type.geometry_offset = params[:geometry_offset]
        type
      end
    end

    module StepList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Step.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeys
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

    module TimeZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeZone, context: context)
        type = Types::TimeZone.new
        type.name = params[:name]
        type.offset = params[:offset]
        type
      end
    end

    module TruckDimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TruckDimensions, context: context)
        type = Types::TruckDimensions.new
        type.length = params[:length]
        type.height = params[:height]
        type.width = params[:width]
        type.unit = params[:unit]
        type
      end
    end

    module TruckWeight
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TruckWeight, context: context)
        type = Types::TruckWeight.new
        type.total = params[:total]
        type.unit = params[:unit]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateGeofenceCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGeofenceCollectionInput, context: context)
        type = Types::UpdateGeofenceCollectionInput.new
        type.collection_name = params[:collection_name]
        type.pricing_plan = params[:pricing_plan]
        type.pricing_plan_data_source = params[:pricing_plan_data_source]
        type.description = params[:description]
        type
      end
    end

    module UpdateGeofenceCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGeofenceCollectionOutput, context: context)
        type = Types::UpdateGeofenceCollectionOutput.new
        type.collection_name = params[:collection_name]
        type.collection_arn = params[:collection_arn]
        type.update_time = params[:update_time]
        type
      end
    end

    module UpdateMapInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMapInput, context: context)
        type = Types::UpdateMapInput.new
        type.map_name = params[:map_name]
        type.pricing_plan = params[:pricing_plan]
        type.description = params[:description]
        type
      end
    end

    module UpdateMapOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMapOutput, context: context)
        type = Types::UpdateMapOutput.new
        type.map_name = params[:map_name]
        type.map_arn = params[:map_arn]
        type.update_time = params[:update_time]
        type
      end
    end

    module UpdatePlaceIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePlaceIndexInput, context: context)
        type = Types::UpdatePlaceIndexInput.new
        type.index_name = params[:index_name]
        type.pricing_plan = params[:pricing_plan]
        type.description = params[:description]
        type.data_source_configuration = DataSourceConfiguration.build(params[:data_source_configuration], context: "#{context}[:data_source_configuration]") unless params[:data_source_configuration].nil?
        type
      end
    end

    module UpdatePlaceIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePlaceIndexOutput, context: context)
        type = Types::UpdatePlaceIndexOutput.new
        type.index_name = params[:index_name]
        type.index_arn = params[:index_arn]
        type.update_time = params[:update_time]
        type
      end
    end

    module UpdateRouteCalculatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRouteCalculatorInput, context: context)
        type = Types::UpdateRouteCalculatorInput.new
        type.calculator_name = params[:calculator_name]
        type.pricing_plan = params[:pricing_plan]
        type.description = params[:description]
        type
      end
    end

    module UpdateRouteCalculatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRouteCalculatorOutput, context: context)
        type = Types::UpdateRouteCalculatorOutput.new
        type.calculator_name = params[:calculator_name]
        type.calculator_arn = params[:calculator_arn]
        type.update_time = params[:update_time]
        type
      end
    end

    module UpdateTrackerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrackerInput, context: context)
        type = Types::UpdateTrackerInput.new
        type.tracker_name = params[:tracker_name]
        type.pricing_plan = params[:pricing_plan]
        type.pricing_plan_data_source = params[:pricing_plan_data_source]
        type.description = params[:description]
        type.position_filtering = params[:position_filtering]
        type
      end
    end

    module UpdateTrackerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrackerOutput, context: context)
        type = Types::UpdateTrackerOutput.new
        type.tracker_name = params[:tracker_name]
        type.tracker_arn = params[:tracker_arn]
        type.update_time = params[:update_time]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.field_list = ValidationExceptionFieldList.build(params[:field_list], context: "#{context}[:field_list]") unless params[:field_list].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WaypointPositionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Position.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
