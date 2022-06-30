# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MigrationHubRefactorSpaces
  module Builders

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['ProxyType'] = input[:proxy_type] unless input[:proxy_type].nil?
        data['ApiGatewayProxy'] = Builders::ApiGatewayProxyInput.build(input[:api_gateway_proxy]) unless input[:api_gateway_proxy].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Structure Builder for ApiGatewayProxyInput
    class ApiGatewayProxyInput
      def self.build(input)
        data = {}
        data['EndpointType'] = input[:endpoint_type] unless input[:endpoint_type].nil?
        data['StageName'] = input[:stage_name] unless input[:stage_name].nil?
        data
      end
    end

    # Operation Builder for CreateEnvironment
    class CreateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/environments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['NetworkFabricType'] = input[:network_fabric_type] unless input[:network_fabric_type].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRoute
    class CreateRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s/routes',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ServiceIdentifier'] = input[:service_identifier] unless input[:service_identifier].nil?
        data['RouteType'] = input[:route_type] unless input[:route_type].nil?
        data['UriPathRoute'] = Builders::UriPathRouteInput.build(input[:uri_path_route]) unless input[:uri_path_route].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UriPathRouteInput
    class UriPathRouteInput
      def self.build(input)
        data = {}
        data['SourcePath'] = input[:source_path] unless input[:source_path].nil?
        data['ActivationState'] = input[:activation_state] unless input[:activation_state].nil?
        data['Methods'] = Builders::HttpMethods.build(input[:member_methods]) unless input[:member_methods].nil?
        data['IncludeChildPaths'] = input[:include_child_paths] unless input[:include_child_paths].nil?
        data
      end
    end

    # List Builder for HttpMethods
    class HttpMethods
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateService
    class CreateService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s/services',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['EndpointType'] = input[:endpoint_type] unless input[:endpoint_type].nil?
        data['UrlEndpoint'] = Builders::UrlEndpointInput.build(input[:url_endpoint]) unless input[:url_endpoint].nil?
        data['LambdaEndpoint'] = Builders::LambdaEndpointInput.build(input[:lambda_endpoint]) unless input[:lambda_endpoint].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LambdaEndpointInput
    class LambdaEndpointInput
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Structure Builder for UrlEndpointInput
    class UrlEndpointInput
      def self.build(input)
        data = {}
        data['Url'] = input[:url] unless input[:url].nil?
        data['HealthUrl'] = input[:health_url] unless input[:health_url].nil?
        data
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEnvironment
    class DeleteEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resourcepolicy/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRoute
    class DeleteRoute
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        if input[:route_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :route_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s/routes/%<RouteIdentifier>s',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s),
            RouteIdentifier: Hearth::HTTP.uri_escape(input[:route_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteService
    class DeleteService
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        if input[:service_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :service_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s/services/%<ServiceIdentifier>s',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s),
            ServiceIdentifier: Hearth::HTTP.uri_escape(input[:service_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplication
    class GetApplication
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s)
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
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResourcePolicy
    class GetResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identifier].to_s.empty?
          raise ArgumentError, "HTTP label :identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resourcepolicy/%<Identifier>s',
            Identifier: Hearth::HTTP.uri_escape(input[:identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRoute
    class GetRoute
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        if input[:route_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :route_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s/routes/%<RouteIdentifier>s',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s),
            RouteIdentifier: Hearth::HTTP.uri_escape(input[:route_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetService
    class GetService
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        if input[:service_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :service_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s/services/%<ServiceIdentifier>s',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s),
            ServiceIdentifier: Hearth::HTTP.uri_escape(input[:service_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEnvironmentVpcs
    class ListEnvironmentVpcs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/vpcs',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEnvironments
    class ListEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/environments')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRoutes
    class ListRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s/routes',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListServices
    class ListServices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:environment_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :environment_identifier cannot be nil or empty."
        end
        if input[:application_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :application_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<EnvironmentIdentifier>s/applications/%<ApplicationIdentifier>s/services',
            EnvironmentIdentifier: Hearth::HTTP.uri_escape(input[:environment_identifier].to_s),
            ApplicationIdentifier: Hearth::HTTP.uri_escape(input[:application_identifier].to_s)
          )
        )
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/resourcepolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
