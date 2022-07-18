# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerFeatureStoreRuntime
  module Parsers

    # Operation Parser for BatchGetRecord
    class BatchGetRecord
      def self.parse(http_resp)
        data = Types::BatchGetRecordOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.records = (Parsers::BatchGetRecordResultDetails.parse(map['Records']) unless map['Records'].nil?)
        data.errors = (Parsers::BatchGetRecordErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data.unprocessed_identifiers = (Parsers::UnprocessedIdentifiers.parse(map['UnprocessedIdentifiers']) unless map['UnprocessedIdentifiers'].nil?)
        data
      end
    end

    class UnprocessedIdentifiers
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchGetRecordIdentifier.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetRecordIdentifier
      def self.parse(map)
        data = Types::BatchGetRecordIdentifier.new
        data.feature_group_name = map['FeatureGroupName']
        data.record_identifiers_value_as_string = (Parsers::RecordIdentifiers.parse(map['RecordIdentifiersValueAsString']) unless map['RecordIdentifiersValueAsString'].nil?)
        data.feature_names = (Parsers::FeatureNames.parse(map['FeatureNames']) unless map['FeatureNames'].nil?)
        return data
      end
    end

    class FeatureNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RecordIdentifiers
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class BatchGetRecordErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchGetRecordError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetRecordError
      def self.parse(map)
        data = Types::BatchGetRecordError.new
        data.feature_group_name = map['FeatureGroupName']
        data.record_identifier_value_as_string = map['RecordIdentifierValueAsString']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class BatchGetRecordResultDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchGetRecordResultDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetRecordResultDetail
      def self.parse(map)
        data = Types::BatchGetRecordResultDetail.new
        data.feature_group_name = map['FeatureGroupName']
        data.record_identifier_value_as_string = map['RecordIdentifierValueAsString']
        data.record = (Parsers::Record.parse(map['Record']) unless map['Record'].nil?)
        return data
      end
    end

    class Record
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FeatureValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class FeatureValue
      def self.parse(map)
        data = Types::FeatureValue.new
        data.feature_name = map['FeatureName']
        data.value_as_string = map['ValueAsString']
        return data
      end
    end

    # Error Parser for AccessForbidden
    class AccessForbidden
      def self.parse(http_resp)
        data = Types::AccessForbidden.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailable
    class ServiceUnavailable
      def self.parse(http_resp)
        data = Types::ServiceUnavailable.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationError
    class ValidationError
      def self.parse(http_resp)
        data = Types::ValidationError.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalFailure
    class InternalFailure
      def self.parse(http_resp)
        data = Types::InternalFailure.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteRecord
    class DeleteRecord
      def self.parse(http_resp)
        data = Types::DeleteRecordOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetRecord
    class GetRecord
      def self.parse(http_resp)
        data = Types::GetRecordOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.record = (Parsers::Record.parse(map['Record']) unless map['Record'].nil?)
        data
      end
    end

    # Error Parser for ResourceNotFound
    class ResourceNotFound
      def self.parse(http_resp)
        data = Types::ResourceNotFound.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutRecord
    class PutRecord
      def self.parse(http_resp)
        data = Types::PutRecordOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
