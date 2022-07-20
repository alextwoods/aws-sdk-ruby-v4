# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerFeatureStoreRuntime
  module Builders

    # Operation Builder for BatchGetRecord
    class BatchGetRecord
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/BatchGetRecord')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Identifiers'] = Builders::BatchGetRecordIdentifiers.build(input[:identifiers]) unless input[:identifiers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchGetRecordIdentifiers
    class BatchGetRecordIdentifiers
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BatchGetRecordIdentifier.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchGetRecordIdentifier
    class BatchGetRecordIdentifier
      def self.build(input)
        data = {}
        data['FeatureGroupName'] = input[:feature_group_name] unless input[:feature_group_name].nil?
        data['RecordIdentifiersValueAsString'] = Builders::RecordIdentifiers.build(input[:record_identifiers_value_as_string]) unless input[:record_identifiers_value_as_string].nil?
        data['FeatureNames'] = Builders::FeatureNames.build(input[:feature_names]) unless input[:feature_names].nil?
        data
      end
    end

    # List Builder for FeatureNames
    class FeatureNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RecordIdentifiers
    class RecordIdentifiers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteRecord
    class DeleteRecord
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:feature_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :feature_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/FeatureGroup/%<FeatureGroupName>s',
            FeatureGroupName: Hearth::HTTP.uri_escape(input[:feature_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['RecordIdentifierValueAsString'] = input[:record_identifier_value_as_string].to_s unless input[:record_identifier_value_as_string].nil?
        params['EventTime'] = input[:event_time].to_s unless input[:event_time].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRecord
    class GetRecord
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:feature_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :feature_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/FeatureGroup/%<FeatureGroupName>s',
            FeatureGroupName: Hearth::HTTP.uri_escape(input[:feature_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['RecordIdentifierValueAsString'] = input[:record_identifier_value_as_string].to_s unless input[:record_identifier_value_as_string].nil?
        unless input[:feature_names].nil? || input[:feature_names].empty?
          params['FeatureName'] = input[:feature_names].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutRecord
    class PutRecord
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:feature_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :feature_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/FeatureGroup/%<FeatureGroupName>s',
            FeatureGroupName: Hearth::HTTP.uri_escape(input[:feature_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Record'] = Builders::Record.build(input[:record]) unless input[:record].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Record
    class Record
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FeatureValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FeatureValue
    class FeatureValue
      def self.build(input)
        data = {}
        data['FeatureName'] = input[:feature_name] unless input[:feature_name].nil?
        data['ValueAsString'] = input[:value_as_string] unless input[:value_as_string].nil?
        data
      end
    end
  end
end
