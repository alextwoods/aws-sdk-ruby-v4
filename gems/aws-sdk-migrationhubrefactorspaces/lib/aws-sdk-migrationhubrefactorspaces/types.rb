# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHubRefactorSpaces
  module Types

    # <p>The user does not have sufficient access to perform this action. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApiGatewayEndpointType
    #
    module ApiGatewayEndpointType
      # No documentation available.
      #
      REGIONAL = "REGIONAL"

      # No documentation available.
      #
      PRIVATE = "PRIVATE"
    end

    # <p>A wrapper object holding the Amazon API Gateway proxy configuration. </p>
    #
    # @!attribute proxy_url
    #   <p>The endpoint URL of the API Gateway proxy. </p>
    #
    #   @return [String]
    #
    # @!attribute api_gateway_id
    #   <p>The resource ID of the API Gateway for the proxy. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_link_id
    #   <p>The <code>VpcLink</code> ID of the API Gateway proxy. </p>
    #
    #   @return [String]
    #
    # @!attribute nlb_arn
    #   <p>The Amazon Resource Name (ARN) of the Network Load Balancer configured by the API Gateway proxy. </p>
    #
    #   @return [String]
    #
    # @!attribute nlb_name
    #   <p>The name of the Network Load Balancer that is configured by the API Gateway proxy.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of API Gateway endpoint created. </p>
    #
    #   Enum, one of: ["REGIONAL", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the API Gateway stage. The name defaults to <code>prod</code>. </p>
    #
    #   @return [String]
    #
    ApiGatewayProxyConfig = ::Struct.new(
      :proxy_url,
      :api_gateway_id,
      :vpc_link_id,
      :nlb_arn,
      :nlb_name,
      :endpoint_type,
      :stage_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A wrapper object holding the Amazon API Gateway endpoint input. </p>
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint to use for the API Gateway proxy. If no value is specified in
    #         the request, the value is set to <code>REGIONAL</code> by default.</p>
    #            <p>If the value is set to <code>PRIVATE</code> in the request, this creates a private API
    #         endpoint that is isolated from the public internet. The private endpoint can only be accessed
    #         by using Amazon Virtual Private Cloud (Amazon VPC) endpoints for Amazon API Gateway that
    #         have been granted access. </p>
    #
    #   Enum, one of: ["REGIONAL", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the API Gateway stage. The name defaults to <code>prod</code>. </p>
    #
    #   @return [String]
    #
    ApiGatewayProxyInput = ::Struct.new(
      :endpoint_type,
      :stage_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A wrapper object holding the Amazon API Gateway proxy summary. </p>
    #
    # @!attribute proxy_url
    #   <p>The endpoint URL of the API Gateway proxy. </p>
    #
    #   @return [String]
    #
    # @!attribute api_gateway_id
    #   <p>The resource ID of the API Gateway for the proxy. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_link_id
    #   <p>The <code>VpcLink</code> ID of the API Gateway proxy. </p>
    #
    #   @return [String]
    #
    # @!attribute nlb_arn
    #   <p>The Amazon Resource Name (ARN) of the Network Load Balancer configured by the API Gateway proxy. </p>
    #
    #   @return [String]
    #
    # @!attribute nlb_name
    #   <p>The name of the Network Load Balancer that is configured by the API Gateway proxy.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of API Gateway endpoint created. </p>
    #
    #   Enum, one of: ["REGIONAL", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the API Gateway stage. The name defaults to <code>prod</code>. </p>
    #
    #   @return [String]
    #
    ApiGatewayProxySummary = ::Struct.new(
      :proxy_url,
      :api_gateway_id,
      :vpc_link_id,
      :nlb_arn,
      :nlb_name,
      :endpoint_type,
      :stage_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApplicationState
    #
    module ApplicationState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # <p>The list of <code>ApplicationSummary</code> objects. </p>
    #
    # @!attribute name
    #   <p>The name of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the application owner (which is always the same as
    #         the environment owner account ID).</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the application creator. </p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC). </p>
    #
    #   @return [String]
    #
    # @!attribute proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    #
    #   Enum, one of: ["API_GATEWAY"]
    #
    #   @return [String]
    #
    # @!attribute api_gateway_proxy
    #   <p>The endpoint URL of the Amazon API Gateway proxy. </p>
    #
    #   @return [ApiGatewayProxySummary]
    #
    # @!attribute state
    #   <p>The current state of the application. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the application. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>Any error associated with the application resource. </p>
    #
    #   @return [ErrorResponse]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the application was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the application is created. </p>
    #
    #   @return [Time]
    #
    ApplicationSummary = ::Struct.new(
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :application_id,
      :environment_id,
      :vpc_id,
      :proxy_type,
      :api_gateway_proxy,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::ApplicationSummary "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "created_by_account_id=#{created_by_account_id || 'nil'}, "\
          "application_id=#{application_id || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "vpc_id=#{vpc_id || 'nil'}, "\
          "proxy_type=#{proxy_type || 'nil'}, "\
          "api_gateway_proxy=#{api_gateway_proxy || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "error=#{error || 'nil'}, "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource. </p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name to use for the application. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_identifier
    #   <p>The unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC).</p>
    #
    #   @return [String]
    #
    # @!attribute proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    #
    #   Enum, one of: ["API_GATEWAY"]
    #
    #   @return [String]
    #
    # @!attribute api_gateway_proxy
    #   <p>A wrapper object holding the API Gateway endpoint type and stage name for the
    #         proxy. </p>
    #
    #   @return [ApiGatewayProxyInput]
    #
    # @!attribute tags
    #   <p>The tags to assign to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    #   @return [String]
    #
    CreateApplicationInput = ::Struct.new(
      :name,
      :environment_identifier,
      :vpc_id,
      :proxy_type,
      :api_gateway_proxy,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::CreateApplicationInput "\
          "name=#{name || 'nil'}, "\
          "environment_identifier=#{environment_identifier || 'nil'}, "\
          "vpc_id=#{vpc_id || 'nil'}, "\
          "proxy_type=#{proxy_type || 'nil'}, "\
          "api_gateway_proxy=#{api_gateway_proxy || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is
    #   <code>arn:aws:refactor-spaces:<i>region</i>:<i>account-id</i>:<i>resource-type/resource-id</i>
    #               </code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>Amazon Web Services General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the application owner (which is always the same as
    #         the environment owner account ID).</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of application creator.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The ID of the environment in which the application is created.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the Amazon VPC. </p>
    #
    #   @return [String]
    #
    # @!attribute proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    #
    #   Enum, one of: ["API_GATEWAY"]
    #
    #   @return [String]
    #
    # @!attribute api_gateway_proxy
    #   <p>A wrapper object holding the API Gateway endpoint type and stage name for the
    #         proxy. </p>
    #
    #   @return [ApiGatewayProxyInput]
    #
    # @!attribute state
    #   <p>The current state of the application. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the application was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the application is created.</p>
    #
    #   @return [Time]
    #
    CreateApplicationOutput = ::Struct.new(
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :application_id,
      :environment_id,
      :vpc_id,
      :proxy_type,
      :api_gateway_proxy,
      :state,
      :tags,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::CreateApplicationOutput "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "created_by_account_id=#{created_by_account_id || 'nil'}, "\
          "application_id=#{application_id || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "vpc_id=#{vpc_id || 'nil'}, "\
          "proxy_type=#{proxy_type || 'nil'}, "\
          "api_gateway_proxy=#{api_gateway_proxy || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute network_fabric_type
    #   <p>The network fabric type of the environment.</p>
    #
    #   Enum, one of: ["TRANSIT_GATEWAY"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    #   @return [String]
    #
    CreateEnvironmentInput = ::Struct.new(
      :name,
      :description,
      :network_fabric_type,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::CreateEnvironmentInput "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "network_fabric_type=#{network_fabric_type || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute network_fabric_type
    #   <p>The network fabric type of the environment.</p>
    #
    #   Enum, one of: ["TRANSIT_GATEWAY"]
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of environment owner.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the environment. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the created environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair..</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the environment is created.</p>
    #
    #   @return [Time]
    #
    CreateEnvironmentOutput = ::Struct.new(
      :name,
      :arn,
      :description,
      :environment_id,
      :network_fabric_type,
      :owner_account_id,
      :state,
      :tags,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::CreateEnvironmentOutput "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "network_fabric_type=#{network_fabric_type || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment in which the route is created.</p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The ID of the application within which the route is being created.</p>
    #
    #   @return [String]
    #
    # @!attribute service_identifier
    #   <p>The ID of the service in which the route is created. Traffic that matches this route is
    #         forwarded to this service.</p>
    #
    #   @return [String]
    #
    # @!attribute route_type
    #   <p>The route type of the route. <code>DEFAULT</code> indicates that all traffic that does not
    #         match another route is forwarded to the default route. Applications must have a default route
    #         before any other routes can be created. <code>URI_PATH</code> indicates a route that is based
    #         on a URI path.</p>
    #
    #   Enum, one of: ["DEFAULT", "URI_PATH"]
    #
    #   @return [String]
    #
    # @!attribute uri_path_route
    #   <p>The configuration for the URI path route type. </p>
    #
    #   @return [UriPathRouteInput]
    #
    # @!attribute tags
    #   <p>The tags to assign to the route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    #   @return [String]
    #
    CreateRouteInput = ::Struct.new(
      :environment_identifier,
      :application_identifier,
      :service_identifier,
      :route_type,
      :uri_path_route,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::CreateRouteInput "\
          "environment_identifier=#{environment_identifier || 'nil'}, "\
          "application_identifier=#{application_identifier || 'nil'}, "\
          "service_identifier=#{service_identifier || 'nil'}, "\
          "route_type=#{route_type || 'nil'}, "\
          "uri_path_route=#{uri_path_route || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute route_id
    #   <p>The unique identifier of the route.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the route. The format for this ARN is
    #   <code>arn:aws:refactor-spaces:<i>region</i>:<i>account-id</i>:<i>resource-type/resource-id</i>
    #               </code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>Amazon Web Services General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the route owner.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the route creator.</p>
    #
    #   @return [String]
    #
    # @!attribute route_type
    #   <p>The route type of the route.</p>
    #
    #   Enum, one of: ["DEFAULT", "URI_PATH"]
    #
    #   @return [String]
    #
    # @!attribute service_id
    #   <p>The ID of service in which the route is created. Traffic that matches this route is
    #         forwarded to this service.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The ID of the application in which the route is created.</p>
    #
    #   @return [String]
    #
    # @!attribute uri_path_route
    #   <p>onfiguration for the URI path route type. </p>
    #
    #   @return [UriPathRouteInput]
    #
    # @!attribute state
    #   <p>The current state of the route. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the created route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the route was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the route is created.</p>
    #
    #   @return [Time]
    #
    CreateRouteOutput = ::Struct.new(
      :route_id,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :route_type,
      :service_id,
      :application_id,
      :uri_path_route,
      :state,
      :tags,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::CreateRouteOutput "\
          "route_id=#{route_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "created_by_account_id=#{created_by_account_id || 'nil'}, "\
          "route_type=#{route_type || 'nil'}, "\
          "service_id=#{service_id || 'nil'}, "\
          "application_id=#{application_id || 'nil'}, "\
          "uri_path_route=#{uri_path_route || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # @!attribute name
    #   <p>The name of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_identifier
    #   <p>The ID of the environment in which the service is created.</p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The ID of the application which the service is created.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint to use for the service. The type can be a URL in a VPC or an Lambda function.</p>
    #
    #   Enum, one of: ["LAMBDA", "URL"]
    #
    #   @return [String]
    #
    # @!attribute url_endpoint
    #   <p>The configuration for the URL endpoint type.</p>
    #
    #   @return [UrlEndpointInput]
    #
    # @!attribute lambda_endpoint
    #   <p>The configuration for the Lambda endpoint type.</p>
    #
    #   @return [LambdaEndpointInput]
    #
    # @!attribute tags
    #   <p>The tags to assign to the service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    #   @return [String]
    #
    CreateServiceInput = ::Struct.new(
      :name,
      :description,
      :environment_identifier,
      :application_identifier,
      :vpc_id,
      :endpoint_type,
      :url_endpoint,
      :lambda_endpoint,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::CreateServiceInput "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "environment_identifier=#{environment_identifier || 'nil'}, "\
          "application_identifier=#{application_identifier || 'nil'}, "\
          "vpc_id=#{vpc_id || 'nil'}, "\
          "endpoint_type=#{endpoint_type || 'nil'}, "\
          "url_endpoint=#{url_endpoint || 'nil'}, "\
          "lambda_endpoint=#{lambda_endpoint || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute service_id
    #   <p>The unique identifier of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the service owner.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the service creator.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the created service.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The ID of the application that the created service belongs to. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC. </p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The endpoint type of the service.</p>
    #
    #   Enum, one of: ["LAMBDA", "URL"]
    #
    #   @return [String]
    #
    # @!attribute url_endpoint
    #   <p>The configuration for the URL endpoint type. </p>
    #
    #   @return [UrlEndpointInput]
    #
    # @!attribute lambda_endpoint
    #   <p>The configuration for the Lambda endpoint type.</p>
    #
    #   @return [LambdaEndpointInput]
    #
    # @!attribute state
    #   <p>The current state of the service. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the created service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the service was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the service is created.</p>
    #
    #   @return [Time]
    #
    CreateServiceOutput = ::Struct.new(
      :service_id,
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :description,
      :environment_id,
      :application_id,
      :vpc_id,
      :endpoint_type,
      :url_endpoint,
      :lambda_endpoint,
      :state,
      :tags,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::CreateServiceOutput "\
          "service_id=#{service_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "created_by_account_id=#{created_by_account_id || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "application_id=#{application_id || 'nil'}, "\
          "vpc_id=#{vpc_id || 'nil'}, "\
          "endpoint_type=#{endpoint_type || 'nil'}, "\
          "url_endpoint=#{url_endpoint || 'nil'}, "\
          "lambda_endpoint=#{lambda_endpoint || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    DeleteApplicationInput = ::Struct.new(
      :environment_identifier,
      :application_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the application’s environment.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the application. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated. </p>
    #
    #   @return [Time]
    #
    DeleteApplicationOutput = ::Struct.new(
      :name,
      :arn,
      :application_id,
      :environment_id,
      :state,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #
    #   @return [String]
    #
    DeleteEnvironmentInput = ::Struct.new(
      :environment_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the environment. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated. </p>
    #
    #   @return [Time]
    #
    DeleteEnvironmentOutput = ::Struct.new(
      :name,
      :arn,
      :environment_id,
      :state,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>Amazon Resource Name (ARN) of the resource associated with the policy. </p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment to delete the route from.</p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The ID of the application to delete the route from.</p>
    #
    #   @return [String]
    #
    # @!attribute route_identifier
    #   <p>The ID of the route to delete.</p>
    #
    #   @return [String]
    #
    DeleteRouteInput = ::Struct.new(
      :environment_identifier,
      :application_identifier,
      :route_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute route_id
    #   <p>The ID of the route to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the route.</p>
    #
    #   @return [String]
    #
    # @!attribute service_id
    #   <p>The ID of the service that the route belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The ID of the application that the route belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the route. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the route was last updated. </p>
    #
    #   @return [Time]
    #
    DeleteRouteOutput = ::Struct.new(
      :route_id,
      :arn,
      :service_id,
      :application_id,
      :state,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment that the service is in.</p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>Deletes a Refactor Spaces service.</p>
    #            <note>
    #               <p>The <code>RefactorSpacesSecurityGroup</code> security group must be removed from all
    #           Amazon Web Services resources in the virtual private cloud (VPC) prior to deleting a service with a URL
    #           endpoint in a VPC.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute service_identifier
    #   <p>The ID of the service to delete.</p>
    #
    #   @return [String]
    #
    DeleteServiceInput = ::Struct.new(
      :environment_identifier,
      :application_identifier,
      :service_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_id
    #   <p>The unique identifier of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The ID of the application that the service is in.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the service. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the service was last updated. </p>
    #
    #   @return [Time]
    #
    DeleteServiceOutput = ::Struct.new(
      :service_id,
      :name,
      :arn,
      :environment_id,
      :application_id,
      :state,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnvironmentState
    #
    module EnvironmentState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The summary information for environments as a response to <code>ListEnvironments</code>.
    #     </p>
    #
    # @!attribute name
    #   <p>The name of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute network_fabric_type
    #   <p>The network fabric type of the environment. </p>
    #
    #   Enum, one of: ["TRANSIT_GATEWAY"]
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the environment owner.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_id
    #   <p>The ID of the transit gateway set up by the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the environment. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the environment. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>Any error associated with the environment resource. </p>
    #
    #   @return [ErrorResponse]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the environment is created. </p>
    #
    #   @return [Time]
    #
    EnvironmentSummary = ::Struct.new(
      :name,
      :arn,
      :description,
      :environment_id,
      :network_fabric_type,
      :owner_account_id,
      :transit_gateway_id,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::EnvironmentSummary "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "network_fabric_type=#{network_fabric_type || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "transit_gateway_id=#{transit_gateway_id || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "error=#{error || 'nil'}, "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # <p>Provides summary information for the <code>EnvironmentVpc</code> resource as a response to
    #         <code>ListEnvironmentVpc</code>.</p>
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC. </p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the virtual private cloud (VPC) owner. </p>
    #
    #   @return [String]
    #
    # @!attribute cidr_blocks
    #   <p>The list of Amazon Virtual Private Cloud (Amazon VPC) CIDR blocks. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_name
    #   <p>The name of the VPC at the time it is added to the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the VPC was last updated by the environment. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the VPC is first added to the environment. </p>
    #
    #   @return [Time]
    #
    EnvironmentVpc = ::Struct.new(
      :environment_id,
      :vpc_id,
      :account_id,
      :cidr_blocks,
      :vpc_name,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      INVALID_RESOURCE_STATE = "INVALID_RESOURCE_STATE"

      # No documentation available.
      #
      RESOURCE_LIMIT_EXCEEDED = "RESOURCE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      RESOURCE_CREATION_FAILURE = "RESOURCE_CREATION_FAILURE"

      # No documentation available.
      #
      RESOURCE_UPDATE_FAILURE = "RESOURCE_UPDATE_FAILURE"

      # No documentation available.
      #
      SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE = "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE"

      # No documentation available.
      #
      RESOURCE_DELETION_FAILURE = "RESOURCE_DELETION_FAILURE"

      # No documentation available.
      #
      RESOURCE_RETRIEVAL_FAILURE = "RESOURCE_RETRIEVAL_FAILURE"

      # No documentation available.
      #
      RESOURCE_IN_USE = "RESOURCE_IN_USE"

      # No documentation available.
      #
      RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND"

      # No documentation available.
      #
      STATE_TRANSITION_FAILURE = "STATE_TRANSITION_FAILURE"

      # No documentation available.
      #
      REQUEST_LIMIT_EXCEEDED = "REQUEST_LIMIT_EXCEEDED"

      # No documentation available.
      #
      NOT_AUTHORIZED = "NOT_AUTHORIZED"
    end

    # Includes enum constants for ErrorResourceType
    #
    module ErrorResourceType
      # No documentation available.
      #
      ENVIRONMENT = "ENVIRONMENT"

      # No documentation available.
      #
      APPLICATION = "APPLICATION"

      # No documentation available.
      #
      ROUTE = "ROUTE"

      # No documentation available.
      #
      SERVICE = "SERVICE"

      # No documentation available.
      #
      TRANSIT_GATEWAY = "TRANSIT_GATEWAY"

      # No documentation available.
      #
      TRANSIT_GATEWAY_ATTACHMENT = "TRANSIT_GATEWAY_ATTACHMENT"

      # No documentation available.
      #
      API_GATEWAY = "API_GATEWAY"

      # No documentation available.
      #
      NLB = "NLB"

      # No documentation available.
      #
      TARGET_GROUP = "TARGET_GROUP"

      # No documentation available.
      #
      LOAD_BALANCER_LISTENER = "LOAD_BALANCER_LISTENER"

      # No documentation available.
      #
      VPC_LINK = "VPC_LINK"

      # No documentation available.
      #
      LAMBDA = "LAMBDA"

      # No documentation available.
      #
      VPC = "VPC"

      # No documentation available.
      #
      SUBNET = "SUBNET"

      # No documentation available.
      #
      ROUTE_TABLE = "ROUTE_TABLE"

      # No documentation available.
      #
      SECURITY_GROUP = "SECURITY_GROUP"

      # No documentation available.
      #
      VPC_ENDPOINT_SERVICE_CONFIGURATION = "VPC_ENDPOINT_SERVICE_CONFIGURATION"

      # No documentation available.
      #
      RESOURCE_SHARE = "RESOURCE_SHARE"

      # No documentation available.
      #
      IAM_ROLE = "IAM_ROLE"
    end

    # <p>Error associated with a resource returned for a Get or List resource response. </p>
    #
    # @!attribute code
    #   <p>The error code associated with the error. </p>
    #
    #   Enum, one of: ["INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message associated with the error. </p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the resource owner. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_identifier
    #   <p>The ID of the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource. </p>
    #
    #   Enum, one of: ["ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"]
    #
    #   @return [String]
    #
    # @!attribute additional_details
    #   <p>Additional details about the error. </p>
    #
    #   @return [Hash<String, String>]
    #
    ErrorResponse = ::Struct.new(
      :code,
      :message,
      :account_id,
      :resource_identifier,
      :resource_type,
      :additional_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    GetApplicationInput = ::Struct.new(
      :environment_identifier,
      :application_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the application owner (which is always the same as
    #         the environment owner account ID).</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the application creator. </p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC). </p>
    #
    #   @return [String]
    #
    # @!attribute proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    #
    #   Enum, one of: ["API_GATEWAY"]
    #
    #   @return [String]
    #
    # @!attribute api_gateway_proxy
    #   <p>The endpoint URL of the API Gateway proxy. </p>
    #
    #   @return [ApiGatewayProxyConfig]
    #
    # @!attribute state
    #   <p>The current state of the application. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>Any error associated with the application resource. </p>
    #
    #   @return [ErrorResponse]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the application was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the application is created. </p>
    #
    #   @return [Time]
    #
    GetApplicationOutput = ::Struct.new(
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :application_id,
      :environment_id,
      :vpc_id,
      :proxy_type,
      :api_gateway_proxy,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::GetApplicationOutput "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "created_by_account_id=#{created_by_account_id || 'nil'}, "\
          "application_id=#{application_id || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "vpc_id=#{vpc_id || 'nil'}, "\
          "proxy_type=#{proxy_type || 'nil'}, "\
          "api_gateway_proxy=#{api_gateway_proxy || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "error=#{error || 'nil'}, "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment.</p>
    #
    #   @return [String]
    #
    GetEnvironmentInput = ::Struct.new(
      :environment_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute network_fabric_type
    #   <p>The network fabric type of the environment. </p>
    #
    #   Enum, one of: ["TRANSIT_GATEWAY"]
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the environment owner.</p>
    #
    #   @return [String]
    #
    # @!attribute transit_gateway_id
    #   <p>The ID of the transit gateway set up by the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the environment. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>Any error associated with the environment resource. </p>
    #
    #   @return [ErrorResponse]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the environment was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the environment is created. </p>
    #
    #   @return [Time]
    #
    GetEnvironmentOutput = ::Struct.new(
      :name,
      :arn,
      :description,
      :environment_id,
      :network_fabric_type,
      :owner_account_id,
      :transit_gateway_id,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::GetEnvironmentOutput "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "network_fabric_type=#{network_fabric_type || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "transit_gateway_id=#{transit_gateway_id || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "error=#{error || 'nil'}, "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # @!attribute identifier
    #   <p>The Amazon Resource Name (ARN) of the resource associated with the policy. </p>
    #
    #   @return [String]
    #
    GetResourcePolicyInput = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>A JSON-formatted string for an Amazon Web Services resource-based policy. </p>
    #
    #   @return [String]
    #
    GetResourcePolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The ID of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute route_identifier
    #   <p>The ID of the route.</p>
    #
    #   @return [String]
    #
    GetRouteInput = ::Struct.new(
      :environment_identifier,
      :application_identifier,
      :route_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute route_id
    #   <p>The unique identifier of the route.</p>
    #            <p>
    #               <b>DEFAULT</b>: All traffic that does not match another route is
    #         forwarded to the default route. Applications must have a default route before any other routes
    #         can be created.</p>
    #            <p>
    #               <b>URI_PATH</b>: A route that is based on a URI path.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the route.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the route owner.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the route creator.</p>
    #
    #   @return [String]
    #
    # @!attribute route_type
    #   <p>The type of route.</p>
    #
    #   Enum, one of: ["DEFAULT", "URI_PATH"]
    #
    #   @return [String]
    #
    # @!attribute service_id
    #   <p>The unique identifier of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The ID of the application that the route belongs to. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>Unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute source_path
    #   <p>The path to use to match traffic. Paths must start with <code>/</code> and are relative to
    #         the base of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute member_methods
    #   <p>A list of HTTP methods to match. An empty list matches all values. If a method is present,
    #         only HTTP requests using that method are forwarded to this route’s service. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include_child_paths
    #   <p>Indicates whether to match all subpaths of the given source path. If this value is
    #           <code>false</code>, requests must match the source path exactly before they are forwarded to
    #         this route's service. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute path_resource_to_id
    #   <p>A mapping of Amazon API Gateway path resources to resource IDs. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute state
    #   <p>The current state of the route. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>Any error associated with the route resource. </p>
    #
    #   @return [ErrorResponse]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the route was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>The timestamp of when the route is created. </p>
    #
    #   @return [Time]
    #
    GetRouteOutput = ::Struct.new(
      :route_id,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :route_type,
      :service_id,
      :application_id,
      :environment_id,
      :source_path,
      :member_methods,
      :include_child_paths,
      :path_resource_to_id,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::GetRouteOutput "\
          "route_id=#{route_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "created_by_account_id=#{created_by_account_id || 'nil'}, "\
          "route_type=#{route_type || 'nil'}, "\
          "service_id=#{service_id || 'nil'}, "\
          "application_id=#{application_id || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "source_path=#{source_path || 'nil'}, "\
          "member_methods=#{member_methods || 'nil'}, "\
          "include_child_paths=#{include_child_paths || 'nil'}, "\
          "path_resource_to_id=#{path_resource_to_id || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "error=#{error || 'nil'}, "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute service_identifier
    #   <p>The ID of the service.</p>
    #
    #   @return [String]
    #
    GetServiceInput = ::Struct.new(
      :environment_identifier,
      :application_identifier,
      :service_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_id
    #   <p>The unique identifier of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the service owner.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the service creator.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the service. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC). </p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The endpoint type of the service.</p>
    #
    #   Enum, one of: ["LAMBDA", "URL"]
    #
    #   @return [String]
    #
    # @!attribute url_endpoint
    #   <p>The configuration for the URL endpoint type.</p>
    #            <p>The <b>Url</b> isthe URL of the endpoint type.</p>
    #            <p>The <b>HealthUrl</b> is the health check URL of the endpoint
    #         type. </p>
    #
    #   @return [UrlEndpointConfig]
    #
    # @!attribute lambda_endpoint
    #   <p>The configuration for the Lambda endpoint type.</p>
    #            <p>The <b>Arn</b> is the Amazon Resource Name (ARN) of the Lambda function associated with this service. </p>
    #
    #   @return [LambdaEndpointConfig]
    #
    # @!attribute state
    #   <p>The current state of the service. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>Any error associated with the service resource. </p>
    #
    #   @return [ErrorResponse]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the service was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>The timestamp of when the service is created.</p>
    #
    #   @return [Time]
    #
    GetServiceOutput = ::Struct.new(
      :service_id,
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :description,
      :environment_id,
      :application_id,
      :vpc_id,
      :endpoint_type,
      :url_endpoint,
      :lambda_endpoint,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::GetServiceOutput "\
          "service_id=#{service_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "created_by_account_id=#{created_by_account_id || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "application_id=#{application_id || 'nil'}, "\
          "vpc_id=#{vpc_id || 'nil'}, "\
          "endpoint_type=#{endpoint_type || 'nil'}, "\
          "url_endpoint=#{url_endpoint || 'nil'}, "\
          "lambda_endpoint=#{lambda_endpoint || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "error=#{error || 'nil'}, "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # Includes enum constants for HttpMethod
    #
    module HttpMethod
      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      GET = "GET"

      # No documentation available.
      #
      HEAD = "HEAD"

      # No documentation available.
      #
      OPTIONS = "OPTIONS"

      # No documentation available.
      #
      PATCH = "PATCH"

      # No documentation available.
      #
      POST = "POST"

      # No documentation available.
      #
      PUT = "PUT"
    end

    # <p>An unexpected error occurred while processing the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource policy is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResourcePolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for the Lambda endpoint type. </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda endpoint. </p>
    #
    #   @return [String]
    #
    LambdaEndpointConfig = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the Lambda endpoint type. </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda endpoint. </p>
    #
    #   @return [String]
    #
    LambdaEndpointInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary for the Lambda endpoint type. </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda endpoint. </p>
    #
    #   @return [String]
    #
    LambdaEndpointSummary = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    ListApplicationsInput = ::Struct.new(
      :environment_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_summary_list
    #   <p>The list of <code>ApplicationSummary</code> objects. </p>
    #
    #   @return [Array<ApplicationSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListApplicationsOutput = ::Struct.new(
      :application_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    ListEnvironmentVpcsInput = ::Struct.new(
      :environment_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_vpc_list
    #   <p>The list of <code>EnvironmentVpc</code> objects. </p>
    #
    #   @return [Array<EnvironmentVpc>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListEnvironmentVpcsOutput = ::Struct.new(
      :environment_vpc_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    ListEnvironmentsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_summary_list
    #   <p>The list of <code>EnvironmentSummary</code> objects. </p>
    #
    #   @return [Array<EnvironmentSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListEnvironmentsOutput = ::Struct.new(
      :environment_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The ID of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    ListRoutesInput = ::Struct.new(
      :environment_identifier,
      :application_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute route_summary_list
    #   <p>The list of <code>RouteSummary</code> objects. </p>
    #
    #   @return [Array<RouteSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListRoutesOutput = ::Struct.new(
      :route_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_identifier
    #   <p>The ID of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The ID of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    ListServicesInput = ::Struct.new(
      :environment_identifier,
      :application_identifier,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_summary_list
    #   <p> The list of <code>ServiceSummary</code> objects. </p>
    #
    #   @return [Array<ServiceSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListServicesOutput = ::Struct.new(
      :service_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The list of tags assigned to the resource. </p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::ListTagsForResourceOutput "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for NetworkFabricType
    #
    module NetworkFabricType
      # No documentation available.
      #
      TRANSIT_GATEWAY = "TRANSIT_GATEWAY"
    end

    # Includes enum constants for ProxyType
    #
    module ProxyType
      # No documentation available.
      #
      API_GATEWAY = "API_GATEWAY"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the policy is being attached.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>A JSON-formatted string for an Amazon Web Services resource-based policy. </p>
    #
    #   @return [String]
    #
    PutResourcePolicyInput = ::Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request references a resource that does not exist. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource. </p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RouteActivationState
    #
    module RouteActivationState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"
    end

    # Includes enum constants for RouteState
    #
    module RouteState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # <p>The summary information for the routes as a response to <code>ListRoutes</code>. </p>
    #
    # @!attribute route_id
    #   <p>The unique identifier of the route. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the route. </p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the route owner.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the route creator. </p>
    #
    #   @return [String]
    #
    # @!attribute route_type
    #   <p>The route type of the route. </p>
    #
    #   Enum, one of: ["DEFAULT", "URI_PATH"]
    #
    #   @return [String]
    #
    # @!attribute service_id
    #   <p>The unique identifier of the service. </p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute source_path
    #   <p>The path to use to match traffic. Paths must start with <code>/</code> and are relative to
    #         the base of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute member_methods
    #   <p>A list of HTTP methods to match. An empty list matches all values. If a method is present,
    #         only HTTP requests using that method are forwarded to this route’s service. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include_child_paths
    #   <p>Indicates whether to match all subpaths of the given source path. If this value is
    #           <code>false</code>, requests must match the source path exactly before they are forwarded to
    #         this route's service.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute path_resource_to_id
    #   <p>A mapping of Amazon API Gateway path resources to resource IDs. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute state
    #   <p>The current state of the route. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the route. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>Any error associated with the route resource. </p>
    #
    #   @return [ErrorResponse]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the route was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the route is created. </p>
    #
    #   @return [Time]
    #
    RouteSummary = ::Struct.new(
      :route_id,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :route_type,
      :service_id,
      :application_id,
      :environment_id,
      :source_path,
      :member_methods,
      :include_child_paths,
      :path_resource_to_id,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::RouteSummary "\
          "route_id=#{route_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "created_by_account_id=#{created_by_account_id || 'nil'}, "\
          "route_type=#{route_type || 'nil'}, "\
          "service_id=#{service_id || 'nil'}, "\
          "application_id=#{application_id || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "source_path=#{source_path || 'nil'}, "\
          "member_methods=#{member_methods || 'nil'}, "\
          "include_child_paths=#{include_child_paths || 'nil'}, "\
          "path_resource_to_id=#{path_resource_to_id || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "error=#{error || 'nil'}, "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # Includes enum constants for RouteType
    #
    module RouteType
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      URI_PATH = "URI_PATH"
    end

    # Includes enum constants for ServiceEndpointType
    #
    module ServiceEndpointType
      # No documentation available.
      #
      LAMBDA = "LAMBDA"

      # No documentation available.
      #
      URL = "URL"
    end

    # <p>The request would cause a service quota to be exceeded. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource. </p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>Service quota requirement to identify originating quota. Reached throttling quota
    #         exception. </p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>Service quota requirement to identify originating service. Reached throttling quota
    #         exception service code. </p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceState
    #
    module ServiceState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>A summary for the service as a response to <code>ListServices</code>. </p>
    #
    # @!attribute service_id
    #   <p>The unique identifier of the service. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the service. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service. </p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID of the service owner.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_account_id
    #   <p>The Amazon Web Services account ID of the service creator. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the service. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment. </p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC). </p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The endpoint type of the service. </p>
    #
    #   Enum, one of: ["LAMBDA", "URL"]
    #
    #   @return [String]
    #
    # @!attribute url_endpoint
    #   <p>The summary of the configuration for the URL endpoint type. </p>
    #
    #   @return [UrlEndpointSummary]
    #
    # @!attribute lambda_endpoint
    #   <p>A summary of the configuration for the Lambda endpoint type. </p>
    #
    #   @return [LambdaEndpointSummary]
    #
    # @!attribute state
    #   <p>The current state of the service. </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the service. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>Any error associated with the service resource. </p>
    #
    #   @return [ErrorResponse]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when the service was last updated. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>A timestamp that indicates when the service is created. </p>
    #
    #   @return [Time]
    #
    ServiceSummary = ::Struct.new(
      :service_id,
      :name,
      :arn,
      :owner_account_id,
      :created_by_account_id,
      :description,
      :environment_id,
      :application_id,
      :vpc_id,
      :endpoint_type,
      :url_endpoint,
      :lambda_endpoint,
      :state,
      :tags,
      :error,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::ServiceSummary "\
          "service_id=#{service_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "owner_account_id=#{owner_account_id || 'nil'}, "\
          "created_by_account_id=#{created_by_account_id || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "environment_id=#{environment_id || 'nil'}, "\
          "application_id=#{application_id || 'nil'}, "\
          "vpc_id=#{vpc_id || 'nil'}, "\
          "endpoint_type=#{endpoint_type || 'nil'}, "\
          "url_endpoint=#{url_endpoint || 'nil'}, "\
          "lambda_endpoint=#{lambda_endpoint || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "error=#{error || 'nil'}, "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}>"
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The new or modified tags for the resource. </p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::TagResourceInput "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request was denied because the request was throttled. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>Service quota requirement to identify originating quota. Reached throttling quota
    #         exception. </p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>Service quota requirement to identify originating service. Reached throttling quota
    #         exception service code. </p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying. </p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of keys of the tags to be removed from the resource. </p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubRefactorSpaces::Types::UntagResourceInput "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "tag_keys=\"[SENSITIVE]\">"
      end
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for the URI path route type. </p>
    #
    # @!attribute source_path
    #   <p>The path to use to match traffic. Paths must start with <code>/</code> and are relative to
    #         the base of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute activation_state
    #   <p>Indicates whether traffic is forwarded to this route’s service after the route is created.
    #       </p>
    #
    #   Enum, one of: ["ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute member_methods
    #   <p>A list of HTTP methods to match. An empty list matches all values. If a method is present,
    #         only HTTP requests using that method are forwarded to this route’s service. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include_child_paths
    #   <p>Indicates whether to match all subpaths of the given source path. If this value is
    #           <code>false</code>, requests must match the source path exactly before they are forwarded to
    #         this route's service. </p>
    #
    #   @return [Boolean]
    #
    UriPathRouteInput = ::Struct.new(
      :source_path,
      :activation_state,
      :member_methods,
      :include_child_paths,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for the URL endpoint type. </p>
    #
    # @!attribute url
    #   <p>The HTTP URL endpoint. </p>
    #
    #   @return [String]
    #
    # @!attribute health_url
    #   <p>The health check URL of the URL endpoint type. </p>
    #
    #   @return [String]
    #
    UrlEndpointConfig = ::Struct.new(
      :url,
      :health_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for the URL endpoint type. </p>
    #
    # @!attribute url
    #   <p>The URL to route traffic to. The URL must be an <a href="https://datatracker.ietf.org/doc/html/rfc3986">rfc3986-formatted URL</a>. If the
    #         host is a domain name, the name must be resolvable over the public internet. If the scheme is
    #           <code>https</code>, the top level domain of the host must be listed in the <a href="https://www.iana.org/domains/root/db">IANA root zone database</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute health_url
    #   <p>The health check URL of the URL endpoint type. If the URL is a public endpoint, the
    #           <code>HealthUrl</code> must also be a public endpoint. If the URL is a private endpoint
    #         inside a virtual private cloud (VPC), the health URL must also be a private endpoint, and the
    #         host must be the same as the URL. </p>
    #
    #   @return [String]
    #
    UrlEndpointInput = ::Struct.new(
      :url,
      :health_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of the configuration for the URL endpoint type. </p>
    #
    # @!attribute url
    #   <p> The URL to route traffic to. The URL must be an <a href="https://datatracker.ietf.org/doc/html/rfc3986">rfc3986-formatted URL</a>. If the
    #         host is a domain name, the name must be resolvable over the public internet. If the scheme is
    #           <code>https</code>, the top level domain of the host must be listed in the <a href="https://www.iana.org/domains/root/db">IANA root zone database</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute health_url
    #   <p>The health check URL of the URL endpoint type. If the URL is a public endpoint, the
    #           <code>HealthUrl</code> must also be a public endpoint. If the URL is a private endpoint
    #         inside a virtual private cloud (VPC), the health URL must also be a private endpoint, and the
    #         host must be the same as the URL.</p>
    #
    #   @return [String]
    #
    UrlEndpointSummary = ::Struct.new(
      :url,
      :health_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input does not satisfy the constraints specified by an Amazon Web Service.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
