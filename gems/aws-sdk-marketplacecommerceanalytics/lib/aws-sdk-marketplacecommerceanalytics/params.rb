# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MarketplaceCommerceAnalytics
  module Params

    module CustomerDefinedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GenerateDataSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataSetInput, context: context)
        type = Types::GenerateDataSetInput.new
        type.data_set_type = params[:data_set_type]
        type.data_set_publication_date = params[:data_set_publication_date]
        type.role_name_arn = params[:role_name_arn]
        type.destination_s3_bucket_name = params[:destination_s3_bucket_name]
        type.destination_s3_prefix = params[:destination_s3_prefix]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.customer_defined_values = CustomerDefinedValues.build(params[:customer_defined_values], context: "#{context}[:customer_defined_values]") unless params[:customer_defined_values].nil?
        type
      end
    end

    module GenerateDataSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataSetOutput, context: context)
        type = Types::GenerateDataSetOutput.new
        type.data_set_request_id = params[:data_set_request_id]
        type
      end
    end

    module MarketplaceCommerceAnalyticsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarketplaceCommerceAnalyticsException, context: context)
        type = Types::MarketplaceCommerceAnalyticsException.new
        type.message = params[:message]
        type
      end
    end

    module StartSupportDataExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSupportDataExportInput, context: context)
        type = Types::StartSupportDataExportInput.new
        type.data_set_type = params[:data_set_type]
        type.from_date = params[:from_date]
        type.role_name_arn = params[:role_name_arn]
        type.destination_s3_bucket_name = params[:destination_s3_bucket_name]
        type.destination_s3_prefix = params[:destination_s3_prefix]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.customer_defined_values = CustomerDefinedValues.build(params[:customer_defined_values], context: "#{context}[:customer_defined_values]") unless params[:customer_defined_values].nil?
        type
      end
    end

    module StartSupportDataExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSupportDataExportOutput, context: context)
        type = Types::StartSupportDataExportOutput.new
        type.data_set_request_id = params[:data_set_request_id]
        type
      end
    end

  end
end
