# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerFeatureStoreRuntime
  module Validators

    class AccessForbidden
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessForbidden, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchGetRecordError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetRecordError, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Hearth::Validator.validate!(input[:record_identifier_value_as_string], ::String, context: "#{context}[:record_identifier_value_as_string]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchGetRecordErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetRecordError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetRecordIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetRecordIdentifier, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        RecordIdentifiers.validate!(input[:record_identifiers_value_as_string], context: "#{context}[:record_identifiers_value_as_string]") unless input[:record_identifiers_value_as_string].nil?
        FeatureNames.validate!(input[:feature_names], context: "#{context}[:feature_names]") unless input[:feature_names].nil?
      end
    end

    class BatchGetRecordIdentifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetRecordIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetRecordInput, context: context)
        BatchGetRecordIdentifiers.validate!(input[:identifiers], context: "#{context}[:identifiers]") unless input[:identifiers].nil?
      end
    end

    class BatchGetRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetRecordOutput, context: context)
        BatchGetRecordResultDetails.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        BatchGetRecordErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        UnprocessedIdentifiers.validate!(input[:unprocessed_identifiers], context: "#{context}[:unprocessed_identifiers]") unless input[:unprocessed_identifiers].nil?
      end
    end

    class BatchGetRecordResultDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetRecordResultDetail, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Hearth::Validator.validate!(input[:record_identifier_value_as_string], ::String, context: "#{context}[:record_identifier_value_as_string]")
        Record.validate!(input[:record], context: "#{context}[:record]") unless input[:record].nil?
      end
    end

    class BatchGetRecordResultDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetRecordResultDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecordInput, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Hearth::Validator.validate!(input[:record_identifier_value_as_string], ::String, context: "#{context}[:record_identifier_value_as_string]")
        Hearth::Validator.validate!(input[:event_time], ::String, context: "#{context}[:event_time]")
      end
    end

    class DeleteRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecordOutput, context: context)
      end
    end

    class FeatureNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FeatureValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeatureValue, context: context)
        Hearth::Validator.validate!(input[:feature_name], ::String, context: "#{context}[:feature_name]")
        Hearth::Validator.validate!(input[:value_as_string], ::String, context: "#{context}[:value_as_string]")
      end
    end

    class GetRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecordInput, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Hearth::Validator.validate!(input[:record_identifier_value_as_string], ::String, context: "#{context}[:record_identifier_value_as_string]")
        FeatureNames.validate!(input[:feature_names], context: "#{context}[:feature_names]") unless input[:feature_names].nil?
      end
    end

    class GetRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecordOutput, context: context)
        Record.validate!(input[:record], context: "#{context}[:record]") unless input[:record].nil?
      end
    end

    class InternalFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailure, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutRecordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordInput, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Record.validate!(input[:record], context: "#{context}[:record]") unless input[:record].nil?
      end
    end

    class PutRecordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecordOutput, context: context)
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FeatureValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordIdentifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailable, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessedIdentifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetRecordIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
