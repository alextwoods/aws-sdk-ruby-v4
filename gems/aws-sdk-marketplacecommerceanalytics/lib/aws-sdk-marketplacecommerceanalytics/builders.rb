# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MarketplaceCommerceAnalytics
  module Builders

    # Operation Builder for GenerateDataSet
    class GenerateDataSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MarketplaceCommerceAnalytics20150701.GenerateDataSet'
        data = {}
        data['dataSetType'] = input[:data_set_type] unless input[:data_set_type].nil?
        data['dataSetPublicationDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:data_set_publication_date]).to_i unless input[:data_set_publication_date].nil?
        data['roleNameArn'] = input[:role_name_arn] unless input[:role_name_arn].nil?
        data['destinationS3BucketName'] = input[:destination_s3_bucket_name] unless input[:destination_s3_bucket_name].nil?
        data['destinationS3Prefix'] = input[:destination_s3_prefix] unless input[:destination_s3_prefix].nil?
        data['snsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['customerDefinedValues'] = Builders::CustomerDefinedValues.build(input[:customer_defined_values]) unless input[:customer_defined_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for CustomerDefinedValues
    class CustomerDefinedValues
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for StartSupportDataExport
    class StartSupportDataExport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MarketplaceCommerceAnalytics20150701.StartSupportDataExport'
        data = {}
        data['dataSetType'] = input[:data_set_type] unless input[:data_set_type].nil?
        data['fromDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:from_date]).to_i unless input[:from_date].nil?
        data['roleNameArn'] = input[:role_name_arn] unless input[:role_name_arn].nil?
        data['destinationS3BucketName'] = input[:destination_s3_bucket_name] unless input[:destination_s3_bucket_name].nil?
        data['destinationS3Prefix'] = input[:destination_s3_prefix] unless input[:destination_s3_prefix].nil?
        data['snsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['customerDefinedValues'] = Builders::CustomerDefinedValues.build(input[:customer_defined_values]) unless input[:customer_defined_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
