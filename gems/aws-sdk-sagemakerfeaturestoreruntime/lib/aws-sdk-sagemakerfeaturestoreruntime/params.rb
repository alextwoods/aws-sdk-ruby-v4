# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerFeatureStoreRuntime
  module Params

    module AccessForbidden
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessForbidden, context: context)
        type = Types::AccessForbidden.new
        type.message = params[:message]
        type
      end
    end

    module BatchGetRecordError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetRecordError, context: context)
        type = Types::BatchGetRecordError.new
        type.feature_group_name = params[:feature_group_name]
        type.record_identifier_value_as_string = params[:record_identifier_value_as_string]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchGetRecordErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetRecordError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetRecordIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetRecordIdentifier, context: context)
        type = Types::BatchGetRecordIdentifier.new
        type.feature_group_name = params[:feature_group_name]
        type.record_identifiers_value_as_string = RecordIdentifiers.build(params[:record_identifiers_value_as_string], context: "#{context}[:record_identifiers_value_as_string]") unless params[:record_identifiers_value_as_string].nil?
        type.feature_names = FeatureNames.build(params[:feature_names], context: "#{context}[:feature_names]") unless params[:feature_names].nil?
        type
      end
    end

    module BatchGetRecordIdentifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetRecordIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetRecordInput, context: context)
        type = Types::BatchGetRecordInput.new
        type.identifiers = BatchGetRecordIdentifiers.build(params[:identifiers], context: "#{context}[:identifiers]") unless params[:identifiers].nil?
        type
      end
    end

    module BatchGetRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetRecordOutput, context: context)
        type = Types::BatchGetRecordOutput.new
        type.records = BatchGetRecordResultDetails.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.errors = BatchGetRecordErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.unprocessed_identifiers = UnprocessedIdentifiers.build(params[:unprocessed_identifiers], context: "#{context}[:unprocessed_identifiers]") unless params[:unprocessed_identifiers].nil?
        type
      end
    end

    module BatchGetRecordResultDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetRecordResultDetail, context: context)
        type = Types::BatchGetRecordResultDetail.new
        type.feature_group_name = params[:feature_group_name]
        type.record_identifier_value_as_string = params[:record_identifier_value_as_string]
        type.record = Record.build(params[:record], context: "#{context}[:record]") unless params[:record].nil?
        type
      end
    end

    module BatchGetRecordResultDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetRecordResultDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecordInput, context: context)
        type = Types::DeleteRecordInput.new
        type.feature_group_name = params[:feature_group_name]
        type.record_identifier_value_as_string = params[:record_identifier_value_as_string]
        type.event_time = params[:event_time]
        type
      end
    end

    module DeleteRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecordOutput, context: context)
        type = Types::DeleteRecordOutput.new
        type
      end
    end

    module FeatureNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FeatureValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeatureValue, context: context)
        type = Types::FeatureValue.new
        type.feature_name = params[:feature_name]
        type.value_as_string = params[:value_as_string]
        type
      end
    end

    module GetRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecordInput, context: context)
        type = Types::GetRecordInput.new
        type.feature_group_name = params[:feature_group_name]
        type.record_identifier_value_as_string = params[:record_identifier_value_as_string]
        type.feature_names = FeatureNames.build(params[:feature_names], context: "#{context}[:feature_names]") unless params[:feature_names].nil?
        type
      end
    end

    module GetRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecordOutput, context: context)
        type = Types::GetRecordOutput.new
        type.record = Record.build(params[:record], context: "#{context}[:record]") unless params[:record].nil?
        type
      end
    end

    module InternalFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailure, context: context)
        type = Types::InternalFailure.new
        type.message = params[:message]
        type
      end
    end

    module PutRecordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordInput, context: context)
        type = Types::PutRecordInput.new
        type.feature_group_name = params[:feature_group_name]
        type.record = Record.build(params[:record], context: "#{context}[:record]") unless params[:record].nil?
        type
      end
    end

    module PutRecordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecordOutput, context: context)
        type = Types::PutRecordOutput.new
        type
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FeatureValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordIdentifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFound, context: context)
        type = Types::ResourceNotFound.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailable, context: context)
        type = Types::ServiceUnavailable.new
        type.message = params[:message]
        type
      end
    end

    module UnprocessedIdentifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetRecordIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationError, context: context)
        type = Types::ValidationError.new
        type.message = params[:message]
        type
      end
    end

  end
end
