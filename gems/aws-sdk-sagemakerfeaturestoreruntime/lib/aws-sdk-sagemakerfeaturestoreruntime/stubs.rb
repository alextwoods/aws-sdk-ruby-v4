# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SageMakerFeatureStoreRuntime
  module Stubs

    # Operation Stubber for BatchGetRecord
    class BatchGetRecord
      def self.default(visited=[])
        {
          records: BatchGetRecordResultDetails.default(visited),
          errors: BatchGetRecordErrors.default(visited),
          unprocessed_identifiers: UnprocessedIdentifiers.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Records'] = BatchGetRecordResultDetails.stub(stub[:records]) unless stub[:records].nil?
        data['Errors'] = BatchGetRecordErrors.stub(stub[:errors]) unless stub[:errors].nil?
        data['UnprocessedIdentifiers'] = UnprocessedIdentifiers.stub(stub[:unprocessed_identifiers]) unless stub[:unprocessed_identifiers].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UnprocessedIdentifiers
    class UnprocessedIdentifiers
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedIdentifiers')
        visited = visited + ['UnprocessedIdentifiers']
        [
          BatchGetRecordIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetRecordIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetRecordIdentifier
    class BatchGetRecordIdentifier
      def self.default(visited=[])
        return nil if visited.include?('BatchGetRecordIdentifier')
        visited = visited + ['BatchGetRecordIdentifier']
        {
          feature_group_name: 'feature_group_name',
          record_identifiers_value_as_string: RecordIdentifiers.default(visited),
          feature_names: FeatureNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetRecordIdentifier.new
        data = {}
        data['FeatureGroupName'] = stub[:feature_group_name] unless stub[:feature_group_name].nil?
        data['RecordIdentifiersValueAsString'] = RecordIdentifiers.stub(stub[:record_identifiers_value_as_string]) unless stub[:record_identifiers_value_as_string].nil?
        data['FeatureNames'] = FeatureNames.stub(stub[:feature_names]) unless stub[:feature_names].nil?
        data
      end
    end

    # List Stubber for FeatureNames
    class FeatureNames
      def self.default(visited=[])
        return nil if visited.include?('FeatureNames')
        visited = visited + ['FeatureNames']
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

    # List Stubber for RecordIdentifiers
    class RecordIdentifiers
      def self.default(visited=[])
        return nil if visited.include?('RecordIdentifiers')
        visited = visited + ['RecordIdentifiers']
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

    # List Stubber for BatchGetRecordErrors
    class BatchGetRecordErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchGetRecordErrors')
        visited = visited + ['BatchGetRecordErrors']
        [
          BatchGetRecordError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetRecordError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetRecordError
    class BatchGetRecordError
      def self.default(visited=[])
        return nil if visited.include?('BatchGetRecordError')
        visited = visited + ['BatchGetRecordError']
        {
          feature_group_name: 'feature_group_name',
          record_identifier_value_as_string: 'record_identifier_value_as_string',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetRecordError.new
        data = {}
        data['FeatureGroupName'] = stub[:feature_group_name] unless stub[:feature_group_name].nil?
        data['RecordIdentifierValueAsString'] = stub[:record_identifier_value_as_string] unless stub[:record_identifier_value_as_string].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for BatchGetRecordResultDetails
    class BatchGetRecordResultDetails
      def self.default(visited=[])
        return nil if visited.include?('BatchGetRecordResultDetails')
        visited = visited + ['BatchGetRecordResultDetails']
        [
          BatchGetRecordResultDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetRecordResultDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetRecordResultDetail
    class BatchGetRecordResultDetail
      def self.default(visited=[])
        return nil if visited.include?('BatchGetRecordResultDetail')
        visited = visited + ['BatchGetRecordResultDetail']
        {
          feature_group_name: 'feature_group_name',
          record_identifier_value_as_string: 'record_identifier_value_as_string',
          record: Record.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetRecordResultDetail.new
        data = {}
        data['FeatureGroupName'] = stub[:feature_group_name] unless stub[:feature_group_name].nil?
        data['RecordIdentifierValueAsString'] = stub[:record_identifier_value_as_string] unless stub[:record_identifier_value_as_string].nil?
        data['Record'] = Record.stub(stub[:record]) unless stub[:record].nil?
        data
      end
    end

    # List Stubber for Record
    class Record
      def self.default(visited=[])
        return nil if visited.include?('Record')
        visited = visited + ['Record']
        [
          FeatureValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FeatureValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FeatureValue
    class FeatureValue
      def self.default(visited=[])
        return nil if visited.include?('FeatureValue')
        visited = visited + ['FeatureValue']
        {
          feature_name: 'feature_name',
          value_as_string: 'value_as_string',
        }
      end

      def self.stub(stub)
        stub ||= Types::FeatureValue.new
        data = {}
        data['FeatureName'] = stub[:feature_name] unless stub[:feature_name].nil?
        data['ValueAsString'] = stub[:value_as_string] unless stub[:value_as_string].nil?
        data
      end
    end

    # Operation Stubber for DeleteRecord
    class DeleteRecord
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRecord
    class GetRecord
      def self.default(visited=[])
        {
          record: Record.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Record'] = Record.stub(stub[:record]) unless stub[:record].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutRecord
    class PutRecord
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
