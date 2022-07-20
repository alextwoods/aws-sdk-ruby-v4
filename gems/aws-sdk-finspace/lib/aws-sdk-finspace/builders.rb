# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Finspace
  module Builders

    # Operation Builder for CreateEnvironment
    class CreateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/environment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['federationMode'] = input[:federation_mode] unless input[:federation_mode].nil?
        data['federationParameters'] = Builders::FederationParameters.build(input[:federation_parameters]) unless input[:federation_parameters].nil?
        data['superuserParameters'] = Builders::SuperuserParameters.build(input[:superuser_parameters]) unless input[:superuser_parameters].nil?
        data['dataBundles'] = Builders::DataBundleArns.build(input[:data_bundles]) unless input[:data_bundles].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DataBundleArns
    class DataBundleArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SuperuserParameters
    class SuperuserParameters
      def self.build(input)
        data = {}
        data['emailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['firstName'] = input[:first_name] unless input[:first_name].nil?
        data['lastName'] = input[:last_name] unless input[:last_name].nil?
        data
      end
    end

    # Structure Builder for FederationParameters
    class FederationParameters
      def self.build(input)
        data = {}
        data['samlMetadataDocument'] = input[:saml_metadata_document] unless input[:saml_metadata_document].nil?
        data['samlMetadataURL'] = input[:saml_metadata_url] unless input[:saml_metadata_url].nil?
        data['applicationCallBackURL'] = input[:application_call_back_url] unless input[:application_call_back_url].nil?
        data['federationURN'] = input[:federation_urn] unless input[:federation_urn].nil?
        data['federationProviderName'] = input[:federation_provider_name] unless input[:federation_provider_name].nil?
        data['attributeMap'] = Builders::AttributeMap.build(input[:attribute_map]) unless input[:attribute_map].nil?
        data
      end
    end

    # Map Builder for AttributeMap
    class AttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteEnvironment
    class DeleteEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environment/%<environmentId>s',
            environmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEnvironment
    class GetEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environment/%<environmentId>s',
            environmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEnvironments
    class ListEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/environment')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateEnvironment
    class UpdateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environment/%<environmentId>s',
            environmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['federationMode'] = input[:federation_mode] unless input[:federation_mode].nil?
        data['federationParameters'] = Builders::FederationParameters.build(input[:federation_parameters]) unless input[:federation_parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
