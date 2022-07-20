# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::IoTSiteWise
  module Stubs

    # Operation Stubber for AssociateAssets
    class AssociateAssets
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateTimeSeriesToAssetProperty
    class AssociateTimeSeriesToAssetProperty
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchAssociateProjectAssets
    class BatchAssociateProjectAssets
      def self.default(visited=[])
        {
          errors: BatchAssociateProjectAssetsErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errors'] = BatchAssociateProjectAssetsErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchAssociateProjectAssetsErrors
    class BatchAssociateProjectAssetsErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchAssociateProjectAssetsErrors')
        visited = visited + ['BatchAssociateProjectAssetsErrors']
        [
          AssetErrorDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetErrorDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetErrorDetails
    class AssetErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('AssetErrorDetails')
        visited = visited + ['AssetErrorDetails']
        {
          asset_id: 'asset_id',
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetErrorDetails.new
        data = {}
        data['assetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for BatchDisassociateProjectAssets
    class BatchDisassociateProjectAssets
      def self.default(visited=[])
        {
          errors: BatchDisassociateProjectAssetsErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errors'] = BatchDisassociateProjectAssetsErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchDisassociateProjectAssetsErrors
    class BatchDisassociateProjectAssetsErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchDisassociateProjectAssetsErrors')
        visited = visited + ['BatchDisassociateProjectAssetsErrors']
        [
          AssetErrorDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetErrorDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for BatchGetAssetPropertyAggregates
    class BatchGetAssetPropertyAggregates
      def self.default(visited=[])
        {
          error_entries: BatchGetAssetPropertyAggregatesErrorEntries.default(visited),
          success_entries: BatchGetAssetPropertyAggregatesSuccessEntries.default(visited),
          skipped_entries: BatchGetAssetPropertyAggregatesSkippedEntries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = BatchGetAssetPropertyAggregatesErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        data['successEntries'] = BatchGetAssetPropertyAggregatesSuccessEntries.stub(stub[:success_entries]) unless stub[:success_entries].nil?
        data['skippedEntries'] = BatchGetAssetPropertyAggregatesSkippedEntries.stub(stub[:skipped_entries]) unless stub[:skipped_entries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchGetAssetPropertyAggregatesSkippedEntries
    class BatchGetAssetPropertyAggregatesSkippedEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyAggregatesSkippedEntries')
        visited = visited + ['BatchGetAssetPropertyAggregatesSkippedEntries']
        [
          BatchGetAssetPropertyAggregatesSkippedEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetAssetPropertyAggregatesSkippedEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyAggregatesSkippedEntry
    class BatchGetAssetPropertyAggregatesSkippedEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyAggregatesSkippedEntry')
        visited = visited + ['BatchGetAssetPropertyAggregatesSkippedEntry']
        {
          entry_id: 'entry_id',
          completion_status: 'completion_status',
          error_info: BatchGetAssetPropertyAggregatesErrorInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyAggregatesSkippedEntry.new
        data = {}
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data['completionStatus'] = stub[:completion_status] unless stub[:completion_status].nil?
        data['errorInfo'] = BatchGetAssetPropertyAggregatesErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyAggregatesErrorInfo
    class BatchGetAssetPropertyAggregatesErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyAggregatesErrorInfo')
        visited = visited + ['BatchGetAssetPropertyAggregatesErrorInfo']
        {
          error_code: 'error_code',
          error_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyAggregatesErrorInfo.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:error_timestamp]).to_i unless stub[:error_timestamp].nil?
        data
      end
    end

    # List Stubber for BatchGetAssetPropertyAggregatesSuccessEntries
    class BatchGetAssetPropertyAggregatesSuccessEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyAggregatesSuccessEntries')
        visited = visited + ['BatchGetAssetPropertyAggregatesSuccessEntries']
        [
          BatchGetAssetPropertyAggregatesSuccessEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetAssetPropertyAggregatesSuccessEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyAggregatesSuccessEntry
    class BatchGetAssetPropertyAggregatesSuccessEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyAggregatesSuccessEntry')
        visited = visited + ['BatchGetAssetPropertyAggregatesSuccessEntry']
        {
          entry_id: 'entry_id',
          aggregated_values: AggregatedValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyAggregatesSuccessEntry.new
        data = {}
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data['aggregatedValues'] = AggregatedValues.stub(stub[:aggregated_values]) unless stub[:aggregated_values].nil?
        data
      end
    end

    # List Stubber for AggregatedValues
    class AggregatedValues
      def self.default(visited=[])
        return nil if visited.include?('AggregatedValues')
        visited = visited + ['AggregatedValues']
        [
          AggregatedValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AggregatedValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AggregatedValue
    class AggregatedValue
      def self.default(visited=[])
        return nil if visited.include?('AggregatedValue')
        visited = visited + ['AggregatedValue']
        {
          timestamp: Time.now,
          quality: 'quality',
          value: Aggregates.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregatedValue.new
        data = {}
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['quality'] = stub[:quality] unless stub[:quality].nil?
        data['value'] = Aggregates.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for Aggregates
    class Aggregates
      def self.default(visited=[])
        return nil if visited.include?('Aggregates')
        visited = visited + ['Aggregates']
        {
          average: 1.0,
          count: 1.0,
          maximum: 1.0,
          minimum: 1.0,
          sum: 1.0,
          standard_deviation: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Aggregates.new
        data = {}
        data['average'] = Hearth::NumberHelper.serialize(stub[:average])
        data['count'] = Hearth::NumberHelper.serialize(stub[:count])
        data['maximum'] = Hearth::NumberHelper.serialize(stub[:maximum])
        data['minimum'] = Hearth::NumberHelper.serialize(stub[:minimum])
        data['sum'] = Hearth::NumberHelper.serialize(stub[:sum])
        data['standardDeviation'] = Hearth::NumberHelper.serialize(stub[:standard_deviation])
        data
      end
    end

    # List Stubber for BatchGetAssetPropertyAggregatesErrorEntries
    class BatchGetAssetPropertyAggregatesErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyAggregatesErrorEntries')
        visited = visited + ['BatchGetAssetPropertyAggregatesErrorEntries']
        [
          BatchGetAssetPropertyAggregatesErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetAssetPropertyAggregatesErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyAggregatesErrorEntry
    class BatchGetAssetPropertyAggregatesErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyAggregatesErrorEntry')
        visited = visited + ['BatchGetAssetPropertyAggregatesErrorEntry']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          entry_id: 'entry_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyAggregatesErrorEntry.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data
      end
    end

    # Operation Stubber for BatchGetAssetPropertyValue
    class BatchGetAssetPropertyValue
      def self.default(visited=[])
        {
          error_entries: BatchGetAssetPropertyValueErrorEntries.default(visited),
          success_entries: BatchGetAssetPropertyValueSuccessEntries.default(visited),
          skipped_entries: BatchGetAssetPropertyValueSkippedEntries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = BatchGetAssetPropertyValueErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        data['successEntries'] = BatchGetAssetPropertyValueSuccessEntries.stub(stub[:success_entries]) unless stub[:success_entries].nil?
        data['skippedEntries'] = BatchGetAssetPropertyValueSkippedEntries.stub(stub[:skipped_entries]) unless stub[:skipped_entries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchGetAssetPropertyValueSkippedEntries
    class BatchGetAssetPropertyValueSkippedEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueSkippedEntries')
        visited = visited + ['BatchGetAssetPropertyValueSkippedEntries']
        [
          BatchGetAssetPropertyValueSkippedEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetAssetPropertyValueSkippedEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyValueSkippedEntry
    class BatchGetAssetPropertyValueSkippedEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueSkippedEntry')
        visited = visited + ['BatchGetAssetPropertyValueSkippedEntry']
        {
          entry_id: 'entry_id',
          completion_status: 'completion_status',
          error_info: BatchGetAssetPropertyValueErrorInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyValueSkippedEntry.new
        data = {}
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data['completionStatus'] = stub[:completion_status] unless stub[:completion_status].nil?
        data['errorInfo'] = BatchGetAssetPropertyValueErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyValueErrorInfo
    class BatchGetAssetPropertyValueErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueErrorInfo')
        visited = visited + ['BatchGetAssetPropertyValueErrorInfo']
        {
          error_code: 'error_code',
          error_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyValueErrorInfo.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:error_timestamp]).to_i unless stub[:error_timestamp].nil?
        data
      end
    end

    # List Stubber for BatchGetAssetPropertyValueSuccessEntries
    class BatchGetAssetPropertyValueSuccessEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueSuccessEntries')
        visited = visited + ['BatchGetAssetPropertyValueSuccessEntries']
        [
          BatchGetAssetPropertyValueSuccessEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetAssetPropertyValueSuccessEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyValueSuccessEntry
    class BatchGetAssetPropertyValueSuccessEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueSuccessEntry')
        visited = visited + ['BatchGetAssetPropertyValueSuccessEntry']
        {
          entry_id: 'entry_id',
          asset_property_value: AssetPropertyValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyValueSuccessEntry.new
        data = {}
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data['assetPropertyValue'] = AssetPropertyValue.stub(stub[:asset_property_value]) unless stub[:asset_property_value].nil?
        data
      end
    end

    # Structure Stubber for AssetPropertyValue
    class AssetPropertyValue
      def self.default(visited=[])
        return nil if visited.include?('AssetPropertyValue')
        visited = visited + ['AssetPropertyValue']
        {
          value: Variant.default(visited),
          timestamp: TimeInNanos.default(visited),
          quality: 'quality',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetPropertyValue.new
        data = {}
        data['value'] = Variant.stub(stub[:value]) unless stub[:value].nil?
        data['timestamp'] = TimeInNanos.stub(stub[:timestamp]) unless stub[:timestamp].nil?
        data['quality'] = stub[:quality] unless stub[:quality].nil?
        data
      end
    end

    # Structure Stubber for TimeInNanos
    class TimeInNanos
      def self.default(visited=[])
        return nil if visited.include?('TimeInNanos')
        visited = visited + ['TimeInNanos']
        {
          time_in_seconds: 1,
          offset_in_nanos: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeInNanos.new
        data = {}
        data['timeInSeconds'] = stub[:time_in_seconds] unless stub[:time_in_seconds].nil?
        data['offsetInNanos'] = stub[:offset_in_nanos] unless stub[:offset_in_nanos].nil?
        data
      end
    end

    # Structure Stubber for Variant
    class Variant
      def self.default(visited=[])
        return nil if visited.include?('Variant')
        visited = visited + ['Variant']
        {
          string_value: 'string_value',
          integer_value: 1,
          double_value: 1.0,
          boolean_value: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Variant.new
        data = {}
        data['stringValue'] = stub[:string_value] unless stub[:string_value].nil?
        data['integerValue'] = stub[:integer_value] unless stub[:integer_value].nil?
        data['doubleValue'] = Hearth::NumberHelper.serialize(stub[:double_value])
        data['booleanValue'] = stub[:boolean_value] unless stub[:boolean_value].nil?
        data
      end
    end

    # List Stubber for BatchGetAssetPropertyValueErrorEntries
    class BatchGetAssetPropertyValueErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueErrorEntries')
        visited = visited + ['BatchGetAssetPropertyValueErrorEntries']
        [
          BatchGetAssetPropertyValueErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetAssetPropertyValueErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyValueErrorEntry
    class BatchGetAssetPropertyValueErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueErrorEntry')
        visited = visited + ['BatchGetAssetPropertyValueErrorEntry']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          entry_id: 'entry_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyValueErrorEntry.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data
      end
    end

    # Operation Stubber for BatchGetAssetPropertyValueHistory
    class BatchGetAssetPropertyValueHistory
      def self.default(visited=[])
        {
          error_entries: BatchGetAssetPropertyValueHistoryErrorEntries.default(visited),
          success_entries: BatchGetAssetPropertyValueHistorySuccessEntries.default(visited),
          skipped_entries: BatchGetAssetPropertyValueHistorySkippedEntries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = BatchGetAssetPropertyValueHistoryErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        data['successEntries'] = BatchGetAssetPropertyValueHistorySuccessEntries.stub(stub[:success_entries]) unless stub[:success_entries].nil?
        data['skippedEntries'] = BatchGetAssetPropertyValueHistorySkippedEntries.stub(stub[:skipped_entries]) unless stub[:skipped_entries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchGetAssetPropertyValueHistorySkippedEntries
    class BatchGetAssetPropertyValueHistorySkippedEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueHistorySkippedEntries')
        visited = visited + ['BatchGetAssetPropertyValueHistorySkippedEntries']
        [
          BatchGetAssetPropertyValueHistorySkippedEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetAssetPropertyValueHistorySkippedEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyValueHistorySkippedEntry
    class BatchGetAssetPropertyValueHistorySkippedEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueHistorySkippedEntry')
        visited = visited + ['BatchGetAssetPropertyValueHistorySkippedEntry']
        {
          entry_id: 'entry_id',
          completion_status: 'completion_status',
          error_info: BatchGetAssetPropertyValueHistoryErrorInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyValueHistorySkippedEntry.new
        data = {}
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data['completionStatus'] = stub[:completion_status] unless stub[:completion_status].nil?
        data['errorInfo'] = BatchGetAssetPropertyValueHistoryErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyValueHistoryErrorInfo
    class BatchGetAssetPropertyValueHistoryErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueHistoryErrorInfo')
        visited = visited + ['BatchGetAssetPropertyValueHistoryErrorInfo']
        {
          error_code: 'error_code',
          error_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyValueHistoryErrorInfo.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:error_timestamp]).to_i unless stub[:error_timestamp].nil?
        data
      end
    end

    # List Stubber for BatchGetAssetPropertyValueHistorySuccessEntries
    class BatchGetAssetPropertyValueHistorySuccessEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueHistorySuccessEntries')
        visited = visited + ['BatchGetAssetPropertyValueHistorySuccessEntries']
        [
          BatchGetAssetPropertyValueHistorySuccessEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetAssetPropertyValueHistorySuccessEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyValueHistorySuccessEntry
    class BatchGetAssetPropertyValueHistorySuccessEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueHistorySuccessEntry')
        visited = visited + ['BatchGetAssetPropertyValueHistorySuccessEntry']
        {
          entry_id: 'entry_id',
          asset_property_value_history: AssetPropertyValueHistory.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyValueHistorySuccessEntry.new
        data = {}
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data['assetPropertyValueHistory'] = AssetPropertyValueHistory.stub(stub[:asset_property_value_history]) unless stub[:asset_property_value_history].nil?
        data
      end
    end

    # List Stubber for AssetPropertyValueHistory
    class AssetPropertyValueHistory
      def self.default(visited=[])
        return nil if visited.include?('AssetPropertyValueHistory')
        visited = visited + ['AssetPropertyValueHistory']
        [
          AssetPropertyValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetPropertyValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for BatchGetAssetPropertyValueHistoryErrorEntries
    class BatchGetAssetPropertyValueHistoryErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueHistoryErrorEntries')
        visited = visited + ['BatchGetAssetPropertyValueHistoryErrorEntries']
        [
          BatchGetAssetPropertyValueHistoryErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetAssetPropertyValueHistoryErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetAssetPropertyValueHistoryErrorEntry
    class BatchGetAssetPropertyValueHistoryErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchGetAssetPropertyValueHistoryErrorEntry')
        visited = visited + ['BatchGetAssetPropertyValueHistoryErrorEntry']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          entry_id: 'entry_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetAssetPropertyValueHistoryErrorEntry.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data
      end
    end

    # Operation Stubber for BatchPutAssetPropertyValue
    class BatchPutAssetPropertyValue
      def self.default(visited=[])
        {
          error_entries: BatchPutAssetPropertyErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = BatchPutAssetPropertyErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchPutAssetPropertyErrorEntries
    class BatchPutAssetPropertyErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('BatchPutAssetPropertyErrorEntries')
        visited = visited + ['BatchPutAssetPropertyErrorEntries']
        [
          BatchPutAssetPropertyErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchPutAssetPropertyErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPutAssetPropertyErrorEntry
    class BatchPutAssetPropertyErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchPutAssetPropertyErrorEntry')
        visited = visited + ['BatchPutAssetPropertyErrorEntry']
        {
          entry_id: 'entry_id',
          errors: BatchPutAssetPropertyErrors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutAssetPropertyErrorEntry.new
        data = {}
        data['entryId'] = stub[:entry_id] unless stub[:entry_id].nil?
        data['errors'] = BatchPutAssetPropertyErrors.stub(stub[:errors]) unless stub[:errors].nil?
        data
      end
    end

    # List Stubber for BatchPutAssetPropertyErrors
    class BatchPutAssetPropertyErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchPutAssetPropertyErrors')
        visited = visited + ['BatchPutAssetPropertyErrors']
        [
          BatchPutAssetPropertyError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchPutAssetPropertyError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPutAssetPropertyError
    class BatchPutAssetPropertyError
      def self.default(visited=[])
        return nil if visited.include?('BatchPutAssetPropertyError')
        visited = visited + ['BatchPutAssetPropertyError']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          timestamps: Timestamps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutAssetPropertyError.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['timestamps'] = Timestamps.stub(stub[:timestamps]) unless stub[:timestamps].nil?
        data
      end
    end

    # List Stubber for Timestamps
    class Timestamps
      def self.default(visited=[])
        return nil if visited.include?('Timestamps')
        visited = visited + ['Timestamps']
        [
          TimeInNanos.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TimeInNanos.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateAccessPolicy
    class CreateAccessPolicy
      def self.default(visited=[])
        {
          access_policy_id: 'access_policy_id',
          access_policy_arn: 'access_policy_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessPolicyId'] = stub[:access_policy_id] unless stub[:access_policy_id].nil?
        data['accessPolicyArn'] = stub[:access_policy_arn] unless stub[:access_policy_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAsset
    class CreateAsset
      def self.default(visited=[])
        {
          asset_id: 'asset_id',
          asset_arn: 'asset_arn',
          asset_status: AssetStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['assetArn'] = stub[:asset_arn] unless stub[:asset_arn].nil?
        data['assetStatus'] = AssetStatus.stub(stub[:asset_status]) unless stub[:asset_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AssetStatus
    class AssetStatus
      def self.default(visited=[])
        return nil if visited.include?('AssetStatus')
        visited = visited + ['AssetStatus']
        {
          state: 'state',
          error: ErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetStatus.new
        data = {}
        data['state'] = stub[:state] unless stub[:state].nil?
        data['error'] = ErrorDetails.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for ErrorDetails
    class ErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetails')
        visited = visited + ['ErrorDetails']
        {
          code: 'code',
          message: 'message',
          details: DetailedErrors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetails.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['details'] = DetailedErrors.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # List Stubber for DetailedErrors
    class DetailedErrors
      def self.default(visited=[])
        return nil if visited.include?('DetailedErrors')
        visited = visited + ['DetailedErrors']
        [
          DetailedError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DetailedError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DetailedError
    class DetailedError
      def self.default(visited=[])
        return nil if visited.include?('DetailedError')
        visited = visited + ['DetailedError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetailedError.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CreateAssetModel
    class CreateAssetModel
      def self.default(visited=[])
        {
          asset_model_id: 'asset_model_id',
          asset_model_arn: 'asset_model_arn',
          asset_model_status: AssetModelStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetModelId'] = stub[:asset_model_id] unless stub[:asset_model_id].nil?
        data['assetModelArn'] = stub[:asset_model_arn] unless stub[:asset_model_arn].nil?
        data['assetModelStatus'] = AssetModelStatus.stub(stub[:asset_model_status]) unless stub[:asset_model_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AssetModelStatus
    class AssetModelStatus
      def self.default(visited=[])
        return nil if visited.include?('AssetModelStatus')
        visited = visited + ['AssetModelStatus']
        {
          state: 'state',
          error: ErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetModelStatus.new
        data = {}
        data['state'] = stub[:state] unless stub[:state].nil?
        data['error'] = ErrorDetails.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for CreateDashboard
    class CreateDashboard
      def self.default(visited=[])
        {
          dashboard_id: 'dashboard_id',
          dashboard_arn: 'dashboard_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['dashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['dashboardArn'] = stub[:dashboard_arn] unless stub[:dashboard_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateGateway
    class CreateGateway
      def self.default(visited=[])
        {
          gateway_id: 'gateway_id',
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['gatewayId'] = stub[:gateway_id] unless stub[:gateway_id].nil?
        data['gatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePortal
    class CreatePortal
      def self.default(visited=[])
        {
          portal_id: 'portal_id',
          portal_arn: 'portal_arn',
          portal_start_url: 'portal_start_url',
          portal_status: PortalStatus.default(visited),
          sso_application_id: 'sso_application_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalId'] = stub[:portal_id] unless stub[:portal_id].nil?
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['portalStartUrl'] = stub[:portal_start_url] unless stub[:portal_start_url].nil?
        data['portalStatus'] = PortalStatus.stub(stub[:portal_status]) unless stub[:portal_status].nil?
        data['ssoApplicationId'] = stub[:sso_application_id] unless stub[:sso_application_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PortalStatus
    class PortalStatus
      def self.default(visited=[])
        return nil if visited.include?('PortalStatus')
        visited = visited + ['PortalStatus']
        {
          state: 'state',
          error: MonitorErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PortalStatus.new
        data = {}
        data['state'] = stub[:state] unless stub[:state].nil?
        data['error'] = MonitorErrorDetails.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for MonitorErrorDetails
    class MonitorErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('MonitorErrorDetails')
        visited = visited + ['MonitorErrorDetails']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitorErrorDetails.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          project_id: 'project_id',
          project_arn: 'project_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['projectId'] = stub[:project_id] unless stub[:project_id].nil?
        data['projectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAccessPolicy
    class DeleteAccessPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAsset
    class DeleteAsset
      def self.default(visited=[])
        {
          asset_status: AssetStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetStatus'] = AssetStatus.stub(stub[:asset_status]) unless stub[:asset_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAssetModel
    class DeleteAssetModel
      def self.default(visited=[])
        {
          asset_model_status: AssetModelStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetModelStatus'] = AssetModelStatus.stub(stub[:asset_model_status]) unless stub[:asset_model_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDashboard
    class DeleteDashboard
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteGateway
    class DeleteGateway
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePortal
    class DeletePortal
      def self.default(visited=[])
        {
          portal_status: PortalStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalStatus'] = PortalStatus.stub(stub[:portal_status]) unless stub[:portal_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteTimeSeries
    class DeleteTimeSeries
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccessPolicy
    class DescribeAccessPolicy
      def self.default(visited=[])
        {
          access_policy_id: 'access_policy_id',
          access_policy_arn: 'access_policy_arn',
          access_policy_identity: Identity.default(visited),
          access_policy_resource: Resource.default(visited),
          access_policy_permission: 'access_policy_permission',
          access_policy_creation_date: Time.now,
          access_policy_last_update_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessPolicyId'] = stub[:access_policy_id] unless stub[:access_policy_id].nil?
        data['accessPolicyArn'] = stub[:access_policy_arn] unless stub[:access_policy_arn].nil?
        data['accessPolicyIdentity'] = Identity.stub(stub[:access_policy_identity]) unless stub[:access_policy_identity].nil?
        data['accessPolicyResource'] = Resource.stub(stub[:access_policy_resource]) unless stub[:access_policy_resource].nil?
        data['accessPolicyPermission'] = stub[:access_policy_permission] unless stub[:access_policy_permission].nil?
        data['accessPolicyCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:access_policy_creation_date]).to_i unless stub[:access_policy_creation_date].nil?
        data['accessPolicyLastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:access_policy_last_update_date]).to_i unless stub[:access_policy_last_update_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          portal: PortalResource.default(visited),
          project: ProjectResource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['portal'] = PortalResource.stub(stub[:portal]) unless stub[:portal].nil?
        data['project'] = ProjectResource.stub(stub[:project]) unless stub[:project].nil?
        data
      end
    end

    # Structure Stubber for ProjectResource
    class ProjectResource
      def self.default(visited=[])
        return nil if visited.include?('ProjectResource')
        visited = visited + ['ProjectResource']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectResource.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for PortalResource
    class PortalResource
      def self.default(visited=[])
        return nil if visited.include?('PortalResource')
        visited = visited + ['PortalResource']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PortalResource.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for Identity
    class Identity
      def self.default(visited=[])
        return nil if visited.include?('Identity')
        visited = visited + ['Identity']
        {
          user: UserIdentity.default(visited),
          group: GroupIdentity.default(visited),
          iam_user: IAMUserIdentity.default(visited),
          iam_role: IAMRoleIdentity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Identity.new
        data = {}
        data['user'] = UserIdentity.stub(stub[:user]) unless stub[:user].nil?
        data['group'] = GroupIdentity.stub(stub[:group]) unless stub[:group].nil?
        data['iamUser'] = IAMUserIdentity.stub(stub[:iam_user]) unless stub[:iam_user].nil?
        data['iamRole'] = IAMRoleIdentity.stub(stub[:iam_role]) unless stub[:iam_role].nil?
        data
      end
    end

    # Structure Stubber for IAMRoleIdentity
    class IAMRoleIdentity
      def self.default(visited=[])
        return nil if visited.include?('IAMRoleIdentity')
        visited = visited + ['IAMRoleIdentity']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::IAMRoleIdentity.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for IAMUserIdentity
    class IAMUserIdentity
      def self.default(visited=[])
        return nil if visited.include?('IAMUserIdentity')
        visited = visited + ['IAMUserIdentity']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::IAMUserIdentity.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for GroupIdentity
    class GroupIdentity
      def self.default(visited=[])
        return nil if visited.include?('GroupIdentity')
        visited = visited + ['GroupIdentity']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupIdentity.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for UserIdentity
    class UserIdentity
      def self.default(visited=[])
        return nil if visited.include?('UserIdentity')
        visited = visited + ['UserIdentity']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserIdentity.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Operation Stubber for DescribeAsset
    class DescribeAsset
      def self.default(visited=[])
        {
          asset_id: 'asset_id',
          asset_arn: 'asset_arn',
          asset_name: 'asset_name',
          asset_model_id: 'asset_model_id',
          asset_properties: AssetProperties.default(visited),
          asset_hierarchies: AssetHierarchies.default(visited),
          asset_composite_models: AssetCompositeModels.default(visited),
          asset_creation_date: Time.now,
          asset_last_update_date: Time.now,
          asset_status: AssetStatus.default(visited),
          asset_description: 'asset_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['assetArn'] = stub[:asset_arn] unless stub[:asset_arn].nil?
        data['assetName'] = stub[:asset_name] unless stub[:asset_name].nil?
        data['assetModelId'] = stub[:asset_model_id] unless stub[:asset_model_id].nil?
        data['assetProperties'] = AssetProperties.stub(stub[:asset_properties]) unless stub[:asset_properties].nil?
        data['assetHierarchies'] = AssetHierarchies.stub(stub[:asset_hierarchies]) unless stub[:asset_hierarchies].nil?
        data['assetCompositeModels'] = AssetCompositeModels.stub(stub[:asset_composite_models]) unless stub[:asset_composite_models].nil?
        data['assetCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:asset_creation_date]).to_i unless stub[:asset_creation_date].nil?
        data['assetLastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:asset_last_update_date]).to_i unless stub[:asset_last_update_date].nil?
        data['assetStatus'] = AssetStatus.stub(stub[:asset_status]) unless stub[:asset_status].nil?
        data['assetDescription'] = stub[:asset_description] unless stub[:asset_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssetCompositeModels
    class AssetCompositeModels
      def self.default(visited=[])
        return nil if visited.include?('AssetCompositeModels')
        visited = visited + ['AssetCompositeModels']
        [
          AssetCompositeModel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetCompositeModel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetCompositeModel
    class AssetCompositeModel
      def self.default(visited=[])
        return nil if visited.include?('AssetCompositeModel')
        visited = visited + ['AssetCompositeModel']
        {
          name: 'name',
          description: 'description',
          type: 'type',
          properties: AssetProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetCompositeModel.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['properties'] = AssetProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # List Stubber for AssetProperties
    class AssetProperties
      def self.default(visited=[])
        return nil if visited.include?('AssetProperties')
        visited = visited + ['AssetProperties']
        [
          AssetProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetProperty
    class AssetProperty
      def self.default(visited=[])
        return nil if visited.include?('AssetProperty')
        visited = visited + ['AssetProperty']
        {
          id: 'id',
          name: 'name',
          alias: 'alias',
          notification: PropertyNotification.default(visited),
          data_type: 'data_type',
          data_type_spec: 'data_type_spec',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetProperty.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['alias'] = stub[:alias] unless stub[:alias].nil?
        data['notification'] = PropertyNotification.stub(stub[:notification]) unless stub[:notification].nil?
        data['dataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['dataTypeSpec'] = stub[:data_type_spec] unless stub[:data_type_spec].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Structure Stubber for PropertyNotification
    class PropertyNotification
      def self.default(visited=[])
        return nil if visited.include?('PropertyNotification')
        visited = visited + ['PropertyNotification']
        {
          topic: 'topic',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyNotification.new
        data = {}
        data['topic'] = stub[:topic] unless stub[:topic].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # List Stubber for AssetHierarchies
    class AssetHierarchies
      def self.default(visited=[])
        return nil if visited.include?('AssetHierarchies')
        visited = visited + ['AssetHierarchies']
        [
          AssetHierarchy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetHierarchy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetHierarchy
    class AssetHierarchy
      def self.default(visited=[])
        return nil if visited.include?('AssetHierarchy')
        visited = visited + ['AssetHierarchy']
        {
          id: 'id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetHierarchy.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for DescribeAssetModel
    class DescribeAssetModel
      def self.default(visited=[])
        {
          asset_model_id: 'asset_model_id',
          asset_model_arn: 'asset_model_arn',
          asset_model_name: 'asset_model_name',
          asset_model_description: 'asset_model_description',
          asset_model_properties: AssetModelProperties.default(visited),
          asset_model_hierarchies: AssetModelHierarchies.default(visited),
          asset_model_composite_models: AssetModelCompositeModels.default(visited),
          asset_model_creation_date: Time.now,
          asset_model_last_update_date: Time.now,
          asset_model_status: AssetModelStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetModelId'] = stub[:asset_model_id] unless stub[:asset_model_id].nil?
        data['assetModelArn'] = stub[:asset_model_arn] unless stub[:asset_model_arn].nil?
        data['assetModelName'] = stub[:asset_model_name] unless stub[:asset_model_name].nil?
        data['assetModelDescription'] = stub[:asset_model_description] unless stub[:asset_model_description].nil?
        data['assetModelProperties'] = AssetModelProperties.stub(stub[:asset_model_properties]) unless stub[:asset_model_properties].nil?
        data['assetModelHierarchies'] = AssetModelHierarchies.stub(stub[:asset_model_hierarchies]) unless stub[:asset_model_hierarchies].nil?
        data['assetModelCompositeModels'] = AssetModelCompositeModels.stub(stub[:asset_model_composite_models]) unless stub[:asset_model_composite_models].nil?
        data['assetModelCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:asset_model_creation_date]).to_i unless stub[:asset_model_creation_date].nil?
        data['assetModelLastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:asset_model_last_update_date]).to_i unless stub[:asset_model_last_update_date].nil?
        data['assetModelStatus'] = AssetModelStatus.stub(stub[:asset_model_status]) unless stub[:asset_model_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssetModelCompositeModels
    class AssetModelCompositeModels
      def self.default(visited=[])
        return nil if visited.include?('AssetModelCompositeModels')
        visited = visited + ['AssetModelCompositeModels']
        [
          AssetModelCompositeModel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetModelCompositeModel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetModelCompositeModel
    class AssetModelCompositeModel
      def self.default(visited=[])
        return nil if visited.include?('AssetModelCompositeModel')
        visited = visited + ['AssetModelCompositeModel']
        {
          name: 'name',
          description: 'description',
          type: 'type',
          properties: AssetModelProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetModelCompositeModel.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['properties'] = AssetModelProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # List Stubber for AssetModelProperties
    class AssetModelProperties
      def self.default(visited=[])
        return nil if visited.include?('AssetModelProperties')
        visited = visited + ['AssetModelProperties']
        [
          AssetModelProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetModelProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetModelProperty
    class AssetModelProperty
      def self.default(visited=[])
        return nil if visited.include?('AssetModelProperty')
        visited = visited + ['AssetModelProperty']
        {
          id: 'id',
          name: 'name',
          data_type: 'data_type',
          data_type_spec: 'data_type_spec',
          unit: 'unit',
          type: PropertyType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetModelProperty.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['dataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['dataTypeSpec'] = stub[:data_type_spec] unless stub[:data_type_spec].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data['type'] = PropertyType.stub(stub[:type]) unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for PropertyType
    class PropertyType
      def self.default(visited=[])
        return nil if visited.include?('PropertyType')
        visited = visited + ['PropertyType']
        {
          attribute: Attribute.default(visited),
          measurement: Measurement.default(visited),
          transform: Transform.default(visited),
          metric: Metric.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyType.new
        data = {}
        data['attribute'] = Attribute.stub(stub[:attribute]) unless stub[:attribute].nil?
        data['measurement'] = Measurement.stub(stub[:measurement]) unless stub[:measurement].nil?
        data['transform'] = Transform.stub(stub[:transform]) unless stub[:transform].nil?
        data['metric'] = Metric.stub(stub[:metric]) unless stub[:metric].nil?
        data
      end
    end

    # Structure Stubber for Metric
    class Metric
      def self.default(visited=[])
        return nil if visited.include?('Metric')
        visited = visited + ['Metric']
        {
          expression: 'expression',
          variables: ExpressionVariables.default(visited),
          window: MetricWindow.default(visited),
          processing_config: MetricProcessingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Metric.new
        data = {}
        data['expression'] = stub[:expression] unless stub[:expression].nil?
        data['variables'] = ExpressionVariables.stub(stub[:variables]) unless stub[:variables].nil?
        data['window'] = MetricWindow.stub(stub[:window]) unless stub[:window].nil?
        data['processingConfig'] = MetricProcessingConfig.stub(stub[:processing_config]) unless stub[:processing_config].nil?
        data
      end
    end

    # Structure Stubber for MetricProcessingConfig
    class MetricProcessingConfig
      def self.default(visited=[])
        return nil if visited.include?('MetricProcessingConfig')
        visited = visited + ['MetricProcessingConfig']
        {
          compute_location: 'compute_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricProcessingConfig.new
        data = {}
        data['computeLocation'] = stub[:compute_location] unless stub[:compute_location].nil?
        data
      end
    end

    # Structure Stubber for MetricWindow
    class MetricWindow
      def self.default(visited=[])
        return nil if visited.include?('MetricWindow')
        visited = visited + ['MetricWindow']
        {
          tumbling: TumblingWindow.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricWindow.new
        data = {}
        data['tumbling'] = TumblingWindow.stub(stub[:tumbling]) unless stub[:tumbling].nil?
        data
      end
    end

    # Structure Stubber for TumblingWindow
    class TumblingWindow
      def self.default(visited=[])
        return nil if visited.include?('TumblingWindow')
        visited = visited + ['TumblingWindow']
        {
          interval: 'interval',
          offset: 'offset',
        }
      end

      def self.stub(stub)
        stub ||= Types::TumblingWindow.new
        data = {}
        data['interval'] = stub[:interval] unless stub[:interval].nil?
        data['offset'] = stub[:offset] unless stub[:offset].nil?
        data
      end
    end

    # List Stubber for ExpressionVariables
    class ExpressionVariables
      def self.default(visited=[])
        return nil if visited.include?('ExpressionVariables')
        visited = visited + ['ExpressionVariables']
        [
          ExpressionVariable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExpressionVariable.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExpressionVariable
    class ExpressionVariable
      def self.default(visited=[])
        return nil if visited.include?('ExpressionVariable')
        visited = visited + ['ExpressionVariable']
        {
          name: 'name',
          value: VariableValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExpressionVariable.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = VariableValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for VariableValue
    class VariableValue
      def self.default(visited=[])
        return nil if visited.include?('VariableValue')
        visited = visited + ['VariableValue']
        {
          property_id: 'property_id',
          hierarchy_id: 'hierarchy_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::VariableValue.new
        data = {}
        data['propertyId'] = stub[:property_id] unless stub[:property_id].nil?
        data['hierarchyId'] = stub[:hierarchy_id] unless stub[:hierarchy_id].nil?
        data
      end
    end

    # Structure Stubber for Transform
    class Transform
      def self.default(visited=[])
        return nil if visited.include?('Transform')
        visited = visited + ['Transform']
        {
          expression: 'expression',
          variables: ExpressionVariables.default(visited),
          processing_config: TransformProcessingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Transform.new
        data = {}
        data['expression'] = stub[:expression] unless stub[:expression].nil?
        data['variables'] = ExpressionVariables.stub(stub[:variables]) unless stub[:variables].nil?
        data['processingConfig'] = TransformProcessingConfig.stub(stub[:processing_config]) unless stub[:processing_config].nil?
        data
      end
    end

    # Structure Stubber for TransformProcessingConfig
    class TransformProcessingConfig
      def self.default(visited=[])
        return nil if visited.include?('TransformProcessingConfig')
        visited = visited + ['TransformProcessingConfig']
        {
          compute_location: 'compute_location',
          forwarding_config: ForwardingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformProcessingConfig.new
        data = {}
        data['computeLocation'] = stub[:compute_location] unless stub[:compute_location].nil?
        data['forwardingConfig'] = ForwardingConfig.stub(stub[:forwarding_config]) unless stub[:forwarding_config].nil?
        data
      end
    end

    # Structure Stubber for ForwardingConfig
    class ForwardingConfig
      def self.default(visited=[])
        return nil if visited.include?('ForwardingConfig')
        visited = visited + ['ForwardingConfig']
        {
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::ForwardingConfig.new
        data = {}
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for Measurement
    class Measurement
      def self.default(visited=[])
        return nil if visited.include?('Measurement')
        visited = visited + ['Measurement']
        {
          processing_config: MeasurementProcessingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Measurement.new
        data = {}
        data['processingConfig'] = MeasurementProcessingConfig.stub(stub[:processing_config]) unless stub[:processing_config].nil?
        data
      end
    end

    # Structure Stubber for MeasurementProcessingConfig
    class MeasurementProcessingConfig
      def self.default(visited=[])
        return nil if visited.include?('MeasurementProcessingConfig')
        visited = visited + ['MeasurementProcessingConfig']
        {
          forwarding_config: ForwardingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MeasurementProcessingConfig.new
        data = {}
        data['forwardingConfig'] = ForwardingConfig.stub(stub[:forwarding_config]) unless stub[:forwarding_config].nil?
        data
      end
    end

    # Structure Stubber for Attribute
    class Attribute
      def self.default(visited=[])
        return nil if visited.include?('Attribute')
        visited = visited + ['Attribute']
        {
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attribute.new
        data = {}
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # List Stubber for AssetModelHierarchies
    class AssetModelHierarchies
      def self.default(visited=[])
        return nil if visited.include?('AssetModelHierarchies')
        visited = visited + ['AssetModelHierarchies']
        [
          AssetModelHierarchy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetModelHierarchy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetModelHierarchy
    class AssetModelHierarchy
      def self.default(visited=[])
        return nil if visited.include?('AssetModelHierarchy')
        visited = visited + ['AssetModelHierarchy']
        {
          id: 'id',
          name: 'name',
          child_asset_model_id: 'child_asset_model_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetModelHierarchy.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['childAssetModelId'] = stub[:child_asset_model_id] unless stub[:child_asset_model_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeAssetProperty
    class DescribeAssetProperty
      def self.default(visited=[])
        {
          asset_id: 'asset_id',
          asset_name: 'asset_name',
          asset_model_id: 'asset_model_id',
          asset_property: Property.default(visited),
          composite_model: CompositeModelProperty.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['assetName'] = stub[:asset_name] unless stub[:asset_name].nil?
        data['assetModelId'] = stub[:asset_model_id] unless stub[:asset_model_id].nil?
        data['assetProperty'] = Property.stub(stub[:asset_property]) unless stub[:asset_property].nil?
        data['compositeModel'] = CompositeModelProperty.stub(stub[:composite_model]) unless stub[:composite_model].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CompositeModelProperty
    class CompositeModelProperty
      def self.default(visited=[])
        return nil if visited.include?('CompositeModelProperty')
        visited = visited + ['CompositeModelProperty']
        {
          name: 'name',
          type: 'type',
          asset_property: Property.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CompositeModelProperty.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['assetProperty'] = Property.stub(stub[:asset_property]) unless stub[:asset_property].nil?
        data
      end
    end

    # Structure Stubber for Property
    class Property
      def self.default(visited=[])
        return nil if visited.include?('Property')
        visited = visited + ['Property']
        {
          id: 'id',
          name: 'name',
          alias: 'alias',
          notification: PropertyNotification.default(visited),
          data_type: 'data_type',
          unit: 'unit',
          type: PropertyType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Property.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['alias'] = stub[:alias] unless stub[:alias].nil?
        data['notification'] = PropertyNotification.stub(stub[:notification]) unless stub[:notification].nil?
        data['dataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data['type'] = PropertyType.stub(stub[:type]) unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for DescribeDashboard
    class DescribeDashboard
      def self.default(visited=[])
        {
          dashboard_id: 'dashboard_id',
          dashboard_arn: 'dashboard_arn',
          dashboard_name: 'dashboard_name',
          project_id: 'project_id',
          dashboard_description: 'dashboard_description',
          dashboard_definition: 'dashboard_definition',
          dashboard_creation_date: Time.now,
          dashboard_last_update_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['dashboardArn'] = stub[:dashboard_arn] unless stub[:dashboard_arn].nil?
        data['dashboardName'] = stub[:dashboard_name] unless stub[:dashboard_name].nil?
        data['projectId'] = stub[:project_id] unless stub[:project_id].nil?
        data['dashboardDescription'] = stub[:dashboard_description] unless stub[:dashboard_description].nil?
        data['dashboardDefinition'] = stub[:dashboard_definition] unless stub[:dashboard_definition].nil?
        data['dashboardCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:dashboard_creation_date]).to_i unless stub[:dashboard_creation_date].nil?
        data['dashboardLastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:dashboard_last_update_date]).to_i unless stub[:dashboard_last_update_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDefaultEncryptionConfiguration
    class DescribeDefaultEncryptionConfiguration
      def self.default(visited=[])
        {
          encryption_type: 'encryption_type',
          kms_key_arn: 'kms_key_arn',
          configuration_status: ConfigurationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['encryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['configurationStatus'] = ConfigurationStatus.stub(stub[:configuration_status]) unless stub[:configuration_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConfigurationStatus
    class ConfigurationStatus
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationStatus')
        visited = visited + ['ConfigurationStatus']
        {
          state: 'state',
          error: ConfigurationErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationStatus.new
        data = {}
        data['state'] = stub[:state] unless stub[:state].nil?
        data['error'] = ConfigurationErrorDetails.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for ConfigurationErrorDetails
    class ConfigurationErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationErrorDetails')
        visited = visited + ['ConfigurationErrorDetails']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationErrorDetails.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeGateway
    class DescribeGateway
      def self.default(visited=[])
        {
          gateway_id: 'gateway_id',
          gateway_name: 'gateway_name',
          gateway_arn: 'gateway_arn',
          gateway_platform: GatewayPlatform.default(visited),
          gateway_capability_summaries: GatewayCapabilitySummaries.default(visited),
          creation_date: Time.now,
          last_update_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['gatewayId'] = stub[:gateway_id] unless stub[:gateway_id].nil?
        data['gatewayName'] = stub[:gateway_name] unless stub[:gateway_name].nil?
        data['gatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['gatewayPlatform'] = GatewayPlatform.stub(stub[:gateway_platform]) unless stub[:gateway_platform].nil?
        data['gatewayCapabilitySummaries'] = GatewayCapabilitySummaries.stub(stub[:gateway_capability_summaries]) unless stub[:gateway_capability_summaries].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GatewayCapabilitySummaries
    class GatewayCapabilitySummaries
      def self.default(visited=[])
        return nil if visited.include?('GatewayCapabilitySummaries')
        visited = visited + ['GatewayCapabilitySummaries']
        [
          GatewayCapabilitySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GatewayCapabilitySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GatewayCapabilitySummary
    class GatewayCapabilitySummary
      def self.default(visited=[])
        return nil if visited.include?('GatewayCapabilitySummary')
        visited = visited + ['GatewayCapabilitySummary']
        {
          capability_namespace: 'capability_namespace',
          capability_sync_status: 'capability_sync_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayCapabilitySummary.new
        data = {}
        data['capabilityNamespace'] = stub[:capability_namespace] unless stub[:capability_namespace].nil?
        data['capabilitySyncStatus'] = stub[:capability_sync_status] unless stub[:capability_sync_status].nil?
        data
      end
    end

    # Structure Stubber for GatewayPlatform
    class GatewayPlatform
      def self.default(visited=[])
        return nil if visited.include?('GatewayPlatform')
        visited = visited + ['GatewayPlatform']
        {
          greengrass: Greengrass.default(visited),
          greengrass_v2: GreengrassV2.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayPlatform.new
        data = {}
        data['greengrass'] = Greengrass.stub(stub[:greengrass]) unless stub[:greengrass].nil?
        data['greengrassV2'] = GreengrassV2.stub(stub[:greengrass_v2]) unless stub[:greengrass_v2].nil?
        data
      end
    end

    # Structure Stubber for GreengrassV2
    class GreengrassV2
      def self.default(visited=[])
        return nil if visited.include?('GreengrassV2')
        visited = visited + ['GreengrassV2']
        {
          core_device_thing_name: 'core_device_thing_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GreengrassV2.new
        data = {}
        data['coreDeviceThingName'] = stub[:core_device_thing_name] unless stub[:core_device_thing_name].nil?
        data
      end
    end

    # Structure Stubber for Greengrass
    class Greengrass
      def self.default(visited=[])
        return nil if visited.include?('Greengrass')
        visited = visited + ['Greengrass']
        {
          group_arn: 'group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Greengrass.new
        data = {}
        data['groupArn'] = stub[:group_arn] unless stub[:group_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeGatewayCapabilityConfiguration
    class DescribeGatewayCapabilityConfiguration
      def self.default(visited=[])
        {
          gateway_id: 'gateway_id',
          capability_namespace: 'capability_namespace',
          capability_configuration: 'capability_configuration',
          capability_sync_status: 'capability_sync_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['gatewayId'] = stub[:gateway_id] unless stub[:gateway_id].nil?
        data['capabilityNamespace'] = stub[:capability_namespace] unless stub[:capability_namespace].nil?
        data['capabilityConfiguration'] = stub[:capability_configuration] unless stub[:capability_configuration].nil?
        data['capabilitySyncStatus'] = stub[:capability_sync_status] unless stub[:capability_sync_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeLoggingOptions
    class DescribeLoggingOptions
      def self.default(visited=[])
        {
          logging_options: LoggingOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['loggingOptions'] = LoggingOptions.stub(stub[:logging_options]) unless stub[:logging_options].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoggingOptions
    class LoggingOptions
      def self.default(visited=[])
        return nil if visited.include?('LoggingOptions')
        visited = visited + ['LoggingOptions']
        {
          level: 'level',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingOptions.new
        data = {}
        data['level'] = stub[:level] unless stub[:level].nil?
        data
      end
    end

    # Operation Stubber for DescribePortal
    class DescribePortal
      def self.default(visited=[])
        {
          portal_id: 'portal_id',
          portal_arn: 'portal_arn',
          portal_name: 'portal_name',
          portal_description: 'portal_description',
          portal_client_id: 'portal_client_id',
          portal_start_url: 'portal_start_url',
          portal_contact_email: 'portal_contact_email',
          portal_status: PortalStatus.default(visited),
          portal_creation_date: Time.now,
          portal_last_update_date: Time.now,
          portal_logo_image_location: ImageLocation.default(visited),
          role_arn: 'role_arn',
          portal_auth_mode: 'portal_auth_mode',
          notification_sender_email: 'notification_sender_email',
          alarms: Alarms.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalId'] = stub[:portal_id] unless stub[:portal_id].nil?
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['portalName'] = stub[:portal_name] unless stub[:portal_name].nil?
        data['portalDescription'] = stub[:portal_description] unless stub[:portal_description].nil?
        data['portalClientId'] = stub[:portal_client_id] unless stub[:portal_client_id].nil?
        data['portalStartUrl'] = stub[:portal_start_url] unless stub[:portal_start_url].nil?
        data['portalContactEmail'] = stub[:portal_contact_email] unless stub[:portal_contact_email].nil?
        data['portalStatus'] = PortalStatus.stub(stub[:portal_status]) unless stub[:portal_status].nil?
        data['portalCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:portal_creation_date]).to_i unless stub[:portal_creation_date].nil?
        data['portalLastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:portal_last_update_date]).to_i unless stub[:portal_last_update_date].nil?
        data['portalLogoImageLocation'] = ImageLocation.stub(stub[:portal_logo_image_location]) unless stub[:portal_logo_image_location].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['portalAuthMode'] = stub[:portal_auth_mode] unless stub[:portal_auth_mode].nil?
        data['notificationSenderEmail'] = stub[:notification_sender_email] unless stub[:notification_sender_email].nil?
        data['alarms'] = Alarms.stub(stub[:alarms]) unless stub[:alarms].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Alarms
    class Alarms
      def self.default(visited=[])
        return nil if visited.include?('Alarms')
        visited = visited + ['Alarms']
        {
          alarm_role_arn: 'alarm_role_arn',
          notification_lambda_arn: 'notification_lambda_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Alarms.new
        data = {}
        data['alarmRoleArn'] = stub[:alarm_role_arn] unless stub[:alarm_role_arn].nil?
        data['notificationLambdaArn'] = stub[:notification_lambda_arn] unless stub[:notification_lambda_arn].nil?
        data
      end
    end

    # Structure Stubber for ImageLocation
    class ImageLocation
      def self.default(visited=[])
        return nil if visited.include?('ImageLocation')
        visited = visited + ['ImageLocation']
        {
          id: 'id',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageLocation.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for DescribeProject
    class DescribeProject
      def self.default(visited=[])
        {
          project_id: 'project_id',
          project_arn: 'project_arn',
          project_name: 'project_name',
          portal_id: 'portal_id',
          project_description: 'project_description',
          project_creation_date: Time.now,
          project_last_update_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['projectId'] = stub[:project_id] unless stub[:project_id].nil?
        data['projectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data['projectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['portalId'] = stub[:portal_id] unless stub[:portal_id].nil?
        data['projectDescription'] = stub[:project_description] unless stub[:project_description].nil?
        data['projectCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:project_creation_date]).to_i unless stub[:project_creation_date].nil?
        data['projectLastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:project_last_update_date]).to_i unless stub[:project_last_update_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeStorageConfiguration
    class DescribeStorageConfiguration
      def self.default(visited=[])
        {
          storage_type: 'storage_type',
          multi_layer_storage: MultiLayerStorage.default(visited),
          disassociated_data_storage: 'disassociated_data_storage',
          retention_period: RetentionPeriod.default(visited),
          configuration_status: ConfigurationStatus.default(visited),
          last_update_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['storageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['multiLayerStorage'] = MultiLayerStorage.stub(stub[:multi_layer_storage]) unless stub[:multi_layer_storage].nil?
        data['disassociatedDataStorage'] = stub[:disassociated_data_storage] unless stub[:disassociated_data_storage].nil?
        data['retentionPeriod'] = RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        data['configurationStatus'] = ConfigurationStatus.stub(stub[:configuration_status]) unless stub[:configuration_status].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RetentionPeriod
    class RetentionPeriod
      def self.default(visited=[])
        return nil if visited.include?('RetentionPeriod')
        visited = visited + ['RetentionPeriod']
        {
          number_of_days: 1,
          unlimited: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RetentionPeriod.new
        data = {}
        data['numberOfDays'] = stub[:number_of_days] unless stub[:number_of_days].nil?
        data['unlimited'] = stub[:unlimited] unless stub[:unlimited].nil?
        data
      end
    end

    # Structure Stubber for MultiLayerStorage
    class MultiLayerStorage
      def self.default(visited=[])
        return nil if visited.include?('MultiLayerStorage')
        visited = visited + ['MultiLayerStorage']
        {
          customer_managed_s3_storage: CustomerManagedS3Storage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiLayerStorage.new
        data = {}
        data['customerManagedS3Storage'] = CustomerManagedS3Storage.stub(stub[:customer_managed_s3_storage]) unless stub[:customer_managed_s3_storage].nil?
        data
      end
    end

    # Structure Stubber for CustomerManagedS3Storage
    class CustomerManagedS3Storage
      def self.default(visited=[])
        return nil if visited.include?('CustomerManagedS3Storage')
        visited = visited + ['CustomerManagedS3Storage']
        {
          s3_resource_arn: 's3_resource_arn',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerManagedS3Storage.new
        data = {}
        data['s3ResourceArn'] = stub[:s3_resource_arn] unless stub[:s3_resource_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeTimeSeries
    class DescribeTimeSeries
      def self.default(visited=[])
        {
          asset_id: 'asset_id',
          property_id: 'property_id',
          alias: 'alias',
          time_series_id: 'time_series_id',
          data_type: 'data_type',
          data_type_spec: 'data_type_spec',
          time_series_creation_date: Time.now,
          time_series_last_update_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['propertyId'] = stub[:property_id] unless stub[:property_id].nil?
        data['alias'] = stub[:alias] unless stub[:alias].nil?
        data['timeSeriesId'] = stub[:time_series_id] unless stub[:time_series_id].nil?
        data['dataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['dataTypeSpec'] = stub[:data_type_spec] unless stub[:data_type_spec].nil?
        data['timeSeriesCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time_series_creation_date]).to_i unless stub[:time_series_creation_date].nil?
        data['timeSeriesLastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time_series_last_update_date]).to_i unless stub[:time_series_last_update_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateAssets
    class DisassociateAssets
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateTimeSeriesFromAssetProperty
    class DisassociateTimeSeriesFromAssetProperty
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAssetPropertyAggregates
    class GetAssetPropertyAggregates
      def self.default(visited=[])
        {
          aggregated_values: AggregatedValues.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['aggregatedValues'] = AggregatedValues.stub(stub[:aggregated_values]) unless stub[:aggregated_values].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAssetPropertyValue
    class GetAssetPropertyValue
      def self.default(visited=[])
        {
          property_value: AssetPropertyValue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['propertyValue'] = AssetPropertyValue.stub(stub[:property_value]) unless stub[:property_value].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAssetPropertyValueHistory
    class GetAssetPropertyValueHistory
      def self.default(visited=[])
        {
          asset_property_value_history: AssetPropertyValueHistory.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetPropertyValueHistory'] = AssetPropertyValueHistory.stub(stub[:asset_property_value_history]) unless stub[:asset_property_value_history].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetInterpolatedAssetPropertyValues
    class GetInterpolatedAssetPropertyValues
      def self.default(visited=[])
        {
          interpolated_asset_property_values: InterpolatedAssetPropertyValues.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['interpolatedAssetPropertyValues'] = InterpolatedAssetPropertyValues.stub(stub[:interpolated_asset_property_values]) unless stub[:interpolated_asset_property_values].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InterpolatedAssetPropertyValues
    class InterpolatedAssetPropertyValues
      def self.default(visited=[])
        return nil if visited.include?('InterpolatedAssetPropertyValues')
        visited = visited + ['InterpolatedAssetPropertyValues']
        [
          InterpolatedAssetPropertyValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InterpolatedAssetPropertyValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InterpolatedAssetPropertyValue
    class InterpolatedAssetPropertyValue
      def self.default(visited=[])
        return nil if visited.include?('InterpolatedAssetPropertyValue')
        visited = visited + ['InterpolatedAssetPropertyValue']
        {
          timestamp: TimeInNanos.default(visited),
          value: Variant.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InterpolatedAssetPropertyValue.new
        data = {}
        data['timestamp'] = TimeInNanos.stub(stub[:timestamp]) unless stub[:timestamp].nil?
        data['value'] = Variant.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListAccessPolicies
    class ListAccessPolicies
      def self.default(visited=[])
        {
          access_policy_summaries: AccessPolicySummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessPolicySummaries'] = AccessPolicySummaries.stub(stub[:access_policy_summaries]) unless stub[:access_policy_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AccessPolicySummaries
    class AccessPolicySummaries
      def self.default(visited=[])
        return nil if visited.include?('AccessPolicySummaries')
        visited = visited + ['AccessPolicySummaries']
        [
          AccessPolicySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccessPolicySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccessPolicySummary
    class AccessPolicySummary
      def self.default(visited=[])
        return nil if visited.include?('AccessPolicySummary')
        visited = visited + ['AccessPolicySummary']
        {
          id: 'id',
          identity: Identity.default(visited),
          resource: Resource.default(visited),
          permission: 'permission',
          creation_date: Time.now,
          last_update_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessPolicySummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['identity'] = Identity.stub(stub[:identity]) unless stub[:identity].nil?
        data['resource'] = Resource.stub(stub[:resource]) unless stub[:resource].nil?
        data['permission'] = stub[:permission] unless stub[:permission].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
        data
      end
    end

    # Operation Stubber for ListAssetModels
    class ListAssetModels
      def self.default(visited=[])
        {
          asset_model_summaries: AssetModelSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetModelSummaries'] = AssetModelSummaries.stub(stub[:asset_model_summaries]) unless stub[:asset_model_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssetModelSummaries
    class AssetModelSummaries
      def self.default(visited=[])
        return nil if visited.include?('AssetModelSummaries')
        visited = visited + ['AssetModelSummaries']
        [
          AssetModelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetModelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetModelSummary
    class AssetModelSummary
      def self.default(visited=[])
        return nil if visited.include?('AssetModelSummary')
        visited = visited + ['AssetModelSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          creation_date: Time.now,
          last_update_date: Time.now,
          status: AssetModelStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetModelSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
        data['status'] = AssetModelStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListAssetRelationships
    class ListAssetRelationships
      def self.default(visited=[])
        {
          asset_relationship_summaries: AssetRelationshipSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetRelationshipSummaries'] = AssetRelationshipSummaries.stub(stub[:asset_relationship_summaries]) unless stub[:asset_relationship_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssetRelationshipSummaries
    class AssetRelationshipSummaries
      def self.default(visited=[])
        return nil if visited.include?('AssetRelationshipSummaries')
        visited = visited + ['AssetRelationshipSummaries']
        [
          AssetRelationshipSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetRelationshipSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetRelationshipSummary
    class AssetRelationshipSummary
      def self.default(visited=[])
        return nil if visited.include?('AssetRelationshipSummary')
        visited = visited + ['AssetRelationshipSummary']
        {
          hierarchy_info: AssetHierarchyInfo.default(visited),
          relationship_type: 'relationship_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetRelationshipSummary.new
        data = {}
        data['hierarchyInfo'] = AssetHierarchyInfo.stub(stub[:hierarchy_info]) unless stub[:hierarchy_info].nil?
        data['relationshipType'] = stub[:relationship_type] unless stub[:relationship_type].nil?
        data
      end
    end

    # Structure Stubber for AssetHierarchyInfo
    class AssetHierarchyInfo
      def self.default(visited=[])
        return nil if visited.include?('AssetHierarchyInfo')
        visited = visited + ['AssetHierarchyInfo']
        {
          parent_asset_id: 'parent_asset_id',
          child_asset_id: 'child_asset_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetHierarchyInfo.new
        data = {}
        data['parentAssetId'] = stub[:parent_asset_id] unless stub[:parent_asset_id].nil?
        data['childAssetId'] = stub[:child_asset_id] unless stub[:child_asset_id].nil?
        data
      end
    end

    # Operation Stubber for ListAssets
    class ListAssets
      def self.default(visited=[])
        {
          asset_summaries: AssetSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetSummaries'] = AssetSummaries.stub(stub[:asset_summaries]) unless stub[:asset_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssetSummaries
    class AssetSummaries
      def self.default(visited=[])
        return nil if visited.include?('AssetSummaries')
        visited = visited + ['AssetSummaries']
        [
          AssetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetSummary
    class AssetSummary
      def self.default(visited=[])
        return nil if visited.include?('AssetSummary')
        visited = visited + ['AssetSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          asset_model_id: 'asset_model_id',
          creation_date: Time.now,
          last_update_date: Time.now,
          status: AssetStatus.default(visited),
          hierarchies: AssetHierarchies.default(visited),
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['assetModelId'] = stub[:asset_model_id] unless stub[:asset_model_id].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
        data['status'] = AssetStatus.stub(stub[:status]) unless stub[:status].nil?
        data['hierarchies'] = AssetHierarchies.stub(stub[:hierarchies]) unless stub[:hierarchies].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListAssociatedAssets
    class ListAssociatedAssets
      def self.default(visited=[])
        {
          asset_summaries: AssociatedAssetsSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetSummaries'] = AssociatedAssetsSummaries.stub(stub[:asset_summaries]) unless stub[:asset_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssociatedAssetsSummaries
    class AssociatedAssetsSummaries
      def self.default(visited=[])
        return nil if visited.include?('AssociatedAssetsSummaries')
        visited = visited + ['AssociatedAssetsSummaries']
        [
          AssociatedAssetsSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssociatedAssetsSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociatedAssetsSummary
    class AssociatedAssetsSummary
      def self.default(visited=[])
        return nil if visited.include?('AssociatedAssetsSummary')
        visited = visited + ['AssociatedAssetsSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          asset_model_id: 'asset_model_id',
          creation_date: Time.now,
          last_update_date: Time.now,
          status: AssetStatus.default(visited),
          hierarchies: AssetHierarchies.default(visited),
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociatedAssetsSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['assetModelId'] = stub[:asset_model_id] unless stub[:asset_model_id].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
        data['status'] = AssetStatus.stub(stub[:status]) unless stub[:status].nil?
        data['hierarchies'] = AssetHierarchies.stub(stub[:hierarchies]) unless stub[:hierarchies].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListDashboards
    class ListDashboards
      def self.default(visited=[])
        {
          dashboard_summaries: DashboardSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dashboardSummaries'] = DashboardSummaries.stub(stub[:dashboard_summaries]) unless stub[:dashboard_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DashboardSummaries
    class DashboardSummaries
      def self.default(visited=[])
        return nil if visited.include?('DashboardSummaries')
        visited = visited + ['DashboardSummaries']
        [
          DashboardSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DashboardSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DashboardSummary
    class DashboardSummary
      def self.default(visited=[])
        return nil if visited.include?('DashboardSummary')
        visited = visited + ['DashboardSummary']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          creation_date: Time.now,
          last_update_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DashboardSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
        data
      end
    end

    # Operation Stubber for ListGateways
    class ListGateways
      def self.default(visited=[])
        {
          gateway_summaries: GatewaySummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['gatewaySummaries'] = GatewaySummaries.stub(stub[:gateway_summaries]) unless stub[:gateway_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GatewaySummaries
    class GatewaySummaries
      def self.default(visited=[])
        return nil if visited.include?('GatewaySummaries')
        visited = visited + ['GatewaySummaries']
        [
          GatewaySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GatewaySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GatewaySummary
    class GatewaySummary
      def self.default(visited=[])
        return nil if visited.include?('GatewaySummary')
        visited = visited + ['GatewaySummary']
        {
          gateway_id: 'gateway_id',
          gateway_name: 'gateway_name',
          gateway_platform: GatewayPlatform.default(visited),
          gateway_capability_summaries: GatewayCapabilitySummaries.default(visited),
          creation_date: Time.now,
          last_update_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewaySummary.new
        data = {}
        data['gatewayId'] = stub[:gateway_id] unless stub[:gateway_id].nil?
        data['gatewayName'] = stub[:gateway_name] unless stub[:gateway_name].nil?
        data['gatewayPlatform'] = GatewayPlatform.stub(stub[:gateway_platform]) unless stub[:gateway_platform].nil?
        data['gatewayCapabilitySummaries'] = GatewayCapabilitySummaries.stub(stub[:gateway_capability_summaries]) unless stub[:gateway_capability_summaries].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
        data
      end
    end

    # Operation Stubber for ListPortals
    class ListPortals
      def self.default(visited=[])
        {
          portal_summaries: PortalSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalSummaries'] = PortalSummaries.stub(stub[:portal_summaries]) unless stub[:portal_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PortalSummaries
    class PortalSummaries
      def self.default(visited=[])
        return nil if visited.include?('PortalSummaries')
        visited = visited + ['PortalSummaries']
        [
          PortalSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PortalSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortalSummary
    class PortalSummary
      def self.default(visited=[])
        return nil if visited.include?('PortalSummary')
        visited = visited + ['PortalSummary']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          start_url: 'start_url',
          creation_date: Time.now,
          last_update_date: Time.now,
          role_arn: 'role_arn',
          status: PortalStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PortalSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['startUrl'] = stub[:start_url] unless stub[:start_url].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['status'] = PortalStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListProjectAssets
    class ListProjectAssets
      def self.default(visited=[])
        {
          asset_ids: AssetIDs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetIds'] = AssetIDs.stub(stub[:asset_ids]) unless stub[:asset_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssetIDs
    class AssetIDs
      def self.default(visited=[])
        return nil if visited.include?('AssetIDs')
        visited = visited + ['AssetIDs']
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

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          project_summaries: ProjectSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['projectSummaries'] = ProjectSummaries.stub(stub[:project_summaries]) unless stub[:project_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProjectSummaries
    class ProjectSummaries
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummaries')
        visited = visited + ['ProjectSummaries']
        [
          ProjectSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectSummary
    class ProjectSummary
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummary')
        visited = visited + ['ProjectSummary']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          creation_date: Time.now,
          last_update_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date]).to_i unless stub[:last_update_date].nil?
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
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Operation Stubber for ListTimeSeries
    class ListTimeSeries
      def self.default(visited=[])
        {
          time_series_summaries: TimeSeriesSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TimeSeriesSummaries'] = TimeSeriesSummaries.stub(stub[:time_series_summaries]) unless stub[:time_series_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TimeSeriesSummaries
    class TimeSeriesSummaries
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesSummaries')
        visited = visited + ['TimeSeriesSummaries']
        [
          TimeSeriesSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TimeSeriesSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TimeSeriesSummary
    class TimeSeriesSummary
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesSummary')
        visited = visited + ['TimeSeriesSummary']
        {
          asset_id: 'asset_id',
          property_id: 'property_id',
          alias: 'alias',
          time_series_id: 'time_series_id',
          data_type: 'data_type',
          data_type_spec: 'data_type_spec',
          time_series_creation_date: Time.now,
          time_series_last_update_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeSeriesSummary.new
        data = {}
        data['assetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['propertyId'] = stub[:property_id] unless stub[:property_id].nil?
        data['alias'] = stub[:alias] unless stub[:alias].nil?
        data['timeSeriesId'] = stub[:time_series_id] unless stub[:time_series_id].nil?
        data['dataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['dataTypeSpec'] = stub[:data_type_spec] unless stub[:data_type_spec].nil?
        data['timeSeriesCreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time_series_creation_date]).to_i unless stub[:time_series_creation_date].nil?
        data['timeSeriesLastUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time_series_last_update_date]).to_i unless stub[:time_series_last_update_date].nil?
        data
      end
    end

    # Operation Stubber for PutDefaultEncryptionConfiguration
    class PutDefaultEncryptionConfiguration
      def self.default(visited=[])
        {
          encryption_type: 'encryption_type',
          kms_key_arn: 'kms_key_arn',
          configuration_status: ConfigurationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['encryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['configurationStatus'] = ConfigurationStatus.stub(stub[:configuration_status]) unless stub[:configuration_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutLoggingOptions
    class PutLoggingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutStorageConfiguration
    class PutStorageConfiguration
      def self.default(visited=[])
        {
          storage_type: 'storage_type',
          multi_layer_storage: MultiLayerStorage.default(visited),
          disassociated_data_storage: 'disassociated_data_storage',
          retention_period: RetentionPeriod.default(visited),
          configuration_status: ConfigurationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['storageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['multiLayerStorage'] = MultiLayerStorage.stub(stub[:multi_layer_storage]) unless stub[:multi_layer_storage].nil?
        data['disassociatedDataStorage'] = stub[:disassociated_data_storage] unless stub[:disassociated_data_storage].nil?
        data['retentionPeriod'] = RetentionPeriod.stub(stub[:retention_period]) unless stub[:retention_period].nil?
        data['configurationStatus'] = ConfigurationStatus.stub(stub[:configuration_status]) unless stub[:configuration_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateAccessPolicy
    class UpdateAccessPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAsset
    class UpdateAsset
      def self.default(visited=[])
        {
          asset_status: AssetStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetStatus'] = AssetStatus.stub(stub[:asset_status]) unless stub[:asset_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAssetModel
    class UpdateAssetModel
      def self.default(visited=[])
        {
          asset_model_status: AssetModelStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['assetModelStatus'] = AssetModelStatus.stub(stub[:asset_model_status]) unless stub[:asset_model_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAssetProperty
    class UpdateAssetProperty
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDashboard
    class UpdateDashboard
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGateway
    class UpdateGateway
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGatewayCapabilityConfiguration
    class UpdateGatewayCapabilityConfiguration
      def self.default(visited=[])
        {
          capability_namespace: 'capability_namespace',
          capability_sync_status: 'capability_sync_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['capabilityNamespace'] = stub[:capability_namespace] unless stub[:capability_namespace].nil?
        data['capabilitySyncStatus'] = stub[:capability_sync_status] unless stub[:capability_sync_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePortal
    class UpdatePortal
      def self.default(visited=[])
        {
          portal_status: PortalStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalStatus'] = PortalStatus.stub(stub[:portal_status]) unless stub[:portal_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateProject
    class UpdateProject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
