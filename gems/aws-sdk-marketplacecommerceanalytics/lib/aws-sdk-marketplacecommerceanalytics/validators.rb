# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MarketplaceCommerceAnalytics
  module Validators

    class CustomerDefinedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GenerateDataSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataSetInput, context: context)
        Hearth::Validator.validate!(input[:data_set_type], ::String, context: "#{context}[:data_set_type]")
        Hearth::Validator.validate!(input[:data_set_publication_date], ::Time, context: "#{context}[:data_set_publication_date]")
        Hearth::Validator.validate!(input[:role_name_arn], ::String, context: "#{context}[:role_name_arn]")
        Hearth::Validator.validate!(input[:destination_s3_bucket_name], ::String, context: "#{context}[:destination_s3_bucket_name]")
        Hearth::Validator.validate!(input[:destination_s3_prefix], ::String, context: "#{context}[:destination_s3_prefix]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        CustomerDefinedValues.validate!(input[:customer_defined_values], context: "#{context}[:customer_defined_values]") unless input[:customer_defined_values].nil?
      end
    end

    class GenerateDataSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataSetOutput, context: context)
        Hearth::Validator.validate!(input[:data_set_request_id], ::String, context: "#{context}[:data_set_request_id]")
      end
    end

    class MarketplaceCommerceAnalyticsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarketplaceCommerceAnalyticsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartSupportDataExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSupportDataExportInput, context: context)
        Hearth::Validator.validate!(input[:data_set_type], ::String, context: "#{context}[:data_set_type]")
        Hearth::Validator.validate!(input[:from_date], ::Time, context: "#{context}[:from_date]")
        Hearth::Validator.validate!(input[:role_name_arn], ::String, context: "#{context}[:role_name_arn]")
        Hearth::Validator.validate!(input[:destination_s3_bucket_name], ::String, context: "#{context}[:destination_s3_bucket_name]")
        Hearth::Validator.validate!(input[:destination_s3_prefix], ::String, context: "#{context}[:destination_s3_prefix]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        CustomerDefinedValues.validate!(input[:customer_defined_values], context: "#{context}[:customer_defined_values]") unless input[:customer_defined_values].nil?
      end
    end

    class StartSupportDataExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSupportDataExportOutput, context: context)
        Hearth::Validator.validate!(input[:data_set_request_id], ::String, context: "#{context}[:data_set_request_id]")
      end
    end

  end
end
