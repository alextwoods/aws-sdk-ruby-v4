# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ConfigService
  # An API client for StarlingDoveService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Config</fullname>
  #
  # 		       <p>Config provides a way to keep track of the configurations
  # 			of all the Amazon Web Services resources associated with your Amazon Web Services account. You can
  # 			use Config to get the current and historical configurations of
  # 			each Amazon Web Services resource and also to get information about the relationship
  # 			between the resources. An Amazon Web Services resource can be an Amazon Compute
  # 			Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an
  # 			elastic network Interface (ENI), or a security group. For a complete
  # 			list of resources currently supported by Config, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported Amazon Web Services resources</a>.</p>
  #
  # 		       <p>You can access and manage Config through the Amazon Web Services Management
  # 			Console, the Amazon Web Services Command Line Interface (Amazon Web Services CLI), the Config
  # 			API, or the Amazon Web Services SDKs for Config. This reference guide contains
  # 			documentation for the Config API and the Amazon Web Services CLI commands that
  # 			you can use to manage Config. The Config API uses the
  # 			Signature Version 4 protocol for signing requests. For more
  # 			information about how to sign a request with this protocol, see
  # 				<a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature
  # 				Version 4 Signing Process</a>. For detailed information
  # 			about Config features and their associated actions or commands,
  # 			as well as how to work with Amazon Web Services Management Console, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html">What Is Config</a> in the <i>Config Developer
  # 				Guide</i>.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::ConfigService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Returns the current configuration items for resources that are present in your Config aggregator. The operation also returns a list of resources that are not processed in the current request.
    # 			If there are no unprocessed resources, the operation returns an empty <code>unprocessedResourceIdentifiers</code> list. </p>
    # 		
    # 		       <note>
    #             <ul>
    #                <li>
    #                   <p>The API does not return results for deleted resources.</p>
    #                </li>
    #                <li>
    #                   <p> The API does not return tags and relationships.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::BatchGetAggregateResourceConfigInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [Array<AggregateResourceIdentifier>] :resource_identifiers
    #   <p>A list of aggregate ResourceIdentifiers objects. </p>
    #
    # @return [Types::BatchGetAggregateResourceConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_aggregate_resource_config(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     resource_identifiers: [
    #       {
    #         source_account_id: 'SourceAccountId', # required
    #         source_region: 'SourceRegion', # required
    #         resource_id: 'ResourceId', # required
    #         resource_type: 'AWS::EC2::CustomerGateway', # required - accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #         resource_name: 'ResourceName'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetAggregateResourceConfigOutput
    #   resp.data.base_configuration_items #=> Array<BaseConfigurationItem>
    #   resp.data.base_configuration_items[0] #=> Types::BaseConfigurationItem
    #   resp.data.base_configuration_items[0].version #=> String
    #   resp.data.base_configuration_items[0].account_id #=> String
    #   resp.data.base_configuration_items[0].configuration_item_capture_time #=> Time
    #   resp.data.base_configuration_items[0].configuration_item_status #=> String, one of ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"]
    #   resp.data.base_configuration_items[0].configuration_state_id #=> String
    #   resp.data.base_configuration_items[0].arn #=> String
    #   resp.data.base_configuration_items[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.base_configuration_items[0].resource_id #=> String
    #   resp.data.base_configuration_items[0].resource_name #=> String
    #   resp.data.base_configuration_items[0].aws_region #=> String
    #   resp.data.base_configuration_items[0].availability_zone #=> String
    #   resp.data.base_configuration_items[0].resource_creation_time #=> Time
    #   resp.data.base_configuration_items[0].configuration #=> String
    #   resp.data.base_configuration_items[0].supplementary_configuration #=> Hash<String, String>
    #   resp.data.base_configuration_items[0].supplementary_configuration['key'] #=> String
    #   resp.data.unprocessed_resource_identifiers #=> Array<AggregateResourceIdentifier>
    #   resp.data.unprocessed_resource_identifiers[0] #=> Types::AggregateResourceIdentifier
    #   resp.data.unprocessed_resource_identifiers[0].source_account_id #=> String
    #   resp.data.unprocessed_resource_identifiers[0].source_region #=> String
    #   resp.data.unprocessed_resource_identifiers[0].resource_id #=> String
    #   resp.data.unprocessed_resource_identifiers[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.unprocessed_resource_identifiers[0].resource_name #=> String
    #
    def batch_get_aggregate_resource_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetAggregateResourceConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetAggregateResourceConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetAggregateResourceConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoSuchConfigurationAggregatorException]),
        data_parser: Parsers::BatchGetAggregateResourceConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetAggregateResourceConfig,
        stubs: @stubs,
        params_class: Params::BatchGetAggregateResourceConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_aggregate_resource_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the <code>BaseConfigurationItem</code> for one or more requested resources.
    # 			The operation also returns a list of resources that are
    # 			not processed in the current request. If there are no unprocessed
    # 			resources, the operation returns an empty unprocessedResourceKeys
    # 			list. </p>
    # 		       <note>
    # 			         <ul>
    #                <li>
    # 					             <p>The API does not return results for deleted
    # 						resources.</p>
    # 				           </li>
    #                <li>
    # 					             <p> The API does not return any tags for the requested
    # 						resources. This information is filtered out of the
    # 						supplementaryConfiguration section of the API
    # 						response.</p>
    # 				           </li>
    #             </ul>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::BatchGetResourceConfigInput}.
    #
    # @option params [Array<ResourceKey>] :resource_keys
    #   <p>A list of resource keys to be processed with the current
    #   			request. Each element in the list consists of the resource type and
    #   			resource ID.</p>
    #
    # @return [Types::BatchGetResourceConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_resource_config(
    #     resource_keys: [
    #       {
    #         resource_type: 'AWS::EC2::CustomerGateway', # required - accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #         resource_id: 'resourceId' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetResourceConfigOutput
    #   resp.data.base_configuration_items #=> Array<BaseConfigurationItem>
    #   resp.data.base_configuration_items[0] #=> Types::BaseConfigurationItem
    #   resp.data.base_configuration_items[0].version #=> String
    #   resp.data.base_configuration_items[0].account_id #=> String
    #   resp.data.base_configuration_items[0].configuration_item_capture_time #=> Time
    #   resp.data.base_configuration_items[0].configuration_item_status #=> String, one of ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"]
    #   resp.data.base_configuration_items[0].configuration_state_id #=> String
    #   resp.data.base_configuration_items[0].arn #=> String
    #   resp.data.base_configuration_items[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.base_configuration_items[0].resource_id #=> String
    #   resp.data.base_configuration_items[0].resource_name #=> String
    #   resp.data.base_configuration_items[0].aws_region #=> String
    #   resp.data.base_configuration_items[0].availability_zone #=> String
    #   resp.data.base_configuration_items[0].resource_creation_time #=> Time
    #   resp.data.base_configuration_items[0].configuration #=> String
    #   resp.data.base_configuration_items[0].supplementary_configuration #=> Hash<String, String>
    #   resp.data.base_configuration_items[0].supplementary_configuration['key'] #=> String
    #   resp.data.unprocessed_resource_keys #=> Array<ResourceKey>
    #   resp.data.unprocessed_resource_keys[0] #=> Types::ResourceKey
    #   resp.data.unprocessed_resource_keys[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.unprocessed_resource_keys[0].resource_id #=> String
    #
    def batch_get_resource_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetResourceConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetResourceConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetResourceConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoAvailableConfigurationRecorderException]),
        data_parser: Parsers::BatchGetResourceConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetResourceConfig,
        stubs: @stubs,
        params_class: Params::BatchGetResourceConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_resource_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the authorization granted to the specified
    # 			configuration aggregator account in a specified region.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAggregationAuthorizationInput}.
    #
    # @option params [String] :authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate
    #   			data.</p>
    #
    # @option params [String] :authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #
    # @return [Types::DeleteAggregationAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_aggregation_authorization(
    #     authorized_account_id: 'AuthorizedAccountId', # required
    #     authorized_aws_region: 'AuthorizedAwsRegion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAggregationAuthorizationOutput
    #
    def delete_aggregation_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAggregationAuthorizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAggregationAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAggregationAuthorization
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException]),
        data_parser: Parsers::DeleteAggregationAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAggregationAuthorization,
        stubs: @stubs,
        params_class: Params::DeleteAggregationAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_aggregation_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Config rule and all of its evaluation
    # 			results.</p>
    # 		       <p>Config sets the state of a rule to <code>DELETING</code>
    # 			until the deletion is complete. You cannot update a rule while it is
    # 			in this state. If you make a <code>PutConfigRule</code> or
    # 				<code>DeleteConfigRule</code> request for the rule, you will
    # 			receive a <code>ResourceInUseException</code>.</p>
    # 		       <p>You can check the state of a rule by using the
    # 				<code>DescribeConfigRules</code> request.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigRuleInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule that you want to
    #   			delete.</p>
    #
    # @return [Types::DeleteConfigRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_config_rule(
    #     config_rule_name: 'ConfigRuleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigRuleOutput
    #
    def delete_config_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::NoSuchConfigRuleException]),
        data_parser: Parsers::DeleteConfigRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigRule,
        stubs: @stubs,
        params_class: Params::DeleteConfigRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_config_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified configuration aggregator and the
    # 			aggregated data associated with the aggregator.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationAggregatorInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @return [Types::DeleteConfigurationAggregatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_aggregator(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationAggregatorOutput
    #
    def delete_configuration_aggregator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationAggregatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationAggregatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigurationAggregator
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigurationAggregatorException]),
        data_parser: Parsers::DeleteConfigurationAggregator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigurationAggregator,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationAggregatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration_aggregator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the configuration recorder.</p>
    # 		       <p>After the configuration recorder is deleted, Config will
    # 			not record resource configuration changes until you create a new
    # 			configuration recorder.</p>
    # 		       <p>This action does not delete the configuration information that
    # 			was previously recorded. You will be able to access the previously
    # 			recorded information by using the
    # 				<code>GetResourceConfigHistory</code> action, but you will not
    # 			be able to access this information in the Config console until
    # 			you create a new configuration recorder.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationRecorderInput}.
    #
    # @option params [String] :configuration_recorder_name
    #   <p>The name of the configuration recorder to be deleted. You can
    #   			retrieve the name of your configuration recorder by using the
    #   				<code>DescribeConfigurationRecorders</code> action.</p>
    #
    # @return [Types::DeleteConfigurationRecorderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_recorder(
    #     configuration_recorder_name: 'ConfigurationRecorderName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationRecorderOutput
    #
    def delete_configuration_recorder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationRecorderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationRecorderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigurationRecorder
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigurationRecorderException]),
        data_parser: Parsers::DeleteConfigurationRecorder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigurationRecorder,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationRecorderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration_recorder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified conformance pack and all the Config rules, remediation actions, and all evaluation results within that
    # 			conformance pack.</p>
    # 		       <p>Config sets the conformance pack to <code>DELETE_IN_PROGRESS</code> until the deletion is complete.
    # 			You cannot update a conformance pack while it is in this state.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConformancePackInput}.
    #
    # @option params [String] :conformance_pack_name
    #   <p>Name of the conformance pack you want to delete.</p>
    #
    # @return [Types::DeleteConformancePackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_conformance_pack(
    #     conformance_pack_name: 'ConformancePackName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConformancePackOutput
    #
    def delete_conformance_pack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConformancePackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConformancePackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConformancePack
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConformancePackException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteConformancePack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConformancePack,
        stubs: @stubs,
        params_class: Params::DeleteConformancePackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_conformance_pack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the delivery channel.</p>
    # 		       <p>Before you can delete the delivery channel, you must stop the
    # 			configuration recorder by using the <a>StopConfigurationRecorder</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeliveryChannelInput}.
    #
    # @option params [String] :delivery_channel_name
    #   <p>The name of the delivery channel to delete.</p>
    #
    # @return [Types::DeleteDeliveryChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery_channel(
    #     delivery_channel_name: 'DeliveryChannelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeliveryChannelOutput
    #
    def delete_delivery_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeliveryChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeliveryChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDeliveryChannel
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchDeliveryChannelException, Errors::LastDeliveryChannelDeleteFailedException]),
        data_parser: Parsers::DeleteDeliveryChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDeliveryChannel,
        stubs: @stubs,
        params_class: Params::DeleteDeliveryChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_delivery_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the evaluation results for the specified Config
    # 			rule. You can specify one Config rule per request. After you
    # 			delete the evaluation results, you can call the <a>StartConfigRulesEvaluation</a> API to start evaluating
    # 			your Amazon Web Services resources against the rule.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEvaluationResultsInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want to delete
    #   			the evaluation results.</p>
    #
    # @return [Types::DeleteEvaluationResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_evaluation_results(
    #     config_rule_name: 'ConfigRuleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEvaluationResultsOutput
    #
    def delete_evaluation_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEvaluationResultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEvaluationResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEvaluationResults
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::NoSuchConfigRuleException]),
        data_parser: Parsers::DeleteEvaluationResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEvaluationResults,
        stubs: @stubs,
        params_class: Params::DeleteEvaluationResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_evaluation_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified organization Config rule and all of its evaluation results from all member accounts in that organization. </p>
    # 	        <p>Only a master account and a delegated administrator account can delete an organization Config rule.
    # 		When calling this API with a delegated administrator, you must ensure Organizations
    # 			<code>ListDelegatedAdministrator</code> permissions are added.</p>
    # 		       <p>Config sets the state of a rule to DELETE_IN_PROGRESS until the deletion is complete.
    # 			You cannot update a rule while it is in this state.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOrganizationConfigRuleInput}.
    #
    # @option params [String] :organization_config_rule_name
    #   <p>The name of organization Config rule that you want to delete.</p>
    #
    # @return [Types::DeleteOrganizationConfigRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_organization_config_rule(
    #     organization_config_rule_name: 'OrganizationConfigRuleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOrganizationConfigRuleOutput
    #
    def delete_organization_config_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOrganizationConfigRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOrganizationConfigRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOrganizationConfigRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::ResourceInUseException, Errors::NoSuchOrganizationConfigRuleException]),
        data_parser: Parsers::DeleteOrganizationConfigRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOrganizationConfigRule,
        stubs: @stubs,
        params_class: Params::DeleteOrganizationConfigRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_organization_config_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified organization conformance pack and all of the Config rules and remediation actions from
    # 			all member accounts in that organization. </p>
    #          <p> Only a master account or a delegated administrator account can delete an organization conformance pack.
    # 	When calling this API with a delegated administrator, you must ensure Organizations
    # 		<code>ListDelegatedAdministrator</code> permissions are added.</p>
    # 			      <p>Config sets the state of a conformance pack to DELETE_IN_PROGRESS until the deletion is complete.
    # 				You cannot update a conformance pack while it is in this state. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOrganizationConformancePackInput}.
    #
    # @option params [String] :organization_conformance_pack_name
    #   <p>The name of organization conformance pack that you want to delete.</p>
    #
    # @return [Types::DeleteOrganizationConformancePackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_organization_conformance_pack(
    #     organization_conformance_pack_name: 'OrganizationConformancePackName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOrganizationConformancePackOutput
    #
    def delete_organization_conformance_pack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOrganizationConformancePackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOrganizationConformancePackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOrganizationConformancePack
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::NoSuchOrganizationConformancePackException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteOrganizationConformancePack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOrganizationConformancePack,
        stubs: @stubs,
        params_class: Params::DeleteOrganizationConformancePackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_organization_conformance_pack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes pending authorization requests for a specified
    # 			aggregator account in a specified region.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePendingAggregationRequestInput}.
    #
    # @option params [String] :requester_account_id
    #   <p>The 12-digit account ID of the account requesting to aggregate
    #   			data.</p>
    #
    # @option params [String] :requester_aws_region
    #   <p>The region requesting to aggregate data.</p>
    #
    # @return [Types::DeletePendingAggregationRequestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pending_aggregation_request(
    #     requester_account_id: 'RequesterAccountId', # required
    #     requester_aws_region: 'RequesterAwsRegion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePendingAggregationRequestOutput
    #
    def delete_pending_aggregation_request(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePendingAggregationRequestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePendingAggregationRequestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePendingAggregationRequest
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException]),
        data_parser: Parsers::DeletePendingAggregationRequest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePendingAggregationRequest,
        stubs: @stubs,
        params_class: Params::DeletePendingAggregationRequestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pending_aggregation_request
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the remediation configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRemediationConfigurationInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want to delete remediation configuration.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of a resource.</p>
    #
    # @return [Types::DeleteRemediationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_remediation_configuration(
    #     config_rule_name: 'ConfigRuleName', # required
    #     resource_type: 'ResourceType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRemediationConfigurationOutput
    #
    def delete_remediation_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRemediationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRemediationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRemediationConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPermissionsException, Errors::RemediationInProgressException, Errors::InvalidParameterValueException, Errors::NoSuchRemediationConfigurationException]),
        data_parser: Parsers::DeleteRemediationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRemediationConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteRemediationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_remediation_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes one or more remediation exceptions mentioned in the resource keys.</p>
    # 		       <note>
    #             <p>Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource.
    # 			Remediation exceptions blocks auto-remediation until the exception is cleared.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteRemediationExceptionsInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want to delete remediation exception configuration.</p>
    #
    # @option params [Array<RemediationExceptionResourceKey>] :resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    #
    # @return [Types::DeleteRemediationExceptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_remediation_exceptions(
    #     config_rule_name: 'ConfigRuleName', # required
    #     resource_keys: [
    #       {
    #         resource_type: 'ResourceType',
    #         resource_id: 'ResourceId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRemediationExceptionsOutput
    #   resp.data.failed_batches #=> Array<FailedDeleteRemediationExceptionsBatch>
    #   resp.data.failed_batches[0] #=> Types::FailedDeleteRemediationExceptionsBatch
    #   resp.data.failed_batches[0].failure_message #=> String
    #   resp.data.failed_batches[0].failed_items #=> Array<RemediationExceptionResourceKey>
    #   resp.data.failed_batches[0].failed_items[0] #=> Types::RemediationExceptionResourceKey
    #   resp.data.failed_batches[0].failed_items[0].resource_type #=> String
    #   resp.data.failed_batches[0].failed_items[0].resource_id #=> String
    #
    def delete_remediation_exceptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRemediationExceptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRemediationExceptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRemediationExceptions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchRemediationExceptionException]),
        data_parser: Parsers::DeleteRemediationExceptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRemediationExceptions,
        stubs: @stubs,
        params_class: Params::DeleteRemediationExceptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_remediation_exceptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Records the configuration state for a custom resource that has been deleted.  This API records a new ConfigurationItem with a ResourceDeleted status. You can retrieve the ConfigurationItems recorded for this resource in your Config History.
    # 			 </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceConfigInput}.
    #
    # @option params [String] :resource_type
    #   <p>The type of the resource.</p>
    #
    # @option params [String] :resource_id
    #   <p>Unique identifier of the resource.</p>
    #
    # @return [Types::DeleteResourceConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_config(
    #     resource_type: 'ResourceType', # required
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceConfigOutput
    #
    def delete_resource_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourceConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourceConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourceConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoRunningConfigurationRecorderException]),
        data_parser: Parsers::DeleteResourceConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourceConfig,
        stubs: @stubs,
        params_class: Params::DeleteResourceConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the retention configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRetentionConfigurationInput}.
    #
    # @option params [String] :retention_configuration_name
    #   <p>The name of the retention configuration to delete.</p>
    #
    # @return [Types::DeleteRetentionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_retention_configuration(
    #     retention_configuration_name: 'RetentionConfigurationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRetentionConfigurationOutput
    #
    def delete_retention_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRetentionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRetentionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRetentionConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::NoSuchRetentionConfigurationException]),
        data_parser: Parsers::DeleteRetentionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRetentionConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteRetentionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_retention_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the stored query for a single Amazon Web Services account and a single Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStoredQueryInput}.
    #
    # @option params [String] :query_name
    #   <p>The name of the query that you want to delete.</p>
    #
    # @return [Types::DeleteStoredQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stored_query(
    #     query_name: 'QueryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStoredQueryOutput
    #
    def delete_stored_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStoredQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStoredQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStoredQuery
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteStoredQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStoredQuery,
        stubs: @stubs,
        params_class: Params::DeleteStoredQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stored_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Schedules delivery of a configuration snapshot to the Amazon S3
    # 			bucket in the specified delivery channel. After the delivery has
    # 			started, Config sends the following notifications using an
    # 			Amazon SNS topic that you have specified.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Notification of the start of the delivery.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Notification of the completion of the delivery, if the
    # 					delivery was successfully completed.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Notification of delivery failure, if the delivery
    # 					failed.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeliverConfigSnapshotInput}.
    #
    # @option params [String] :delivery_channel_name
    #   <p>The name of the delivery channel through which the snapshot is
    #   			delivered.</p>
    #
    # @return [Types::DeliverConfigSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deliver_config_snapshot(
    #     delivery_channel_name: 'deliveryChannelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeliverConfigSnapshotOutput
    #   resp.data.config_snapshot_id #=> String
    #
    def deliver_config_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeliverConfigSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeliverConfigSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeliverConfigSnapshot
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoAvailableConfigurationRecorderException, Errors::NoSuchDeliveryChannelException, Errors::NoRunningConfigurationRecorderException]),
        data_parser: Parsers::DeliverConfigSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeliverConfigSnapshot,
        stubs: @stubs,
        params_class: Params::DeliverConfigSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deliver_config_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of compliant and noncompliant rules with the
    # 			number of resources for compliant and noncompliant rules. Does not display rules that do not have compliance results.
    # 			</p>
    # 		       <note>
    # 			         <p>The results can return an empty result page, but if you
    # 				have a <code>nextToken</code>, the results are displayed on the next
    # 				page.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeAggregateComplianceByConfigRulesInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [ConfigRuleComplianceFilters] :filters
    #   <p>Filters the results by ConfigRuleComplianceFilters object.
    #   		</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is
    #   			maximum.
    #   			If you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    # @return [Types::DescribeAggregateComplianceByConfigRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_aggregate_compliance_by_config_rules(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     filters: {
    #       config_rule_name: 'ConfigRuleName',
    #       compliance_type: 'COMPLIANT', # accepts ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #       account_id: 'AccountId',
    #       aws_region: 'AwsRegion'
    #     },
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAggregateComplianceByConfigRulesOutput
    #   resp.data.aggregate_compliance_by_config_rules #=> Array<AggregateComplianceByConfigRule>
    #   resp.data.aggregate_compliance_by_config_rules[0] #=> Types::AggregateComplianceByConfigRule
    #   resp.data.aggregate_compliance_by_config_rules[0].config_rule_name #=> String
    #   resp.data.aggregate_compliance_by_config_rules[0].compliance #=> Types::Compliance
    #   resp.data.aggregate_compliance_by_config_rules[0].compliance.compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #   resp.data.aggregate_compliance_by_config_rules[0].compliance.compliance_contributor_count #=> Types::ComplianceContributorCount
    #   resp.data.aggregate_compliance_by_config_rules[0].compliance.compliance_contributor_count.capped_count #=> Integer
    #   resp.data.aggregate_compliance_by_config_rules[0].compliance.compliance_contributor_count.cap_exceeded #=> Boolean
    #   resp.data.aggregate_compliance_by_config_rules[0].account_id #=> String
    #   resp.data.aggregate_compliance_by_config_rules[0].aws_region #=> String
    #   resp.data.next_token #=> String
    #
    def describe_aggregate_compliance_by_config_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAggregateComplianceByConfigRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAggregateComplianceByConfigRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAggregateComplianceByConfigRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoSuchConfigurationAggregatorException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeAggregateComplianceByConfigRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAggregateComplianceByConfigRules,
        stubs: @stubs,
        params_class: Params::DescribeAggregateComplianceByConfigRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_aggregate_compliance_by_config_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack.
    # 			Also returns the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.</p>
    # 		       <note>
    #             <p>The results can return an empty result page, but if you have a <code>nextToken</code>, the results are displayed on the next page.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeAggregateComplianceByConformancePacksInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [AggregateConformancePackComplianceFilters] :filters
    #   <p>Filters the result by <code>AggregateConformancePackComplianceFilters</code> object.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of conformance packs compliance details returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    # @return [Types::DescribeAggregateComplianceByConformancePacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_aggregate_compliance_by_conformance_packs(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     filters: {
    #       conformance_pack_name: 'ConformancePackName',
    #       compliance_type: 'COMPLIANT', # accepts ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #       account_id: 'AccountId',
    #       aws_region: 'AwsRegion'
    #     },
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAggregateComplianceByConformancePacksOutput
    #   resp.data.aggregate_compliance_by_conformance_packs #=> Array<AggregateComplianceByConformancePack>
    #   resp.data.aggregate_compliance_by_conformance_packs[0] #=> Types::AggregateComplianceByConformancePack
    #   resp.data.aggregate_compliance_by_conformance_packs[0].conformance_pack_name #=> String
    #   resp.data.aggregate_compliance_by_conformance_packs[0].compliance #=> Types::AggregateConformancePackCompliance
    #   resp.data.aggregate_compliance_by_conformance_packs[0].compliance.compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #   resp.data.aggregate_compliance_by_conformance_packs[0].compliance.compliant_rule_count #=> Integer
    #   resp.data.aggregate_compliance_by_conformance_packs[0].compliance.non_compliant_rule_count #=> Integer
    #   resp.data.aggregate_compliance_by_conformance_packs[0].compliance.total_rule_count #=> Integer
    #   resp.data.aggregate_compliance_by_conformance_packs[0].account_id #=> String
    #   resp.data.aggregate_compliance_by_conformance_packs[0].aws_region #=> String
    #   resp.data.next_token #=> String
    #
    def describe_aggregate_compliance_by_conformance_packs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAggregateComplianceByConformancePacksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAggregateComplianceByConformancePacksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAggregateComplianceByConformancePacks
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoSuchConfigurationAggregatorException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeAggregateComplianceByConformancePacks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAggregateComplianceByConformancePacks,
        stubs: @stubs,
        params_class: Params::DescribeAggregateComplianceByConformancePacksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_aggregate_compliance_by_conformance_packs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of authorizations granted to various aggregator
    # 			accounts and regions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAggregationAuthorizationsInput}.
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of AggregationAuthorizations returned on
    #   			each page. The default is maximum. If you specify 0, Config uses
    #   			the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    # @return [Types::DescribeAggregationAuthorizationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_aggregation_authorizations(
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAggregationAuthorizationsOutput
    #   resp.data.aggregation_authorizations #=> Array<AggregationAuthorization>
    #   resp.data.aggregation_authorizations[0] #=> Types::AggregationAuthorization
    #   resp.data.aggregation_authorizations[0].aggregation_authorization_arn #=> String
    #   resp.data.aggregation_authorizations[0].authorized_account_id #=> String
    #   resp.data.aggregation_authorizations[0].authorized_aws_region #=> String
    #   resp.data.aggregation_authorizations[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_aggregation_authorizations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAggregationAuthorizationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAggregationAuthorizationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAggregationAuthorizations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeAggregationAuthorizations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAggregationAuthorizations,
        stubs: @stubs,
        params_class: Params::DescribeAggregationAuthorizationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_aggregation_authorizations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Indicates whether the specified Config rules are compliant.
    # 			If a rule is noncompliant, this action returns the number of Amazon Web Services
    # 			resources that do not comply with the rule.</p>
    # 		       <p>A rule is compliant if all of the evaluated resources comply
    # 			with it. It is noncompliant if any of these resources do not
    # 			comply.</p>
    # 		       <p>If Config has no current evaluation results for the rule,
    # 			it returns <code>INSUFFICIENT_DATA</code>. This result might
    # 			indicate one of the following conditions:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Config has never invoked an evaluation for the
    # 					rule. To check whether it has, use the
    # 						<code>DescribeConfigRuleEvaluationStatus</code> action
    # 					to get the <code>LastSuccessfulInvocationTime</code> and
    # 						<code>LastFailedInvocationTime</code>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The rule's Lambda function is failing to send
    # 					evaluation results to Config. Verify that the role you
    # 					assigned to your configuration recorder includes the
    # 						<code>config:PutEvaluations</code> permission. If the
    # 					rule is a custom rule, verify that the Lambda execution
    # 					role includes the <code>config:PutEvaluations</code>
    # 					permission.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The rule's Lambda function has returned
    # 						<code>NOT_APPLICABLE</code> for all evaluation results.
    # 					This can occur if the resources were deleted or removed from
    # 					the rule's scope.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeComplianceByConfigRuleInput}.
    #
    # @option params [Array<String>] :config_rule_names
    #   <p>Specify one or more Config rule names to filter the results
    #   			by rule.</p>
    #
    # @option params [Array<String>] :compliance_types
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    # @return [Types::DescribeComplianceByConfigRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_compliance_by_config_rule(
    #     config_rule_names: [
    #       'member'
    #     ],
    #     compliance_types: [
    #       'COMPLIANT' # accepts ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeComplianceByConfigRuleOutput
    #   resp.data.compliance_by_config_rules #=> Array<ComplianceByConfigRule>
    #   resp.data.compliance_by_config_rules[0] #=> Types::ComplianceByConfigRule
    #   resp.data.compliance_by_config_rules[0].config_rule_name #=> String
    #   resp.data.compliance_by_config_rules[0].compliance #=> Types::Compliance
    #   resp.data.compliance_by_config_rules[0].compliance.compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #   resp.data.compliance_by_config_rules[0].compliance.compliance_contributor_count #=> Types::ComplianceContributorCount
    #   resp.data.compliance_by_config_rules[0].compliance.compliance_contributor_count.capped_count #=> Integer
    #   resp.data.compliance_by_config_rules[0].compliance.compliance_contributor_count.cap_exceeded #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_compliance_by_config_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeComplianceByConfigRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeComplianceByConfigRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeComplianceByConfigRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::NoSuchConfigRuleException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeComplianceByConfigRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeComplianceByConfigRule,
        stubs: @stubs,
        params_class: Params::DescribeComplianceByConfigRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_compliance_by_config_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Indicates whether the specified Amazon Web Services resources are compliant. If
    # 			a resource is noncompliant, this action returns the number of Config rules that the resource does not comply with.</p>
    # 		       <p>A resource is compliant if it complies with all the Config
    # 			rules that evaluate it. It is noncompliant if it does not comply
    # 			with one or more of these rules.</p>
    # 		       <p>If Config has no current evaluation results for the
    # 			resource, it returns <code>INSUFFICIENT_DATA</code>. This result
    # 			might indicate one of the following conditions about the rules that
    # 			evaluate the resource:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Config has never invoked an evaluation for the
    # 					rule. To check whether it has, use the
    # 						<code>DescribeConfigRuleEvaluationStatus</code> action
    # 					to get the <code>LastSuccessfulInvocationTime</code> and
    # 						<code>LastFailedInvocationTime</code>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The rule's Lambda function is failing to send
    # 					evaluation results to Config. Verify that the role that
    # 					you assigned to your configuration recorder includes the
    # 						<code>config:PutEvaluations</code> permission. If the
    # 					rule is a custom rule, verify that the Lambda execution
    # 					role includes the <code>config:PutEvaluations</code>
    # 					permission.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The rule's Lambda function has returned
    # 						<code>NOT_APPLICABLE</code> for all evaluation results.
    # 					This can occur if the resources were deleted or removed from
    # 					the rule's scope.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeComplianceByResourceInput}.
    #
    # @option params [String] :resource_type
    #   <p>The types of Amazon Web Services resources for which you want compliance
    #   			information (for example, <code>AWS::EC2::Instance</code>). For this
    #   			action, you can specify that the resource type is an Amazon Web Services account by
    #   			specifying <code>AWS::::Account</code>.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the Amazon Web Services resource for which you want compliance
    #   			information. You can specify only one resource ID. If you specify a
    #   			resource ID, you must also specify a type for
    #   				<code>ResourceType</code>.</p>
    #
    # @option params [Array<String>] :compliance_types
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 10. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    # @return [Types::DescribeComplianceByResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_compliance_by_resource(
    #     resource_type: 'ResourceType',
    #     resource_id: 'ResourceId',
    #     compliance_types: [
    #       'COMPLIANT' # accepts ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeComplianceByResourceOutput
    #   resp.data.compliance_by_resources #=> Array<ComplianceByResource>
    #   resp.data.compliance_by_resources[0] #=> Types::ComplianceByResource
    #   resp.data.compliance_by_resources[0].resource_type #=> String
    #   resp.data.compliance_by_resources[0].resource_id #=> String
    #   resp.data.compliance_by_resources[0].compliance #=> Types::Compliance
    #   resp.data.compliance_by_resources[0].compliance.compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #   resp.data.compliance_by_resources[0].compliance.compliance_contributor_count #=> Types::ComplianceContributorCount
    #   resp.data.compliance_by_resources[0].compliance.compliance_contributor_count.capped_count #=> Integer
    #   resp.data.compliance_by_resources[0].compliance.compliance_contributor_count.cap_exceeded #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_compliance_by_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeComplianceByResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeComplianceByResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeComplianceByResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeComplianceByResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeComplianceByResource,
        stubs: @stubs,
        params_class: Params::DescribeComplianceByResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_compliance_by_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns status information for each of your Config managed rules. The status includes information such as the last time Config invoked the rule, the last time Config failed to invoke
    # 			the rule, and the related error for the last failure.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigRuleEvaluationStatusInput}.
    #
    # @option params [Array<String>] :config_rule_names
    #   <p>The name of the Config managed rules for which you want
    #   			status information. If you do not specify any names, Config
    #   			returns status information for all Config managed rules that you
    #   			use.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    # @option params [Integer] :limit
    #   <p>The number of rule evaluation results that you want
    #   			returned.</p>
    #   		
    #   		       <p>This parameter is required if the rule limit for your account
    #   			is more than the default of 150 rules.</p>
    #   		       <p>For information about requesting a rule limit increase, see
    #   				<a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">Config Limits</a> in the <i>Amazon Web Services General
    #   				Reference Guide</i>.</p>
    #
    # @return [Types::DescribeConfigRuleEvaluationStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_config_rule_evaluation_status(
    #     config_rule_names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigRuleEvaluationStatusOutput
    #   resp.data.config_rules_evaluation_status #=> Array<ConfigRuleEvaluationStatus>
    #   resp.data.config_rules_evaluation_status[0] #=> Types::ConfigRuleEvaluationStatus
    #   resp.data.config_rules_evaluation_status[0].config_rule_name #=> String
    #   resp.data.config_rules_evaluation_status[0].config_rule_arn #=> String
    #   resp.data.config_rules_evaluation_status[0].config_rule_id #=> String
    #   resp.data.config_rules_evaluation_status[0].last_successful_invocation_time #=> Time
    #   resp.data.config_rules_evaluation_status[0].last_failed_invocation_time #=> Time
    #   resp.data.config_rules_evaluation_status[0].last_successful_evaluation_time #=> Time
    #   resp.data.config_rules_evaluation_status[0].last_failed_evaluation_time #=> Time
    #   resp.data.config_rules_evaluation_status[0].first_activated_time #=> Time
    #   resp.data.config_rules_evaluation_status[0].last_deactivated_time #=> Time
    #   resp.data.config_rules_evaluation_status[0].last_error_code #=> String
    #   resp.data.config_rules_evaluation_status[0].last_error_message #=> String
    #   resp.data.config_rules_evaluation_status[0].first_evaluation_started #=> Boolean
    #   resp.data.config_rules_evaluation_status[0].last_debug_log_delivery_status #=> String
    #   resp.data.config_rules_evaluation_status[0].last_debug_log_delivery_status_reason #=> String
    #   resp.data.config_rules_evaluation_status[0].last_debug_log_delivery_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_config_rule_evaluation_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigRuleEvaluationStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigRuleEvaluationStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigRuleEvaluationStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::NoSuchConfigRuleException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeConfigRuleEvaluationStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigRuleEvaluationStatus,
        stubs: @stubs,
        params_class: Params::DescribeConfigRuleEvaluationStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_config_rule_evaluation_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details about your Config rules.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigRulesInput}.
    #
    # @option params [Array<String>] :config_rule_names
    #   <p>The names of the Config rules for which you want details.
    #   			If you do not specify any names, Config returns details for all
    #   			your rules.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    # @return [Types::DescribeConfigRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_config_rules(
    #     config_rule_names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigRulesOutput
    #   resp.data.config_rules #=> Array<ConfigRule>
    #   resp.data.config_rules[0] #=> Types::ConfigRule
    #   resp.data.config_rules[0].config_rule_name #=> String
    #   resp.data.config_rules[0].config_rule_arn #=> String
    #   resp.data.config_rules[0].config_rule_id #=> String
    #   resp.data.config_rules[0].description #=> String
    #   resp.data.config_rules[0].scope #=> Types::Scope
    #   resp.data.config_rules[0].scope.compliance_resource_types #=> Array<String>
    #   resp.data.config_rules[0].scope.compliance_resource_types[0] #=> String
    #   resp.data.config_rules[0].scope.tag_key #=> String
    #   resp.data.config_rules[0].scope.tag_value #=> String
    #   resp.data.config_rules[0].scope.compliance_resource_id #=> String
    #   resp.data.config_rules[0].source #=> Types::Source
    #   resp.data.config_rules[0].source.owner #=> String, one of ["CUSTOM_LAMBDA", "AWS", "CUSTOM_POLICY"]
    #   resp.data.config_rules[0].source.source_identifier #=> String
    #   resp.data.config_rules[0].source.source_details #=> Array<SourceDetail>
    #   resp.data.config_rules[0].source.source_details[0] #=> Types::SourceDetail
    #   resp.data.config_rules[0].source.source_details[0].event_source #=> String, one of ["aws.config"]
    #   resp.data.config_rules[0].source.source_details[0].message_type #=> String, one of ["ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification", "OversizedConfigurationItemChangeNotification"]
    #   resp.data.config_rules[0].source.source_details[0].maximum_execution_frequency #=> String, one of ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #   resp.data.config_rules[0].source.custom_policy_details #=> Types::CustomPolicyDetails
    #   resp.data.config_rules[0].source.custom_policy_details.policy_runtime #=> String
    #   resp.data.config_rules[0].source.custom_policy_details.policy_text #=> String
    #   resp.data.config_rules[0].source.custom_policy_details.enable_debug_log_delivery #=> Boolean
    #   resp.data.config_rules[0].input_parameters #=> String
    #   resp.data.config_rules[0].maximum_execution_frequency #=> String, one of ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #   resp.data.config_rules[0].config_rule_state #=> String, one of ["ACTIVE", "DELETING", "DELETING_RESULTS", "EVALUATING"]
    #   resp.data.config_rules[0].created_by #=> String
    #   resp.data.next_token #=> String
    #
    def describe_config_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigRuleException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeConfigRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigRules,
        stubs: @stubs,
        params_class: Params::DescribeConfigRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_config_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns status information for sources within an aggregator.
    # 			The status includes information about the last time Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationAggregatorSourcesStatusInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [Array<String>] :update_status
    #   <p>Filters the status type.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Valid value FAILED indicates errors while moving
    #   					data.</p>
    #   			         </li>
    #               <li>
    #   				           <p>Valid value SUCCEEDED indicates the data was
    #   					successfully moved.</p>
    #   			         </li>
    #               <li>
    #   				           <p>Valid value OUTDATED indicates the data is not the most
    #   					recent.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of AggregatorSourceStatus returned on each
    #   			page. The default is maximum. If you specify 0, Config uses the
    #   			default.</p>
    #
    # @return [Types::DescribeConfigurationAggregatorSourcesStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_aggregator_sources_status(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     update_status: [
    #       'FAILED' # accepts ["FAILED", "SUCCEEDED", "OUTDATED"]
    #     ],
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationAggregatorSourcesStatusOutput
    #   resp.data.aggregated_source_status_list #=> Array<AggregatedSourceStatus>
    #   resp.data.aggregated_source_status_list[0] #=> Types::AggregatedSourceStatus
    #   resp.data.aggregated_source_status_list[0].source_id #=> String
    #   resp.data.aggregated_source_status_list[0].source_type #=> String, one of ["ACCOUNT", "ORGANIZATION"]
    #   resp.data.aggregated_source_status_list[0].aws_region #=> String
    #   resp.data.aggregated_source_status_list[0].last_update_status #=> String, one of ["FAILED", "SUCCEEDED", "OUTDATED"]
    #   resp.data.aggregated_source_status_list[0].last_update_time #=> Time
    #   resp.data.aggregated_source_status_list[0].last_error_code #=> String
    #   resp.data.aggregated_source_status_list[0].last_error_message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_configuration_aggregator_sources_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationAggregatorSourcesStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationAggregatorSourcesStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationAggregatorSourcesStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigurationAggregatorException, Errors::InvalidParameterValueException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeConfigurationAggregatorSourcesStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationAggregatorSourcesStatus,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationAggregatorSourcesStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_aggregator_sources_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of one or more configuration aggregators.
    # 			If the configuration aggregator is not specified, this action
    # 			returns the details for all the configuration aggregators associated
    # 			with the account. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationAggregatorsInput}.
    #
    # @option params [Array<String>] :configuration_aggregator_names
    #   <p>The name of the configuration aggregators.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of configuration aggregators returned on
    #   			each page. The default is maximum. If you specify 0, Config uses
    #   			the default.</p>
    #
    # @return [Types::DescribeConfigurationAggregatorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_aggregators(
    #     configuration_aggregator_names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationAggregatorsOutput
    #   resp.data.configuration_aggregators #=> Array<ConfigurationAggregator>
    #   resp.data.configuration_aggregators[0] #=> Types::ConfigurationAggregator
    #   resp.data.configuration_aggregators[0].configuration_aggregator_name #=> String
    #   resp.data.configuration_aggregators[0].configuration_aggregator_arn #=> String
    #   resp.data.configuration_aggregators[0].account_aggregation_sources #=> Array<AccountAggregationSource>
    #   resp.data.configuration_aggregators[0].account_aggregation_sources[0] #=> Types::AccountAggregationSource
    #   resp.data.configuration_aggregators[0].account_aggregation_sources[0].account_ids #=> Array<String>
    #   resp.data.configuration_aggregators[0].account_aggregation_sources[0].account_ids[0] #=> String
    #   resp.data.configuration_aggregators[0].account_aggregation_sources[0].all_aws_regions #=> Boolean
    #   resp.data.configuration_aggregators[0].account_aggregation_sources[0].aws_regions #=> Array<String>
    #   resp.data.configuration_aggregators[0].account_aggregation_sources[0].aws_regions[0] #=> String
    #   resp.data.configuration_aggregators[0].organization_aggregation_source #=> Types::OrganizationAggregationSource
    #   resp.data.configuration_aggregators[0].organization_aggregation_source.role_arn #=> String
    #   resp.data.configuration_aggregators[0].organization_aggregation_source.aws_regions #=> Array<String>
    #   resp.data.configuration_aggregators[0].organization_aggregation_source.all_aws_regions #=> Boolean
    #   resp.data.configuration_aggregators[0].creation_time #=> Time
    #   resp.data.configuration_aggregators[0].last_updated_time #=> Time
    #   resp.data.configuration_aggregators[0].created_by #=> String
    #   resp.data.next_token #=> String
    #
    def describe_configuration_aggregators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationAggregatorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationAggregatorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationAggregators
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigurationAggregatorException, Errors::InvalidParameterValueException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeConfigurationAggregators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationAggregators,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationAggregatorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_aggregators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the current status of the specified configuration
    # 			recorder. If a configuration recorder is not specified, this action
    # 			returns the status of all configuration recorders associated with
    # 			the account.</p>
    # 		       <note>
    # 			         <p>Currently, you can specify only one configuration recorder
    # 				per region in your account.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationRecorderStatusInput}.
    #
    # @option params [Array<String>] :configuration_recorder_names
    #   <p>The name(s) of the configuration recorder. If the name is not
    #   			specified, the action returns the current status of all the
    #   			configuration recorders associated with the account.</p>
    #
    # @return [Types::DescribeConfigurationRecorderStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_recorder_status(
    #     configuration_recorder_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationRecorderStatusOutput
    #   resp.data.configuration_recorders_status #=> Array<ConfigurationRecorderStatus>
    #   resp.data.configuration_recorders_status[0] #=> Types::ConfigurationRecorderStatus
    #   resp.data.configuration_recorders_status[0].name #=> String
    #   resp.data.configuration_recorders_status[0].last_start_time #=> Time
    #   resp.data.configuration_recorders_status[0].last_stop_time #=> Time
    #   resp.data.configuration_recorders_status[0].recording #=> Boolean
    #   resp.data.configuration_recorders_status[0].last_status #=> String, one of ["Pending", "Success", "Failure"]
    #   resp.data.configuration_recorders_status[0].last_error_code #=> String
    #   resp.data.configuration_recorders_status[0].last_error_message #=> String
    #   resp.data.configuration_recorders_status[0].last_status_change_time #=> Time
    #
    def describe_configuration_recorder_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationRecorderStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationRecorderStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationRecorderStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigurationRecorderException]),
        data_parser: Parsers::DescribeConfigurationRecorderStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationRecorderStatus,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationRecorderStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_recorder_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details for the specified configuration recorders.
    # 			If the configuration recorder is not specified, this action returns
    # 			the details for all configuration recorders associated with the
    # 			account.</p>
    # 		       <note>
    # 			         <p>Currently, you can specify only one configuration recorder
    # 				per region in your account.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationRecordersInput}.
    #
    # @option params [Array<String>] :configuration_recorder_names
    #   <p>A list of configuration recorder names.</p>
    #
    # @return [Types::DescribeConfigurationRecordersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_recorders(
    #     configuration_recorder_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationRecordersOutput
    #   resp.data.configuration_recorders #=> Array<ConfigurationRecorder>
    #   resp.data.configuration_recorders[0] #=> Types::ConfigurationRecorder
    #   resp.data.configuration_recorders[0].name #=> String
    #   resp.data.configuration_recorders[0].role_arn #=> String
    #   resp.data.configuration_recorders[0].recording_group #=> Types::RecordingGroup
    #   resp.data.configuration_recorders[0].recording_group.all_supported #=> Boolean
    #   resp.data.configuration_recorders[0].recording_group.include_global_resource_types #=> Boolean
    #   resp.data.configuration_recorders[0].recording_group.resource_types #=> Array<String>
    #   resp.data.configuration_recorders[0].recording_group.resource_types[0] #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    def describe_configuration_recorders(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationRecordersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationRecordersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationRecorders
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigurationRecorderException]),
        data_parser: Parsers::DescribeConfigurationRecorders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationRecorders,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationRecordersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_recorders
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns compliance details for each rule in that conformance pack.</p>
    # 		       <note>
    #             <p>You must provide exact rule names.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeConformancePackComplianceInput}.
    #
    # @option params [String] :conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #
    # @option params [ConformancePackComplianceFilters] :filters
    #   <p>A <code>ConformancePackComplianceFilters</code> object.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of Config rules within a conformance pack are returned on each page.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    # @return [Types::DescribeConformancePackComplianceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conformance_pack_compliance(
    #     conformance_pack_name: 'ConformancePackName', # required
    #     filters: {
    #       config_rule_names: [
    #         'member'
    #       ],
    #       compliance_type: 'COMPLIANT' # accepts ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #     },
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConformancePackComplianceOutput
    #   resp.data.conformance_pack_name #=> String
    #   resp.data.conformance_pack_rule_compliance_list #=> Array<ConformancePackRuleCompliance>
    #   resp.data.conformance_pack_rule_compliance_list[0] #=> Types::ConformancePackRuleCompliance
    #   resp.data.conformance_pack_rule_compliance_list[0].config_rule_name #=> String
    #   resp.data.conformance_pack_rule_compliance_list[0].compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #   resp.data.conformance_pack_rule_compliance_list[0].controls #=> Array<String>
    #   resp.data.conformance_pack_rule_compliance_list[0].controls[0] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_conformance_pack_compliance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConformancePackComplianceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConformancePackComplianceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConformancePackCompliance
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigRuleInConformancePackException, Errors::InvalidParameterValueException, Errors::NoSuchConformancePackException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeConformancePackCompliance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConformancePackCompliance,
        stubs: @stubs,
        params_class: Params::DescribeConformancePackComplianceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_conformance_pack_compliance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides one or more conformance packs deployment status.</p>
    # 		       <note>
    #             <p>If there are no conformance packs then you will see an empty result.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeConformancePackStatusInput}.
    #
    # @option params [Array<String>] :conformance_pack_names
    #   <p>Comma-separated list of conformance pack names.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of conformance packs status returned on each page.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    # @return [Types::DescribeConformancePackStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conformance_pack_status(
    #     conformance_pack_names: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConformancePackStatusOutput
    #   resp.data.conformance_pack_status_details #=> Array<ConformancePackStatusDetail>
    #   resp.data.conformance_pack_status_details[0] #=> Types::ConformancePackStatusDetail
    #   resp.data.conformance_pack_status_details[0].conformance_pack_name #=> String
    #   resp.data.conformance_pack_status_details[0].conformance_pack_id #=> String
    #   resp.data.conformance_pack_status_details[0].conformance_pack_arn #=> String
    #   resp.data.conformance_pack_status_details[0].conformance_pack_state #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"]
    #   resp.data.conformance_pack_status_details[0].stack_arn #=> String
    #   resp.data.conformance_pack_status_details[0].conformance_pack_status_reason #=> String
    #   resp.data.conformance_pack_status_details[0].last_update_requested_time #=> Time
    #   resp.data.conformance_pack_status_details[0].last_update_completed_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_conformance_pack_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConformancePackStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConformancePackStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConformancePackStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeConformancePackStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConformancePackStatus,
        stubs: @stubs,
        params_class: Params::DescribeConformancePackStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_conformance_pack_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of one or more conformance packs.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConformancePacksInput}.
    #
    # @option params [Array<String>] :conformance_pack_names
    #   <p>Comma-separated list of conformance pack names for which you want details. If you do not specify any names, Config returns details for all your conformance packs. </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of conformance packs returned on each page.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    # @return [Types::DescribeConformancePacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conformance_packs(
    #     conformance_pack_names: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConformancePacksOutput
    #   resp.data.conformance_pack_details #=> Array<ConformancePackDetail>
    #   resp.data.conformance_pack_details[0] #=> Types::ConformancePackDetail
    #   resp.data.conformance_pack_details[0].conformance_pack_name #=> String
    #   resp.data.conformance_pack_details[0].conformance_pack_arn #=> String
    #   resp.data.conformance_pack_details[0].conformance_pack_id #=> String
    #   resp.data.conformance_pack_details[0].delivery_s3_bucket #=> String
    #   resp.data.conformance_pack_details[0].delivery_s3_key_prefix #=> String
    #   resp.data.conformance_pack_details[0].conformance_pack_input_parameters #=> Array<ConformancePackInputParameter>
    #   resp.data.conformance_pack_details[0].conformance_pack_input_parameters[0] #=> Types::ConformancePackInputParameter
    #   resp.data.conformance_pack_details[0].conformance_pack_input_parameters[0].parameter_name #=> String
    #   resp.data.conformance_pack_details[0].conformance_pack_input_parameters[0].parameter_value #=> String
    #   resp.data.conformance_pack_details[0].last_update_requested_time #=> Time
    #   resp.data.conformance_pack_details[0].created_by #=> String
    #   resp.data.next_token #=> String
    #
    def describe_conformance_packs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConformancePacksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConformancePacksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConformancePacks
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::NoSuchConformancePackException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeConformancePacks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConformancePacks,
        stubs: @stubs,
        params_class: Params::DescribeConformancePacksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_conformance_packs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the current status of the specified delivery channel.
    # 			If a delivery channel is not specified, this action returns the
    # 			current status of all delivery channels associated with the
    # 			account.</p>
    # 		       <note>
    # 			         <p>Currently, you can specify only one delivery channel per
    # 				region in your account.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeDeliveryChannelStatusInput}.
    #
    # @option params [Array<String>] :delivery_channel_names
    #   <p>A list of delivery channel names.</p>
    #
    # @return [Types::DescribeDeliveryChannelStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_delivery_channel_status(
    #     delivery_channel_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeliveryChannelStatusOutput
    #   resp.data.delivery_channels_status #=> Array<DeliveryChannelStatus>
    #   resp.data.delivery_channels_status[0] #=> Types::DeliveryChannelStatus
    #   resp.data.delivery_channels_status[0].name #=> String
    #   resp.data.delivery_channels_status[0].config_snapshot_delivery_info #=> Types::ConfigExportDeliveryInfo
    #   resp.data.delivery_channels_status[0].config_snapshot_delivery_info.last_status #=> String, one of ["Success", "Failure", "Not_Applicable"]
    #   resp.data.delivery_channels_status[0].config_snapshot_delivery_info.last_error_code #=> String
    #   resp.data.delivery_channels_status[0].config_snapshot_delivery_info.last_error_message #=> String
    #   resp.data.delivery_channels_status[0].config_snapshot_delivery_info.last_attempt_time #=> Time
    #   resp.data.delivery_channels_status[0].config_snapshot_delivery_info.last_successful_time #=> Time
    #   resp.data.delivery_channels_status[0].config_snapshot_delivery_info.next_delivery_time #=> Time
    #   resp.data.delivery_channels_status[0].config_history_delivery_info #=> Types::ConfigExportDeliveryInfo
    #   resp.data.delivery_channels_status[0].config_stream_delivery_info #=> Types::ConfigStreamDeliveryInfo
    #   resp.data.delivery_channels_status[0].config_stream_delivery_info.last_status #=> String, one of ["Success", "Failure", "Not_Applicable"]
    #   resp.data.delivery_channels_status[0].config_stream_delivery_info.last_error_code #=> String
    #   resp.data.delivery_channels_status[0].config_stream_delivery_info.last_error_message #=> String
    #   resp.data.delivery_channels_status[0].config_stream_delivery_info.last_status_change_time #=> Time
    #
    def describe_delivery_channel_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeliveryChannelStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeliveryChannelStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDeliveryChannelStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchDeliveryChannelException]),
        data_parser: Parsers::DescribeDeliveryChannelStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDeliveryChannelStatus,
        stubs: @stubs,
        params_class: Params::DescribeDeliveryChannelStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_delivery_channel_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details about the specified delivery channel. If a
    # 			delivery channel is not specified, this action returns the details
    # 			of all delivery channels associated with the account.</p>
    # 		       <note>
    # 			         <p>Currently, you can specify only one delivery channel per
    # 				region in your account.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeDeliveryChannelsInput}.
    #
    # @option params [Array<String>] :delivery_channel_names
    #   <p>A list of delivery channel names.</p>
    #
    # @return [Types::DescribeDeliveryChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_delivery_channels(
    #     delivery_channel_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeliveryChannelsOutput
    #   resp.data.delivery_channels #=> Array<DeliveryChannel>
    #   resp.data.delivery_channels[0] #=> Types::DeliveryChannel
    #   resp.data.delivery_channels[0].name #=> String
    #   resp.data.delivery_channels[0].s3_bucket_name #=> String
    #   resp.data.delivery_channels[0].s3_key_prefix #=> String
    #   resp.data.delivery_channels[0].s3_kms_key_arn #=> String
    #   resp.data.delivery_channels[0].sns_topic_arn #=> String
    #   resp.data.delivery_channels[0].config_snapshot_delivery_properties #=> Types::ConfigSnapshotDeliveryProperties
    #   resp.data.delivery_channels[0].config_snapshot_delivery_properties.delivery_frequency #=> String, one of ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #
    def describe_delivery_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeliveryChannelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeliveryChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDeliveryChannels
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchDeliveryChannelException]),
        data_parser: Parsers::DescribeDeliveryChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDeliveryChannels,
        stubs: @stubs,
        params_class: Params::DescribeDeliveryChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_delivery_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides organization Config rule deployment status for an organization.</p>
    # 		
    # 		       <note>
    #             <p>The status is not considered successful until organization Config rule is successfully deployed in all the member
    # 			accounts with an exception of excluded accounts.</p>
    # 			         <p>When you specify the limit and the next token, you receive a paginated response.
    # 			Limit and next token are not applicable if you specify organization Config rule names.
    # 			It is only applicable, when you request all the organization Config rules.</p>
    # 			      </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationConfigRuleStatusesInput}.
    #
    # @option params [Array<String>] :organization_config_rule_names
    #   <p>The names of organization Config rules for which you want status details. If you do not specify any names, Config returns details for all your organization Config rules.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of <code>OrganizationConfigRuleStatuses</code> returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    # @return [Types::DescribeOrganizationConfigRuleStatusesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_config_rule_statuses(
    #     organization_config_rule_names: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationConfigRuleStatusesOutput
    #   resp.data.organization_config_rule_statuses #=> Array<OrganizationConfigRuleStatus>
    #   resp.data.organization_config_rule_statuses[0] #=> Types::OrganizationConfigRuleStatus
    #   resp.data.organization_config_rule_statuses[0].organization_config_rule_name #=> String
    #   resp.data.organization_config_rule_statuses[0].organization_rule_status #=> String, one of ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #   resp.data.organization_config_rule_statuses[0].error_code #=> String
    #   resp.data.organization_config_rule_statuses[0].error_message #=> String
    #   resp.data.organization_config_rule_statuses[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_organization_config_rule_statuses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationConfigRuleStatusesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationConfigRuleStatusesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationConfigRuleStatuses
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::InvalidLimitException, Errors::NoSuchOrganizationConfigRuleException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeOrganizationConfigRuleStatuses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationConfigRuleStatuses,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationConfigRuleStatusesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_config_rule_statuses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of organization Config rules. </p>
    # 			
    # 		       <note>
    #             <p>When you specify the limit and the next token, you receive a paginated response.
    # 			Limit and next token are not applicable if you specify organization Config rule names.
    # 			It is only applicable, when you request all the organization Config rules.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationConfigRulesInput}.
    #
    # @option params [Array<String>] :organization_config_rule_names
    #   <p>The names of organization Config rules for which you want details. If you do not specify any names, Config returns details for all your organization Config rules.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of organization Config rules returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    # @return [Types::DescribeOrganizationConfigRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_config_rules(
    #     organization_config_rule_names: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationConfigRulesOutput
    #   resp.data.organization_config_rules #=> Array<OrganizationConfigRule>
    #   resp.data.organization_config_rules[0] #=> Types::OrganizationConfigRule
    #   resp.data.organization_config_rules[0].organization_config_rule_name #=> String
    #   resp.data.organization_config_rules[0].organization_config_rule_arn #=> String
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata #=> Types::OrganizationManagedRuleMetadata
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata.description #=> String
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata.rule_identifier #=> String
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata.input_parameters #=> String
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata.maximum_execution_frequency #=> String, one of ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata.resource_types_scope #=> Array<String>
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata.resource_types_scope[0] #=> String
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata.resource_id_scope #=> String
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata.tag_key_scope #=> String
    #   resp.data.organization_config_rules[0].organization_managed_rule_metadata.tag_value_scope #=> String
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata #=> Types::OrganizationCustomRuleMetadata
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.description #=> String
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.lambda_function_arn #=> String
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.organization_config_rule_trigger_types #=> Array<String>
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.organization_config_rule_trigger_types[0] #=> String, one of ["ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification", "ScheduledNotification"]
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.input_parameters #=> String
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.maximum_execution_frequency #=> String, one of ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.resource_types_scope #=> Array<String>
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.resource_id_scope #=> String
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.tag_key_scope #=> String
    #   resp.data.organization_config_rules[0].organization_custom_rule_metadata.tag_value_scope #=> String
    #   resp.data.organization_config_rules[0].excluded_accounts #=> Array<String>
    #   resp.data.organization_config_rules[0].excluded_accounts[0] #=> String
    #   resp.data.organization_config_rules[0].last_update_time #=> Time
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata #=> Types::OrganizationCustomPolicyRuleMetadataNoPolicy
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.description #=> String
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.organization_config_rule_trigger_types #=> Array<String>
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.organization_config_rule_trigger_types[0] #=> String, one of ["ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification"]
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.input_parameters #=> String
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.maximum_execution_frequency #=> String, one of ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.resource_types_scope #=> Array<String>
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.resource_id_scope #=> String
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.tag_key_scope #=> String
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.tag_value_scope #=> String
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.policy_runtime #=> String
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.debug_log_delivery_accounts #=> Array<String>
    #   resp.data.organization_config_rules[0].organization_custom_policy_rule_metadata.debug_log_delivery_accounts[0] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_organization_config_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationConfigRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationConfigRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationConfigRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::InvalidLimitException, Errors::NoSuchOrganizationConfigRuleException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeOrganizationConfigRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationConfigRules,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationConfigRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_config_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides organization conformance pack deployment status for an organization. </p>
    # 		       <note>
    # 			         <p>The status is not considered successful until organization conformance pack is successfully
    # 				deployed in all the member accounts with an exception of excluded accounts.</p>
    # 			         <p>When you specify the limit and the next token, you receive a paginated response.
    # 				Limit and next token are not applicable if you specify organization conformance pack names.
    # 				They are only applicable, when you request all the organization conformance packs.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationConformancePackStatusesInput}.
    #
    # @option params [Array<String>] :organization_conformance_pack_names
    #   <p>The names of organization conformance packs for which you want status details.
    #   			If you do not specify any names, Config returns details for all your organization conformance packs. </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of OrganizationConformancePackStatuses returned on each page.
    #   			If you do no specify a number, Config uses the default. The default is 100. </p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    # @return [Types::DescribeOrganizationConformancePackStatusesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_conformance_pack_statuses(
    #     organization_conformance_pack_names: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationConformancePackStatusesOutput
    #   resp.data.organization_conformance_pack_statuses #=> Array<OrganizationConformancePackStatus>
    #   resp.data.organization_conformance_pack_statuses[0] #=> Types::OrganizationConformancePackStatus
    #   resp.data.organization_conformance_pack_statuses[0].organization_conformance_pack_name #=> String
    #   resp.data.organization_conformance_pack_statuses[0].status #=> String, one of ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #   resp.data.organization_conformance_pack_statuses[0].error_code #=> String
    #   resp.data.organization_conformance_pack_statuses[0].error_message #=> String
    #   resp.data.organization_conformance_pack_statuses[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_organization_conformance_pack_statuses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationConformancePackStatusesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationConformancePackStatusesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationConformancePackStatuses
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::NoSuchOrganizationConformancePackException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeOrganizationConformancePackStatuses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationConformancePackStatuses,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationConformancePackStatusesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_conformance_pack_statuses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of organization conformance packs. </p>
    # 		       <note>
    #             <p>When you specify the limit and the next token, you receive a paginated response. </p>
    # 			         <p>Limit and next token are not applicable if you specify organization conformance packs names. They are only applicable,
    # 			when you request all the organization conformance packs. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationConformancePacksInput}.
    #
    # @option params [Array<String>] :organization_conformance_pack_names
    #   <p>The name that you assign to an organization conformance pack.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of organization config packs returned on each page. If you do no specify a
    #   			number, Config uses the default. The default is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a
    #   			paginated response.</p>
    #
    # @return [Types::DescribeOrganizationConformancePacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_conformance_packs(
    #     organization_conformance_pack_names: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationConformancePacksOutput
    #   resp.data.organization_conformance_packs #=> Array<OrganizationConformancePack>
    #   resp.data.organization_conformance_packs[0] #=> Types::OrganizationConformancePack
    #   resp.data.organization_conformance_packs[0].organization_conformance_pack_name #=> String
    #   resp.data.organization_conformance_packs[0].organization_conformance_pack_arn #=> String
    #   resp.data.organization_conformance_packs[0].delivery_s3_bucket #=> String
    #   resp.data.organization_conformance_packs[0].delivery_s3_key_prefix #=> String
    #   resp.data.organization_conformance_packs[0].conformance_pack_input_parameters #=> Array<ConformancePackInputParameter>
    #   resp.data.organization_conformance_packs[0].conformance_pack_input_parameters[0] #=> Types::ConformancePackInputParameter
    #   resp.data.organization_conformance_packs[0].conformance_pack_input_parameters[0].parameter_name #=> String
    #   resp.data.organization_conformance_packs[0].conformance_pack_input_parameters[0].parameter_value #=> String
    #   resp.data.organization_conformance_packs[0].excluded_accounts #=> Array<String>
    #   resp.data.organization_conformance_packs[0].excluded_accounts[0] #=> String
    #   resp.data.organization_conformance_packs[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_organization_conformance_packs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationConformancePacksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationConformancePacksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationConformancePacks
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::NoSuchOrganizationConformancePackException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeOrganizationConformancePacks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationConformancePacks,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationConformancePacksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_conformance_packs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all pending aggregation requests.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePendingAggregationRequestsInput}.
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is maximum. If you specify 0, Config uses the
    #   			default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    # @return [Types::DescribePendingAggregationRequestsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pending_aggregation_requests(
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePendingAggregationRequestsOutput
    #   resp.data.pending_aggregation_requests #=> Array<PendingAggregationRequest>
    #   resp.data.pending_aggregation_requests[0] #=> Types::PendingAggregationRequest
    #   resp.data.pending_aggregation_requests[0].requester_account_id #=> String
    #   resp.data.pending_aggregation_requests[0].requester_aws_region #=> String
    #   resp.data.next_token #=> String
    #
    def describe_pending_aggregation_requests(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePendingAggregationRequestsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePendingAggregationRequestsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePendingAggregationRequests
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribePendingAggregationRequests
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePendingAggregationRequests,
        stubs: @stubs,
        params_class: Params::DescribePendingAggregationRequestsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_pending_aggregation_requests
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of one or more remediation configurations.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRemediationConfigurationsInput}.
    #
    # @option params [Array<String>] :config_rule_names
    #   <p>A list of Config rule names of remediation configurations for which you want details. </p>
    #
    # @return [Types::DescribeRemediationConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_remediation_configurations(
    #     config_rule_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRemediationConfigurationsOutput
    #   resp.data.remediation_configurations #=> Array<RemediationConfiguration>
    #   resp.data.remediation_configurations[0] #=> Types::RemediationConfiguration
    #   resp.data.remediation_configurations[0].config_rule_name #=> String
    #   resp.data.remediation_configurations[0].target_type #=> String, one of ["SSM_DOCUMENT"]
    #   resp.data.remediation_configurations[0].target_id #=> String
    #   resp.data.remediation_configurations[0].target_version #=> String
    #   resp.data.remediation_configurations[0].parameters #=> Hash<String, RemediationParameterValue>
    #   resp.data.remediation_configurations[0].parameters['key'] #=> Types::RemediationParameterValue
    #   resp.data.remediation_configurations[0].parameters['key'].resource_value #=> Types::ResourceValue
    #   resp.data.remediation_configurations[0].parameters['key'].resource_value.value #=> String, one of ["RESOURCE_ID"]
    #   resp.data.remediation_configurations[0].parameters['key'].static_value #=> Types::StaticValue
    #   resp.data.remediation_configurations[0].parameters['key'].static_value.values #=> Array<String>
    #   resp.data.remediation_configurations[0].parameters['key'].static_value.values[0] #=> String
    #   resp.data.remediation_configurations[0].resource_type #=> String
    #   resp.data.remediation_configurations[0].automatic #=> Boolean
    #   resp.data.remediation_configurations[0].execution_controls #=> Types::ExecutionControls
    #   resp.data.remediation_configurations[0].execution_controls.ssm_controls #=> Types::SsmControls
    #   resp.data.remediation_configurations[0].execution_controls.ssm_controls.concurrent_execution_rate_percentage #=> Integer
    #   resp.data.remediation_configurations[0].execution_controls.ssm_controls.error_percentage #=> Integer
    #   resp.data.remediation_configurations[0].maximum_automatic_attempts #=> Integer
    #   resp.data.remediation_configurations[0].retry_attempt_seconds #=> Integer
    #   resp.data.remediation_configurations[0].arn #=> String
    #   resp.data.remediation_configurations[0].created_by_service #=> String
    #
    def describe_remediation_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRemediationConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRemediationConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRemediationConfigurations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeRemediationConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRemediationConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeRemediationConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_remediation_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of one or more remediation exceptions. A detailed view of a remediation exception for a set of resources that includes an explanation of an exception and the time when the exception will be deleted.
    # 			When you specify the limit and the next token, you receive a paginated response. </p>
    # 		       <note>
    #             <p>Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource.
    # 				Remediation exceptions blocks auto-remediation until the exception is cleared.</p>
    # 			         <p>When you specify the limit and the next token, you receive a paginated response. </p>
    # 			         <p>Limit and next token are not applicable if you request resources in batch. It is only applicable, when you request all resources.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeRemediationExceptionsInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    # @option params [Array<RemediationExceptionResourceKey>] :resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    # @return [Types::DescribeRemediationExceptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_remediation_exceptions(
    #     config_rule_name: 'ConfigRuleName', # required
    #     resource_keys: [
    #       {
    #         resource_type: 'ResourceType',
    #         resource_id: 'ResourceId'
    #       }
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRemediationExceptionsOutput
    #   resp.data.remediation_exceptions #=> Array<RemediationException>
    #   resp.data.remediation_exceptions[0] #=> Types::RemediationException
    #   resp.data.remediation_exceptions[0].config_rule_name #=> String
    #   resp.data.remediation_exceptions[0].resource_type #=> String
    #   resp.data.remediation_exceptions[0].resource_id #=> String
    #   resp.data.remediation_exceptions[0].message #=> String
    #   resp.data.remediation_exceptions[0].expiration_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_remediation_exceptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRemediationExceptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRemediationExceptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRemediationExceptions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeRemediationExceptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRemediationExceptions,
        stubs: @stubs,
        params_class: Params::DescribeRemediationExceptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_remediation_exceptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed.
    # 			When you specify the limit and the next token, you receive a paginated response.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRemediationExecutionStatusInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>A list of Config rule names.</p>
    #
    # @option params [Array<ResourceKey>] :resource_keys
    #   <p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of RemediationExecutionStatuses returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    # @return [Types::DescribeRemediationExecutionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_remediation_execution_status(
    #     config_rule_name: 'ConfigRuleName', # required
    #     resource_keys: [
    #       {
    #         resource_type: 'AWS::EC2::CustomerGateway', # required - accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #         resource_id: 'resourceId' # required
    #       }
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRemediationExecutionStatusOutput
    #   resp.data.remediation_execution_statuses #=> Array<RemediationExecutionStatus>
    #   resp.data.remediation_execution_statuses[0] #=> Types::RemediationExecutionStatus
    #   resp.data.remediation_execution_statuses[0].resource_key #=> Types::ResourceKey
    #   resp.data.remediation_execution_statuses[0].resource_key.resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.remediation_execution_statuses[0].resource_key.resource_id #=> String
    #   resp.data.remediation_execution_statuses[0].state #=> String, one of ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.remediation_execution_statuses[0].step_details #=> Array<RemediationExecutionStep>
    #   resp.data.remediation_execution_statuses[0].step_details[0] #=> Types::RemediationExecutionStep
    #   resp.data.remediation_execution_statuses[0].step_details[0].name #=> String
    #   resp.data.remediation_execution_statuses[0].step_details[0].state #=> String, one of ["SUCCEEDED", "PENDING", "FAILED"]
    #   resp.data.remediation_execution_statuses[0].step_details[0].error_message #=> String
    #   resp.data.remediation_execution_statuses[0].step_details[0].start_time #=> Time
    #   resp.data.remediation_execution_statuses[0].step_details[0].stop_time #=> Time
    #   resp.data.remediation_execution_statuses[0].invocation_time #=> Time
    #   resp.data.remediation_execution_statuses[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_remediation_execution_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRemediationExecutionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRemediationExecutionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRemediationExecutionStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::NoSuchRemediationConfigurationException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeRemediationExecutionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRemediationExecutionStatus,
        stubs: @stubs,
        params_class: Params::DescribeRemediationExecutionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_remediation_execution_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of one or more retention configurations. If
    # 			the retention configuration name is not specified, this action
    # 			returns the details for all the retention configurations for that
    # 			account.</p>
    # 		       <note>
    # 			         <p>Currently, Config supports only one retention
    # 				configuration per region in your account.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeRetentionConfigurationsInput}.
    #
    # @option params [Array<String>] :retention_configuration_names
    #   <p>A list of names of retention configurations for which you want
    #   			details. If you do not specify a name, Config returns details
    #   			for all the retention configurations for that account.</p>
    #   		       <note>
    #   			         <p>Currently, Config supports only one retention
    #   				configuration per region in your account.</p>
    #   		       </note>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response. </p>
    #
    # @return [Types::DescribeRetentionConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_retention_configurations(
    #     retention_configuration_names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRetentionConfigurationsOutput
    #   resp.data.retention_configurations #=> Array<RetentionConfiguration>
    #   resp.data.retention_configurations[0] #=> Types::RetentionConfiguration
    #   resp.data.retention_configurations[0].name #=> String
    #   resp.data.retention_configurations[0].retention_period_in_days #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_retention_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRetentionConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRetentionConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRetentionConfigurations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::NoSuchRetentionConfigurationException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeRetentionConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRetentionConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeRetentionConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_retention_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the evaluation results for the specified Config
    # 			rule for a specific resource in a rule. The results indicate which
    # 			Amazon Web Services resources were evaluated by the rule, when each resource was
    # 			last evaluated, and whether each resource complies with the rule. </p>
    # 		       <note>
    # 			         <p>The results can return an empty result page. But if you
    # 				have a <code>nextToken</code>, the results are displayed on the next
    # 				page.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::GetAggregateComplianceDetailsByConfigRuleInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want compliance
    #   			information.</p>
    #
    # @option params [String] :account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #
    # @option params [String] :aws_region
    #   <p>The source region from where the data is aggregated.</p>
    #
    # @option params [String] :compliance_type
    #   <p>The resource compliance status.</p>
    #   		       <note>
    #   			         <p>For the
    #   					<code>GetAggregateComplianceDetailsByConfigRuleRequest</code>
    #   				data type, Config supports only the <code>COMPLIANT</code>
    #   				and <code>NON_COMPLIANT</code>. Config does not support the
    #   					<code>NOT_APPLICABLE</code> and
    #   					<code>INSUFFICIENT_DATA</code> values.</p>
    #   		       </note>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 50. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    # @return [Types::GetAggregateComplianceDetailsByConfigRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_compliance_details_by_config_rule(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     config_rule_name: 'ConfigRuleName', # required
    #     account_id: 'AccountId', # required
    #     aws_region: 'AwsRegion', # required
    #     compliance_type: 'COMPLIANT', # accepts ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAggregateComplianceDetailsByConfigRuleOutput
    #   resp.data.aggregate_evaluation_results #=> Array<AggregateEvaluationResult>
    #   resp.data.aggregate_evaluation_results[0] #=> Types::AggregateEvaluationResult
    #   resp.data.aggregate_evaluation_results[0].evaluation_result_identifier #=> Types::EvaluationResultIdentifier
    #   resp.data.aggregate_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier #=> Types::EvaluationResultQualifier
    #   resp.data.aggregate_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.data.aggregate_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.data.aggregate_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.data.aggregate_evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.data.aggregate_evaluation_results[0].compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #   resp.data.aggregate_evaluation_results[0].result_recorded_time #=> Time
    #   resp.data.aggregate_evaluation_results[0].config_rule_invoked_time #=> Time
    #   resp.data.aggregate_evaluation_results[0].annotation #=> String
    #   resp.data.aggregate_evaluation_results[0].account_id #=> String
    #   resp.data.aggregate_evaluation_results[0].aws_region #=> String
    #   resp.data.next_token #=> String
    #
    def get_aggregate_compliance_details_by_config_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAggregateComplianceDetailsByConfigRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAggregateComplianceDetailsByConfigRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAggregateComplianceDetailsByConfigRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoSuchConfigurationAggregatorException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetAggregateComplianceDetailsByConfigRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAggregateComplianceDetailsByConfigRule,
        stubs: @stubs,
        params_class: Params::GetAggregateComplianceDetailsByConfigRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_aggregate_compliance_details_by_config_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the number of compliant and noncompliant rules for one
    # 			or more accounts and regions in an aggregator.</p>
    # 		       <note>
    # 			         <p>The results can return an empty result page, but if you
    # 				have a nextToken, the results are displayed on the next
    # 				page.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::GetAggregateConfigRuleComplianceSummaryInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [ConfigRuleComplianceSummaryFilters] :filters
    #   <p>Filters the results based on the
    #   			ConfigRuleComplianceSummaryFilters object.</p>
    #
    # @option params [String] :group_by_key
    #   <p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 1000. You cannot specify a number greater than 1000.
    #   			If you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    # @return [Types::GetAggregateConfigRuleComplianceSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_config_rule_compliance_summary(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     filters: {
    #       account_id: 'AccountId',
    #       aws_region: 'AwsRegion'
    #     },
    #     group_by_key: 'ACCOUNT_ID', # accepts ["ACCOUNT_ID", "AWS_REGION"]
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAggregateConfigRuleComplianceSummaryOutput
    #   resp.data.group_by_key #=> String
    #   resp.data.aggregate_compliance_counts #=> Array<AggregateComplianceCount>
    #   resp.data.aggregate_compliance_counts[0] #=> Types::AggregateComplianceCount
    #   resp.data.aggregate_compliance_counts[0].group_name #=> String
    #   resp.data.aggregate_compliance_counts[0].compliance_summary #=> Types::ComplianceSummary
    #   resp.data.aggregate_compliance_counts[0].compliance_summary.compliant_resource_count #=> Types::ComplianceContributorCount
    #   resp.data.aggregate_compliance_counts[0].compliance_summary.compliant_resource_count.capped_count #=> Integer
    #   resp.data.aggregate_compliance_counts[0].compliance_summary.compliant_resource_count.cap_exceeded #=> Boolean
    #   resp.data.aggregate_compliance_counts[0].compliance_summary.non_compliant_resource_count #=> Types::ComplianceContributorCount
    #   resp.data.aggregate_compliance_counts[0].compliance_summary.compliance_summary_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def get_aggregate_config_rule_compliance_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAggregateConfigRuleComplianceSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAggregateConfigRuleComplianceSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAggregateConfigRuleComplianceSummary
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoSuchConfigurationAggregatorException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetAggregateConfigRuleComplianceSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAggregateConfigRuleComplianceSummary,
        stubs: @stubs,
        params_class: Params::GetAggregateConfigRuleComplianceSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_aggregate_config_rule_compliance_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the count of compliant and noncompliant conformance packs across all Amazon Web Services accounts and Amazon Web Services Regions in an aggregator. You can filter based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    # 		       <note>
    #             <p>The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetAggregateConformancePackComplianceSummaryInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [AggregateConformancePackComplianceSummaryFilters] :filters
    #   <p>Filters the results based on the <code>AggregateConformancePackComplianceSummaryFilters</code> object.</p>
    #
    # @option params [String] :group_by_key
    #   <p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned on each page. The default is maximum. If you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    # @return [Types::GetAggregateConformancePackComplianceSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_conformance_pack_compliance_summary(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     filters: {
    #       account_id: 'AccountId',
    #       aws_region: 'AwsRegion'
    #     },
    #     group_by_key: 'ACCOUNT_ID', # accepts ["ACCOUNT_ID", "AWS_REGION"]
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAggregateConformancePackComplianceSummaryOutput
    #   resp.data.aggregate_conformance_pack_compliance_summaries #=> Array<AggregateConformancePackComplianceSummary>
    #   resp.data.aggregate_conformance_pack_compliance_summaries[0] #=> Types::AggregateConformancePackComplianceSummary
    #   resp.data.aggregate_conformance_pack_compliance_summaries[0].compliance_summary #=> Types::AggregateConformancePackComplianceCount
    #   resp.data.aggregate_conformance_pack_compliance_summaries[0].compliance_summary.compliant_conformance_pack_count #=> Integer
    #   resp.data.aggregate_conformance_pack_compliance_summaries[0].compliance_summary.non_compliant_conformance_pack_count #=> Integer
    #   resp.data.aggregate_conformance_pack_compliance_summaries[0].group_name #=> String
    #   resp.data.group_by_key #=> String
    #   resp.data.next_token #=> String
    #
    def get_aggregate_conformance_pack_compliance_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAggregateConformancePackComplianceSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAggregateConformancePackComplianceSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAggregateConformancePackComplianceSummary
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoSuchConfigurationAggregatorException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetAggregateConformancePackComplianceSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAggregateConformancePackComplianceSummary,
        stubs: @stubs,
        params_class: Params::GetAggregateConformancePackComplianceSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_aggregate_conformance_pack_compliance_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the resource counts across accounts and regions that are present in your Config aggregator. You can request the resource counts by providing filters and GroupByKey.</p>
    # 		       <p>For example, if the input contains accountID 12345678910 and region us-east-1 in filters, the API returns the count of resources in account ID 12345678910 and region us-east-1.
    # 			If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource counts for all source accounts that are present in your aggregator.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAggregateDiscoveredResourceCountsInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [ResourceCountFilters] :filters
    #   <p>Filters the results based on the <code>ResourceCountFilters</code> object.</p>
    #
    # @option params [String] :group_by_key
    #   <p>The key to group the resource counts.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of <a>GroupedResourceCount</a> objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    # @return [Types::GetAggregateDiscoveredResourceCountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_discovered_resource_counts(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     filters: {
    #       resource_type: 'AWS::EC2::CustomerGateway', # accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #       account_id: 'AccountId',
    #       region: 'Region'
    #     },
    #     group_by_key: 'RESOURCE_TYPE', # accepts ["RESOURCE_TYPE", "ACCOUNT_ID", "AWS_REGION"]
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAggregateDiscoveredResourceCountsOutput
    #   resp.data.total_discovered_resources #=> Integer
    #   resp.data.group_by_key #=> String
    #   resp.data.grouped_resource_counts #=> Array<GroupedResourceCount>
    #   resp.data.grouped_resource_counts[0] #=> Types::GroupedResourceCount
    #   resp.data.grouped_resource_counts[0].group_name #=> String
    #   resp.data.grouped_resource_counts[0].resource_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_aggregate_discovered_resource_counts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAggregateDiscoveredResourceCountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAggregateDiscoveredResourceCountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAggregateDiscoveredResourceCounts
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoSuchConfigurationAggregatorException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetAggregateDiscoveredResourceCounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAggregateDiscoveredResourceCounts,
        stubs: @stubs,
        params_class: Params::GetAggregateDiscoveredResourceCountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_aggregate_discovered_resource_counts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns configuration item that is aggregated for your specific resource in a specific source account and region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAggregateResourceConfigInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [AggregateResourceIdentifier] :resource_identifier
    #   <p>An object that identifies aggregate resource.</p>
    #
    # @return [Types::GetAggregateResourceConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregate_resource_config(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     resource_identifier: {
    #       source_account_id: 'SourceAccountId', # required
    #       source_region: 'SourceRegion', # required
    #       resource_id: 'ResourceId', # required
    #       resource_type: 'AWS::EC2::CustomerGateway', # required - accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #       resource_name: 'ResourceName'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAggregateResourceConfigOutput
    #   resp.data.configuration_item #=> Types::ConfigurationItem
    #   resp.data.configuration_item.version #=> String
    #   resp.data.configuration_item.account_id #=> String
    #   resp.data.configuration_item.configuration_item_capture_time #=> Time
    #   resp.data.configuration_item.configuration_item_status #=> String, one of ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"]
    #   resp.data.configuration_item.configuration_state_id #=> String
    #   resp.data.configuration_item.configuration_item_md5_hash #=> String
    #   resp.data.configuration_item.arn #=> String
    #   resp.data.configuration_item.resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.configuration_item.resource_id #=> String
    #   resp.data.configuration_item.resource_name #=> String
    #   resp.data.configuration_item.aws_region #=> String
    #   resp.data.configuration_item.availability_zone #=> String
    #   resp.data.configuration_item.resource_creation_time #=> Time
    #   resp.data.configuration_item.tags #=> Hash<String, String>
    #   resp.data.configuration_item.tags['key'] #=> String
    #   resp.data.configuration_item.related_events #=> Array<String>
    #   resp.data.configuration_item.related_events[0] #=> String
    #   resp.data.configuration_item.relationships #=> Array<Relationship>
    #   resp.data.configuration_item.relationships[0] #=> Types::Relationship
    #   resp.data.configuration_item.relationships[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.configuration_item.relationships[0].resource_id #=> String
    #   resp.data.configuration_item.relationships[0].resource_name #=> String
    #   resp.data.configuration_item.relationships[0].relationship_name #=> String
    #   resp.data.configuration_item.configuration #=> String
    #   resp.data.configuration_item.supplementary_configuration #=> Hash<String, String>
    #   resp.data.configuration_item.supplementary_configuration['key'] #=> String
    #
    def get_aggregate_resource_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAggregateResourceConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAggregateResourceConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAggregateResourceConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OversizedConfigurationItemException, Errors::ValidationException, Errors::NoSuchConfigurationAggregatorException, Errors::ResourceNotDiscoveredException]),
        data_parser: Parsers::GetAggregateResourceConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAggregateResourceConfig,
        stubs: @stubs,
        params_class: Params::GetAggregateResourceConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_aggregate_resource_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the evaluation results for the specified Config
    # 			rule. The results indicate which Amazon Web Services resources were evaluated by the
    # 			rule, when each resource was last evaluated, and whether each
    # 			resource complies with the rule.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComplianceDetailsByConfigRuleInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want compliance
    #   			information.</p>
    #
    # @option params [Array<String>] :compliance_types
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code>,
    #   				<code>NON_COMPLIANT</code>, and
    #   			<code>NOT_APPLICABLE</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 10. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    # @return [Types::GetComplianceDetailsByConfigRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_details_by_config_rule(
    #     config_rule_name: 'ConfigRuleName', # required
    #     compliance_types: [
    #       'COMPLIANT' # accepts ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComplianceDetailsByConfigRuleOutput
    #   resp.data.evaluation_results #=> Array<EvaluationResult>
    #   resp.data.evaluation_results[0] #=> Types::EvaluationResult
    #   resp.data.evaluation_results[0].evaluation_result_identifier #=> Types::EvaluationResultIdentifier
    #   resp.data.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier #=> Types::EvaluationResultQualifier
    #   resp.data.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.data.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.data.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.data.evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.data.evaluation_results[0].compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #   resp.data.evaluation_results[0].result_recorded_time #=> Time
    #   resp.data.evaluation_results[0].config_rule_invoked_time #=> Time
    #   resp.data.evaluation_results[0].annotation #=> String
    #   resp.data.evaluation_results[0].result_token #=> String
    #   resp.data.next_token #=> String
    #
    def get_compliance_details_by_config_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComplianceDetailsByConfigRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComplianceDetailsByConfigRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComplianceDetailsByConfigRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::NoSuchConfigRuleException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetComplianceDetailsByConfigRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComplianceDetailsByConfigRule,
        stubs: @stubs,
        params_class: Params::GetComplianceDetailsByConfigRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_compliance_details_by_config_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the evaluation results for the specified Amazon Web Services resource.
    # 			The results indicate which Config rules were used to evaluate
    # 			the resource, when each rule was last used, and whether the resource
    # 			complies with each rule.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComplianceDetailsByResourceInput}.
    #
    # @option params [String] :resource_type
    #   <p>The type of the Amazon Web Services resource for which you want compliance
    #   			information.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the Amazon Web Services resource for which you want compliance
    #   			information.</p>
    #
    # @option params [Array<String>] :compliance_types
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code>,
    #   				<code>NON_COMPLIANT</code>, and
    #   			<code>NOT_APPLICABLE</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    # @return [Types::GetComplianceDetailsByResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_details_by_resource(
    #     resource_type: 'ResourceType', # required
    #     resource_id: 'ResourceId', # required
    #     compliance_types: [
    #       'COMPLIANT' # accepts ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComplianceDetailsByResourceOutput
    #   resp.data.evaluation_results #=> Array<EvaluationResult>
    #   resp.data.evaluation_results[0] #=> Types::EvaluationResult
    #   resp.data.evaluation_results[0].evaluation_result_identifier #=> Types::EvaluationResultIdentifier
    #   resp.data.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier #=> Types::EvaluationResultQualifier
    #   resp.data.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.data.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.data.evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.data.evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.data.evaluation_results[0].compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #   resp.data.evaluation_results[0].result_recorded_time #=> Time
    #   resp.data.evaluation_results[0].config_rule_invoked_time #=> Time
    #   resp.data.evaluation_results[0].annotation #=> String
    #   resp.data.evaluation_results[0].result_token #=> String
    #   resp.data.next_token #=> String
    #
    def get_compliance_details_by_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComplianceDetailsByResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComplianceDetailsByResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComplianceDetailsByResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetComplianceDetailsByResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComplianceDetailsByResource,
        stubs: @stubs,
        params_class: Params::GetComplianceDetailsByResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_compliance_details_by_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the number of Config rules that are compliant and
    # 			noncompliant, up to a maximum of 25 for each.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComplianceSummaryByConfigRuleInput}.
    #
    # @return [Types::GetComplianceSummaryByConfigRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_summary_by_config_rule()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComplianceSummaryByConfigRuleOutput
    #   resp.data.compliance_summary #=> Types::ComplianceSummary
    #   resp.data.compliance_summary.compliant_resource_count #=> Types::ComplianceContributorCount
    #   resp.data.compliance_summary.compliant_resource_count.capped_count #=> Integer
    #   resp.data.compliance_summary.compliant_resource_count.cap_exceeded #=> Boolean
    #   resp.data.compliance_summary.non_compliant_resource_count #=> Types::ComplianceContributorCount
    #   resp.data.compliance_summary.compliance_summary_timestamp #=> Time
    #
    def get_compliance_summary_by_config_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComplianceSummaryByConfigRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComplianceSummaryByConfigRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComplianceSummaryByConfigRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetComplianceSummaryByConfigRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComplianceSummaryByConfigRule,
        stubs: @stubs,
        params_class: Params::GetComplianceSummaryByConfigRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_compliance_summary_by_config_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the number of resources that are compliant and the
    # 			number that are noncompliant. You can specify one or more resource
    # 			types to get these numbers for each resource type. The maximum
    # 			number returned is 100.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComplianceSummaryByResourceTypeInput}.
    #
    # @option params [Array<String>] :resource_types
    #   <p>Specify one or more resource types to get the number of
    #   			resources that are compliant and the number that are noncompliant
    #   			for each resource type.</p>
    #   		       <p>For this request, you can specify an Amazon Web Services resource type such as
    #   				<code>AWS::EC2::Instance</code>. You can specify that the
    #   			resource type is an Amazon Web Services account by specifying
    #   				<code>AWS::::Account</code>.</p>
    #
    # @return [Types::GetComplianceSummaryByResourceTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_summary_by_resource_type(
    #     resource_types: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComplianceSummaryByResourceTypeOutput
    #   resp.data.compliance_summaries_by_resource_type #=> Array<ComplianceSummaryByResourceType>
    #   resp.data.compliance_summaries_by_resource_type[0] #=> Types::ComplianceSummaryByResourceType
    #   resp.data.compliance_summaries_by_resource_type[0].resource_type #=> String
    #   resp.data.compliance_summaries_by_resource_type[0].compliance_summary #=> Types::ComplianceSummary
    #   resp.data.compliance_summaries_by_resource_type[0].compliance_summary.compliant_resource_count #=> Types::ComplianceContributorCount
    #   resp.data.compliance_summaries_by_resource_type[0].compliance_summary.compliant_resource_count.capped_count #=> Integer
    #   resp.data.compliance_summaries_by_resource_type[0].compliance_summary.compliant_resource_count.cap_exceeded #=> Boolean
    #   resp.data.compliance_summaries_by_resource_type[0].compliance_summary.non_compliant_resource_count #=> Types::ComplianceContributorCount
    #   resp.data.compliance_summaries_by_resource_type[0].compliance_summary.compliance_summary_timestamp #=> Time
    #
    def get_compliance_summary_by_resource_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComplianceSummaryByResourceTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComplianceSummaryByResourceTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComplianceSummaryByResourceType
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetComplianceSummaryByResourceType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComplianceSummaryByResourceType,
        stubs: @stubs,
        params_class: Params::GetComplianceSummaryByResourceTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_compliance_summary_by_resource_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns compliance details of a conformance pack for all Amazon Web Services resources that are monitered by conformance pack.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConformancePackComplianceDetailsInput}.
    #
    # @option params [String] :conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #
    # @option params [ConformancePackEvaluationFilters] :filters
    #   <p>A <code>ConformancePackEvaluationFilters</code> object.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    # @return [Types::GetConformancePackComplianceDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_conformance_pack_compliance_details(
    #     conformance_pack_name: 'ConformancePackName', # required
    #     filters: {
    #       config_rule_names: [
    #         'member'
    #       ],
    #       compliance_type: 'COMPLIANT', # accepts ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #       resource_type: 'ResourceType',
    #       resource_ids: [
    #         'member'
    #       ]
    #     },
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConformancePackComplianceDetailsOutput
    #   resp.data.conformance_pack_name #=> String
    #   resp.data.conformance_pack_rule_evaluation_results #=> Array<ConformancePackEvaluationResult>
    #   resp.data.conformance_pack_rule_evaluation_results[0] #=> Types::ConformancePackEvaluationResult
    #   resp.data.conformance_pack_rule_evaluation_results[0].compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #   resp.data.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier #=> Types::EvaluationResultIdentifier
    #   resp.data.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier #=> Types::EvaluationResultQualifier
    #   resp.data.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.config_rule_name #=> String
    #   resp.data.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_type #=> String
    #   resp.data.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.evaluation_result_qualifier.resource_id #=> String
    #   resp.data.conformance_pack_rule_evaluation_results[0].evaluation_result_identifier.ordering_timestamp #=> Time
    #   resp.data.conformance_pack_rule_evaluation_results[0].config_rule_invoked_time #=> Time
    #   resp.data.conformance_pack_rule_evaluation_results[0].result_recorded_time #=> Time
    #   resp.data.conformance_pack_rule_evaluation_results[0].annotation #=> String
    #   resp.data.next_token #=> String
    #
    def get_conformance_pack_compliance_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConformancePackComplianceDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConformancePackComplianceDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConformancePackComplianceDetails
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigRuleInConformancePackException, Errors::InvalidParameterValueException, Errors::NoSuchConformancePackException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetConformancePackComplianceDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConformancePackComplianceDetails,
        stubs: @stubs,
        params_class: Params::GetConformancePackComplianceDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_conformance_pack_compliance_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns compliance details for the conformance pack based on the cumulative compliance results of all the rules in that conformance pack.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConformancePackComplianceSummaryInput}.
    #
    # @option params [Array<String>] :conformance_pack_names
    #   <p>Names of conformance packs.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of conformance packs returned on each page.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    # @return [Types::GetConformancePackComplianceSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_conformance_pack_compliance_summary(
    #     conformance_pack_names: [
    #       'member'
    #     ], # required
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConformancePackComplianceSummaryOutput
    #   resp.data.conformance_pack_compliance_summary_list #=> Array<ConformancePackComplianceSummary>
    #   resp.data.conformance_pack_compliance_summary_list[0] #=> Types::ConformancePackComplianceSummary
    #   resp.data.conformance_pack_compliance_summary_list[0].conformance_pack_name #=> String
    #   resp.data.conformance_pack_compliance_summary_list[0].conformance_pack_compliance_status #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #   resp.data.next_token #=> String
    #
    def get_conformance_pack_compliance_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConformancePackComplianceSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConformancePackComplianceSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConformancePackComplianceSummary
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConformancePackException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetConformancePackComplianceSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConformancePackComplianceSummary,
        stubs: @stubs,
        params_class: Params::GetConformancePackComplianceSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_conformance_pack_compliance_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the policy definition containing the logic for your Config Custom Policy rule.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCustomRulePolicyInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The name of your Config Custom Policy rule.</p>
    #
    # @return [Types::GetCustomRulePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_rule_policy(
    #     config_rule_name: 'ConfigRuleName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCustomRulePolicyOutput
    #   resp.data.policy_text #=> String
    #
    def get_custom_rule_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCustomRulePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCustomRulePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCustomRulePolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigRuleException]),
        data_parser: Parsers::GetCustomRulePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCustomRulePolicy,
        stubs: @stubs,
        params_class: Params::GetCustomRulePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_custom_rule_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the resource types, the number of each resource type,
    # 			and the total number of resources that Config is recording in
    # 			this region for your Amazon Web Services account. </p>
    # 		       <p class="title">
    #             <b>Example</b>
    #          </p>
    #          <ol>
    #             <li>
    # 				           <p>Config is recording three resource types in the US
    # 					East (Ohio) Region for your account: 25 EC2 instances, 20
    # 					IAM users, and 15 S3 buckets.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You make a call to the
    # 						<code>GetDiscoveredResourceCounts</code> action and
    # 					specify that you want all resource types. </p>
    # 			         </li>
    #             <li>
    # 				           <p>Config returns the following:</p>
    #
    # 				           <ul>
    #                   <li>
    # 						               <p>The resource types (EC2 instances, IAM users,
    # 							and S3 buckets).</p>
    # 					             </li>
    #                   <li>
    # 						               <p>The number of each resource type (25, 20, and
    # 							15).</p>
    # 					             </li>
    #                   <li>
    # 						               <p>The total number of all resources
    # 							(60).</p>
    # 					             </li>
    #                </ul>
    #
    # 			         </li>
    #          </ol>
    #
    # 		       <p>The response is paginated. By default, Config lists 100
    # 				<a>ResourceCount</a> objects on each page. You can
    # 			customize this number with the <code>limit</code> parameter. The
    # 			response includes a <code>nextToken</code> string. To get the next
    # 			page of results, run the request again and specify the string for
    # 			the <code>nextToken</code> parameter.</p>
    #
    # 		       <note>
    # 			         <p>If you make a call to the <a>GetDiscoveredResourceCounts</a> action, you might
    # 				not immediately receive resource counts in the following
    # 				situations:</p>
    #
    # 			         <ul>
    #                <li>
    # 					             <p>You are a new Config customer.</p>
    # 				           </li>
    #                <li>
    # 					             <p>You just enabled resource recording.</p>
    # 				           </li>
    #             </ul>
    #
    # 			         <p>It might take a few minutes for Config to record and
    # 				count your resources. Wait a few minutes and then retry the
    # 					<a>GetDiscoveredResourceCounts</a> action.
    # 			</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::GetDiscoveredResourceCountsInput}.
    #
    # @option params [Array<String>] :resource_types
    #   <p>The comma-separated list that specifies the resource types that
    #   			you want Config to return (for example,
    #   				<code>"AWS::EC2::Instance"</code>,
    #   			<code>"AWS::IAM::User"</code>).</p>
    #
    #   		       <p>If a value for <code>resourceTypes</code> is not specified, Config returns all resource types that Config is recording in
    #   			the region for your account.</p>
    #   		       <note>
    #   			         <p>If the configuration recorder is turned off, Config
    #   				returns an empty list of <a>ResourceCount</a>
    #   				objects. If the configuration recorder is not recording a
    #   				specific resource type (for example, S3 buckets), that resource
    #   				type is not returned in the list of <a>ResourceCount</a> objects.</p>
    #   		       </note>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of <a>ResourceCount</a> objects
    #   			returned on each page. The default is 100. You cannot specify a
    #   			number greater than 100. If you specify 0, Config uses the
    #   			default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    # @return [Types::GetDiscoveredResourceCountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_discovered_resource_counts(
    #     resource_types: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDiscoveredResourceCountsOutput
    #   resp.data.total_discovered_resources #=> Integer
    #   resp.data.resource_counts #=> Array<ResourceCount>
    #   resp.data.resource_counts[0] #=> Types::ResourceCount
    #   resp.data.resource_counts[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.resource_counts[0].count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_discovered_resource_counts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDiscoveredResourceCountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDiscoveredResourceCountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDiscoveredResourceCounts
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetDiscoveredResourceCounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDiscoveredResourceCounts,
        stubs: @stubs,
        params_class: Params::GetDiscoveredResourceCountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_discovered_resource_counts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed status for each member account within an organization for a given organization Config rule.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOrganizationConfigRuleDetailedStatusInput}.
    #
    # @option params [String] :organization_config_rule_name
    #   <p>The name of your organization Config rule for which you want status details for member accounts.</p>
    #
    # @option params [StatusDetailFilters] :filters
    #   <p>A <code>StatusDetailFilters</code> object.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of <code>OrganizationConfigRuleDetailedStatus</code> returned on each page. If you do not specify a number, Config uses the default. The default is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    # @return [Types::GetOrganizationConfigRuleDetailedStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_organization_config_rule_detailed_status(
    #     organization_config_rule_name: 'OrganizationConfigRuleName', # required
    #     filters: {
    #       account_id: 'AccountId',
    #       member_account_rule_status: 'CREATE_SUCCESSFUL' # accepts ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #     },
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOrganizationConfigRuleDetailedStatusOutput
    #   resp.data.organization_config_rule_detailed_status #=> Array<MemberAccountStatus>
    #   resp.data.organization_config_rule_detailed_status[0] #=> Types::MemberAccountStatus
    #   resp.data.organization_config_rule_detailed_status[0].account_id #=> String
    #   resp.data.organization_config_rule_detailed_status[0].config_rule_name #=> String
    #   resp.data.organization_config_rule_detailed_status[0].member_account_rule_status #=> String, one of ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #   resp.data.organization_config_rule_detailed_status[0].error_code #=> String
    #   resp.data.organization_config_rule_detailed_status[0].error_message #=> String
    #   resp.data.organization_config_rule_detailed_status[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def get_organization_config_rule_detailed_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOrganizationConfigRuleDetailedStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOrganizationConfigRuleDetailedStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOrganizationConfigRuleDetailedStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::InvalidLimitException, Errors::NoSuchOrganizationConfigRuleException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetOrganizationConfigRuleDetailedStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOrganizationConfigRuleDetailedStatus,
        stubs: @stubs,
        params_class: Params::GetOrganizationConfigRuleDetailedStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_organization_config_rule_detailed_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed status for each member account within an organization for a given organization conformance pack.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOrganizationConformancePackDetailedStatusInput}.
    #
    # @option params [String] :organization_conformance_pack_name
    #   <p>The name of organization conformance pack for which you want status details for member accounts.</p>
    #
    # @option params [OrganizationResourceDetailedStatusFilters] :filters
    #   <p>An <code>OrganizationResourceDetailedStatusFilters</code> object.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of <code>OrganizationConformancePackDetailedStatuses</code> returned on each page.
    #   			If you do not specify a number, Config uses the default. The default is 100. </p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    # @return [Types::GetOrganizationConformancePackDetailedStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_organization_conformance_pack_detailed_status(
    #     organization_conformance_pack_name: 'OrganizationConformancePackName', # required
    #     filters: {
    #       account_id: 'AccountId',
    #       status: 'CREATE_SUCCESSFUL' # accepts ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #     },
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOrganizationConformancePackDetailedStatusOutput
    #   resp.data.organization_conformance_pack_detailed_statuses #=> Array<OrganizationConformancePackDetailedStatus>
    #   resp.data.organization_conformance_pack_detailed_statuses[0] #=> Types::OrganizationConformancePackDetailedStatus
    #   resp.data.organization_conformance_pack_detailed_statuses[0].account_id #=> String
    #   resp.data.organization_conformance_pack_detailed_statuses[0].conformance_pack_name #=> String
    #   resp.data.organization_conformance_pack_detailed_statuses[0].status #=> String, one of ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #   resp.data.organization_conformance_pack_detailed_statuses[0].error_code #=> String
    #   resp.data.organization_conformance_pack_detailed_statuses[0].error_message #=> String
    #   resp.data.organization_conformance_pack_detailed_statuses[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def get_organization_conformance_pack_detailed_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOrganizationConformancePackDetailedStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOrganizationConformancePackDetailedStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOrganizationConformancePackDetailedStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::NoSuchOrganizationConformancePackException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetOrganizationConformancePackDetailedStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOrganizationConformancePackDetailedStatus,
        stubs: @stubs,
        params_class: Params::GetOrganizationConformancePackDetailedStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_organization_conformance_pack_detailed_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the policy definition containing the logic for your organization Config Custom Policy rule.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOrganizationCustomRulePolicyInput}.
    #
    # @option params [String] :organization_config_rule_name
    #   <p>The name of your organization Config Custom Policy rule. </p>
    #
    # @return [Types::GetOrganizationCustomRulePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_organization_custom_rule_policy(
    #     organization_config_rule_name: 'OrganizationConfigRuleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOrganizationCustomRulePolicyOutput
    #   resp.data.policy_text #=> String
    #
    def get_organization_custom_rule_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOrganizationCustomRulePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOrganizationCustomRulePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOrganizationCustomRulePolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::NoSuchOrganizationConfigRuleException]),
        data_parser: Parsers::GetOrganizationCustomRulePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOrganizationCustomRulePolicy,
        stubs: @stubs,
        params_class: Params::GetOrganizationCustomRulePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_organization_custom_rule_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <code>ConfigurationItems</code> for the specified resource.
    # 			The list contains details about each state of the resource
    # 			during the specified time interval. If you specified a retention
    # 			period to retain your <code>ConfigurationItems</code> between a
    # 			minimum of 30 days and a maximum of 7 years (2557 days), Config
    # 			returns the <code>ConfigurationItems</code> for the specified
    # 			retention period. </p>
    # 		       <p>The response is paginated. By default, Config returns a
    # 			limit of 10 configuration items per page. You can customize this
    # 			number with the <code>limit</code> parameter. The response includes
    # 			a <code>nextToken</code> string. To get the next page of results,
    # 			run the request again and specify the string for the
    # 				<code>nextToken</code> parameter.</p>
    # 		       <note>
    # 			         <p>Each call to the API is limited to span a duration of seven
    # 				days. It is likely that the number of records returned is
    # 				smaller than the specified <code>limit</code>. In such cases,
    # 				you can make another call, using the
    # 				<code>nextToken</code>.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::GetResourceConfigHistoryInput}.
    #
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource (for example.,
    #   			<code>sg-xxxxxx</code>).</p>
    #
    # @option params [Time] :later_time
    #   <p>The time stamp that indicates a later time. If not specified,
    #   			current time is taken.</p>
    #
    # @option params [Time] :earlier_time
    #   <p>The time stamp that indicates an earlier time. If not
    #   			specified, the action returns paginated results that contain
    #   			configuration items that start when the first configuration item was
    #   			recorded.</p>
    #
    # @option params [String] :chronological_order
    #   <p>The chronological order for configuration items listed. By
    #   			default, the results are listed in reverse chronological
    #   			order.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of configuration items returned on each
    #   			page. The default is 10. You cannot specify a number greater than
    #   			100. If you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    # @return [Types::GetResourceConfigHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_config_history(
    #     resource_type: 'AWS::EC2::CustomerGateway', # required - accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #     resource_id: 'resourceId', # required
    #     later_time: Time.now,
    #     earlier_time: Time.now,
    #     chronological_order: 'Reverse', # accepts ["Reverse", "Forward"]
    #     limit: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceConfigHistoryOutput
    #   resp.data.configuration_items #=> Array<ConfigurationItem>
    #   resp.data.configuration_items[0] #=> Types::ConfigurationItem
    #   resp.data.configuration_items[0].version #=> String
    #   resp.data.configuration_items[0].account_id #=> String
    #   resp.data.configuration_items[0].configuration_item_capture_time #=> Time
    #   resp.data.configuration_items[0].configuration_item_status #=> String, one of ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"]
    #   resp.data.configuration_items[0].configuration_state_id #=> String
    #   resp.data.configuration_items[0].configuration_item_md5_hash #=> String
    #   resp.data.configuration_items[0].arn #=> String
    #   resp.data.configuration_items[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.configuration_items[0].resource_id #=> String
    #   resp.data.configuration_items[0].resource_name #=> String
    #   resp.data.configuration_items[0].aws_region #=> String
    #   resp.data.configuration_items[0].availability_zone #=> String
    #   resp.data.configuration_items[0].resource_creation_time #=> Time
    #   resp.data.configuration_items[0].tags #=> Hash<String, String>
    #   resp.data.configuration_items[0].tags['key'] #=> String
    #   resp.data.configuration_items[0].related_events #=> Array<String>
    #   resp.data.configuration_items[0].related_events[0] #=> String
    #   resp.data.configuration_items[0].relationships #=> Array<Relationship>
    #   resp.data.configuration_items[0].relationships[0] #=> Types::Relationship
    #   resp.data.configuration_items[0].relationships[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.configuration_items[0].relationships[0].resource_id #=> String
    #   resp.data.configuration_items[0].relationships[0].resource_name #=> String
    #   resp.data.configuration_items[0].relationships[0].relationship_name #=> String
    #   resp.data.configuration_items[0].configuration #=> String
    #   resp.data.configuration_items[0].supplementary_configuration #=> Hash<String, String>
    #   resp.data.configuration_items[0].supplementary_configuration['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def get_resource_config_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceConfigHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceConfigHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceConfigHistory
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InvalidTimeRangeException, Errors::NoAvailableConfigurationRecorderException, Errors::InvalidLimitException, Errors::ResourceNotDiscoveredException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetResourceConfigHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceConfigHistory,
        stubs: @stubs,
        params_class: Params::GetResourceConfigHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_config_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of a specific stored query.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStoredQueryInput}.
    #
    # @option params [String] :query_name
    #   <p>The name of the query.</p>
    #
    # @return [Types::GetStoredQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stored_query(
    #     query_name: 'QueryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStoredQueryOutput
    #   resp.data.stored_query #=> Types::StoredQuery
    #   resp.data.stored_query.query_id #=> String
    #   resp.data.stored_query.query_arn #=> String
    #   resp.data.stored_query.query_name #=> String
    #   resp.data.stored_query.description #=> String
    #   resp.data.stored_query.expression #=> String
    #
    def get_stored_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStoredQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStoredQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStoredQuery
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetStoredQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStoredQuery,
        stubs: @stubs,
        params_class: Params::GetStoredQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_stored_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions.
    # 			A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region.
    # 			You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region.</p>
    # 			      <p>For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type <code>AWS::EC2::Instance</code> then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAggregateDiscoveredResourcesInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator. </p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resources that you want Config to list in the response.</p>
    #
    # @option params [ResourceFilters] :filters
    #   <p>Filters the results based on the <code>ResourceFilters</code> object.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of resource identifiers returned on each page. You cannot specify a number greater than 100. If you specify 0, Config uses the default.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    # @return [Types::ListAggregateDiscoveredResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aggregate_discovered_resources(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     resource_type: 'AWS::EC2::CustomerGateway', # required - accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #     filters: {
    #       account_id: 'AccountId',
    #       resource_id: 'ResourceId',
    #       resource_name: 'ResourceName',
    #       region: 'Region'
    #     },
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAggregateDiscoveredResourcesOutput
    #   resp.data.resource_identifiers #=> Array<AggregateResourceIdentifier>
    #   resp.data.resource_identifiers[0] #=> Types::AggregateResourceIdentifier
    #   resp.data.resource_identifiers[0].source_account_id #=> String
    #   resp.data.resource_identifiers[0].source_region #=> String
    #   resp.data.resource_identifiers[0].resource_id #=> String
    #   resp.data.resource_identifiers[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.resource_identifiers[0].resource_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_aggregate_discovered_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAggregateDiscoveredResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAggregateDiscoveredResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAggregateDiscoveredResources
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoSuchConfigurationAggregatorException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListAggregateDiscoveredResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAggregateDiscoveredResources,
        stubs: @stubs,
        params_class: Params::ListAggregateDiscoveredResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_aggregate_discovered_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Accepts a resource type and returns a list of resource
    # 			identifiers for the resources of that type. A resource identifier
    # 			includes the resource type, ID, and (if available) the custom
    # 			resource name. The results consist of resources that Config has
    # 			discovered, including those that Config is not currently
    # 			recording. You can narrow the results to include only resources that
    # 			have specific resource IDs or a resource name.</p>
    # 		       <note>
    # 			         <p>You can specify either resource IDs or a resource name, but
    # 				not both, in the same request.</p>
    # 		       </note>
    # 		       <p>The response is paginated. By default, Config lists 100
    # 			resource identifiers on each page. You can customize this number
    # 			with the <code>limit</code> parameter. The response includes a
    # 				<code>nextToken</code> string. To get the next page of results,
    # 			run the request again and specify the string for the
    # 				<code>nextToken</code> parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDiscoveredResourcesInput}.
    #
    # @option params [String] :resource_type
    #   <p>The type of resources that you want Config to list in the
    #   			response.</p>
    #
    # @option params [Array<String>] :resource_ids
    #   <p>The IDs of only those resources that you want Config to
    #   			list in the response. If you do not specify this parameter, Config lists all resources of the specified type that it has
    #   			discovered.</p>
    #
    # @option params [String] :resource_name
    #   <p>The custom name of only those resources that you want Config to list in the response. If you do not specify this
    #   			parameter, Config lists all resources of the specified type that
    #   			it has discovered.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of resource identifiers returned on each
    #   			page. The default is 100. You cannot specify a number greater than
    #   			100. If you specify 0, Config uses the default.</p>
    #
    # @option params [Boolean] :include_deleted_resources
    #   <p>Specifies whether Config includes deleted resources in the
    #   			results. By default, deleted resources are not included.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    # @return [Types::ListDiscoveredResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovered_resources(
    #     resource_type: 'AWS::EC2::CustomerGateway', # required - accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #     resource_ids: [
    #       'member'
    #     ],
    #     resource_name: 'resourceName',
    #     limit: 1,
    #     include_deleted_resources: false,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDiscoveredResourcesOutput
    #   resp.data.resource_identifiers #=> Array<ResourceIdentifier>
    #   resp.data.resource_identifiers[0] #=> Types::ResourceIdentifier
    #   resp.data.resource_identifiers[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.resource_identifiers[0].resource_id #=> String
    #   resp.data.resource_identifiers[0].resource_name #=> String
    #   resp.data.resource_identifiers[0].resource_deletion_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_discovered_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDiscoveredResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDiscoveredResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDiscoveredResources
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::NoAvailableConfigurationRecorderException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListDiscoveredResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDiscoveredResources,
        stubs: @stubs,
        params_class: Params::ListDiscoveredResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_discovered_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the stored queries for a single Amazon Web Services account and a single Amazon Web Services Region. The default is 100. </p>
    #
    # @param [Hash] params
    #   See {Types::ListStoredQueriesInput}.
    #
    # @option params [String] :next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call.</p>
    #
    # @return [Types::ListStoredQueriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stored_queries(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStoredQueriesOutput
    #   resp.data.stored_query_metadata #=> Array<StoredQueryMetadata>
    #   resp.data.stored_query_metadata[0] #=> Types::StoredQueryMetadata
    #   resp.data.stored_query_metadata[0].query_id #=> String
    #   resp.data.stored_query_metadata[0].query_arn #=> String
    #   resp.data.stored_query_metadata[0].query_name #=> String
    #   resp.data.stored_query_metadata[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_stored_queries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStoredQueriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStoredQueriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStoredQueries
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListStoredQueries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStoredQueries,
        stubs: @stubs,
        params_class: Params::ListStoredQueriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stored_queries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the tags for Config resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, Config uses the default. </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Authorizes the aggregator account and region to collect data
    # 			from the source account and region. </p>
    #
    # @param [Hash] params
    #   See {Types::PutAggregationAuthorizationInput}.
    #
    # @option params [String] :authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate data.</p>
    #
    # @option params [String] :authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of tag object.</p>
    #
    # @return [Types::PutAggregationAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_aggregation_authorization(
    #     authorized_account_id: 'AuthorizedAccountId', # required
    #     authorized_aws_region: 'AuthorizedAwsRegion', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAggregationAuthorizationOutput
    #   resp.data.aggregation_authorization #=> Types::AggregationAuthorization
    #   resp.data.aggregation_authorization.aggregation_authorization_arn #=> String
    #   resp.data.aggregation_authorization.authorized_account_id #=> String
    #   resp.data.aggregation_authorization.authorized_aws_region #=> String
    #   resp.data.aggregation_authorization.creation_time #=> Time
    #
    def put_aggregation_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAggregationAuthorizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAggregationAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAggregationAuthorization
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException]),
        data_parser: Parsers::PutAggregationAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAggregationAuthorization,
        stubs: @stubs,
        params_class: Params::PutAggregationAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_aggregation_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates an Config rule for evaluating whether your
    # 			Amazon Web Services resources comply with your desired configurations.</p>
    # 		       <p>You can use this action for Config custom rules and Config
    # 			managed rules. A Config custom rule is a rule that you
    # 			develop and maintain. An Config managed rule is a customizable,
    # 			predefined rule that Config provides.</p>
    # 		       <p>If you are adding a new Config custom rule, you must first
    # 			create the Lambda function that the rule invokes to evaluate
    # 			your resources. When you use the <code>PutConfigRule</code> action
    # 			to add the rule to Config, you must specify the Amazon Resource
    # 			Name (ARN) that Lambda assigns to the function. Specify the ARN
    # 			for the <code>SourceIdentifier</code> key. This key is part of the
    # 				<code>Source</code> object, which is part of the
    # 				<code>ConfigRule</code> object. </p>
    # 		       <p>If you are adding an Config managed rule, specify the
    # 			rule's identifier for the <code>SourceIdentifier</code> key. To
    # 			reference Config managed rule identifiers, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">About Config managed rules</a>.</p>
    # 		       <p>For any new rule that you add, specify the
    # 				<code>ConfigRuleName</code> in the <code>ConfigRule</code>
    # 			object. Do not specify the <code>ConfigRuleArn</code> or the
    # 			<code>ConfigRuleId</code>. These values are generated by Config for new rules.</p>
    # 		       <p>If you are updating a rule that you added previously, you can
    # 			specify the rule by <code>ConfigRuleName</code>,
    # 				<code>ConfigRuleId</code>, or <code>ConfigRuleArn</code> in the
    # 				<code>ConfigRule</code> data type that you use in this
    # 			request.</p>
    # 		       <p>The maximum number of rules that Config supports is 150.</p>
    #
    # 		       <p>For information about requesting a rule limit increase, see
    # 				<a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">Config Limits</a> in the <i>Amazon Web Services General
    # 				Reference Guide</i>.</p>
    #
    # 		       <p>For more information about developing and using Config
    # 			rules, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating Amazon Web Services resource Configurations with Config</a>
    # 			in the <i>Config Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutConfigRuleInput}.
    #
    # @option params [ConfigRule] :config_rule
    #   <p>The rule that you want to add to your account.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of tag object.</p>
    #
    # @return [Types::PutConfigRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_config_rule(
    #     config_rule: {
    #       config_rule_name: 'ConfigRuleName',
    #       config_rule_arn: 'ConfigRuleArn',
    #       config_rule_id: 'ConfigRuleId',
    #       description: 'Description',
    #       scope: {
    #         compliance_resource_types: [
    #           'member'
    #         ],
    #         tag_key: 'TagKey',
    #         tag_value: 'TagValue',
    #         compliance_resource_id: 'ComplianceResourceId'
    #       },
    #       source: {
    #         owner: 'CUSTOM_LAMBDA', # required - accepts ["CUSTOM_LAMBDA", "AWS", "CUSTOM_POLICY"]
    #         source_identifier: 'SourceIdentifier',
    #         source_details: [
    #           {
    #             event_source: 'aws.config', # accepts ["aws.config"]
    #             message_type: 'ConfigurationItemChangeNotification', # accepts ["ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification", "OversizedConfigurationItemChangeNotification"]
    #             maximum_execution_frequency: 'One_Hour' # accepts ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #           }
    #         ],
    #         custom_policy_details: {
    #           policy_runtime: 'PolicyRuntime', # required
    #           policy_text: 'PolicyText', # required
    #           enable_debug_log_delivery: false
    #         }
    #       }, # required
    #       input_parameters: 'InputParameters',
    #       maximum_execution_frequency: 'One_Hour', # accepts ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #       config_rule_state: 'ACTIVE', # accepts ["ACTIVE", "DELETING", "DELETING_RESULTS", "EVALUATING"]
    #       created_by: 'CreatedBy'
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConfigRuleOutput
    #
    def put_config_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConfigRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConfigRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConfigRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPermissionsException, Errors::MaxNumberOfConfigRulesExceededException, Errors::NoAvailableConfigurationRecorderException, Errors::InvalidParameterValueException, Errors::ResourceInUseException]),
        data_parser: Parsers::PutConfigRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConfigRule,
        stubs: @stubs,
        params_class: Params::PutConfigRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_config_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates and updates the configuration aggregator with the
    # 			selected source accounts and regions. The source account can be
    # 			individual account(s) or an organization.</p>
    # 		
    # 		       <p>
    #             <code>accountIds</code> that are passed will be replaced with existing accounts.
    # 			If you want to add additional accounts into the aggregator, call <code>DescribeConfigurationAggregators</code> to get the previous accounts and then append new ones.</p>
    # 		       <note>
    # 			         <p>Config should be enabled in source accounts and regions
    # 				you want to aggregate.</p>
    # 			
    # 			         <p>If your source type is an organization, you must be signed in to the management account or a registered delegated administrator and all the features must be enabled in your organization.
    # 				If the caller is a management account, Config calls <code>EnableAwsServiceAccess</code> API to enable integration between Config and Organizations.
    # 				If the caller is a registered delegated administrator, Config calls <code>ListDelegatedAdministrators</code> API to verify whether the caller is a valid delegated administrator.</p>
    # 			         <p>To register a delegated administrator, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli">Register a Delegated Administrator</a> in the Config developer guide. </p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationAggregatorInput}.
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [Array<AccountAggregationSource>] :account_aggregation_sources
    #   <p>A list of AccountAggregationSource object.
    #   			
    #   		</p>
    #
    # @option params [OrganizationAggregationSource] :organization_aggregation_source
    #   <p>An OrganizationAggregationSource object.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of tag object.</p>
    #
    # @return [Types::PutConfigurationAggregatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_aggregator(
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     account_aggregation_sources: [
    #       {
    #         account_ids: [
    #           'member'
    #         ], # required
    #         all_aws_regions: false,
    #         aws_regions: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     organization_aggregation_source: {
    #       role_arn: 'RoleArn', # required
    #       all_aws_regions: false
    #     },
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConfigurationAggregatorOutput
    #   resp.data.configuration_aggregator #=> Types::ConfigurationAggregator
    #   resp.data.configuration_aggregator.configuration_aggregator_name #=> String
    #   resp.data.configuration_aggregator.configuration_aggregator_arn #=> String
    #   resp.data.configuration_aggregator.account_aggregation_sources #=> Array<AccountAggregationSource>
    #   resp.data.configuration_aggregator.account_aggregation_sources[0] #=> Types::AccountAggregationSource
    #   resp.data.configuration_aggregator.account_aggregation_sources[0].account_ids #=> Array<String>
    #   resp.data.configuration_aggregator.account_aggregation_sources[0].account_ids[0] #=> String
    #   resp.data.configuration_aggregator.account_aggregation_sources[0].all_aws_regions #=> Boolean
    #   resp.data.configuration_aggregator.account_aggregation_sources[0].aws_regions #=> Array<String>
    #   resp.data.configuration_aggregator.account_aggregation_sources[0].aws_regions[0] #=> String
    #   resp.data.configuration_aggregator.organization_aggregation_source #=> Types::OrganizationAggregationSource
    #   resp.data.configuration_aggregator.organization_aggregation_source.role_arn #=> String
    #   resp.data.configuration_aggregator.organization_aggregation_source.aws_regions #=> Array<String>
    #   resp.data.configuration_aggregator.organization_aggregation_source.all_aws_regions #=> Boolean
    #   resp.data.configuration_aggregator.creation_time #=> Time
    #   resp.data.configuration_aggregator.last_updated_time #=> Time
    #   resp.data.configuration_aggregator.created_by #=> String
    #
    def put_configuration_aggregator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConfigurationAggregatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConfigurationAggregatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConfigurationAggregator
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::InvalidRoleException, Errors::LimitExceededException, Errors::NoAvailableOrganizationException, Errors::InvalidParameterValueException, Errors::OrganizationAllFeaturesNotEnabledException]),
        data_parser: Parsers::PutConfigurationAggregator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConfigurationAggregator,
        stubs: @stubs,
        params_class: Params::PutConfigurationAggregatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_configuration_aggregator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new configuration recorder to record the selected
    # 			resource configurations.</p>
    # 		       <p>You can use this action to change the role <code>roleARN</code>
    # 			or the <code>recordingGroup</code> of an existing recorder. To
    # 			change the role, call the action on the existing configuration
    # 			recorder and specify a role.</p>
    # 		       <note>
    # 			         <p>Currently, you can specify only one configuration recorder
    # 				per region in your account.</p>
    # 			         <p>If <code>ConfigurationRecorder</code> does not have the
    # 					<b>recordingGroup</b> parameter
    # 				specified, the default is to record all supported resource
    # 				types.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::PutConfigurationRecorderInput}.
    #
    # @option params [ConfigurationRecorder] :configuration_recorder
    #   <p>The configuration recorder object that records each
    #   			configuration change made to the resources.</p>
    #
    # @return [Types::PutConfigurationRecorderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_recorder(
    #     configuration_recorder: {
    #       name: 'name',
    #       role_arn: 'roleARN',
    #       recording_group: {
    #         all_supported: false,
    #         include_global_resource_types: false,
    #         resource_types: [
    #           'AWS::EC2::CustomerGateway' # accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #         ]
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConfigurationRecorderOutput
    #
    def put_configuration_recorder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConfigurationRecorderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConfigurationRecorderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConfigurationRecorder
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRecordingGroupException, Errors::InvalidRoleException, Errors::InvalidConfigurationRecorderNameException, Errors::MaxNumberOfConfigurationRecordersExceededException]),
        data_parser: Parsers::PutConfigurationRecorder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConfigurationRecorder,
        stubs: @stubs,
        params_class: Params::PutConfigurationRecorderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_configuration_recorder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a conformance pack. A conformance pack is a collection of Config rules that can be easily deployed in an account and a region and across Amazon Web Services Organization.</p>
    # 		       <p>This API creates a service linked role <code>AWSServiceRoleForConfigConforms</code> in your account.
    # 		The service linked role is created only when the role does not exist in your account. </p>
    # 		       <note>
    #             <p>You must specify either the <code>TemplateS3Uri</code> or the <code>TemplateBody</code> parameter, but not both.
    # 			If you provide both Config uses the <code>TemplateS3Uri</code> parameter and ignores the <code>TemplateBody</code> parameter.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutConformancePackInput}.
    #
    # @option params [String] :conformance_pack_name
    #   <p>Name of the conformance pack you want to create.</p>
    #
    # @option params [String] :template_s3_uri
    #   <p>Location of file containing the template body (<code>s3://bucketname/prefix</code>). The uri must point to the conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same region as the conformance pack. </p>
    #   		       <note>
    #               <p>You must have access to read Amazon S3 bucket.</p>
    #            </note>
    #
    # @option params [String] :template_body
    #   <p>A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>
    #   		       <note>
    #               <p>You can only use a YAML template with two resource types: Config rule (<code>AWS::Config::ConfigRule</code>) and a remediation action (<code>AWS::Config::RemediationConfiguration</code>).</p>
    #            </note>
    #
    # @option params [String] :delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
    #   		       <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    # @option params [String] :delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket. </p>
    #   		       <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    # @option params [Array<ConformancePackInputParameter>] :conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #
    # @return [Types::PutConformancePackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_conformance_pack(
    #     conformance_pack_name: 'ConformancePackName', # required
    #     template_s3_uri: 'TemplateS3Uri',
    #     template_body: 'TemplateBody',
    #     delivery_s3_bucket: 'DeliveryS3Bucket',
    #     delivery_s3_key_prefix: 'DeliveryS3KeyPrefix',
    #     conformance_pack_input_parameters: [
    #       {
    #         parameter_name: 'ParameterName', # required
    #         parameter_value: 'ParameterValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutConformancePackOutput
    #   resp.data.conformance_pack_arn #=> String
    #
    def put_conformance_pack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutConformancePackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutConformancePackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutConformancePack
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPermissionsException, Errors::InvalidParameterValueException, Errors::MaxNumberOfConformancePacksExceededException, Errors::ResourceInUseException, Errors::ConformancePackTemplateValidationException]),
        data_parser: Parsers::PutConformancePack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutConformancePack,
        stubs: @stubs,
        params_class: Params::PutConformancePackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_conformance_pack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a delivery channel object to deliver configuration
    # 			information to an Amazon S3 bucket and Amazon SNS topic.</p>
    # 		       <p>Before you can create a delivery channel, you must create a
    # 			configuration recorder.</p>
    # 		       <p>You can use this action to change the Amazon S3 bucket or an
    # 			Amazon SNS topic of the existing delivery channel. To change the
    # 			Amazon S3 bucket or an Amazon SNS topic, call this action and
    # 			specify the changed values for the S3 bucket and the SNS topic. If
    # 			you specify a different value for either the S3 bucket or the SNS
    # 			topic, this action will keep the existing value for the parameter
    # 			that is not changed.</p>
    # 		       <note>
    # 			         <p>You can have only one delivery channel per region in your
    # 				account.</p>
    # 			
    #
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::PutDeliveryChannelInput}.
    #
    # @option params [DeliveryChannel] :delivery_channel
    #   <p>The configuration delivery channel object that delivers the
    #   			configuration information to an Amazon S3 bucket and to an Amazon
    #   			SNS topic.</p>
    #
    # @return [Types::PutDeliveryChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_delivery_channel(
    #     delivery_channel: {
    #       name: 'name',
    #       s3_bucket_name: 's3BucketName',
    #       s3_key_prefix: 's3KeyPrefix',
    #       s3_kms_key_arn: 's3KmsKeyArn',
    #       sns_topic_arn: 'snsTopicARN',
    #       config_snapshot_delivery_properties: {
    #         delivery_frequency: 'One_Hour' # accepts ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDeliveryChannelOutput
    #
    def put_delivery_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDeliveryChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDeliveryChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDeliveryChannel
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidS3KmsKeyArnException, Errors::InvalidSNSTopicARNException, Errors::NoAvailableConfigurationRecorderException, Errors::InsufficientDeliveryPolicyException, Errors::InvalidDeliveryChannelNameException, Errors::NoSuchBucketException, Errors::MaxNumberOfDeliveryChannelsExceededException, Errors::InvalidS3KeyPrefixException]),
        data_parser: Parsers::PutDeliveryChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDeliveryChannel,
        stubs: @stubs,
        params_class: Params::PutDeliveryChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_delivery_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by an Lambda function to deliver evaluation results to
    # 			Config. This action is required in every Lambda function
    # 			that is invoked by an Config rule.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEvaluationsInput}.
    #
    # @option params [Array<Evaluation>] :evaluations
    #   <p>The assessments that the Lambda function performs. Each
    #   			evaluation identifies an Amazon Web Services resource and indicates whether it
    #   			complies with the Config rule that invokes the Lambda
    #   			function.</p>
    #
    # @option params [String] :result_token
    #   <p>An encrypted token that associates an evaluation with an Config rule. Identifies the rule and the event that triggered the
    #   			evaluation.</p>
    #
    # @option params [Boolean] :test_mode
    #   <p>Use this parameter to specify a test run for
    #   			<code>PutEvaluations</code>. You can verify whether your Lambda function will deliver evaluation results to Config. No
    #   			updates occur to your existing evaluations, and evaluation results
    #   			are not sent to Config.</p>
    #
    #   		       <note>
    #   			         <p>When <code>TestMode</code> is <code>true</code>,
    #   					<code>PutEvaluations</code> doesn't require a valid value
    #   				for the <code>ResultToken</code> parameter, but the value cannot
    #   				be null.</p>
    #   		       </note>
    #
    # @return [Types::PutEvaluationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_evaluations(
    #     evaluations: [
    #       {
    #         compliance_resource_type: 'ComplianceResourceType', # required
    #         compliance_resource_id: 'ComplianceResourceId', # required
    #         compliance_type: 'COMPLIANT', # required - accepts ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #         annotation: 'Annotation',
    #         ordering_timestamp: Time.now # required
    #       }
    #     ],
    #     result_token: 'ResultToken', # required
    #     test_mode: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEvaluationsOutput
    #   resp.data.failed_evaluations #=> Array<Evaluation>
    #   resp.data.failed_evaluations[0] #=> Types::Evaluation
    #   resp.data.failed_evaluations[0].compliance_resource_type #=> String
    #   resp.data.failed_evaluations[0].compliance_resource_id #=> String
    #   resp.data.failed_evaluations[0].compliance_type #=> String, one of ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #   resp.data.failed_evaluations[0].annotation #=> String
    #   resp.data.failed_evaluations[0].ordering_timestamp #=> Time
    #
    def put_evaluations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEvaluationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEvaluationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEvaluations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResultTokenException, Errors::InvalidParameterValueException, Errors::NoSuchConfigRuleException]),
        data_parser: Parsers::PutEvaluations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEvaluations,
        stubs: @stubs,
        params_class: Params::PutEvaluationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_evaluations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add or updates the evaluations for process checks.		
    # 			This API checks if the rule is a process check when the name of the Config rule is provided.</p>
    #
    # @param [Hash] params
    #   See {Types::PutExternalEvaluationInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    # @option params [ExternalEvaluation] :external_evaluation
    #   <p>An <code>ExternalEvaluation</code> object that provides details about compliance.</p>
    #
    # @return [Types::PutExternalEvaluationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_external_evaluation(
    #     config_rule_name: 'ConfigRuleName', # required
    #     external_evaluation: {
    #       compliance_resource_type: 'ComplianceResourceType', # required
    #       compliance_resource_id: 'ComplianceResourceId', # required
    #       compliance_type: 'COMPLIANT', # required - accepts ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #       annotation: 'Annotation',
    #       ordering_timestamp: Time.now # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutExternalEvaluationOutput
    #
    def put_external_evaluation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutExternalEvaluationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutExternalEvaluationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutExternalEvaluation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::NoSuchConfigRuleException]),
        data_parser: Parsers::PutExternalEvaluation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutExternalEvaluation,
        stubs: @stubs,
        params_class: Params::PutExternalEvaluationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_external_evaluation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates organization Config rule for your entire organization evaluating whether your Amazon Web Services resources comply with your
    # 			desired configurations.</p>
    # 	        <p> Only a master account and a delegated administrator can create or update an organization Config rule.
    # 		When calling this API with a delegated administrator, you must ensure Organizations
    # 		<code>ListDelegatedAdministrator</code> permissions are added. </p>
    # 		       <p>This API enables organization service access through the <code>EnableAWSServiceAccess</code> action and creates a service linked
    # 			role <code>AWSServiceRoleForConfigMultiAccountSetup</code> in the master or delegated administrator account of your organization.
    # 			The service linked role is created only when the role does not exist in the caller account.
    # 			Config verifies the existence of role with <code>GetRole</code> action.</p>
    # 		       <p>To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization
    # 			<code>register-delegated-administrator</code> for <code>config-multiaccountsetup.amazonaws.com</code>. </p>
    # 		       <p>You can use this action to create both Config custom rules and Config managed rules.
    # 			If you are adding a new Config custom rule, you must first create Lambda function in the master account or a delegated
    # 			administrator that the rule invokes to evaluate your resources. You also need to create an IAM role in the managed-account that can be assumed by the Lambda function.
    # 			When you use the <code>PutOrganizationConfigRule</code> action to add the rule to Config, you must
    # 			specify the Amazon Resource Name (ARN) that Lambda assigns to the function.
    # 			If you are adding an Config managed rule, specify the rule's identifier for the <code>RuleIdentifier</code> key.</p>
    # 		       <p>The maximum number of organization Config rules that Config supports is 150 and 3 delegated administrator per organization. </p>
    # 		       <note>
    #             <p>Prerequisite: Ensure you call <code>EnableAllFeatures</code> API to enable all features in an organization.</p>
    # 			         <p>Specify either <code>OrganizationCustomRuleMetadata</code> or <code>OrganizationManagedRuleMetadata</code>.</p>
    # 			      </note>
    #
    # @param [Hash] params
    #   See {Types::PutOrganizationConfigRuleInput}.
    #
    # @option params [String] :organization_config_rule_name
    #   <p>The name that you assign to an organization Config rule.</p>
    #
    # @option params [OrganizationManagedRuleMetadata] :organization_managed_rule_metadata
    #   <p>An <code>OrganizationManagedRuleMetadata</code> object. </p>
    #
    # @option params [OrganizationCustomRuleMetadata] :organization_custom_rule_metadata
    #   <p>An <code>OrganizationCustomRuleMetadata</code> object.</p>
    #
    # @option params [Array<String>] :excluded_accounts
    #   <p>A comma-separated list of accounts that you want to exclude from an organization Config rule.</p>
    #
    # @option params [OrganizationCustomPolicyRuleMetadata] :organization_custom_policy_rule_metadata
    #   <p>An object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug
    #   			logging enabled, and other custom rule metadata, such as resource type, resource ID of
    #   				Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>
    #
    # @return [Types::PutOrganizationConfigRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_organization_config_rule(
    #     organization_config_rule_name: 'OrganizationConfigRuleName', # required
    #     organization_managed_rule_metadata: {
    #       description: 'Description',
    #       rule_identifier: 'RuleIdentifier', # required
    #       input_parameters: 'InputParameters',
    #       maximum_execution_frequency: 'One_Hour', # accepts ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #       resource_types_scope: [
    #         'member'
    #       ],
    #       resource_id_scope: 'ResourceIdScope',
    #       tag_key_scope: 'TagKeyScope',
    #       tag_value_scope: 'TagValueScope'
    #     },
    #     organization_custom_rule_metadata: {
    #       description: 'Description',
    #       lambda_function_arn: 'LambdaFunctionArn', # required
    #       organization_config_rule_trigger_types: [
    #         'ConfigurationItemChangeNotification' # accepts ["ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification", "ScheduledNotification"]
    #       ], # required
    #       input_parameters: 'InputParameters',
    #       maximum_execution_frequency: 'One_Hour', # accepts ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #       resource_id_scope: 'ResourceIdScope',
    #       tag_key_scope: 'TagKeyScope',
    #       tag_value_scope: 'TagValueScope'
    #     },
    #     excluded_accounts: [
    #       'member'
    #     ],
    #     organization_custom_policy_rule_metadata: {
    #       description: 'Description',
    #       organization_config_rule_trigger_types: [
    #         'ConfigurationItemChangeNotification' # accepts ["ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification"]
    #       ],
    #       input_parameters: 'InputParameters',
    #       maximum_execution_frequency: 'One_Hour', # accepts ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #       resource_id_scope: 'ResourceIdScope',
    #       tag_key_scope: 'TagKeyScope',
    #       tag_value_scope: 'TagValueScope',
    #       policy_runtime: 'PolicyRuntime', # required
    #       policy_text: 'PolicyText', # required
    #       debug_log_delivery_accounts: [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutOrganizationConfigRuleOutput
    #   resp.data.organization_config_rule_arn #=> String
    #
    def put_organization_config_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutOrganizationConfigRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutOrganizationConfigRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutOrganizationConfigRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::ValidationException, Errors::MaxNumberOfOrganizationConfigRulesExceededException, Errors::InsufficientPermissionsException, Errors::NoAvailableOrganizationException, Errors::InvalidParameterValueException, Errors::OrganizationAllFeaturesNotEnabledException, Errors::ResourceInUseException]),
        data_parser: Parsers::PutOrganizationConfigRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutOrganizationConfigRule,
        stubs: @stubs,
        params_class: Params::PutOrganizationConfigRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_organization_config_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deploys conformance packs across member accounts in an Amazon Web Services Organization.</p>
    # 		       <p>Only a master account and a delegated administrator can call this API.
    # 			When calling this API with a delegated administrator, you must ensure Organizations
    # 			<code>ListDelegatedAdministrator</code> permissions are added.</p>
    # 		       <p>This API enables organization service access for <code>config-multiaccountsetup.amazonaws.com</code>
    # 			through the <code>EnableAWSServiceAccess</code> action and creates a
    # 			service linked role <code>AWSServiceRoleForConfigMultiAccountSetup</code> in the master or delegated administrator account of your organization.
    # 			The service linked role is created only when the role does not exist in the caller account.
    # 			To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization
    # 			<code>register-delegate-admin</code> for <code>config-multiaccountsetup.amazonaws.com</code>.</p>
    #
    # 			
    # 			
    # 		       <note>
    # 			         <p>Prerequisite: Ensure you call <code>EnableAllFeatures</code> API to enable all features in an organization.</p>
    # 			         <p>You must specify either the <code>TemplateS3Uri</code> or the <code>TemplateBody</code> parameter, but not both.
    # 			If you provide both Config uses the <code>TemplateS3Uri</code> parameter and ignores the <code>TemplateBody</code> parameter.</p>
    # 			         <p>Config sets the state of a conformance pack to CREATE_IN_PROGRESS and UPDATE_IN_PROGRESS until the conformance pack is created or updated.
    # 				You cannot update a conformance pack while it is in this state.</p>
    # 			         <p>You can create 50 conformance packs with 25 Config rules in each pack and 3 delegated administrator per organization. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutOrganizationConformancePackInput}.
    #
    # @option params [String] :organization_conformance_pack_name
    #   <p>Name of the organization conformance pack you want to create.</p>
    #
    # @option params [String] :template_s3_uri
    #   <p>Location of file containing the template body. The uri must point to the conformance pack template
    #   			(max size: 300 KB).</p>
    #   		       <note>
    #               <p>You must have access to read Amazon S3 bucket.</p>
    #            </note>
    #
    # @option params [String] :template_body
    #   <p>A string containing full conformance pack template body. Structure containing the template body
    #   			with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>
    #
    # @option params [String] :delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
    #   		       <note>
    #               <p>This field is optional. If used, it must be prefixed with <code>awsconfigconforms</code>.</p>
    #            </note>
    #
    # @option params [String] :delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket.</p>
    #   		       <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    # @option params [Array<ConformancePackInputParameter>] :conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #
    # @option params [Array<String>] :excluded_accounts
    #   <p>A list of Amazon Web Services accounts to be excluded from an organization conformance pack while deploying a conformance pack.</p>
    #
    # @return [Types::PutOrganizationConformancePackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_organization_conformance_pack(
    #     organization_conformance_pack_name: 'OrganizationConformancePackName', # required
    #     template_s3_uri: 'TemplateS3Uri',
    #     template_body: 'TemplateBody',
    #     delivery_s3_bucket: 'DeliveryS3Bucket',
    #     delivery_s3_key_prefix: 'DeliveryS3KeyPrefix',
    #     conformance_pack_input_parameters: [
    #       {
    #         parameter_name: 'ParameterName', # required
    #         parameter_value: 'ParameterValue' # required
    #       }
    #     ],
    #     excluded_accounts: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutOrganizationConformancePackOutput
    #   resp.data.organization_conformance_pack_arn #=> String
    #
    def put_organization_conformance_pack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutOrganizationConformancePackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutOrganizationConformancePackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutOrganizationConformancePack
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationAccessDeniedException, Errors::OrganizationConformancePackTemplateValidationException, Errors::ValidationException, Errors::InsufficientPermissionsException, Errors::NoAvailableOrganizationException, Errors::OrganizationAllFeaturesNotEnabledException, Errors::MaxNumberOfOrganizationConformancePacksExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::PutOrganizationConformancePack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutOrganizationConformancePack,
        stubs: @stubs,
        params_class: Params::PutOrganizationConformancePackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_organization_conformance_pack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates the remediation configuration with a specific Config rule with the
    # 			selected target or action.
    # 			The API creates the <code>RemediationConfiguration</code> object for the Config rule.
    # 		The Config rule must already exist for you to add a remediation configuration.
    # 		The target (SSM document) must exist and have permissions to use the target. </p>
    # 		       <note>
    #             <p>If you make backward incompatible changes to the SSM document,
    # 			you must call this again to ensure the remediations can run.</p>
    # 			         <p>This API does not support adding remediation configurations for service-linked Config Rules such as Organization Config rules,
    # 				the rules deployed by conformance packs, and rules deployed by Amazon Web Services Security Hub.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutRemediationConfigurationsInput}.
    #
    # @option params [Array<RemediationConfiguration>] :remediation_configurations
    #   <p>A list of remediation configuration objects.</p>
    #
    # @return [Types::PutRemediationConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_remediation_configurations(
    #     remediation_configurations: [
    #       {
    #         config_rule_name: 'ConfigRuleName', # required
    #         target_type: 'SSM_DOCUMENT', # required - accepts ["SSM_DOCUMENT"]
    #         target_id: 'TargetId', # required
    #         target_version: 'TargetVersion',
    #         parameters: {
    #           'key' => {
    #             resource_value: {
    #               value: 'RESOURCE_ID' # required - accepts ["RESOURCE_ID"]
    #             },
    #             static_value: {
    #               values: [
    #                 'member'
    #               ] # required
    #             }
    #           }
    #         },
    #         resource_type: 'ResourceType',
    #         automatic: false,
    #         execution_controls: {
    #           ssm_controls: {
    #             concurrent_execution_rate_percentage: 1,
    #             error_percentage: 1
    #           }
    #         },
    #         maximum_automatic_attempts: 1,
    #         retry_attempt_seconds: 1,
    #         arn: 'Arn',
    #         created_by_service: 'CreatedByService'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRemediationConfigurationsOutput
    #   resp.data.failed_batches #=> Array<FailedRemediationBatch>
    #   resp.data.failed_batches[0] #=> Types::FailedRemediationBatch
    #   resp.data.failed_batches[0].failure_message #=> String
    #   resp.data.failed_batches[0].failed_items #=> Array<RemediationConfiguration>
    #   resp.data.failed_batches[0].failed_items[0] #=> Types::RemediationConfiguration
    #   resp.data.failed_batches[0].failed_items[0].config_rule_name #=> String
    #   resp.data.failed_batches[0].failed_items[0].target_type #=> String, one of ["SSM_DOCUMENT"]
    #   resp.data.failed_batches[0].failed_items[0].target_id #=> String
    #   resp.data.failed_batches[0].failed_items[0].target_version #=> String
    #   resp.data.failed_batches[0].failed_items[0].parameters #=> Hash<String, RemediationParameterValue>
    #   resp.data.failed_batches[0].failed_items[0].parameters['key'] #=> Types::RemediationParameterValue
    #   resp.data.failed_batches[0].failed_items[0].parameters['key'].resource_value #=> Types::ResourceValue
    #   resp.data.failed_batches[0].failed_items[0].parameters['key'].resource_value.value #=> String, one of ["RESOURCE_ID"]
    #   resp.data.failed_batches[0].failed_items[0].parameters['key'].static_value #=> Types::StaticValue
    #   resp.data.failed_batches[0].failed_items[0].parameters['key'].static_value.values #=> Array<String>
    #   resp.data.failed_batches[0].failed_items[0].parameters['key'].static_value.values[0] #=> String
    #   resp.data.failed_batches[0].failed_items[0].resource_type #=> String
    #   resp.data.failed_batches[0].failed_items[0].automatic #=> Boolean
    #   resp.data.failed_batches[0].failed_items[0].execution_controls #=> Types::ExecutionControls
    #   resp.data.failed_batches[0].failed_items[0].execution_controls.ssm_controls #=> Types::SsmControls
    #   resp.data.failed_batches[0].failed_items[0].execution_controls.ssm_controls.concurrent_execution_rate_percentage #=> Integer
    #   resp.data.failed_batches[0].failed_items[0].execution_controls.ssm_controls.error_percentage #=> Integer
    #   resp.data.failed_batches[0].failed_items[0].maximum_automatic_attempts #=> Integer
    #   resp.data.failed_batches[0].failed_items[0].retry_attempt_seconds #=> Integer
    #   resp.data.failed_batches[0].failed_items[0].arn #=> String
    #   resp.data.failed_batches[0].failed_items[0].created_by_service #=> String
    #
    def put_remediation_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRemediationConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRemediationConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRemediationConfigurations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPermissionsException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::PutRemediationConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRemediationConfigurations,
        stubs: @stubs,
        params_class: Params::PutRemediationConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_remediation_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A remediation exception is when a specific resource is no longer considered for auto-remediation.
    # 			This API adds a new exception or updates an existing exception for a specific resource with a specific Config rule. </p>
    # 		       <note>
    #             <p>Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource.
    # 			Remediation exceptions blocks auto-remediation until the exception is cleared.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutRemediationExceptionsInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want to create remediation exception.</p>
    #
    # @option params [Array<RemediationExceptionResourceKey>] :resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    #
    # @option params [String] :message
    #   <p>The message contains an explanation of the exception.</p>
    #
    # @option params [Time] :expiration_time
    #   <p>The exception is automatically deleted after the expiration date.</p>
    #
    # @return [Types::PutRemediationExceptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_remediation_exceptions(
    #     config_rule_name: 'ConfigRuleName', # required
    #     resource_keys: [
    #       {
    #         resource_type: 'ResourceType',
    #         resource_id: 'ResourceId'
    #       }
    #     ], # required
    #     message: 'Message',
    #     expiration_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRemediationExceptionsOutput
    #   resp.data.failed_batches #=> Array<FailedRemediationExceptionBatch>
    #   resp.data.failed_batches[0] #=> Types::FailedRemediationExceptionBatch
    #   resp.data.failed_batches[0].failure_message #=> String
    #   resp.data.failed_batches[0].failed_items #=> Array<RemediationException>
    #   resp.data.failed_batches[0].failed_items[0] #=> Types::RemediationException
    #   resp.data.failed_batches[0].failed_items[0].config_rule_name #=> String
    #   resp.data.failed_batches[0].failed_items[0].resource_type #=> String
    #   resp.data.failed_batches[0].failed_items[0].resource_id #=> String
    #   resp.data.failed_batches[0].failed_items[0].message #=> String
    #   resp.data.failed_batches[0].failed_items[0].expiration_time #=> Time
    #
    def put_remediation_exceptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRemediationExceptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRemediationExceptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRemediationExceptions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPermissionsException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::PutRemediationExceptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRemediationExceptions,
        stubs: @stubs,
        params_class: Params::PutRemediationExceptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_remediation_exceptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Records the configuration state for the resource provided in the request.
    # 			
    # 			The configuration state of a resource is represented in Config as Configuration Items.
    # 			Once this API records the configuration item, you can retrieve the list of configuration items for the custom resource type using existing Config APIs. </p>
    # 		       <note>
    #             <p>The custom resource type must be registered with CloudFormation. This API accepts the configuration item registered with CloudFormation.</p>
    # 			         <p>When you call this API, Config only stores configuration state of the resource provided in the request. This API does not change or remediate the configuration of the resource.
    # 				</p>
    # 		          <p>Write-only schema properites are not recorded as part of the published configuration item.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutResourceConfigInput}.
    #
    # @option params [String] :resource_type
    #   <p>The type of the resource. The custom resource type must be registered with CloudFormation. </p>
    #   		       <note>
    #               <p>You cannot use the organization names “amzn”, “amazon”, “alexa”, “custom” with custom resource types. It is the first part of the ResourceType up to the first ::.</p>
    #            </note>
    #
    # @option params [String] :schema_version_id
    #   <p>Version of the schema registered for the ResourceType in CloudFormation.</p>
    #
    # @option params [String] :resource_id
    #   <p>Unique identifier of the resource.</p>
    #
    # @option params [String] :resource_name
    #   <p>Name of the resource.</p>
    #
    # @option params [String] :configuration
    #   <p>The configuration object of the resource in valid JSON format. It must match the schema registered with CloudFormation.</p>
    #   		       <note>
    #               <p>The configuration JSON must not exceed 64 KB.</p>
    #            </note>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags associated with the resource.</p>
    #
    # @return [Types::PutResourceConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_config(
    #     resource_type: 'ResourceType', # required
    #     schema_version_id: 'SchemaVersionId', # required
    #     resource_id: 'ResourceId', # required
    #     resource_name: 'ResourceName',
    #     configuration: 'Configuration', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourceConfigOutput
    #
    def put_resource_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourceConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourceConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourceConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InsufficientPermissionsException, Errors::MaxActiveResourcesExceededException, Errors::NoRunningConfigurationRecorderException]),
        data_parser: Parsers::PutResourceConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourceConfig,
        stubs: @stubs,
        params_class: Params::PutResourceConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates and updates the retention configuration with details
    # 			about retention period (number of days) that Config stores your
    # 			historical information. The API creates the
    # 				<code>RetentionConfiguration</code> object and names the object
    # 			as <b>default</b>. When you have a
    # 				<code>RetentionConfiguration</code> object named <b>default</b>, calling the API modifies the
    # 			default object. </p>
    # 		       <note>
    # 			         <p>Currently, Config supports only one retention
    # 				configuration per region in your account.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::PutRetentionConfigurationInput}.
    #
    # @option params [Integer] :retention_period_in_days
    #   <p>Number of days Config stores your historical
    #   			information.</p>
    #   		       <note>
    #   			         <p>Currently, only applicable to the configuration item
    #   				history.</p>
    #   		       </note>
    #
    # @return [Types::PutRetentionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_configuration(
    #     retention_period_in_days: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRetentionConfigurationOutput
    #   resp.data.retention_configuration #=> Types::RetentionConfiguration
    #   resp.data.retention_configuration.name #=> String
    #   resp.data.retention_configuration.retention_period_in_days #=> Integer
    #
    def put_retention_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRetentionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRetentionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRetentionConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MaxNumberOfRetentionConfigurationsExceededException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::PutRetentionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRetentionConfiguration,
        stubs: @stubs,
        params_class: Params::PutRetentionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_retention_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Saves a new query or updates an existing saved query. The <code>QueryName</code> must be unique for a single Amazon Web Services account and a single Amazon Web Services Region.
    # 			You can create upto 300 queries in a single Amazon Web Services account and a single Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::PutStoredQueryInput}.
    #
    # @option params [StoredQuery] :stored_query
    #   <p>A list of <code>StoredQuery</code> objects.
    #   			The mandatory fields are <code>QueryName</code> and <code>Expression</code>.</p>
    #   		       <note>
    #               <p>When you are creating a query, you must provide a query name and an expression.
    #   			When you are updating a query, you must provide a query name but updating the description is optional.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <code>Tags</code> object.</p>
    #
    # @return [Types::PutStoredQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_stored_query(
    #     stored_query: {
    #       query_id: 'QueryId',
    #       query_arn: 'QueryArn',
    #       query_name: 'QueryName', # required
    #       description: 'Description',
    #       expression: 'Expression'
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutStoredQueryOutput
    #   resp.data.query_arn #=> String
    #
    def put_stored_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutStoredQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutStoredQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutStoredQuery
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::TooManyTagsException, Errors::ResourceConcurrentModificationException]),
        data_parser: Parsers::PutStoredQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutStoredQuery,
        stubs: @stubs,
        params_class: Params::PutStoredQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_stored_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of Amazon Web Services resources across multiple accounts and regions,
    # 			performs the corresponding search, and returns resource configurations matching the properties.</p>
    # 		       <p>For more information about query components, see the
    # 			<a href="https://docs.aws.amazon.com/config/latest/developerguide/query-components.html">
    #                <b>Query Components</b>
    #             </a> section in the Config Developer Guide.</p>
    # 		
    # 		       <note>
    # 			         <p>If you run an aggregation query (i.e., using <code>GROUP BY</code> or using aggregate functions such as <code>COUNT</code>; e.g., <code>SELECT resourceId, COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId</code>)
    # 				and do not specify the <code>MaxResults</code> or the <code>Limit</code> query parameters, the default page size is set to 500.</p>
    # 			
    # 			         <p>If you run a non-aggregation query (i.e., not using <code>GROUP BY</code> or aggregate function; e.g., <code>SELECT * WHERE resourceType = 'AWS::IAM::Role'</code>)
    # 				and do not specify the <code>MaxResults</code> or the <code>Limit</code> query parameters, the default page size is set to 25.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::SelectAggregateResourceConfigInput}.
    #
    # @option params [String] :expression
    #   <p>The SQL query SELECT command. </p>
    #
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of query results returned on each page. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of query results returned on each page. Config also allows the Limit request parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #
    # @return [Types::SelectAggregateResourceConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.select_aggregate_resource_config(
    #     expression: 'Expression', # required
    #     configuration_aggregator_name: 'ConfigurationAggregatorName', # required
    #     limit: 1,
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SelectAggregateResourceConfigOutput
    #   resp.data.results #=> Array<String>
    #   resp.data.results[0] #=> String
    #   resp.data.query_info #=> Types::QueryInfo
    #   resp.data.query_info.select_fields #=> Array<FieldInfo>
    #   resp.data.query_info.select_fields[0] #=> Types::FieldInfo
    #   resp.data.query_info.select_fields[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def select_aggregate_resource_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SelectAggregateResourceConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SelectAggregateResourceConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SelectAggregateResourceConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidExpressionException, Errors::NoSuchConfigurationAggregatorException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::SelectAggregateResourceConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SelectAggregateResourceConfig,
        stubs: @stubs,
        params_class: Params::SelectAggregateResourceConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :select_aggregate_resource_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Accepts a structured query language (SQL) <code>SELECT</code> command, performs the corresponding search, and returns resource configurations matching the properties.</p>
    # 		       <p>For more information about query components, see the
    # 			<a href="https://docs.aws.amazon.com/config/latest/developerguide/query-components.html">
    #                <b>Query Components</b>
    #             </a> section in the Config Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::SelectResourceConfigInput}.
    #
    # @option params [String] :expression
    #   <p>The SQL query <code>SELECT</code> command.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of query results returned on each page. </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #
    # @return [Types::SelectResourceConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.select_resource_config(
    #     expression: 'Expression', # required
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SelectResourceConfigOutput
    #   resp.data.results #=> Array<String>
    #   resp.data.results[0] #=> String
    #   resp.data.query_info #=> Types::QueryInfo
    #   resp.data.query_info.select_fields #=> Array<FieldInfo>
    #   resp.data.query_info.select_fields[0] #=> Types::FieldInfo
    #   resp.data.query_info.select_fields[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def select_resource_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SelectResourceConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SelectResourceConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SelectResourceConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidExpressionException, Errors::InvalidLimitException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::SelectResourceConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SelectResourceConfig,
        stubs: @stubs,
        params_class: Params::SelectResourceConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :select_resource_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs an on-demand evaluation for the specified Config rules
    # 			against the last known configuration state of the resources. Use
    # 				<code>StartConfigRulesEvaluation</code> when you want to test
    # 			that a rule you updated is working as expected.
    # 				<code>StartConfigRulesEvaluation</code> does not re-record the
    # 			latest configuration state for your resources. It re-runs an
    # 			evaluation against the last known state of your resources. </p>
    # 		       <p>You can specify up to 25 Config rules per request. </p>
    #
    # 		
    # 		       <p>An existing <code>StartConfigRulesEvaluation</code> call for
    # 			the specified rules must complete before you can call the API again.
    # 			If you chose to have Config stream to an Amazon SNS topic, you
    # 			will receive a <code>ConfigRuleEvaluationStarted</code> notification
    # 			when the evaluation starts.</p>
    # 		       <note>
    # 			         <p>You don't need to call the
    # 					<code>StartConfigRulesEvaluation</code> API to run an
    # 				evaluation for a new rule. When you create a rule, Config
    # 				evaluates your resources against the rule automatically.
    # 			</p>
    # 		       </note>
    # 		       <p>The <code>StartConfigRulesEvaluation</code> API is useful if
    # 			you want to run on-demand evaluations, such as the following
    # 			example:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>You have a custom rule that evaluates your IAM
    # 					resources every 24 hours.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You update your Lambda function to add additional
    # 					conditions to your rule.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Instead of waiting for the next periodic evaluation,
    # 					you call the <code>StartConfigRulesEvaluation</code>
    # 					API.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Config invokes your Lambda function and evaluates
    # 					your IAM resources.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Your custom rule will still run periodic evaluations
    # 					every 24 hours.</p>
    # 			         </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::StartConfigRulesEvaluationInput}.
    #
    # @option params [Array<String>] :config_rule_names
    #   <p>The list of names of Config rules that you want to run
    #   			evaluations for.</p>
    #
    # @return [Types::StartConfigRulesEvaluationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_config_rules_evaluation(
    #     config_rule_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartConfigRulesEvaluationOutput
    #
    def start_config_rules_evaluation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartConfigRulesEvaluationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartConfigRulesEvaluationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartConfigRulesEvaluation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InvalidParameterValueException, Errors::ResourceInUseException, Errors::NoSuchConfigRuleException]),
        data_parser: Parsers::StartConfigRulesEvaluation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartConfigRulesEvaluation,
        stubs: @stubs,
        params_class: Params::StartConfigRulesEvaluationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_config_rules_evaluation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts recording configurations of the Amazon Web Services resources you have
    # 			selected to record in your Amazon Web Services account.</p>
    # 		       <p>You must have created at least one delivery channel to
    # 			successfully start the configuration recorder.</p>
    #
    # @param [Hash] params
    #   See {Types::StartConfigurationRecorderInput}.
    #
    # @option params [String] :configuration_recorder_name
    #   <p>The name of the recorder object that records each configuration
    #   			change made to the resources.</p>
    #
    # @return [Types::StartConfigurationRecorderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_configuration_recorder(
    #     configuration_recorder_name: 'ConfigurationRecorderName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartConfigurationRecorderOutput
    #
    def start_configuration_recorder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartConfigurationRecorderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartConfigurationRecorderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartConfigurationRecorder
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoAvailableDeliveryChannelException, Errors::NoSuchConfigurationRecorderException]),
        data_parser: Parsers::StartConfigurationRecorder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartConfigurationRecorder,
        stubs: @stubs,
        params_class: Params::StartConfigurationRecorderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_configuration_recorder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs an on-demand remediation for the specified Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous.</p>
    # 			      <p>You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.</p>
    #
    # @param [Hash] params
    #   See {Types::StartRemediationExecutionInput}.
    #
    # @option params [String] :config_rule_name
    #   <p>The list of names of Config rules that you want to run remediation execution for.</p>
    #
    # @option params [Array<ResourceKey>] :resource_keys
    #   <p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>
    #
    # @return [Types::StartRemediationExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_remediation_execution(
    #     config_rule_name: 'ConfigRuleName', # required
    #     resource_keys: [
    #       {
    #         resource_type: 'AWS::EC2::CustomerGateway', # required - accepts ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #         resource_id: 'resourceId' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartRemediationExecutionOutput
    #   resp.data.failure_message #=> String
    #   resp.data.failed_items #=> Array<ResourceKey>
    #   resp.data.failed_items[0] #=> Types::ResourceKey
    #   resp.data.failed_items[0].resource_type #=> String, one of ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #   resp.data.failed_items[0].resource_id #=> String
    #
    def start_remediation_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartRemediationExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartRemediationExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartRemediationExecution
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPermissionsException, Errors::InvalidParameterValueException, Errors::NoSuchRemediationConfigurationException]),
        data_parser: Parsers::StartRemediationExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartRemediationExecution,
        stubs: @stubs,
        params_class: Params::StartRemediationExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_remediation_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops recording configurations of the Amazon Web Services resources you have selected to record in your Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::StopConfigurationRecorderInput}.
    #
    # @option params [String] :configuration_recorder_name
    #   <p>The name of the recorder object that records each configuration change made to the resources.</p>
    #
    # @return [Types::StopConfigurationRecorderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_configuration_recorder(
    #     configuration_recorder_name: 'ConfigurationRecorderName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopConfigurationRecorderOutput
    #
    def stop_configuration_recorder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopConfigurationRecorderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopConfigurationRecorderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopConfigurationRecorder
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchConfigurationRecorderException]),
        data_parser: Parsers::StopConfigurationRecorder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopConfigurationRecorder,
        stubs: @stubs,
        params_class: Params::StopConfigurationRecorderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_configuration_recorder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed.
    # 			When a resource is deleted, the tags associated with that resource are deleted as well.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of tag object.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::TooManyTagsException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes specified tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
