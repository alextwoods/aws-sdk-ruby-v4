# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHubRefactorSpaces
  module Stubs

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          owner_account_id: 'owner_account_id',
          created_by_account_id: 'created_by_account_id',
          application_id: 'application_id',
          environment_id: 'environment_id',
          vpc_id: 'vpc_id',
          proxy_type: 'proxy_type',
          api_gateway_proxy: ApiGatewayProxyInput.default(visited),
          state: 'state',
          tags: TagMap.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedByAccountId'] = stub[:created_by_account_id] unless stub[:created_by_account_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['ProxyType'] = stub[:proxy_type] unless stub[:proxy_type].nil?
        data['ApiGatewayProxy'] = Stubs::ApiGatewayProxyInput.stub(stub[:api_gateway_proxy]) unless stub[:api_gateway_proxy].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ApiGatewayProxyInput
    class ApiGatewayProxyInput
      def self.default(visited=[])
        return nil if visited.include?('ApiGatewayProxyInput')
        visited = visited + ['ApiGatewayProxyInput']
        {
          endpoint_type: 'endpoint_type',
          stage_name: 'stage_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiGatewayProxyInput.new
        data = {}
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['StageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data
      end
    end

    # Operation Stubber for CreateEnvironment
    class CreateEnvironment
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          environment_id: 'environment_id',
          network_fabric_type: 'network_fabric_type',
          owner_account_id: 'owner_account_id',
          state: 'state',
          tags: TagMap.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['NetworkFabricType'] = stub[:network_fabric_type] unless stub[:network_fabric_type].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRoute
    class CreateRoute
      def self.default(visited=[])
        {
          route_id: 'route_id',
          arn: 'arn',
          owner_account_id: 'owner_account_id',
          created_by_account_id: 'created_by_account_id',
          route_type: 'route_type',
          service_id: 'service_id',
          application_id: 'application_id',
          uri_path_route: UriPathRouteInput.default(visited),
          state: 'state',
          tags: TagMap.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RouteId'] = stub[:route_id] unless stub[:route_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedByAccountId'] = stub[:created_by_account_id] unless stub[:created_by_account_id].nil?
        data['RouteType'] = stub[:route_type] unless stub[:route_type].nil?
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['UriPathRoute'] = Stubs::UriPathRouteInput.stub(stub[:uri_path_route]) unless stub[:uri_path_route].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for UriPathRouteInput
    class UriPathRouteInput
      def self.default(visited=[])
        return nil if visited.include?('UriPathRouteInput')
        visited = visited + ['UriPathRouteInput']
        {
          source_path: 'source_path',
          activation_state: 'activation_state',
          member_methods: HttpMethods.default(visited),
          include_child_paths: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::UriPathRouteInput.new
        data = {}
        data['SourcePath'] = stub[:source_path] unless stub[:source_path].nil?
        data['ActivationState'] = stub[:activation_state] unless stub[:activation_state].nil?
        data['Methods'] = Stubs::HttpMethods.stub(stub[:member_methods]) unless stub[:member_methods].nil?
        data['IncludeChildPaths'] = stub[:include_child_paths] unless stub[:include_child_paths].nil?
        data
      end
    end

    # List Stubber for HttpMethods
    class HttpMethods
      def self.default(visited=[])
        return nil if visited.include?('HttpMethods')
        visited = visited + ['HttpMethods']
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

    # Operation Stubber for CreateService
    class CreateService
      def self.default(visited=[])
        {
          service_id: 'service_id',
          name: 'name',
          arn: 'arn',
          owner_account_id: 'owner_account_id',
          created_by_account_id: 'created_by_account_id',
          description: 'description',
          environment_id: 'environment_id',
          application_id: 'application_id',
          vpc_id: 'vpc_id',
          endpoint_type: 'endpoint_type',
          url_endpoint: UrlEndpointInput.default(visited),
          lambda_endpoint: LambdaEndpointInput.default(visited),
          state: 'state',
          tags: TagMap.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedByAccountId'] = stub[:created_by_account_id] unless stub[:created_by_account_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['UrlEndpoint'] = Stubs::UrlEndpointInput.stub(stub[:url_endpoint]) unless stub[:url_endpoint].nil?
        data['LambdaEndpoint'] = Stubs::LambdaEndpointInput.stub(stub[:lambda_endpoint]) unless stub[:lambda_endpoint].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LambdaEndpointInput
    class LambdaEndpointInput
      def self.default(visited=[])
        return nil if visited.include?('LambdaEndpointInput')
        visited = visited + ['LambdaEndpointInput']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaEndpointInput.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for UrlEndpointInput
    class UrlEndpointInput
      def self.default(visited=[])
        return nil if visited.include?('UrlEndpointInput')
        visited = visited + ['UrlEndpointInput']
        {
          url: 'url',
          health_url: 'health_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::UrlEndpointInput.new
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['HealthUrl'] = stub[:health_url] unless stub[:health_url].nil?
        data
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          application_id: 'application_id',
          environment_id: 'environment_id',
          state: 'state',
          last_updated_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteEnvironment
    class DeleteEnvironment
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          environment_id: 'environment_id',
          state: 'state',
          last_updated_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRoute
    class DeleteRoute
      def self.default(visited=[])
        {
          route_id: 'route_id',
          arn: 'arn',
          service_id: 'service_id',
          application_id: 'application_id',
          state: 'state',
          last_updated_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RouteId'] = stub[:route_id] unless stub[:route_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteService
    class DeleteService
      def self.default(visited=[])
        {
          service_id: 'service_id',
          name: 'name',
          arn: 'arn',
          environment_id: 'environment_id',
          application_id: 'application_id',
          state: 'state',
          last_updated_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApplication
    class GetApplication
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          owner_account_id: 'owner_account_id',
          created_by_account_id: 'created_by_account_id',
          application_id: 'application_id',
          environment_id: 'environment_id',
          vpc_id: 'vpc_id',
          proxy_type: 'proxy_type',
          api_gateway_proxy: ApiGatewayProxyConfig.default(visited),
          state: 'state',
          tags: TagMap.default(visited),
          error: ErrorResponse.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedByAccountId'] = stub[:created_by_account_id] unless stub[:created_by_account_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['ProxyType'] = stub[:proxy_type] unless stub[:proxy_type].nil?
        data['ApiGatewayProxy'] = Stubs::ApiGatewayProxyConfig.stub(stub[:api_gateway_proxy]) unless stub[:api_gateway_proxy].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Error'] = Stubs::ErrorResponse.stub(stub[:error]) unless stub[:error].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ErrorResponse
    class ErrorResponse
      def self.default(visited=[])
        return nil if visited.include?('ErrorResponse')
        visited = visited + ['ErrorResponse']
        {
          code: 'code',
          message: 'message',
          account_id: 'account_id',
          resource_identifier: 'resource_identifier',
          resource_type: 'resource_type',
          additional_details: AdditionalDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorResponse.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['ResourceIdentifier'] = stub[:resource_identifier] unless stub[:resource_identifier].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['AdditionalDetails'] = Stubs::AdditionalDetails.stub(stub[:additional_details]) unless stub[:additional_details].nil?
        data
      end
    end

    # Map Stubber for AdditionalDetails
    class AdditionalDetails
      def self.default(visited=[])
        return nil if visited.include?('AdditionalDetails')
        visited = visited + ['AdditionalDetails']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ApiGatewayProxyConfig
    class ApiGatewayProxyConfig
      def self.default(visited=[])
        return nil if visited.include?('ApiGatewayProxyConfig')
        visited = visited + ['ApiGatewayProxyConfig']
        {
          proxy_url: 'proxy_url',
          api_gateway_id: 'api_gateway_id',
          vpc_link_id: 'vpc_link_id',
          nlb_arn: 'nlb_arn',
          nlb_name: 'nlb_name',
          endpoint_type: 'endpoint_type',
          stage_name: 'stage_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiGatewayProxyConfig.new
        data = {}
        data['ProxyUrl'] = stub[:proxy_url] unless stub[:proxy_url].nil?
        data['ApiGatewayId'] = stub[:api_gateway_id] unless stub[:api_gateway_id].nil?
        data['VpcLinkId'] = stub[:vpc_link_id] unless stub[:vpc_link_id].nil?
        data['NlbArn'] = stub[:nlb_arn] unless stub[:nlb_arn].nil?
        data['NlbName'] = stub[:nlb_name] unless stub[:nlb_name].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['StageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data
      end
    end

    # Operation Stubber for GetEnvironment
    class GetEnvironment
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          environment_id: 'environment_id',
          network_fabric_type: 'network_fabric_type',
          owner_account_id: 'owner_account_id',
          transit_gateway_id: 'transit_gateway_id',
          state: 'state',
          tags: TagMap.default(visited),
          error: ErrorResponse.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['NetworkFabricType'] = stub[:network_fabric_type] unless stub[:network_fabric_type].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['TransitGatewayId'] = stub[:transit_gateway_id] unless stub[:transit_gateway_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Error'] = Stubs::ErrorResponse.stub(stub[:error]) unless stub[:error].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetResourcePolicy
    class GetResourcePolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRoute
    class GetRoute
      def self.default(visited=[])
        {
          route_id: 'route_id',
          arn: 'arn',
          owner_account_id: 'owner_account_id',
          created_by_account_id: 'created_by_account_id',
          route_type: 'route_type',
          service_id: 'service_id',
          application_id: 'application_id',
          environment_id: 'environment_id',
          source_path: 'source_path',
          member_methods: HttpMethods.default(visited),
          include_child_paths: false,
          path_resource_to_id: PathResourceToId.default(visited),
          state: 'state',
          tags: TagMap.default(visited),
          error: ErrorResponse.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RouteId'] = stub[:route_id] unless stub[:route_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedByAccountId'] = stub[:created_by_account_id] unless stub[:created_by_account_id].nil?
        data['RouteType'] = stub[:route_type] unless stub[:route_type].nil?
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['SourcePath'] = stub[:source_path] unless stub[:source_path].nil?
        data['Methods'] = Stubs::HttpMethods.stub(stub[:member_methods]) unless stub[:member_methods].nil?
        data['IncludeChildPaths'] = stub[:include_child_paths] unless stub[:include_child_paths].nil?
        data['PathResourceToId'] = Stubs::PathResourceToId.stub(stub[:path_resource_to_id]) unless stub[:path_resource_to_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Error'] = Stubs::ErrorResponse.stub(stub[:error]) unless stub[:error].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for PathResourceToId
    class PathResourceToId
      def self.default(visited=[])
        return nil if visited.include?('PathResourceToId')
        visited = visited + ['PathResourceToId']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetService
    class GetService
      def self.default(visited=[])
        {
          service_id: 'service_id',
          name: 'name',
          arn: 'arn',
          owner_account_id: 'owner_account_id',
          created_by_account_id: 'created_by_account_id',
          description: 'description',
          environment_id: 'environment_id',
          application_id: 'application_id',
          vpc_id: 'vpc_id',
          endpoint_type: 'endpoint_type',
          url_endpoint: UrlEndpointConfig.default(visited),
          lambda_endpoint: LambdaEndpointConfig.default(visited),
          state: 'state',
          tags: TagMap.default(visited),
          error: ErrorResponse.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedByAccountId'] = stub[:created_by_account_id] unless stub[:created_by_account_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['UrlEndpoint'] = Stubs::UrlEndpointConfig.stub(stub[:url_endpoint]) unless stub[:url_endpoint].nil?
        data['LambdaEndpoint'] = Stubs::LambdaEndpointConfig.stub(stub[:lambda_endpoint]) unless stub[:lambda_endpoint].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Error'] = Stubs::ErrorResponse.stub(stub[:error]) unless stub[:error].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LambdaEndpointConfig
    class LambdaEndpointConfig
      def self.default(visited=[])
        return nil if visited.include?('LambdaEndpointConfig')
        visited = visited + ['LambdaEndpointConfig']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaEndpointConfig.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for UrlEndpointConfig
    class UrlEndpointConfig
      def self.default(visited=[])
        return nil if visited.include?('UrlEndpointConfig')
        visited = visited + ['UrlEndpointConfig']
        {
          url: 'url',
          health_url: 'health_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::UrlEndpointConfig.new
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['HealthUrl'] = stub[:health_url] unless stub[:health_url].nil?
        data
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          application_summary_list: ApplicationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationSummaryList'] = Stubs::ApplicationSummaries.stub(stub[:application_summary_list]) unless stub[:application_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationSummaries
    class ApplicationSummaries
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummaries')
        visited = visited + ['ApplicationSummaries']
        [
          ApplicationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationSummary
    class ApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummary')
        visited = visited + ['ApplicationSummary']
        {
          name: 'name',
          arn: 'arn',
          owner_account_id: 'owner_account_id',
          created_by_account_id: 'created_by_account_id',
          application_id: 'application_id',
          environment_id: 'environment_id',
          vpc_id: 'vpc_id',
          proxy_type: 'proxy_type',
          api_gateway_proxy: ApiGatewayProxySummary.default(visited),
          state: 'state',
          tags: TagMap.default(visited),
          error: ErrorResponse.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedByAccountId'] = stub[:created_by_account_id] unless stub[:created_by_account_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['ProxyType'] = stub[:proxy_type] unless stub[:proxy_type].nil?
        data['ApiGatewayProxy'] = Stubs::ApiGatewayProxySummary.stub(stub[:api_gateway_proxy]) unless stub[:api_gateway_proxy].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Error'] = Stubs::ErrorResponse.stub(stub[:error]) unless stub[:error].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Structure Stubber for ApiGatewayProxySummary
    class ApiGatewayProxySummary
      def self.default(visited=[])
        return nil if visited.include?('ApiGatewayProxySummary')
        visited = visited + ['ApiGatewayProxySummary']
        {
          proxy_url: 'proxy_url',
          api_gateway_id: 'api_gateway_id',
          vpc_link_id: 'vpc_link_id',
          nlb_arn: 'nlb_arn',
          nlb_name: 'nlb_name',
          endpoint_type: 'endpoint_type',
          stage_name: 'stage_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiGatewayProxySummary.new
        data = {}
        data['ProxyUrl'] = stub[:proxy_url] unless stub[:proxy_url].nil?
        data['ApiGatewayId'] = stub[:api_gateway_id] unless stub[:api_gateway_id].nil?
        data['VpcLinkId'] = stub[:vpc_link_id] unless stub[:vpc_link_id].nil?
        data['NlbArn'] = stub[:nlb_arn] unless stub[:nlb_arn].nil?
        data['NlbName'] = stub[:nlb_name] unless stub[:nlb_name].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['StageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data
      end
    end

    # Operation Stubber for ListEnvironmentVpcs
    class ListEnvironmentVpcs
      def self.default(visited=[])
        {
          environment_vpc_list: EnvironmentVpcs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EnvironmentVpcList'] = Stubs::EnvironmentVpcs.stub(stub[:environment_vpc_list]) unless stub[:environment_vpc_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EnvironmentVpcs
    class EnvironmentVpcs
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVpcs')
        visited = visited + ['EnvironmentVpcs']
        [
          EnvironmentVpc.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EnvironmentVpc.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentVpc
    class EnvironmentVpc
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVpc')
        visited = visited + ['EnvironmentVpc']
        {
          environment_id: 'environment_id',
          vpc_id: 'vpc_id',
          account_id: 'account_id',
          cidr_blocks: CidrBlocks.default(visited),
          vpc_name: 'vpc_name',
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentVpc.new
        data = {}
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['CidrBlocks'] = Stubs::CidrBlocks.stub(stub[:cidr_blocks]) unless stub[:cidr_blocks].nil?
        data['VpcName'] = stub[:vpc_name] unless stub[:vpc_name].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # List Stubber for CidrBlocks
    class CidrBlocks
      def self.default(visited=[])
        return nil if visited.include?('CidrBlocks')
        visited = visited + ['CidrBlocks']
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

    # Operation Stubber for ListEnvironments
    class ListEnvironments
      def self.default(visited=[])
        {
          environment_summary_list: EnvironmentSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EnvironmentSummaryList'] = Stubs::EnvironmentSummaries.stub(stub[:environment_summary_list]) unless stub[:environment_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EnvironmentSummaries
    class EnvironmentSummaries
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentSummaries')
        visited = visited + ['EnvironmentSummaries']
        [
          EnvironmentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EnvironmentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentSummary
    class EnvironmentSummary
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentSummary')
        visited = visited + ['EnvironmentSummary']
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          environment_id: 'environment_id',
          network_fabric_type: 'network_fabric_type',
          owner_account_id: 'owner_account_id',
          transit_gateway_id: 'transit_gateway_id',
          state: 'state',
          tags: TagMap.default(visited),
          error: ErrorResponse.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['NetworkFabricType'] = stub[:network_fabric_type] unless stub[:network_fabric_type].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['TransitGatewayId'] = stub[:transit_gateway_id] unless stub[:transit_gateway_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Error'] = Stubs::ErrorResponse.stub(stub[:error]) unless stub[:error].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for ListRoutes
    class ListRoutes
      def self.default(visited=[])
        {
          route_summary_list: RouteSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RouteSummaryList'] = Stubs::RouteSummaries.stub(stub[:route_summary_list]) unless stub[:route_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RouteSummaries
    class RouteSummaries
      def self.default(visited=[])
        return nil if visited.include?('RouteSummaries')
        visited = visited + ['RouteSummaries']
        [
          RouteSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RouteSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RouteSummary
    class RouteSummary
      def self.default(visited=[])
        return nil if visited.include?('RouteSummary')
        visited = visited + ['RouteSummary']
        {
          route_id: 'route_id',
          arn: 'arn',
          owner_account_id: 'owner_account_id',
          created_by_account_id: 'created_by_account_id',
          route_type: 'route_type',
          service_id: 'service_id',
          application_id: 'application_id',
          environment_id: 'environment_id',
          source_path: 'source_path',
          member_methods: HttpMethods.default(visited),
          include_child_paths: false,
          path_resource_to_id: PathResourceToId.default(visited),
          state: 'state',
          tags: TagMap.default(visited),
          error: ErrorResponse.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteSummary.new
        data = {}
        data['RouteId'] = stub[:route_id] unless stub[:route_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedByAccountId'] = stub[:created_by_account_id] unless stub[:created_by_account_id].nil?
        data['RouteType'] = stub[:route_type] unless stub[:route_type].nil?
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['SourcePath'] = stub[:source_path] unless stub[:source_path].nil?
        data['Methods'] = Stubs::HttpMethods.stub(stub[:member_methods]) unless stub[:member_methods].nil?
        data['IncludeChildPaths'] = stub[:include_child_paths] unless stub[:include_child_paths].nil?
        data['PathResourceToId'] = Stubs::PathResourceToId.stub(stub[:path_resource_to_id]) unless stub[:path_resource_to_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Error'] = Stubs::ErrorResponse.stub(stub[:error]) unless stub[:error].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for ListServices
    class ListServices
      def self.default(visited=[])
        {
          service_summary_list: ServiceSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceSummaryList'] = Stubs::ServiceSummaries.stub(stub[:service_summary_list]) unless stub[:service_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ServiceSummaries
    class ServiceSummaries
      def self.default(visited=[])
        return nil if visited.include?('ServiceSummaries')
        visited = visited + ['ServiceSummaries']
        [
          ServiceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceSummary
    class ServiceSummary
      def self.default(visited=[])
        return nil if visited.include?('ServiceSummary')
        visited = visited + ['ServiceSummary']
        {
          service_id: 'service_id',
          name: 'name',
          arn: 'arn',
          owner_account_id: 'owner_account_id',
          created_by_account_id: 'created_by_account_id',
          description: 'description',
          environment_id: 'environment_id',
          application_id: 'application_id',
          vpc_id: 'vpc_id',
          endpoint_type: 'endpoint_type',
          url_endpoint: UrlEndpointSummary.default(visited),
          lambda_endpoint: LambdaEndpointSummary.default(visited),
          state: 'state',
          tags: TagMap.default(visited),
          error: ErrorResponse.default(visited),
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceSummary.new
        data = {}
        data['ServiceId'] = stub[:service_id] unless stub[:service_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['CreatedByAccountId'] = stub[:created_by_account_id] unless stub[:created_by_account_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['UrlEndpoint'] = Stubs::UrlEndpointSummary.stub(stub[:url_endpoint]) unless stub[:url_endpoint].nil?
        data['LambdaEndpoint'] = Stubs::LambdaEndpointSummary.stub(stub[:lambda_endpoint]) unless stub[:lambda_endpoint].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Error'] = Stubs::ErrorResponse.stub(stub[:error]) unless stub[:error].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Structure Stubber for LambdaEndpointSummary
    class LambdaEndpointSummary
      def self.default(visited=[])
        return nil if visited.include?('LambdaEndpointSummary')
        visited = visited + ['LambdaEndpointSummary']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaEndpointSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for UrlEndpointSummary
    class UrlEndpointSummary
      def self.default(visited=[])
        return nil if visited.include?('UrlEndpointSummary')
        visited = visited + ['UrlEndpointSummary']
        {
          url: 'url',
          health_url: 'health_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::UrlEndpointSummary.new
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['HealthUrl'] = stub[:health_url] unless stub[:health_url].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
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
