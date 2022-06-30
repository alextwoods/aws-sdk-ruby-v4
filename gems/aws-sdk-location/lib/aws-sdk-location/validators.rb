# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Location
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateTrackerConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTrackerConsumerInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
      end
    end

    class AssociateTrackerConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTrackerConsumerOutput, context: context)
      end
    end

    class BatchDeleteDevicePositionHistoryError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDevicePositionHistoryError, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Validators::BatchItemError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class BatchDeleteDevicePositionHistoryErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchDeleteDevicePositionHistoryError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDeleteDevicePositionHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDevicePositionHistoryInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Validators::DeviceIdsList.validate!(input[:device_ids], context: "#{context}[:device_ids]") unless input[:device_ids].nil?
      end
    end

    class BatchDeleteDevicePositionHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDevicePositionHistoryOutput, context: context)
        Validators::BatchDeleteDevicePositionHistoryErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDeleteGeofenceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteGeofenceError, context: context)
        Hearth::Validator.validate!(input[:geofence_id], ::String, context: "#{context}[:geofence_id]")
        Validators::BatchItemError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class BatchDeleteGeofenceErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchDeleteGeofenceError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDeleteGeofenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteGeofenceInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Validators::IdList.validate!(input[:geofence_ids], context: "#{context}[:geofence_ids]") unless input[:geofence_ids].nil?
      end
    end

    class BatchDeleteGeofenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteGeofenceOutput, context: context)
        Validators::BatchDeleteGeofenceErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchEvaluateGeofencesError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEvaluateGeofencesError, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:sample_time], ::Time, context: "#{context}[:sample_time]")
        Validators::BatchItemError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class BatchEvaluateGeofencesErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchEvaluateGeofencesError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchEvaluateGeofencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEvaluateGeofencesInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Validators::DevicePositionUpdateList.validate!(input[:device_position_updates], context: "#{context}[:device_position_updates]") unless input[:device_position_updates].nil?
      end
    end

    class BatchEvaluateGeofencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEvaluateGeofencesOutput, context: context)
        Validators::BatchEvaluateGeofencesErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchGetDevicePositionError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDevicePositionError, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Validators::BatchItemError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class BatchGetDevicePositionErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchGetDevicePositionError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetDevicePositionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDevicePositionInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Validators::IdList.validate!(input[:device_ids], context: "#{context}[:device_ids]") unless input[:device_ids].nil?
      end
    end

    class BatchGetDevicePositionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDevicePositionOutput, context: context)
        Validators::BatchGetDevicePositionErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Validators::DevicePositionList.validate!(input[:device_positions], context: "#{context}[:device_positions]") unless input[:device_positions].nil?
      end
    end

    class BatchItemError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchItemError, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchPutGeofenceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutGeofenceError, context: context)
        Hearth::Validator.validate!(input[:geofence_id], ::String, context: "#{context}[:geofence_id]")
        Validators::BatchItemError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class BatchPutGeofenceErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchPutGeofenceError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchPutGeofenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutGeofenceInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Validators::BatchPutGeofenceRequestEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class BatchPutGeofenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutGeofenceOutput, context: context)
        Validators::BatchPutGeofenceSuccessList.validate!(input[:successes], context: "#{context}[:successes]") unless input[:successes].nil?
        Validators::BatchPutGeofenceErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchPutGeofenceRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutGeofenceRequestEntry, context: context)
        Hearth::Validator.validate!(input[:geofence_id], ::String, context: "#{context}[:geofence_id]")
        Validators::GeofenceGeometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
      end
    end

    class BatchPutGeofenceRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchPutGeofenceRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchPutGeofenceSuccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutGeofenceSuccess, context: context)
        Hearth::Validator.validate!(input[:geofence_id], ::String, context: "#{context}[:geofence_id]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class BatchPutGeofenceSuccessList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchPutGeofenceSuccess.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchUpdateDevicePositionError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateDevicePositionError, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:sample_time], ::Time, context: "#{context}[:sample_time]")
        Validators::BatchItemError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class BatchUpdateDevicePositionErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchUpdateDevicePositionError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchUpdateDevicePositionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateDevicePositionInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Validators::DevicePositionUpdateList.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
      end
    end

    class BatchUpdateDevicePositionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateDevicePositionOutput, context: context)
        Validators::BatchUpdateDevicePositionErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BoundingBox
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class CalculateRouteCarModeOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculateRouteCarModeOptions, context: context)
        Hearth::Validator.validate!(input[:avoid_ferries], ::TrueClass, ::FalseClass, context: "#{context}[:avoid_ferries]")
        Hearth::Validator.validate!(input[:avoid_tolls], ::TrueClass, ::FalseClass, context: "#{context}[:avoid_tolls]")
      end
    end

    class CalculateRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculateRouteInput, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
        Validators::Position.validate!(input[:departure_position], context: "#{context}[:departure_position]") unless input[:departure_position].nil?
        Validators::Position.validate!(input[:destination_position], context: "#{context}[:destination_position]") unless input[:destination_position].nil?
        Validators::WaypointPositionList.validate!(input[:waypoint_positions], context: "#{context}[:waypoint_positions]") unless input[:waypoint_positions].nil?
        Hearth::Validator.validate!(input[:travel_mode], ::String, context: "#{context}[:travel_mode]")
        Hearth::Validator.validate!(input[:departure_time], ::Time, context: "#{context}[:departure_time]")
        Hearth::Validator.validate!(input[:depart_now], ::TrueClass, ::FalseClass, context: "#{context}[:depart_now]")
        Hearth::Validator.validate!(input[:distance_unit], ::String, context: "#{context}[:distance_unit]")
        Hearth::Validator.validate!(input[:include_leg_geometry], ::TrueClass, ::FalseClass, context: "#{context}[:include_leg_geometry]")
        Validators::CalculateRouteCarModeOptions.validate!(input[:car_mode_options], context: "#{context}[:car_mode_options]") unless input[:car_mode_options].nil?
        Validators::CalculateRouteTruckModeOptions.validate!(input[:truck_mode_options], context: "#{context}[:truck_mode_options]") unless input[:truck_mode_options].nil?
      end
    end

    class CalculateRouteMatrixInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculateRouteMatrixInput, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
        Validators::PositionList.validate!(input[:departure_positions], context: "#{context}[:departure_positions]") unless input[:departure_positions].nil?
        Validators::PositionList.validate!(input[:destination_positions], context: "#{context}[:destination_positions]") unless input[:destination_positions].nil?
        Hearth::Validator.validate!(input[:travel_mode], ::String, context: "#{context}[:travel_mode]")
        Hearth::Validator.validate!(input[:departure_time], ::Time, context: "#{context}[:departure_time]")
        Hearth::Validator.validate!(input[:depart_now], ::TrueClass, ::FalseClass, context: "#{context}[:depart_now]")
        Hearth::Validator.validate!(input[:distance_unit], ::String, context: "#{context}[:distance_unit]")
        Validators::CalculateRouteCarModeOptions.validate!(input[:car_mode_options], context: "#{context}[:car_mode_options]") unless input[:car_mode_options].nil?
        Validators::CalculateRouteTruckModeOptions.validate!(input[:truck_mode_options], context: "#{context}[:truck_mode_options]") unless input[:truck_mode_options].nil?
      end
    end

    class CalculateRouteMatrixOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculateRouteMatrixOutput, context: context)
        Validators::RouteMatrix.validate!(input[:route_matrix], context: "#{context}[:route_matrix]") unless input[:route_matrix].nil?
        Validators::PositionList.validate!(input[:snapped_departure_positions], context: "#{context}[:snapped_departure_positions]") unless input[:snapped_departure_positions].nil?
        Validators::PositionList.validate!(input[:snapped_destination_positions], context: "#{context}[:snapped_destination_positions]") unless input[:snapped_destination_positions].nil?
        Validators::CalculateRouteMatrixSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class CalculateRouteMatrixSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculateRouteMatrixSummary, context: context)
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:route_count], ::Integer, context: "#{context}[:route_count]")
        Hearth::Validator.validate!(input[:error_count], ::Integer, context: "#{context}[:error_count]")
        Hearth::Validator.validate!(input[:distance_unit], ::String, context: "#{context}[:distance_unit]")
      end
    end

    class CalculateRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculateRouteOutput, context: context)
        Validators::LegList.validate!(input[:legs], context: "#{context}[:legs]") unless input[:legs].nil?
        Validators::CalculateRouteSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class CalculateRouteSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculateRouteSummary, context: context)
        Validators::BoundingBox.validate!(input[:route_b_box], context: "#{context}[:route_b_box]") unless input[:route_b_box].nil?
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:distance], ::Float, context: "#{context}[:distance]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Float, context: "#{context}[:duration_seconds]")
        Hearth::Validator.validate!(input[:distance_unit], ::String, context: "#{context}[:distance_unit]")
      end
    end

    class CalculateRouteTruckModeOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculateRouteTruckModeOptions, context: context)
        Hearth::Validator.validate!(input[:avoid_ferries], ::TrueClass, ::FalseClass, context: "#{context}[:avoid_ferries]")
        Hearth::Validator.validate!(input[:avoid_tolls], ::TrueClass, ::FalseClass, context: "#{context}[:avoid_tolls]")
        Validators::TruckDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Validators::TruckWeight.validate!(input[:weight], context: "#{context}[:weight]") unless input[:weight].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CountryCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateGeofenceCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGeofenceCollectionInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:pricing_plan_data_source], ::String, context: "#{context}[:pricing_plan_data_source]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class CreateGeofenceCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGeofenceCollectionOutput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate!(input[:collection_arn], ::String, context: "#{context}[:collection_arn]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
      end
    end

    class CreateMapInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMapInput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
        Validators::MapConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMapOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMapOutput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
        Hearth::Validator.validate!(input[:map_arn], ::String, context: "#{context}[:map_arn]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
      end
    end

    class CreatePlaceIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlaceIndexInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::DataSourceConfiguration.validate!(input[:data_source_configuration], context: "#{context}[:data_source_configuration]") unless input[:data_source_configuration].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePlaceIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlaceIndexOutput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:index_arn], ::String, context: "#{context}[:index_arn]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
      end
    end

    class CreateRouteCalculatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteCalculatorInput, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRouteCalculatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteCalculatorOutput, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
        Hearth::Validator.validate!(input[:calculator_arn], ::String, context: "#{context}[:calculator_arn]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
      end
    end

    class CreateTrackerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrackerInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:pricing_plan_data_source], ::String, context: "#{context}[:pricing_plan_data_source]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:position_filtering], ::String, context: "#{context}[:position_filtering]")
      end
    end

    class CreateTrackerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrackerOutput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:tracker_arn], ::String, context: "#{context}[:tracker_arn]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
      end
    end

    class DataSourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceConfiguration, context: context)
        Hearth::Validator.validate!(input[:intended_use], ::String, context: "#{context}[:intended_use]")
      end
    end

    class DeleteGeofenceCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGeofenceCollectionInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
      end
    end

    class DeleteGeofenceCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGeofenceCollectionOutput, context: context)
      end
    end

    class DeleteMapInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMapInput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
      end
    end

    class DeleteMapOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMapOutput, context: context)
      end
    end

    class DeletePlaceIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlaceIndexInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
      end
    end

    class DeletePlaceIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlaceIndexOutput, context: context)
      end
    end

    class DeleteRouteCalculatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteCalculatorInput, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
      end
    end

    class DeleteRouteCalculatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteCalculatorOutput, context: context)
      end
    end

    class DeleteTrackerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrackerInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
      end
    end

    class DeleteTrackerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrackerOutput, context: context)
      end
    end

    class DescribeGeofenceCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGeofenceCollectionInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
      end
    end

    class DescribeGeofenceCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGeofenceCollectionOutput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate!(input[:collection_arn], ::String, context: "#{context}[:collection_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:pricing_plan_data_source], ::String, context: "#{context}[:pricing_plan_data_source]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class DescribeMapInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMapInput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
      end
    end

    class DescribeMapOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMapOutput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
        Hearth::Validator.validate!(input[:map_arn], ::String, context: "#{context}[:map_arn]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Validators::MapConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class DescribePlaceIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePlaceIndexInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
      end
    end

    class DescribePlaceIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePlaceIndexOutput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:index_arn], ::String, context: "#{context}[:index_arn]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Validators::DataSourceConfiguration.validate!(input[:data_source_configuration], context: "#{context}[:data_source_configuration]") unless input[:data_source_configuration].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeRouteCalculatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRouteCalculatorInput, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
      end
    end

    class DescribeRouteCalculatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRouteCalculatorOutput, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
        Hearth::Validator.validate!(input[:calculator_arn], ::String, context: "#{context}[:calculator_arn]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeTrackerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrackerInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
      end
    end

    class DescribeTrackerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrackerOutput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:tracker_arn], ::String, context: "#{context}[:tracker_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:pricing_plan_data_source], ::String, context: "#{context}[:pricing_plan_data_source]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:position_filtering], ::String, context: "#{context}[:position_filtering]")
      end
    end

    class DeviceIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DevicePosition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DevicePosition, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:sample_time], ::Time, context: "#{context}[:sample_time]")
        Hearth::Validator.validate!(input[:received_time], ::Time, context: "#{context}[:received_time]")
        Validators::Position.validate!(input[:position], context: "#{context}[:position]") unless input[:position].nil?
        Validators::PositionalAccuracy.validate!(input[:accuracy], context: "#{context}[:accuracy]") unless input[:accuracy].nil?
        Validators::PropertyMap.validate!(input[:position_properties], context: "#{context}[:position_properties]") unless input[:position_properties].nil?
      end
    end

    class DevicePositionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DevicePosition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DevicePositionUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DevicePositionUpdate, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:sample_time], ::Time, context: "#{context}[:sample_time]")
        Validators::Position.validate!(input[:position], context: "#{context}[:position]") unless input[:position].nil?
        Validators::PositionalAccuracy.validate!(input[:accuracy], context: "#{context}[:accuracy]") unless input[:accuracy].nil?
        Validators::PropertyMap.validate!(input[:position_properties], context: "#{context}[:position_properties]") unless input[:position_properties].nil?
      end
    end

    class DevicePositionUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DevicePositionUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisassociateTrackerConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTrackerConsumerInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
      end
    end

    class DisassociateTrackerConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTrackerConsumerOutput, context: context)
      end
    end

    class GeofenceGeometry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeofenceGeometry, context: context)
        Validators::LinearRings.validate!(input[:polygon], context: "#{context}[:polygon]") unless input[:polygon].nil?
      end
    end

    class GetDevicePositionHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicePositionHistoryInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:start_time_inclusive], ::Time, context: "#{context}[:start_time_inclusive]")
        Hearth::Validator.validate!(input[:end_time_exclusive], ::Time, context: "#{context}[:end_time_exclusive]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetDevicePositionHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicePositionHistoryOutput, context: context)
        Validators::DevicePositionList.validate!(input[:device_positions], context: "#{context}[:device_positions]") unless input[:device_positions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDevicePositionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicePositionInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class GetDevicePositionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicePositionOutput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:sample_time], ::Time, context: "#{context}[:sample_time]")
        Hearth::Validator.validate!(input[:received_time], ::Time, context: "#{context}[:received_time]")
        Validators::Position.validate!(input[:position], context: "#{context}[:position]") unless input[:position].nil?
        Validators::PositionalAccuracy.validate!(input[:accuracy], context: "#{context}[:accuracy]") unless input[:accuracy].nil?
        Validators::PropertyMap.validate!(input[:position_properties], context: "#{context}[:position_properties]") unless input[:position_properties].nil?
      end
    end

    class GetGeofenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeofenceInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate!(input[:geofence_id], ::String, context: "#{context}[:geofence_id]")
      end
    end

    class GetGeofenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeofenceOutput, context: context)
        Hearth::Validator.validate!(input[:geofence_id], ::String, context: "#{context}[:geofence_id]")
        Validators::GeofenceGeometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class GetMapGlyphsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMapGlyphsInput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
        Hearth::Validator.validate!(input[:font_stack], ::String, context: "#{context}[:font_stack]")
        Hearth::Validator.validate!(input[:font_unicode_range], ::String, context: "#{context}[:font_unicode_range]")
      end
    end

    class GetMapGlyphsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMapGlyphsOutput, context: context)
        Hearth::Validator.validate!(input[:blob], ::String, context: "#{context}[:blob]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class GetMapSpritesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMapSpritesInput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
        Hearth::Validator.validate!(input[:file_name], ::String, context: "#{context}[:file_name]")
      end
    end

    class GetMapSpritesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMapSpritesOutput, context: context)
        Hearth::Validator.validate!(input[:blob], ::String, context: "#{context}[:blob]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class GetMapStyleDescriptorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMapStyleDescriptorInput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
      end
    end

    class GetMapStyleDescriptorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMapStyleDescriptorOutput, context: context)
        Hearth::Validator.validate!(input[:blob], ::String, context: "#{context}[:blob]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class GetMapTileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMapTileInput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
        Hearth::Validator.validate!(input[:z], ::String, context: "#{context}[:z]")
        Hearth::Validator.validate!(input[:x], ::String, context: "#{context}[:x]")
        Hearth::Validator.validate!(input[:y], ::String, context: "#{context}[:y]")
      end
    end

    class GetMapTileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMapTileOutput, context: context)
        Hearth::Validator.validate!(input[:blob], ::String, context: "#{context}[:blob]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class IdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Leg
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Leg, context: context)
        Validators::Position.validate!(input[:start_position], context: "#{context}[:start_position]") unless input[:start_position].nil?
        Validators::Position.validate!(input[:end_position], context: "#{context}[:end_position]") unless input[:end_position].nil?
        Hearth::Validator.validate!(input[:distance], ::Float, context: "#{context}[:distance]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Float, context: "#{context}[:duration_seconds]")
        Validators::LegGeometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
        Validators::StepList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
      end
    end

    class LegGeometry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LegGeometry, context: context)
        Validators::LineString.validate!(input[:line_string], context: "#{context}[:line_string]") unless input[:line_string].nil?
      end
    end

    class LegList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Leg.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LineString
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Position.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LinearRing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Position.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LinearRings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LinearRing.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListDevicePositionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicePositionsInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicePositionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicePositionsOutput, context: context)
        Validators::ListDevicePositionsResponseEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicePositionsResponseEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicePositionsResponseEntry, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:sample_time], ::Time, context: "#{context}[:sample_time]")
        Validators::Position.validate!(input[:position], context: "#{context}[:position]") unless input[:position].nil?
        Validators::PositionalAccuracy.validate!(input[:accuracy], context: "#{context}[:accuracy]") unless input[:accuracy].nil?
        Validators::PropertyMap.validate!(input[:position_properties], context: "#{context}[:position_properties]") unless input[:position_properties].nil?
      end
    end

    class ListDevicePositionsResponseEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListDevicePositionsResponseEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListGeofenceCollectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeofenceCollectionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGeofenceCollectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeofenceCollectionsOutput, context: context)
        Validators::ListGeofenceCollectionsResponseEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGeofenceCollectionsResponseEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeofenceCollectionsResponseEntry, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:pricing_plan_data_source], ::String, context: "#{context}[:pricing_plan_data_source]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class ListGeofenceCollectionsResponseEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListGeofenceCollectionsResponseEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListGeofenceResponseEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeofenceResponseEntry, context: context)
        Hearth::Validator.validate!(input[:geofence_id], ::String, context: "#{context}[:geofence_id]")
        Validators::GeofenceGeometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class ListGeofenceResponseEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListGeofenceResponseEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListGeofencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeofencesInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListGeofencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeofencesOutput, context: context)
        Validators::ListGeofenceResponseEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMapsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMapsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMapsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMapsOutput, context: context)
        Validators::ListMapsResponseEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMapsResponseEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMapsResponseEntry, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class ListMapsResponseEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListMapsResponseEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListPlaceIndexesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlaceIndexesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlaceIndexesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlaceIndexesOutput, context: context)
        Validators::ListPlaceIndexesResponseEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlaceIndexesResponseEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlaceIndexesResponseEntry, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class ListPlaceIndexesResponseEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListPlaceIndexesResponseEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListRouteCalculatorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRouteCalculatorsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRouteCalculatorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRouteCalculatorsOutput, context: context)
        Validators::ListRouteCalculatorsResponseEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRouteCalculatorsResponseEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRouteCalculatorsResponseEntry, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class ListRouteCalculatorsResponseEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListRouteCalculatorsResponseEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTrackerConsumersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrackerConsumersInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrackerConsumersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrackerConsumersOutput, context: context)
        Validators::ArnList.validate!(input[:consumer_arns], context: "#{context}[:consumer_arns]") unless input[:consumer_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrackersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrackersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrackersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrackersOutput, context: context)
        Validators::ListTrackersResponseEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrackersResponseEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrackersResponseEntry, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:pricing_plan_data_source], ::String, context: "#{context}[:pricing_plan_data_source]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class ListTrackersResponseEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListTrackersResponseEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MapConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MapConfiguration, context: context)
        Hearth::Validator.validate!(input[:style], ::String, context: "#{context}[:style]")
      end
    end

    class Place
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Place, context: context)
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Validators::PlaceGeometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
        Hearth::Validator.validate!(input[:address_number], ::String, context: "#{context}[:address_number]")
        Hearth::Validator.validate!(input[:street], ::String, context: "#{context}[:street]")
        Hearth::Validator.validate!(input[:neighborhood], ::String, context: "#{context}[:neighborhood]")
        Hearth::Validator.validate!(input[:municipality], ::String, context: "#{context}[:municipality]")
        Hearth::Validator.validate!(input[:sub_region], ::String, context: "#{context}[:sub_region]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:postal_code], ::String, context: "#{context}[:postal_code]")
        Hearth::Validator.validate!(input[:interpolated], ::TrueClass, ::FalseClass, context: "#{context}[:interpolated]")
        Validators::TimeZone.validate!(input[:time_zone], context: "#{context}[:time_zone]") unless input[:time_zone].nil?
      end
    end

    class PlaceGeometry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlaceGeometry, context: context)
        Validators::Position.validate!(input[:point], context: "#{context}[:point]") unless input[:point].nil?
      end
    end

    class Position
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class PositionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Position.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PositionalAccuracy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PositionalAccuracy, context: context)
        Hearth::Validator.validate!(input[:horizontal], ::Float, context: "#{context}[:horizontal]")
      end
    end

    class PropertyMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PutGeofenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutGeofenceInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate!(input[:geofence_id], ::String, context: "#{context}[:geofence_id]")
        Validators::GeofenceGeometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
      end
    end

    class PutGeofenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutGeofenceOutput, context: context)
        Hearth::Validator.validate!(input[:geofence_id], ::String, context: "#{context}[:geofence_id]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RouteMatrix
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RouteMatrixRow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RouteMatrixEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteMatrixEntry, context: context)
        Hearth::Validator.validate!(input[:distance], ::Float, context: "#{context}[:distance]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Float, context: "#{context}[:duration_seconds]")
        Validators::RouteMatrixEntryError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class RouteMatrixEntryError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteMatrixEntryError, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RouteMatrixRow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RouteMatrixEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchForPositionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchForPositionResult, context: context)
        Validators::Place.validate!(input[:place], context: "#{context}[:place]") unless input[:place].nil?
        Hearth::Validator.validate!(input[:distance], ::Float, context: "#{context}[:distance]")
      end
    end

    class SearchForPositionResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SearchForPositionResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchForSuggestionsResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchForSuggestionsResult, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class SearchForSuggestionsResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SearchForSuggestionsResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchForTextResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchForTextResult, context: context)
        Validators::Place.validate!(input[:place], context: "#{context}[:place]") unless input[:place].nil?
        Hearth::Validator.validate!(input[:distance], ::Float, context: "#{context}[:distance]")
        Hearth::Validator.validate!(input[:relevance], ::Float, context: "#{context}[:relevance]")
      end
    end

    class SearchForTextResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SearchForTextResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchPlaceIndexForPositionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchPlaceIndexForPositionInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::Position.validate!(input[:position], context: "#{context}[:position]") unless input[:position].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class SearchPlaceIndexForPositionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchPlaceIndexForPositionOutput, context: context)
        Validators::SearchPlaceIndexForPositionSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
        Validators::SearchForPositionResultList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class SearchPlaceIndexForPositionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchPlaceIndexForPositionSummary, context: context)
        Validators::Position.validate!(input[:position], context: "#{context}[:position]") unless input[:position].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class SearchPlaceIndexForSuggestionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchPlaceIndexForSuggestionsInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Validators::Position.validate!(input[:bias_position], context: "#{context}[:bias_position]") unless input[:bias_position].nil?
        Validators::BoundingBox.validate!(input[:filter_b_box], context: "#{context}[:filter_b_box]") unless input[:filter_b_box].nil?
        Validators::CountryCodeList.validate!(input[:filter_countries], context: "#{context}[:filter_countries]") unless input[:filter_countries].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class SearchPlaceIndexForSuggestionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchPlaceIndexForSuggestionsOutput, context: context)
        Validators::SearchPlaceIndexForSuggestionsSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
        Validators::SearchForSuggestionsResultList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class SearchPlaceIndexForSuggestionsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchPlaceIndexForSuggestionsSummary, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Validators::Position.validate!(input[:bias_position], context: "#{context}[:bias_position]") unless input[:bias_position].nil?
        Validators::BoundingBox.validate!(input[:filter_b_box], context: "#{context}[:filter_b_box]") unless input[:filter_b_box].nil?
        Validators::CountryCodeList.validate!(input[:filter_countries], context: "#{context}[:filter_countries]") unless input[:filter_countries].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class SearchPlaceIndexForTextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchPlaceIndexForTextInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Validators::Position.validate!(input[:bias_position], context: "#{context}[:bias_position]") unless input[:bias_position].nil?
        Validators::BoundingBox.validate!(input[:filter_b_box], context: "#{context}[:filter_b_box]") unless input[:filter_b_box].nil?
        Validators::CountryCodeList.validate!(input[:filter_countries], context: "#{context}[:filter_countries]") unless input[:filter_countries].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class SearchPlaceIndexForTextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchPlaceIndexForTextOutput, context: context)
        Validators::SearchPlaceIndexForTextSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
        Validators::SearchForTextResultList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class SearchPlaceIndexForTextSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchPlaceIndexForTextSummary, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Validators::Position.validate!(input[:bias_position], context: "#{context}[:bias_position]") unless input[:bias_position].nil?
        Validators::BoundingBox.validate!(input[:filter_b_box], context: "#{context}[:filter_b_box]") unless input[:filter_b_box].nil?
        Validators::CountryCodeList.validate!(input[:filter_countries], context: "#{context}[:filter_countries]") unless input[:filter_countries].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::BoundingBox.validate!(input[:result_b_box], context: "#{context}[:result_b_box]") unless input[:result_b_box].nil?
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Step
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Step, context: context)
        Validators::Position.validate!(input[:start_position], context: "#{context}[:start_position]") unless input[:start_position].nil?
        Validators::Position.validate!(input[:end_position], context: "#{context}[:end_position]") unless input[:end_position].nil?
        Hearth::Validator.validate!(input[:distance], ::Float, context: "#{context}[:distance]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Float, context: "#{context}[:duration_seconds]")
        Hearth::Validator.validate!(input[:geometry_offset], ::Integer, context: "#{context}[:geometry_offset]")
      end
    end

    class StepList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Step.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeys
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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

    class TimeZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeZone, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:offset], ::Integer, context: "#{context}[:offset]")
      end
    end

    class TruckDimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TruckDimensions, context: context)
        Hearth::Validator.validate!(input[:length], ::Float, context: "#{context}[:length]")
        Hearth::Validator.validate!(input[:height], ::Float, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:width], ::Float, context: "#{context}[:width]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class TruckWeight
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TruckWeight, context: context)
        Hearth::Validator.validate!(input[:total], ::Float, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateGeofenceCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGeofenceCollectionInput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:pricing_plan_data_source], ::String, context: "#{context}[:pricing_plan_data_source]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateGeofenceCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGeofenceCollectionOutput, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate!(input[:collection_arn], ::String, context: "#{context}[:collection_arn]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class UpdateMapInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMapInput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateMapOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMapOutput, context: context)
        Hearth::Validator.validate!(input[:map_name], ::String, context: "#{context}[:map_name]")
        Hearth::Validator.validate!(input[:map_arn], ::String, context: "#{context}[:map_arn]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class UpdatePlaceIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePlaceIndexInput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::DataSourceConfiguration.validate!(input[:data_source_configuration], context: "#{context}[:data_source_configuration]") unless input[:data_source_configuration].nil?
      end
    end

    class UpdatePlaceIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePlaceIndexOutput, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:index_arn], ::String, context: "#{context}[:index_arn]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class UpdateRouteCalculatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRouteCalculatorInput, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateRouteCalculatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRouteCalculatorOutput, context: context)
        Hearth::Validator.validate!(input[:calculator_name], ::String, context: "#{context}[:calculator_name]")
        Hearth::Validator.validate!(input[:calculator_arn], ::String, context: "#{context}[:calculator_arn]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class UpdateTrackerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrackerInput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
        Hearth::Validator.validate!(input[:pricing_plan_data_source], ::String, context: "#{context}[:pricing_plan_data_source]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:position_filtering], ::String, context: "#{context}[:position_filtering]")
      end
    end

    class UpdateTrackerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrackerOutput, context: context)
        Hearth::Validator.validate!(input[:tracker_name], ::String, context: "#{context}[:tracker_name]")
        Hearth::Validator.validate!(input[:tracker_arn], ::String, context: "#{context}[:tracker_arn]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WaypointPositionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Position.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
