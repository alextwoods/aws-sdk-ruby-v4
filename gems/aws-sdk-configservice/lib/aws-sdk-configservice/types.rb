# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConfigService
  module Types

    # <p>A collection of accounts and regions.</p>
    #
    # @!attribute account_ids
    #   <p>The 12-digit account ID of the account being aggregated.
    #   		</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute all_aws_regions
    #   <p>If true, aggregate existing Config regions and future
    #   			regions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_regions
    #   <p>The source regions being aggregated.</p>
    #
    #   @return [Array<String>]
    #
    AccountAggregationSource = ::Struct.new(
      :account_ids,
      :all_aws_regions,
      :aws_regions,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.all_aws_regions ||= false
      end

    end

    # <p>Indicates whether an Config rule is compliant based on
    # 			account ID, region, compliance, and rule name.</p>
    # 		       <p>A rule is compliant if all of the resources that the rule
    # 			evaluated comply with it. It is noncompliant if any of these
    # 			resources do not comply.</p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance
    #   <p>Indicates whether an Amazon Web Services resource or Config rule is
    #   			compliant and provides the number of contributors that affect the
    #   			compliance.</p>
    #
    #   @return [Compliance]
    #
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The source region from where the data is aggregated.</p>
    #
    #   @return [String]
    #
    AggregateComplianceByConfigRule = ::Struct.new(
      :config_rule_name,
      :compliance,
      :account_id,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides aggregate compliance of the conformance pack. Indicates whether a conformance pack is compliant based on the name of the conformance pack, account ID, and region.</p>
    # 		       <p>A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant.
    # 			The compliance status of a conformance pack is INSUFFICIENT_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data.
    # 			If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT_DATA, the conformance pack shows compliant.</p>
    #
    # @!attribute conformance_pack_name
    #   <p>The name of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance
    #   <p>The compliance status of the conformance pack.</p>
    #
    #   @return [AggregateConformancePackCompliance]
    #
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID of the source account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The source Amazon Web Services Region from where the data is aggregated.</p>
    #
    #   @return [String]
    #
    AggregateComplianceByConformancePack = ::Struct.new(
      :conformance_pack_name,
      :compliance,
      :account_id,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the number of compliant and noncompliant rules for one
    # 			or more accounts and regions in an aggregator.</p>
    #
    # @!attribute group_name
    #   <p>The 12-digit account ID or region based on the GroupByKey
    #   			value.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_summary
    #   <p>The number of compliant and noncompliant Config
    #   			rules.</p>
    #
    #   @return [ComplianceSummary]
    #
    AggregateComplianceCount = ::Struct.new(
      :group_name,
      :compliance_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the number of compliant and noncompliant rules within a conformance pack.
    # 			Also provides the compliance status of the conformance pack and the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.</p>
    # 		
    # 		       <p>A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant.
    # 			The compliance status of a conformance pack is INSUFFICIENT_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data.
    # 			If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT_DATA, the conformance pack shows compliant.</p>
    #
    # @!attribute compliance_type
    #   <p>The compliance status of the conformance pack.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute compliant_rule_count
    #   <p>The number of compliant Config Rules.</p>
    #
    #   @return [Integer]
    #
    # @!attribute non_compliant_rule_count
    #   <p>The number of noncompliant Config Rules.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_rule_count
    #   <p>Total number of compliant rules, noncompliant rules, and the rules that do not have any applicable resources to evaluate upon resulting in insufficient data.</p>
    #
    #   @return [Integer]
    #
    AggregateConformancePackCompliance = ::Struct.new(
      :compliance_type,
      :compliant_rule_count,
      :non_compliant_rule_count,
      :total_rule_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.compliant_rule_count ||= 0
        self.non_compliant_rule_count ||= 0
        self.total_rule_count ||= 0
      end

    end

    # <p>The number of conformance packs that are compliant and noncompliant.</p>
    #
    # @!attribute compliant_conformance_pack_count
    #   <p>Number of compliant conformance packs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute non_compliant_conformance_pack_count
    #   <p>Number of noncompliant conformance packs.</p>
    #
    #   @return [Integer]
    #
    AggregateConformancePackComplianceCount = ::Struct.new(
      :compliant_conformance_pack_count,
      :non_compliant_conformance_pack_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.compliant_conformance_pack_count ||= 0
        self.non_compliant_conformance_pack_count ||= 0
      end

    end

    # <p>Filters the conformance packs based on an account ID, region, compliance type, and the name of the conformance pack.</p>
    #
    # @!attribute conformance_pack_name
    #   <p>The name of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p>The compliance status of the conformance pack.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID of the source account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The source Amazon Web Services Region from where the data is aggregated.</p>
    #
    #   @return [String]
    #
    AggregateConformancePackComplianceFilters = ::Struct.new(
      :conformance_pack_name,
      :compliance_type,
      :account_id,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a summary of compliance based on either account ID or region. </p>
    #
    # @!attribute compliance_summary
    #   <p>Returns an <code>AggregateConformancePackComplianceCount</code> object. </p>
    #
    #   @return [AggregateConformancePackComplianceCount]
    #
    # @!attribute group_name
    #   <p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    AggregateConformancePackComplianceSummary = ::Struct.new(
      :compliance_summary,
      :group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters the results based on account ID and region. </p>
    #
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID of the source account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The source Amazon Web Services Region from where the data is aggregated.</p>
    #
    #   @return [String]
    #
    AggregateConformancePackComplianceSummaryFilters = ::Struct.new(
      :account_id,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AggregateConformancePackComplianceSummaryGroupKey
    #
    module AggregateConformancePackComplianceSummaryGroupKey
      # No documentation available.
      #
      ACCOUNT_ID = "ACCOUNT_ID"

      # No documentation available.
      #
      AWS_REGION = "AWS_REGION"
    end

    # <p>The details of an Config evaluation for an account ID and
    # 			region in an aggregator. Provides the Amazon Web Services resource that was
    # 			evaluated, the compliance of the resource, related time stamps, and
    # 			supplementary information. </p>
    #
    # @!attribute evaluation_result_identifier
    #   <p>Uniquely identifies the evaluation result.</p>
    #
    #   @return [EvaluationResultIdentifier]
    #
    # @!attribute compliance_type
    #   <p>The resource compliance status.</p>
    #   		       <p>For the <code>AggregationEvaluationResult</code> data type, Config supports only the <code>COMPLIANT</code> and
    #   				<code>NON_COMPLIANT</code>. Config does not support the
    #   				<code>NOT_APPLICABLE</code> and <code>INSUFFICIENT_DATA</code>
    #   			value.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute result_recorded_time
    #   <p>The time when Config recorded the aggregate evaluation
    #   			result.</p>
    #
    #   @return [Time]
    #
    # @!attribute config_rule_invoked_time
    #   <p>The time when the Config rule evaluated the Amazon Web Services
    #   			resource.</p>
    #
    #   @return [Time]
    #
    # @!attribute annotation
    #   <p>Supplementary information about how the agrregate evaluation
    #   			determined the compliance.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The source region from where the data is aggregated.</p>
    #
    #   @return [String]
    #
    AggregateEvaluationResult = ::Struct.new(
      :evaluation_result_identifier,
      :compliance_type,
      :result_recorded_time,
      :config_rule_invoked_time,
      :annotation,
      :account_id,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details that identify a resource that is collected by Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.</p>
    #
    # @!attribute source_account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #
    #   @return [String]
    #
    # @!attribute source_region
    #   <p>The source region where data is aggregated.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the Amazon Web Services resource.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    AggregateResourceIdentifier = ::Struct.new(
      :source_account_id,
      :source_region,
      :resource_id,
      :resource_type,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The current sync status between the source and the aggregator
    # 			account.</p>
    #
    # @!attribute source_id
    #   <p>The source account ID or an organization.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The source account or an organization.</p>
    #
    #   Enum, one of: ["ACCOUNT", "ORGANIZATION"]
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status
    #   <p>Filters the last updated status type.</p>
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
    #   Enum, one of: ["FAILED", "SUCCEEDED", "OUTDATED"]
    #
    #   @return [String]
    #
    # @!attribute last_update_time
    #   <p>The time of the last update.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_error_code
    #   <p>The error code that Config returned when the source account
    #   			aggregation last failed.</p>
    #
    #   @return [String]
    #
    # @!attribute last_error_message
    #   <p>The message indicating that the source account aggregation
    #   			failed due to an error.</p>
    #
    #   @return [String]
    #
    AggregatedSourceStatus = ::Struct.new(
      :source_id,
      :source_type,
      :aws_region,
      :last_update_status,
      :last_update_time,
      :last_error_code,
      :last_error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AggregatedSourceStatusType
    #
    module AggregatedSourceStatusType
      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      OUTDATED = "OUTDATED"
    end

    # Includes enum constants for AggregatedSourceType
    #
    module AggregatedSourceType
      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"

      # No documentation available.
      #
      ORGANIZATION = "ORGANIZATION"
    end

    # <p>An object that represents the authorizations granted to
    # 			aggregator accounts and regions.</p>
    #
    # @!attribute aggregation_authorization_arn
    #   <p>The Amazon Resource Name (ARN) of the aggregation
    #   			object.</p>
    #
    #   @return [String]
    #
    # @!attribute authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate
    #   			data.</p>
    #
    #   @return [String]
    #
    # @!attribute authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time stamp when the aggregation authorization was
    #   			created.</p>
    #
    #   @return [Time]
    #
    AggregationAuthorization = ::Struct.new(
      :aggregation_authorization_arn,
      :authorized_account_id,
      :authorized_aws_region,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The detailed configuration of a specified resource.</p>
    #
    # @!attribute version
    #   <p>The version number of the resource configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_item_capture_time
    #   <p>The time when the configuration recording was initiated.</p>
    #
    #   @return [Time]
    #
    # @!attribute configuration_item_status
    #   <p>The configuration item status. The valid values are:</p>
    #   		
    #   		       <ul>
    #               <li>
    #                  <p>OK – The resource configuration has been updated</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDiscovered – The resource was newly discovered</p>
    #               </li>
    #               <li>
    #                  <p>ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDeleted – The resource was deleted</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type</p>
    #               </li>
    #            </ul>
    #   		       <note>
    #               <p>The CIs do not incur any cost.</p>
    #            </note>
    #
    #   Enum, one of: ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"]
    #
    #   @return [String]
    #
    # @!attribute configuration_state_id
    #   <p>An identifier that indicates the ordering of the configuration
    #   			items of a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource (for example., sg-xxxxxx).</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The custom name of the resource, if available.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The region where the resource resides.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_creation_time
    #   <p>The time stamp when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute configuration
    #   <p>The description of the resource configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute supplementary_configuration
    #   <p>Configuration attributes that Config returns for certain
    #   			resource types to supplement the information returned for the
    #   			configuration parameter.</p>
    #
    #   @return [Hash<String, String>]
    #
    BaseConfigurationItem = ::Struct.new(
      :version,
      :account_id,
      :configuration_item_capture_time,
      :configuration_item_status,
      :configuration_state_id,
      :arn,
      :resource_type,
      :resource_id,
      :resource_name,
      :aws_region,
      :availability_zone,
      :resource_creation_time,
      :configuration,
      :supplementary_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_identifiers
    #   <p>A list of aggregate ResourceIdentifiers objects. </p>
    #
    #   @return [Array<AggregateResourceIdentifier>]
    #
    BatchGetAggregateResourceConfigInput = ::Struct.new(
      :configuration_aggregator_name,
      :resource_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute base_configuration_items
    #   <p>A list that contains the current configuration of one or more resources.</p>
    #
    #   @return [Array<BaseConfigurationItem>]
    #
    # @!attribute unprocessed_resource_identifiers
    #   <p>A list of resource identifiers that were not processed with current scope. The list is empty if all the resources are processed.</p>
    #
    #   @return [Array<AggregateResourceIdentifier>]
    #
    BatchGetAggregateResourceConfigOutput = ::Struct.new(
      :base_configuration_items,
      :unprocessed_resource_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_keys
    #   <p>A list of resource keys to be processed with the current
    #   			request. Each element in the list consists of the resource type and
    #   			resource ID.</p>
    #
    #   @return [Array<ResourceKey>]
    #
    BatchGetResourceConfigInput = ::Struct.new(
      :resource_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute base_configuration_items
    #   <p>A list that contains the current configuration of one or more
    #   			resources.</p>
    #
    #   @return [Array<BaseConfigurationItem>]
    #
    # @!attribute unprocessed_resource_keys
    #   <p>A list of resource keys that were not processed with the
    #   			current response. The unprocessesResourceKeys value is in the same
    #   			form as ResourceKeys, so the value can be directly provided to a
    #   			subsequent BatchGetResourceConfig operation.
    #   			
    #   			If there are no unprocessed resource keys, the response contains an
    #   			empty unprocessedResourceKeys list. </p>
    #
    #   @return [Array<ResourceKey>]
    #
    BatchGetResourceConfigOutput = ::Struct.new(
      :base_configuration_items,
      :unprocessed_resource_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChronologicalOrder
    #
    module ChronologicalOrder
      # No documentation available.
      #
      Reverse = "Reverse"

      # No documentation available.
      #
      Forward = "Forward"
    end

    # <p>Indicates whether an Amazon Web Services resource or Config rule is
    # 			compliant and provides the number of contributors that affect the
    # 			compliance.</p>
    #
    # @!attribute compliance_type
    #   <p>Indicates whether an Amazon Web Services resource or Config rule is
    #   			compliant.</p>
    #   		       <p>A resource is compliant if it complies with all of the Config rules that evaluate it. A resource is noncompliant if it does
    #   			not comply with one or more of these rules.</p>
    #   		       <p>A rule is compliant if all of the resources that the rule
    #   			evaluates comply with it. A rule is noncompliant if any of these
    #   			resources do not comply.</p>
    #   		       <p>Config returns the <code>INSUFFICIENT_DATA</code> value
    #   			when no evaluation results are available for the Amazon Web Services resource or Config rule.</p>
    #   		       <p>For the <code>Compliance</code> data type, Config supports
    #   			only <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and
    #   				<code>INSUFFICIENT_DATA</code> values. Config does not
    #   			support the <code>NOT_APPLICABLE</code> value for the
    #   				<code>Compliance</code> data type.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute compliance_contributor_count
    #   <p>The number of Amazon Web Services resources or Config rules that cause a
    #   			result of <code>NON_COMPLIANT</code>, up to a maximum
    #   			number.</p>
    #
    #   @return [ComplianceContributorCount]
    #
    Compliance = ::Struct.new(
      :compliance_type,
      :compliance_contributor_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether an Config rule is compliant. A rule is
    # 			compliant if all of the resources that the rule evaluated comply
    # 			with it. A rule is noncompliant if any of these resources do not
    # 			comply.</p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance
    #   <p>Indicates whether the Config rule is compliant.</p>
    #
    #   @return [Compliance]
    #
    ComplianceByConfigRule = ::Struct.new(
      :config_rule_name,
      :compliance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether an Amazon Web Services resource that is evaluated according
    # 			to one or more Config rules is compliant. A resource is
    # 			compliant if it complies with all of the rules that evaluate it. A
    # 			resource is noncompliant if it does not comply with one or more of
    # 			these rules.</p>
    #
    # @!attribute resource_type
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance
    #   <p>Indicates whether the Amazon Web Services resource complies with all of the Config rules that evaluated it.</p>
    #
    #   @return [Compliance]
    #
    ComplianceByResource = ::Struct.new(
      :resource_type,
      :resource_id,
      :compliance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of Amazon Web Services resources or Config rules responsible for
    # 			the current compliance of the item, up to a maximum
    # 			number.</p>
    #
    # @!attribute capped_count
    #   <p>The number of Amazon Web Services resources or Config rules responsible for
    #   			the current compliance of the item.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cap_exceeded
    #   <p>Indicates whether the maximum count is reached.</p>
    #
    #   @return [Boolean]
    #
    ComplianceContributorCount = ::Struct.new(
      :capped_count,
      :cap_exceeded,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.capped_count ||= 0
        self.cap_exceeded ||= false
      end

    end

    # <p>The number of Config rules or Amazon Web Services resources that are
    # 			compliant and noncompliant.</p>
    #
    # @!attribute compliant_resource_count
    #   <p>The number of Config rules or Amazon Web Services resources that are
    #   			compliant, up to a maximum of 25 for rules and 100 for
    #   			resources.</p>
    #
    #   @return [ComplianceContributorCount]
    #
    # @!attribute non_compliant_resource_count
    #   <p>The number of Config rules or Amazon Web Services resources that are
    #   			noncompliant, up to a maximum of 25 for rules and 100 for
    #   			resources.</p>
    #
    #   @return [ComplianceContributorCount]
    #
    # @!attribute compliance_summary_timestamp
    #   <p>The time that Config created the compliance
    #   			summary.</p>
    #
    #   @return [Time]
    #
    ComplianceSummary = ::Struct.new(
      :compliant_resource_count,
      :non_compliant_resource_count,
      :compliance_summary_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of Amazon Web Services resources of a specific type that are
    # 			compliant or noncompliant, up to a maximum of 100 for
    # 			each.</p>
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_summary
    #   <p>The number of Amazon Web Services resources that are compliant or noncompliant,
    #   			up to a maximum of 100 for each.</p>
    #
    #   @return [ComplianceSummary]
    #
    ComplianceSummaryByResourceType = ::Struct.new(
      :resource_type,
      :compliance_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComplianceType
    #
    module ComplianceType
      # No documentation available.
      #
      Compliant = "COMPLIANT"

      # No documentation available.
      #
      Non_Compliant = "NON_COMPLIANT"

      # No documentation available.
      #
      Not_Applicable = "NOT_APPLICABLE"

      # No documentation available.
      #
      Insufficient_Data = "INSUFFICIENT_DATA"
    end

    # <p>Provides status of the delivery of the snapshot or the
    # 			configuration history to the specified Amazon S3 bucket. Also
    # 			provides the status of notifications about the Amazon S3 delivery to
    # 			the specified Amazon SNS topic.</p>
    #
    # @!attribute last_status
    #   <p>Status of the last attempted delivery.</p>
    #
    #   Enum, one of: ["Success", "Failure", "Not_Applicable"]
    #
    #   @return [String]
    #
    # @!attribute last_error_code
    #   <p>The error code from the last attempted delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute last_error_message
    #   <p>The error message from the last attempted delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute last_attempt_time
    #   <p>The time of the last attempted delivery.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_successful_time
    #   <p>The time of the last successful delivery.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_delivery_time
    #   <p>The time that the next delivery occurs.</p>
    #
    #   @return [Time]
    #
    ConfigExportDeliveryInfo = ::Struct.new(
      :last_status,
      :last_error_code,
      :last_error_message,
      :last_attempt_time,
      :last_successful_time,
      :next_delivery_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Config rule represents an Lambda function that you
    # 			create for a custom rule or a predefined function for an Config managed
    # 			rule. The function evaluates configuration items to assess whether
    # 			your Amazon Web Services resources comply with your desired configurations. This
    # 			function can run when Config detects a configuration change to
    # 			an Amazon Web Services resource and at a periodic frequency that you choose (for
    # 			example, every 24 hours).</p>
    #
    # 		       <note>
    # 			         <p>You can use the Amazon Web Services CLI and Amazon Web Services SDKs if you want to create
    # 				a rule that triggers evaluations for your resources when Config delivers the configuration snapshot. For more
    # 				information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    # 		       </note>
    # 		       <p>For more information about developing and using Config
    # 			rules, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating Amazon Web Services resource Configurations with Config</a>
    # 			in the <i>Config Developer Guide</i>.</p>
    #
    # @!attribute config_rule_name
    #   <p>The name that you assign to the Config rule. The name is
    #   			required if you are adding a new rule.</p>
    #
    #   @return [String]
    #
    # @!attribute config_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the Config
    #   			rule.</p>
    #
    #   @return [String]
    #
    # @!attribute config_rule_id
    #   <p>The ID of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description that you provide for the Config
    #   			rule.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>Defines which resources can trigger an evaluation for the rule.
    #   			The scope can include one or more resource types, a combination of
    #   			one resource type and one resource ID, or a combination of a tag key
    #   			and value. Specify a scope to constrain the resources that can
    #   			trigger an evaluation for the rule. If you do not specify a scope,
    #   			evaluations are triggered when any resource in the recording group
    #   			changes.</p>
    #   		       <note>
    #               <p>The scope can be empty. </p>
    #            </note>
    #
    #   @return [Scope]
    #
    # @!attribute source
    #   <p>Provides the rule owner (Amazon Web Services or customer), the rule identifier,
    #   			and the notifications that cause the function to evaluate your Amazon Web Services
    #   			resources.</p>
    #
    #   @return [Source]
    #
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to the Config rule
    #   			Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations
    #   			for a rule. You can specify a value for
    #   				<code>MaximumExecutionFrequency</code> when:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>You are using an Config managed rule that is triggered at
    #   					a periodic frequency.</p>
    #   			         </li>
    #               <li>
    #   				           <p>Your custom rule is triggered when Config delivers
    #   					the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    #   			         </li>
    #            </ul>
    #
    #
    #
    #   		       <note>
    #   			         <p>By default, rules with a periodic trigger are evaluated
    #   				every 24 hours. To change the frequency, specify a valid value
    #   				for the <code>MaximumExecutionFrequency</code>
    #   				parameter.</p>
    #   		       </note>
    #
    #   Enum, one of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #
    #   @return [String]
    #
    # @!attribute config_rule_state
    #   <p>Indicates whether the Config rule is active or is currently
    #   			being deleted by Config. It can also indicate the evaluation
    #   			status for the Config rule.</p>
    #
    #   		       <p>Config sets the state of the rule to
    #   				<code>EVALUATING</code> temporarily after you use the
    #   				<code>StartConfigRulesEvaluation</code> request to evaluate your
    #   			resources against the Config rule.</p>
    #
    #   		       <p>Config sets the state of the rule to
    #   				<code>DELETING_RESULTS</code> temporarily after you use the
    #   				<code>DeleteEvaluationResults</code> request to delete the
    #   			current evaluation results for the Config rule.</p>
    #
    #   		       <p>Config temporarily sets the state of a rule to
    #   				<code>DELETING</code> after you use the
    #   				<code>DeleteConfigRule</code> request to delete the rule. After
    #   			Config deletes the rule, the rule and all of its evaluations are
    #   			erased and are no longer available.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING", "DELETING_RESULTS", "EVALUATING"]
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>Service principal name of the service that created the
    #   			rule.</p>
    #   		       <note>
    #   			         <p>The field is populated only if the service linked rule is
    #   				created by a service. The field is empty if you create your own
    #   				rule.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    ConfigRule = ::Struct.new(
      :config_rule_name,
      :config_rule_arn,
      :config_rule_id,
      :description,
      :scope,
      :source,
      :input_parameters,
      :maximum_execution_frequency,
      :config_rule_state,
      :created_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters the compliance results based on account ID, region,
    # 			compliance type, and rule name.</p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p>The rule compliance status.</p>
    #   		       <p>For the <code>ConfigRuleComplianceFilters</code> data type, Config supports only <code>COMPLIANT</code> and
    #   				<code>NON_COMPLIANT</code>. Config does not support the
    #   				<code>NOT_APPLICABLE</code> and the
    #   				<code>INSUFFICIENT_DATA</code> values.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.
    #   			</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The source region where the data is aggregated.
    #   			</p>
    #
    #   @return [String]
    #
    ConfigRuleComplianceFilters = ::Struct.new(
      :config_rule_name,
      :compliance_type,
      :account_id,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters the results based on the account IDs and
    # 			regions.</p>
    #
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The source region where the data is aggregated.</p>
    #
    #   @return [String]
    #
    ConfigRuleComplianceSummaryFilters = ::Struct.new(
      :account_id,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigRuleComplianceSummaryGroupKey
    #
    module ConfigRuleComplianceSummaryGroupKey
      # No documentation available.
      #
      ACCOUNT_ID = "ACCOUNT_ID"

      # No documentation available.
      #
      AWS_REGION = "AWS_REGION"
    end

    # <p>Status information for your Config Managed rules and Config Custom Policy rules. The
    # 			status includes information such as the last time the rule ran, the
    # 			last time it failed, and the related error for the last
    # 			failure.</p>
    # 		       <p>This action does not return status information about Config Custom Lambda rules.</p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute config_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the Config
    #   			rule.</p>
    #
    #   @return [String]
    #
    # @!attribute config_rule_id
    #   <p>The ID of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute last_successful_invocation_time
    #   <p>The time that Config last successfully invoked the Config rule to evaluate your Amazon Web Services resources.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_failed_invocation_time
    #   <p>The time that Config last failed to invoke the Config
    #   			rule to evaluate your Amazon Web Services resources.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_successful_evaluation_time
    #   <p>The time that Config last successfully evaluated your Amazon Web Services
    #   			resources against the rule.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_failed_evaluation_time
    #   <p>The time that Config last failed to evaluate your Amazon Web Services
    #   			resources against the rule.</p>
    #
    #   @return [Time]
    #
    # @!attribute first_activated_time
    #   <p>The time that you first activated the Config
    #   			rule.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deactivated_time
    #   <p>The time that you last turned off the Config rule.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_error_code
    #   <p>The error code that Config returned when the rule last
    #   			failed.</p>
    #
    #   @return [String]
    #
    # @!attribute last_error_message
    #   <p>The error message that Config returned when the rule last
    #   			failed.</p>
    #
    #   @return [String]
    #
    # @!attribute first_evaluation_started
    #   <p>Indicates whether Config has evaluated your resources
    #   			against the rule at least once.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #   					             <code>true</code> - Config has evaluated your Amazon Web Services
    #   					resources against the rule at least once.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>false</code> - Config has not finished evaluating your Amazon Web Services resources against the
    #   					rule
    #   					at least once.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    # @!attribute last_debug_log_delivery_status
    #   <p>The status of the last attempted delivery of a debug log for your Config Custom Policy rules. Either <code>Successful</code> or <code>Failed</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_debug_log_delivery_status_reason
    #   <p>The reason Config was not able to deliver a debug log. This is for the last
    #   			failed attempt to retrieve a debug log for your Config Custom Policy rules.</p>
    #
    #   @return [String]
    #
    # @!attribute last_debug_log_delivery_time
    #   <p>The time Config last attempted to deliver a debug log for your Config Custom Policy rules.</p>
    #
    #   @return [Time]
    #
    ConfigRuleEvaluationStatus = ::Struct.new(
      :config_rule_name,
      :config_rule_arn,
      :config_rule_id,
      :last_successful_invocation_time,
      :last_failed_invocation_time,
      :last_successful_evaluation_time,
      :last_failed_evaluation_time,
      :first_activated_time,
      :last_deactivated_time,
      :last_error_code,
      :last_error_message,
      :first_evaluation_started,
      :last_debug_log_delivery_status,
      :last_debug_log_delivery_status_reason,
      :last_debug_log_delivery_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.first_evaluation_started ||= false
      end

    end

    # Includes enum constants for ConfigRuleState
    #
    module ConfigRuleState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETING_RESULTS = "DELETING_RESULTS"

      # No documentation available.
      #
      EVALUATING = "EVALUATING"
    end

    # <p>Provides options for how often Config delivers
    # 			configuration snapshots to the Amazon S3 bucket in your delivery
    # 			channel.</p>
    #
    # 		
    # 		
    #
    # 		       <p>The frequency for a rule that triggers evaluations for your
    # 			resources when Config delivers the configuration snapshot is set
    # 			by one of two values, depending on which is less frequent:</p>
    #
    # 		       <ul>
    #             <li>
    # 				           <p>The value for the <code>deliveryFrequency</code>
    # 					parameter within the delivery channel configuration, which
    # 					sets how often Config delivers configuration snapshots.
    # 					This value also sets how often Config invokes
    # 					evaluations for Config rules.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The value for the
    # 						<code>MaximumExecutionFrequency</code> parameter, which
    # 					sets the maximum frequency with which Config invokes
    # 					evaluations for the rule. For more information, see <a>ConfigRule</a>.</p>
    # 			         </li>
    #          </ul>
    #
    # 		       <p>If the <code>deliveryFrequency</code> value is less frequent
    # 			than the <code>MaximumExecutionFrequency</code> value for a rule,
    # 			Config invokes the rule only as often as the
    # 				<code>deliveryFrequency</code> value.</p>
    #
    # 		       <ol>
    #             <li>
    # 				           <p>For example, you want your rule to run evaluations when
    # 					Config delivers the configuration snapshot.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You specify the <code>MaximumExecutionFrequency</code>
    # 					value for <code>Six_Hours</code>. </p>
    # 			         </li>
    #             <li>
    # 				           <p>You then specify the delivery channel
    # 						<code>deliveryFrequency</code> value for
    # 						<code>TwentyFour_Hours</code>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Because the value for <code>deliveryFrequency</code> is
    # 					less frequent than <code>MaximumExecutionFrequency</code>,
    # 					Config invokes evaluations for the rule every 24 hours.
    # 				</p>
    # 			         </li>
    #          </ol>
    #
    #
    # 		       <p>You should set the <code>MaximumExecutionFrequency</code> value
    # 			to be at least as frequent as the <code>deliveryFrequency</code>
    # 			value. You can view the <code>deliveryFrequency</code> value by
    # 			using the <code>DescribeDeliveryChannnels</code> action.</p>
    #
    # 		       <p>To update the <code>deliveryFrequency</code> with which Config delivers your configuration snapshots, use the
    # 				<code>PutDeliveryChannel</code> action.</p>
    #
    # @!attribute delivery_frequency
    #   <p>The frequency with which Config delivers configuration
    #   			snapshots.</p>
    #
    #   Enum, one of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #
    #   @return [String]
    #
    ConfigSnapshotDeliveryProperties = ::Struct.new(
      :delivery_frequency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list that contains the status of the delivery of the
    # 			configuration stream notification to the Amazon SNS topic.</p>
    #
    # @!attribute last_status
    #   <p>Status of the last attempted delivery.</p>
    #   		       <p>
    #   			         <b>Note</b> Providing an SNS topic on a
    #   				<a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html">DeliveryChannel</a> for Config is optional. If the SNS
    #   			delivery is turned off, the last status will be <b>Not_Applicable</b>.</p>
    #
    #   Enum, one of: ["Success", "Failure", "Not_Applicable"]
    #
    #   @return [String]
    #
    # @!attribute last_error_code
    #   <p>The error code from the last attempted delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute last_error_message
    #   <p>The error message from the last attempted delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute last_status_change_time
    #   <p>The time from the last status change.</p>
    #
    #   @return [Time]
    #
    ConfigStreamDeliveryInfo = ::Struct.new(
      :last_status,
      :last_error_code,
      :last_error_message,
      :last_status_change_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details about the configuration aggregator, including
    # 			information about source accounts, regions, and metadata of the
    # 			aggregator. </p>
    #
    # @!attribute configuration_aggregator_name
    #   <p>The name of the aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_aggregator_arn
    #   <p>The Amazon Resource Name (ARN) of the aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute account_aggregation_sources
    #   <p>Provides a list of source accounts and regions to be
    #   			aggregated.</p>
    #
    #   @return [Array<AccountAggregationSource>]
    #
    # @!attribute organization_aggregation_source
    #   <p>Provides an organization and list of regions to be
    #   			aggregated.</p>
    #
    #   @return [OrganizationAggregationSource]
    #
    # @!attribute creation_time
    #   <p>The time stamp when the configuration aggregator was
    #   			created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time of the last update.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>Amazon Web Services service that created the configuration aggregator.</p>
    #
    #   @return [String]
    #
    ConfigurationAggregator = ::Struct.new(
      :configuration_aggregator_name,
      :configuration_aggregator_arn,
      :account_aggregation_sources,
      :organization_aggregation_source,
      :creation_time,
      :last_updated_time,
      :created_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list that contains detailed configurations of a specified
    # 			resource.</p>
    #
    # @!attribute version
    #   <p>The version number of the resource configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The 12-digit Amazon Web Services account ID associated with the
    #   			resource.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_item_capture_time
    #   <p>The time when the configuration recording was
    #   			initiated.</p>
    #
    #   @return [Time]
    #
    # @!attribute configuration_item_status
    #   <p>The configuration item status. The valid values are:</p>
    #   		
    #   		       <ul>
    #               <li>
    #                  <p>OK – The resource configuration has been updated</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDiscovered – The resource was newly discovered</p>
    #               </li>
    #               <li>
    #                  <p>ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDeleted – The resource was deleted</p>
    #               </li>
    #               <li>
    #                  <p>ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type</p>
    #               </li>
    #            </ul>
    #   		       <note>
    #               <p>The CIs do not incur any cost.</p>
    #            </note>
    #
    #   Enum, one of: ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"]
    #
    #   @return [String]
    #
    # @!attribute configuration_state_id
    #   <p>An identifier that indicates the ordering of the configuration
    #   			items of a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_item_md5_hash
    #   <p>Unique MD5 hash that represents the configuration item's
    #   			state.</p>
    #   		       <p>You can use MD5 hash to compare the states of two or more
    #   			configuration items that are associated with the same
    #   			resource.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource (for example,
    #   			<code>sg-xxxxxx</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The custom name of the resource, if available.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The region where the resource resides.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_creation_time
    #   <p>The time stamp when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>A mapping of key value tags associated with the
    #   			resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute related_events
    #   <p>A list of CloudTrail event IDs.</p>
    #   		       <p>A populated field indicates that the current configuration was
    #   			initiated by the events recorded in the CloudTrail log. For more
    #   			information about CloudTrail, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">What Is CloudTrail</a>.</p>
    #   		       <p>An empty field indicates that the current configuration was not
    #   			initiated by any event. As of Version 1.3, the relatedEvents field is empty.
    #   			You can access the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html">LookupEvents API</a> in the <i>CloudTrail API Reference</i> to retrieve the events for the resource.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute relationships
    #   <p>A list of related Amazon Web Services resources.</p>
    #
    #   @return [Array<Relationship>]
    #
    # @!attribute configuration
    #   <p>The description of the resource configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute supplementary_configuration
    #   <p>Configuration attributes that Config returns for certain
    #   			resource types to supplement the information returned for the
    #   				<code>configuration</code> parameter.</p>
    #
    #   @return [Hash<String, String>]
    #
    ConfigurationItem = ::Struct.new(
      :version,
      :account_id,
      :configuration_item_capture_time,
      :configuration_item_status,
      :configuration_state_id,
      :configuration_item_md5_hash,
      :arn,
      :resource_type,
      :resource_id,
      :resource_name,
      :aws_region,
      :availability_zone,
      :resource_creation_time,
      :tags,
      :related_events,
      :relationships,
      :configuration,
      :supplementary_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigurationItemStatus
    #
    module ConfigurationItemStatus
      # No documentation available.
      #
      OK = "OK"

      # No documentation available.
      #
      ResourceDiscovered = "ResourceDiscovered"

      # No documentation available.
      #
      ResourceNotRecorded = "ResourceNotRecorded"

      # No documentation available.
      #
      ResourceDeleted = "ResourceDeleted"

      # No documentation available.
      #
      ResourceDeletedNotRecorded = "ResourceDeletedNotRecorded"
    end

    # <p>An object that represents the recording of configuration
    # 			changes of an Amazon Web Services resource.</p>
    #
    # @!attribute name
    #   <p>The name of the recorder. By default, Config automatically
    #   			assigns the name "default" when creating the configuration recorder.
    #   			You cannot change the assigned name.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>Amazon Resource Name (ARN) of the IAM role used to describe the
    #   			Amazon Web Services resources associated with the account.</p>
    #
    #   @return [String]
    #
    # @!attribute recording_group
    #   <p>Specifies the types of Amazon Web Services resources for which Config
    #   			records configuration changes.</p>
    #
    #   @return [RecordingGroup]
    #
    ConfigurationRecorder = ::Struct.new(
      :name,
      :role_arn,
      :recording_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The current status of the configuration recorder.</p>
    #
    # @!attribute name
    #   <p>The name of the configuration recorder.</p>
    #
    #   @return [String]
    #
    # @!attribute last_start_time
    #   <p>The time the recorder was last started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_stop_time
    #   <p>The time the recorder was last stopped.</p>
    #
    #   @return [Time]
    #
    # @!attribute recording
    #   <p>Specifies whether or not the recorder is currently
    #   			recording.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_status
    #   <p>The last (previous) status of the recorder.</p>
    #
    #   Enum, one of: ["Pending", "Success", "Failure"]
    #
    #   @return [String]
    #
    # @!attribute last_error_code
    #   <p>The error code indicating that the recording failed.</p>
    #
    #   @return [String]
    #
    # @!attribute last_error_message
    #   <p>The message indicating that the recording failed due to an
    #   			error.</p>
    #
    #   @return [String]
    #
    # @!attribute last_status_change_time
    #   <p>The time when the status was last changed.</p>
    #
    #   @return [Time]
    #
    ConfigurationRecorderStatus = ::Struct.new(
      :name,
      :last_start_time,
      :last_stop_time,
      :recording,
      :last_status,
      :last_error_code,
      :last_error_message,
      :last_status_change_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.recording ||= false
      end

    end

    # <p>Filters the conformance pack by compliance types and Config rule names.</p>
    #
    # @!attribute config_rule_names
    #   <p>Filters the results by Config rule names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compliance_type
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    ConformancePackComplianceFilters = ::Struct.new(
      :config_rule_names,
      :compliance_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary includes the name and status of the conformance pack.</p>
    #
    # @!attribute conformance_pack_name
    #   <p>The name of the conformance pack name.</p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_compliance_status
    #   <p>The status of the conformance pack. The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code> and <code>INSUFFICIENT_DATA</code>.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    ConformancePackComplianceSummary = ::Struct.new(
      :conformance_pack_name,
      :conformance_pack_compliance_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConformancePackComplianceType
    #
    module ConformancePackComplianceType
      # No documentation available.
      #
      COMPLIANT = "COMPLIANT"

      # No documentation available.
      #
      NON_COMPLIANT = "NON_COMPLIANT"

      # No documentation available.
      #
      INSUFFICIENT_DATA = "INSUFFICIENT_DATA"
    end

    # <p>Returns details of a conformance pack. A conformance pack is a collection of Config rules and remediation actions that can be easily deployed in an account and a region.</p>
    #
    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_arn
    #   <p>Amazon Resource Name (ARN) of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_id
    #   <p>ID of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates. </p>
    #   	        <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket.</p>
    #   		       <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #
    #   @return [Array<ConformancePackInputParameter>]
    #
    # @!attribute last_update_requested_time
    #   <p>Last time when conformation pack update was requested. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>Amazon Web Services service that created the conformance pack.</p>
    #
    #   @return [String]
    #
    ConformancePackDetail = ::Struct.new(
      :conformance_pack_name,
      :conformance_pack_arn,
      :conformance_pack_id,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :last_update_requested_time,
      :created_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters a conformance pack by Config rule names, compliance types, Amazon Web Services resource types, and resource IDs.</p>
    #
    # @!attribute config_rule_names
    #   <p>Filters the results by Config rule names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compliance_type
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Filters the results by the resource type (for example, <code>"AWS::EC2::Instance"</code>). </p>
    #
    #   @return [String]
    #
    # @!attribute resource_ids
    #   <p>Filters the results by resource IDs.</p>
    #   		       <note>
    #               <p>This is valid only when you provide resource type. If there is no resource type, you will see an error.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    ConformancePackEvaluationFilters = ::Struct.new(
      :config_rule_names,
      :compliance_type,
      :resource_type,
      :resource_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a conformance pack evaluation. Provides Config rule and Amazon Web Services resource type that was evaluated, the compliance of the conformance pack, related time stamps, and supplementary information. </p>
    #
    # @!attribute compliance_type
    #   <p>The compliance type. The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute evaluation_result_identifier
    #   <p>Uniquely identifies an evaluation result.</p>
    #
    #   @return [EvaluationResultIdentifier]
    #
    # @!attribute config_rule_invoked_time
    #   <p>The time when Config rule evaluated Amazon Web Services resource.</p>
    #
    #   @return [Time]
    #
    # @!attribute result_recorded_time
    #   <p>The time when Config recorded the evaluation result. </p>
    #
    #   @return [Time]
    #
    # @!attribute annotation
    #   <p>Supplementary information about how the evaluation determined the compliance. </p>
    #
    #   @return [String]
    #
    ConformancePackEvaluationResult = ::Struct.new(
      :compliance_type,
      :evaluation_result_identifier,
      :config_rule_invoked_time,
      :result_recorded_time,
      :annotation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input parameters in the form of key-value pairs for the conformance pack, both of which you define.
    # 			Keys can have a maximum character length of 255 characters, and values can have a maximum length of 4096 characters.</p>
    #
    # @!attribute parameter_name
    #   <p>One part of a key-value pair.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_value
    #   <p>Another part of the key-value pair. </p>
    #
    #   @return [String]
    #
    ConformancePackInputParameter = ::Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Compliance information of one or more Config rules within a conformance pack. You can filter using Config rule names and compliance types.</p>
    #
    # @!attribute config_rule_name
    #   <p>Name of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p>Compliance of the Config rule.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute controls
    #   <p>Controls for the conformance pack. A control is a process to prevent or detect problems while meeting objectives.
    #   			A control can align with a specific compliance regime or map to internal controls defined by an organization.</p>
    #
    #   @return [Array<String>]
    #
    ConformancePackRuleCompliance = ::Struct.new(
      :config_rule_name,
      :compliance_type,
      :controls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConformancePackState
    #
    module ConformancePackState
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_COMPLETE = "CREATE_COMPLETE"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"
    end

    # <p>Status details of a conformance pack.</p>
    #
    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_id
    #   <p>ID of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_arn
    #   <p>Amazon Resource Name (ARN) of comformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_state
    #   <p>Indicates deployment status of conformance pack.</p>
    #   		       <p>Config sets the state of the conformance pack to:</p>
    #   		       <ul>
    #               <li>
    #                  <p>CREATE_IN_PROGRESS when a conformance pack creation is in progress for an account.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_COMPLETE when a conformance pack has been successfully created in your account.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED when a conformance pack creation failed in your account.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_IN_PROGRESS when a conformance pack deletion is in progress. </p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED when a conformance pack deletion failed in your account.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute stack_arn
    #   <p>Amazon Resource Name (ARN) of CloudFormation stack. </p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_status_reason
    #   <p>The reason of conformance pack creation failure.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_requested_time
    #   <p>Last time when conformation pack creation and update was requested.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_completed_time
    #   <p>Last time when conformation pack creation and update was successful.</p>
    #
    #   @return [Time]
    #
    ConformancePackStatusDetail = ::Struct.new(
      :conformance_pack_name,
      :conformance_pack_id,
      :conformance_pack_arn,
      :conformance_pack_state,
      :stack_arn,
      :conformance_pack_status_reason,
      :last_update_requested_time,
      :last_update_completed_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified a template that is not valid or supported.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    ConformancePackTemplateValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the runtime system, policy definition, and whether debug logging enabled. You can
    # 			specify the following CustomPolicyDetails parameter values
    # 			only
    # 			for Config Custom Policy rules.</p>
    #
    # @!attribute policy_runtime
    #   <p>The runtime system for your Config Custom Policy rule. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the <a href="https://github.com/aws-cloudformation/cloudformation-guard">Guard GitHub
    #   					Repository</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_text
    #   <p>The policy definition containing the logic for your Config Custom Policy rule.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_debug_log_delivery
    #   <p>The boolean expression for enabling debug logging for your Config Custom Policy rule. The default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    CustomPolicyDetails = ::Struct.new(
      :policy_runtime,
      :policy_text,
      :enable_debug_log_delivery,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enable_debug_log_delivery ||= false
      end

    end

    # @!attribute authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate
    #   			data.</p>
    #
    #   @return [String]
    #
    # @!attribute authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #
    #   @return [String]
    #
    DeleteAggregationAuthorizationInput = ::Struct.new(
      :authorized_account_id,
      :authorized_aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAggregationAuthorizationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule that you want to
    #   			delete.</p>
    #
    #   @return [String]
    #
    DeleteConfigRuleInput = ::Struct.new(
      :config_rule_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConfigRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    DeleteConfigurationAggregatorInput = ::Struct.new(
      :configuration_aggregator_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConfigurationAggregatorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request object for the
    # 				<code>DeleteConfigurationRecorder</code> action.</p>
    #
    # @!attribute configuration_recorder_name
    #   <p>The name of the configuration recorder to be deleted. You can
    #   			retrieve the name of your configuration recorder by using the
    #   				<code>DescribeConfigurationRecorders</code> action.</p>
    #
    #   @return [String]
    #
    DeleteConfigurationRecorderInput = ::Struct.new(
      :configuration_recorder_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConfigurationRecorderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteConformancePackInput = ::Struct.new(
      :conformance_pack_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConformancePackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>DeleteDeliveryChannel</a>
    # 			action. The action accepts the following data, in JSON format.
    # 		</p>
    #
    # @!attribute delivery_channel_name
    #   <p>The name of the delivery channel to delete.</p>
    #
    #   @return [String]
    #
    DeleteDeliveryChannelInput = ::Struct.new(
      :delivery_channel_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDeliveryChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want to delete
    #   			the evaluation results.</p>
    #
    #   @return [String]
    #
    DeleteEvaluationResultsInput = ::Struct.new(
      :config_rule_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output when you delete the evaluation results for the
    # 			specified Config rule.</p>
    #
    DeleteEvaluationResultsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_config_rule_name
    #   <p>The name of organization Config rule that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteOrganizationConfigRuleInput = ::Struct.new(
      :organization_config_rule_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOrganizationConfigRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_conformance_pack_name
    #   <p>The name of organization conformance pack that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteOrganizationConformancePackInput = ::Struct.new(
      :organization_conformance_pack_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOrganizationConformancePackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute requester_account_id
    #   <p>The 12-digit account ID of the account requesting to aggregate
    #   			data.</p>
    #
    #   @return [String]
    #
    # @!attribute requester_aws_region
    #   <p>The region requesting to aggregate data.</p>
    #
    #   @return [String]
    #
    DeletePendingAggregationRequestInput = ::Struct.new(
      :requester_account_id,
      :requester_aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePendingAggregationRequestOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want to delete remediation configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of a resource.</p>
    #
    #   @return [String]
    #
    DeleteRemediationConfigurationInput = ::Struct.new(
      :config_rule_name,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRemediationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want to delete remediation exception configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    #
    #   @return [Array<RemediationExceptionResourceKey>]
    #
    DeleteRemediationExceptionsInput = ::Struct.new(
      :config_rule_name,
      :resource_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_batches
    #   <p>Returns a list of failed delete remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.</p>
    #
    #   @return [Array<FailedDeleteRemediationExceptionsBatch>]
    #
    DeleteRemediationExceptionsOutput = ::Struct.new(
      :failed_batches,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Unique identifier of the resource.</p>
    #
    #   @return [String]
    #
    DeleteResourceConfigInput = ::Struct.new(
      :resource_type,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourceConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute retention_configuration_name
    #   <p>The name of the retention configuration to delete.</p>
    #
    #   @return [String]
    #
    DeleteRetentionConfigurationInput = ::Struct.new(
      :retention_configuration_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRetentionConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_name
    #   <p>The name of the query that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteStoredQueryInput = ::Struct.new(
      :query_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStoredQueryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>DeliverConfigSnapshot</a>
    # 			action.</p>
    #
    # @!attribute delivery_channel_name
    #   <p>The name of the delivery channel through which the snapshot is
    #   			delivered.</p>
    #
    #   @return [String]
    #
    DeliverConfigSnapshotInput = ::Struct.new(
      :delivery_channel_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>DeliverConfigSnapshot</a>
    # 			action, in JSON format.</p>
    #
    # @!attribute config_snapshot_id
    #   <p>The ID of the snapshot that is being created.</p>
    #
    #   @return [String]
    #
    DeliverConfigSnapshotOutput = ::Struct.new(
      :config_snapshot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The channel through which Config delivers notifications and
    # 			updated configuration states.</p>
    #
    # @!attribute name
    #   <p>The name of the delivery channel. By default, Config
    #   			assigns the name "default" when creating the delivery channel. To
    #   			change the delivery channel name, you must use the
    #   			DeleteDeliveryChannel action to delete your current delivery
    #   			channel, and then you must use the PutDeliveryChannel command to
    #   			create a delivery channel that has the desired name.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket to which Config delivers
    #   			configuration snapshots and configuration history files.</p>
    #   		       <p>If you specify a bucket that belongs to another Amazon Web Services account,
    #   			that bucket must have policies that grant access permissions to Config. For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html">Permissions for the Amazon S3 Bucket</a> in the Config
    #   			Developer Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The prefix for the specified Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS key (KMS key) used to encrypt objects delivered by Config.
    #   			Must belong to the same Region as the destination S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   			Config sends notifications about configuration
    #   			changes.</p>
    #   		       <p>If you choose a topic from another account, the topic must have
    #   			policies that grant access permissions to Config. For more
    #   			information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html">Permissions for the Amazon SNS Topic</a> in the Config
    #   			Developer Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute config_snapshot_delivery_properties
    #   <p>The options for how often Config delivers configuration
    #   			snapshots to the Amazon S3 bucket.</p>
    #
    #   @return [ConfigSnapshotDeliveryProperties]
    #
    DeliveryChannel = ::Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :s3_kms_key_arn,
      :sns_topic_arn,
      :config_snapshot_delivery_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of a specified delivery channel.</p>
    # 		       <p>Valid values: <code>Success</code> | <code>Failure</code>
    # 		       </p>
    #
    # @!attribute name
    #   <p>The name of the delivery channel.</p>
    #
    #   @return [String]
    #
    # @!attribute config_snapshot_delivery_info
    #   <p>A list containing the status of the delivery of the snapshot to
    #   			the specified Amazon S3 bucket.</p>
    #
    #   @return [ConfigExportDeliveryInfo]
    #
    # @!attribute config_history_delivery_info
    #   <p>A list that contains the status of the delivery of the
    #   			configuration history to the specified Amazon S3 bucket.</p>
    #
    #   @return [ConfigExportDeliveryInfo]
    #
    # @!attribute config_stream_delivery_info
    #   <p>A list containing the status of the delivery of the
    #   			configuration stream notification to the specified Amazon SNS
    #   			topic.</p>
    #
    #   @return [ConfigStreamDeliveryInfo]
    #
    DeliveryChannelStatus = ::Struct.new(
      :name,
      :config_snapshot_delivery_info,
      :config_history_delivery_info,
      :config_stream_delivery_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeliveryStatus
    #
    module DeliveryStatus
      # No documentation available.
      #
      Success = "Success"

      # No documentation available.
      #
      Failure = "Failure"

      # No documentation available.
      #
      Not_Applicable = "Not_Applicable"
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters the results by ConfigRuleComplianceFilters object.
    #   		</p>
    #
    #   @return [ConfigRuleComplianceFilters]
    #
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is
    #   			maximum.
    #   			If you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeAggregateComplianceByConfigRulesInput = ::Struct.new(
      :configuration_aggregator_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute aggregate_compliance_by_config_rules
    #   <p>Returns a list of AggregateComplianceByConfigRule
    #   			object.</p>
    #
    #   @return [Array<AggregateComplianceByConfigRule>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeAggregateComplianceByConfigRulesOutput = ::Struct.new(
      :aggregate_compliance_by_config_rules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters the result by <code>AggregateConformancePackComplianceFilters</code> object.</p>
    #
    #   @return [AggregateConformancePackComplianceFilters]
    #
    # @!attribute limit
    #   <p>The maximum number of conformance packs compliance details returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeAggregateComplianceByConformancePacksInput = ::Struct.new(
      :configuration_aggregator_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute aggregate_compliance_by_conformance_packs
    #   <p>Returns the <code>AggregateComplianceByConformancePack</code> object.</p>
    #
    #   @return [Array<AggregateComplianceByConformancePack>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeAggregateComplianceByConformancePacksOutput = ::Struct.new(
      :aggregate_compliance_by_conformance_packs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of AggregationAuthorizations returned on
    #   			each page. The default is maximum. If you specify 0, Config uses
    #   			the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeAggregationAuthorizationsInput = ::Struct.new(
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute aggregation_authorizations
    #   <p>Returns a list of authorizations granted to various aggregator
    #   			accounts and regions.</p>
    #
    #   @return [Array<AggregationAuthorization>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeAggregationAuthorizationsOutput = ::Struct.new(
      :aggregation_authorizations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute config_rule_names
    #   <p>Specify one or more Config rule names to filter the results
    #   			by rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compliance_types
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    #   @return [String]
    #
    DescribeComplianceByConfigRuleInput = ::Struct.new(
      :config_rule_names,
      :compliance_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute compliance_by_config_rules
    #   <p>Indicates whether each of the specified Config rules is
    #   			compliant.</p>
    #
    #   @return [Array<ComplianceByConfigRule>]
    #
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeComplianceByConfigRuleOutput = ::Struct.new(
      :compliance_by_config_rules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_type
    #   <p>The types of Amazon Web Services resources for which you want compliance
    #   			information (for example, <code>AWS::EC2::Instance</code>). For this
    #   			action, you can specify that the resource type is an Amazon Web Services account by
    #   			specifying <code>AWS::::Account</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the Amazon Web Services resource for which you want compliance
    #   			information. You can specify only one resource ID. If you specify a
    #   			resource ID, you must also specify a type for
    #   				<code>ResourceType</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_types
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 10. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    #   @return [String]
    #
    DescribeComplianceByResourceInput = ::Struct.new(
      :resource_type,
      :resource_id,
      :compliance_types,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # <p></p>
    #
    # @!attribute compliance_by_resources
    #   <p>Indicates whether the specified Amazon Web Services resource complies with all
    #   			of the Config rules that evaluate it.</p>
    #
    #   @return [Array<ComplianceByResource>]
    #
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeComplianceByResourceOutput = ::Struct.new(
      :compliance_by_resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute config_rule_names
    #   <p>The name of the Config managed rules for which you want
    #   			status information. If you do not specify any names, Config
    #   			returns status information for all Config managed rules that you
    #   			use.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The number of rule evaluation results that you want
    #   			returned.</p>
    #   		
    #   		       <p>This parameter is required if the rule limit for your account
    #   			is more than the default of 150 rules.</p>
    #   		       <p>For information about requesting a rule limit increase, see
    #   				<a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html limits_config">Config Limits</a> in the <i>Amazon Web Services General
    #   				Reference Guide</i>.</p>
    #
    #   @return [Integer]
    #
    DescribeConfigRuleEvaluationStatusInput = ::Struct.new(
      :config_rule_names,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # <p></p>
    #
    # @!attribute config_rules_evaluation_status
    #   <p>Status information about your Config managed rules.</p>
    #
    #   @return [Array<ConfigRuleEvaluationStatus>]
    #
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConfigRuleEvaluationStatusOutput = ::Struct.new(
      :config_rules_evaluation_status,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute config_rule_names
    #   <p>The names of the Config rules for which you want details.
    #   			If you do not specify any names, Config returns details for all
    #   			your rules.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    #   @return [String]
    #
    DescribeConfigRulesInput = ::Struct.new(
      :config_rule_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute config_rules
    #   <p>The details about your Config rules.</p>
    #
    #   @return [Array<ConfigRule>]
    #
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConfigRulesOutput = ::Struct.new(
      :config_rules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute update_status
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
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of AggregatorSourceStatus returned on each
    #   			page. The default is maximum. If you specify 0, Config uses the
    #   			default.</p>
    #
    #   @return [Integer]
    #
    DescribeConfigurationAggregatorSourcesStatusInput = ::Struct.new(
      :configuration_aggregator_name,
      :update_status,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute aggregated_source_status_list
    #   <p>Returns an AggregatedSourceStatus object.
    #   			</p>
    #
    #   @return [Array<AggregatedSourceStatus>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConfigurationAggregatorSourcesStatusOutput = ::Struct.new(
      :aggregated_source_status_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_names
    #   <p>The name of the configuration aggregators.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of configuration aggregators returned on
    #   			each page. The default is maximum. If you specify 0, Config uses
    #   			the default.</p>
    #
    #   @return [Integer]
    #
    DescribeConfigurationAggregatorsInput = ::Struct.new(
      :configuration_aggregator_names,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute configuration_aggregators
    #   <p>Returns a ConfigurationAggregators object.</p>
    #
    #   @return [Array<ConfigurationAggregator>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConfigurationAggregatorsOutput = ::Struct.new(
      :configuration_aggregators,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>DescribeConfigurationRecorderStatus</a>
    # 			action.</p>
    #
    # @!attribute configuration_recorder_names
    #   <p>The name(s) of the configuration recorder. If the name is not
    #   			specified, the action returns the current status of all the
    #   			configuration recorders associated with the account.</p>
    #
    #   @return [Array<String>]
    #
    DescribeConfigurationRecorderStatusInput = ::Struct.new(
      :configuration_recorder_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>DescribeConfigurationRecorderStatus</a> action, in JSON
    # 			format.</p>
    #
    # @!attribute configuration_recorders_status
    #   <p>A list that contains status of the specified
    #   			recorders.</p>
    #
    #   @return [Array<ConfigurationRecorderStatus>]
    #
    DescribeConfigurationRecorderStatusOutput = ::Struct.new(
      :configuration_recorders_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>DescribeConfigurationRecorders</a> action.</p>
    #
    # @!attribute configuration_recorder_names
    #   <p>A list of configuration recorder names.</p>
    #
    #   @return [Array<String>]
    #
    DescribeConfigurationRecordersInput = ::Struct.new(
      :configuration_recorder_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>DescribeConfigurationRecorders</a> action.</p>
    #
    # @!attribute configuration_recorders
    #   <p>A list that contains the descriptions of the specified
    #   			configuration recorders.</p>
    #
    #   @return [Array<ConfigurationRecorder>]
    #
    DescribeConfigurationRecordersOutput = ::Struct.new(
      :configuration_recorders,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A <code>ConformancePackComplianceFilters</code> object.</p>
    #
    #   @return [ConformancePackComplianceFilters]
    #
    # @!attribute limit
    #   <p>The maximum number of Config rules within a conformance pack are returned on each page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConformancePackComplianceInput = ::Struct.new(
      :conformance_pack_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_rule_compliance_list
    #   <p>Returns a list of <code>ConformancePackRuleCompliance</code> objects.</p>
    #
    #   @return [Array<ConformancePackRuleCompliance>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConformancePackComplianceOutput = ::Struct.new(
      :conformance_pack_name,
      :conformance_pack_rule_compliance_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conformance_pack_names
    #   <p>Comma-separated list of conformance pack names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of conformance packs status returned on each page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConformancePackStatusInput = ::Struct.new(
      :conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute conformance_pack_status_details
    #   <p>A list of <code>ConformancePackStatusDetail</code> objects.</p>
    #
    #   @return [Array<ConformancePackStatusDetail>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConformancePackStatusOutput = ::Struct.new(
      :conformance_pack_status_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conformance_pack_names
    #   <p>Comma-separated list of conformance pack names for which you want details. If you do not specify any names, Config returns details for all your conformance packs. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of conformance packs returned on each page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConformancePacksInput = ::Struct.new(
      :conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute conformance_pack_details
    #   <p>Returns a list of <code>ConformancePackDetail</code> objects.</p>
    #
    #   @return [Array<ConformancePackDetail>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeConformancePacksOutput = ::Struct.new(
      :conformance_pack_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>DeliveryChannelStatus</a>
    # 			action.</p>
    #
    # @!attribute delivery_channel_names
    #   <p>A list of delivery channel names.</p>
    #
    #   @return [Array<String>]
    #
    DescribeDeliveryChannelStatusInput = ::Struct.new(
      :delivery_channel_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>DescribeDeliveryChannelStatus</a> action.</p>
    #
    # @!attribute delivery_channels_status
    #   <p>A list that contains the status of a specified delivery
    #   			channel.</p>
    #
    #   @return [Array<DeliveryChannelStatus>]
    #
    DescribeDeliveryChannelStatusOutput = ::Struct.new(
      :delivery_channels_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>DescribeDeliveryChannels</a>
    # 			action.</p>
    #
    # @!attribute delivery_channel_names
    #   <p>A list of delivery channel names.</p>
    #
    #   @return [Array<String>]
    #
    DescribeDeliveryChannelsInput = ::Struct.new(
      :delivery_channel_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>DescribeDeliveryChannels</a>
    # 			action.</p>
    #
    # @!attribute delivery_channels
    #   <p>A list that contains the descriptions of the specified delivery
    #   			channel.</p>
    #
    #   @return [Array<DeliveryChannel>]
    #
    DescribeDeliveryChannelsOutput = ::Struct.new(
      :delivery_channels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_config_rule_names
    #   <p>The names of organization Config rules for which you want status details. If you do not specify any names, Config returns details for all your organization Config rules.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of <code>OrganizationConfigRuleStatuses</code> returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    DescribeOrganizationConfigRuleStatusesInput = ::Struct.new(
      :organization_config_rule_names,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute organization_config_rule_statuses
    #   <p>A list of <code>OrganizationConfigRuleStatus</code> objects.</p>
    #
    #   @return [Array<OrganizationConfigRuleStatus>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    DescribeOrganizationConfigRuleStatusesOutput = ::Struct.new(
      :organization_config_rule_statuses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_config_rule_names
    #   <p>The names of organization Config rules for which you want details. If you do not specify any names, Config returns details for all your organization Config rules.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of organization Config rules returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    DescribeOrganizationConfigRulesInput = ::Struct.new(
      :organization_config_rule_names,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute organization_config_rules
    #   <p>Returns a list of <code>OrganizationConfigRule</code> objects.</p>
    #
    #   @return [Array<OrganizationConfigRule>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    DescribeOrganizationConfigRulesOutput = ::Struct.new(
      :organization_config_rules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_conformance_pack_names
    #   <p>The names of organization conformance packs for which you want status details.
    #   			If you do not specify any names, Config returns details for all your organization conformance packs. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of OrganizationConformancePackStatuses returned on each page.
    #   			If you do no specify a number, Config uses the default. The default is 100. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    DescribeOrganizationConformancePackStatusesInput = ::Struct.new(
      :organization_conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute organization_conformance_pack_statuses
    #   <p>A list of <code>OrganizationConformancePackStatus</code> objects. </p>
    #
    #   @return [Array<OrganizationConformancePackStatus>]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    DescribeOrganizationConformancePackStatusesOutput = ::Struct.new(
      :organization_conformance_pack_statuses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_conformance_pack_names
    #   <p>The name that you assign to an organization conformance pack.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of organization config packs returned on each page. If you do no specify a
    #   			number, Config uses the default. The default is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a
    #   			paginated response.</p>
    #
    #   @return [String]
    #
    DescribeOrganizationConformancePacksInput = ::Struct.new(
      :organization_conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute organization_conformance_packs
    #   <p>Returns a list of OrganizationConformancePacks objects.</p>
    #
    #   @return [Array<OrganizationConformancePack>]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a
    #   			paginated response.</p>
    #
    #   @return [String]
    #
    DescribeOrganizationConformancePacksOutput = ::Struct.new(
      :organization_conformance_packs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is maximum. If you specify 0, Config uses the
    #   			default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribePendingAggregationRequestsInput = ::Struct.new(
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute pending_aggregation_requests
    #   <p>Returns a PendingAggregationRequests object.</p>
    #
    #   @return [Array<PendingAggregationRequest>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribePendingAggregationRequestsOutput = ::Struct.new(
      :pending_aggregation_requests,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule_names
    #   <p>A list of Config rule names of remediation configurations for which you want details. </p>
    #
    #   @return [Array<String>]
    #
    DescribeRemediationConfigurationsInput = ::Struct.new(
      :config_rule_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute remediation_configurations
    #   <p>Returns a remediation configuration object.</p>
    #
    #   @return [Array<RemediationConfiguration>]
    #
    DescribeRemediationConfigurationsOutput = ::Struct.new(
      :remediation_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    #
    #   @return [Array<RemediationExceptionResourceKey>]
    #
    # @!attribute limit
    #   <p>The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeRemediationExceptionsInput = ::Struct.new(
      :config_rule_name,
      :resource_keys,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute remediation_exceptions
    #   <p>Returns a list of remediation exception objects.</p>
    #
    #   @return [Array<RemediationException>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeRemediationExceptionsOutput = ::Struct.new(
      :remediation_exceptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule_name
    #   <p>A list of Config rule names.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_keys
    #   <p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>
    #
    #   @return [Array<ResourceKey>]
    #
    # @!attribute limit
    #   <p>The maximum number of RemediationExecutionStatuses returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeRemediationExecutionStatusInput = ::Struct.new(
      :config_rule_name,
      :resource_keys,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute remediation_execution_statuses
    #   <p>Returns a list of remediation execution statuses objects.</p>
    #
    #   @return [Array<RemediationExecutionStatus>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    DescribeRemediationExecutionStatusOutput = ::Struct.new(
      :remediation_execution_statuses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute retention_configuration_names
    #   <p>A list of names of retention configurations for which you want
    #   			details. If you do not specify a name, Config returns details
    #   			for all the retention configurations for that account.</p>
    #   		       <note>
    #   			         <p>Currently, Config supports only one retention
    #   				configuration per region in your account.</p>
    #   		       </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response. </p>
    #
    #   @return [String]
    #
    DescribeRetentionConfigurationsInput = ::Struct.new(
      :retention_configuration_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute retention_configurations
    #   <p>Returns a retention configuration object.</p>
    #
    #   @return [Array<RetentionConfiguration>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response. </p>
    #
    #   @return [String]
    #
    DescribeRetentionConfigurationsOutput = ::Struct.new(
      :retention_configurations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies an Amazon Web Services resource and indicates whether it complies
    # 			with the Config rule that it was evaluated against.</p>
    #
    # @!attribute compliance_resource_type
    #   <p>The type of Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_resource_id
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p>Indicates whether the Amazon Web Services resource complies with the Config
    #   			rule that it was evaluated against.</p>
    #   		       <p>For the <code>Evaluation</code> data type, Config supports
    #   			only the <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and
    #   				<code>NOT_APPLICABLE</code> values. Config does not support
    #   			the <code>INSUFFICIENT_DATA</code> value for this data
    #   			type.</p>
    #   		       <p>Similarly, Config does not accept
    #   				<code>INSUFFICIENT_DATA</code> as the value for
    #   				<code>ComplianceType</code> from a <code>PutEvaluations</code>
    #   			request. For example, an Lambda function for a custom Config
    #   			rule cannot pass an <code>INSUFFICIENT_DATA</code> value to Config.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute annotation
    #   <p>Supplementary information about how the evaluation determined
    #   			the compliance.</p>
    #
    #   @return [String]
    #
    # @!attribute ordering_timestamp
    #   <p>The time of the event in Config that triggered the
    #   			evaluation. For event-based evaluations, the time indicates when Config created the configuration item that triggered the evaluation.
    #   			For periodic evaluations, the time indicates when Config
    #   			triggered the evaluation at the frequency that you specified (for
    #   			example, every 24 hours).</p>
    #
    #   @return [Time]
    #
    Evaluation = ::Struct.new(
      :compliance_resource_type,
      :compliance_resource_id,
      :compliance_type,
      :annotation,
      :ordering_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of an Config evaluation. Provides the Amazon Web Services
    # 			resource that was evaluated, the compliance of the resource, related
    # 			time stamps, and supplementary information.</p>
    #
    # @!attribute evaluation_result_identifier
    #   <p>Uniquely identifies the evaluation result.</p>
    #
    #   @return [EvaluationResultIdentifier]
    #
    # @!attribute compliance_type
    #   <p>Indicates whether the Amazon Web Services resource complies with the Config
    #   			rule that evaluated it.</p>
    #   		       <p>For the <code>EvaluationResult</code> data type, Config
    #   			supports only the <code>COMPLIANT</code>,
    #   			<code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code> values.
    #   			Config does not support the <code>INSUFFICIENT_DATA</code> value
    #   			for the <code>EvaluationResult</code> data type.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute result_recorded_time
    #   <p>The time when Config recorded the evaluation
    #   			result.</p>
    #
    #   @return [Time]
    #
    # @!attribute config_rule_invoked_time
    #   <p>The time when the Config rule evaluated the Amazon Web Services
    #   			resource.</p>
    #
    #   @return [Time]
    #
    # @!attribute annotation
    #   <p>Supplementary information about how the evaluation determined
    #   			the compliance.</p>
    #
    #   @return [String]
    #
    # @!attribute result_token
    #   <p>An encrypted token that associates an evaluation with an Config rule. The token identifies the rule, the Amazon Web Services resource being
    #   			evaluated, and the event that triggered the evaluation.</p>
    #
    #   @return [String]
    #
    EvaluationResult = ::Struct.new(
      :evaluation_result_identifier,
      :compliance_type,
      :result_recorded_time,
      :config_rule_invoked_time,
      :annotation,
      :result_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Uniquely identifies an evaluation result.</p>
    #
    # @!attribute evaluation_result_qualifier
    #   <p>Identifies an Config rule used to evaluate an Amazon Web Services resource,
    #   			and provides the type and ID of the evaluated resource.</p>
    #
    #   @return [EvaluationResultQualifier]
    #
    # @!attribute ordering_timestamp
    #   <p>The time of the event that triggered the evaluation of your Amazon Web Services
    #   			resources. The time can indicate when Config delivered a
    #   			configuration item change notification, or it can indicate when Config delivered the configuration snapshot, depending on which
    #   			event triggered the evaluation.</p>
    #
    #   @return [Time]
    #
    EvaluationResultIdentifier = ::Struct.new(
      :evaluation_result_qualifier,
      :ordering_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies an Config rule that evaluated an Amazon Web Services resource,
    # 			and provides the type and ID of the resource that the rule
    # 			evaluated.</p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule that was used in the
    #   			evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the evaluated Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    EvaluationResultQualifier = ::Struct.new(
      :config_rule_name,
      :resource_type,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventSource
    #
    module EventSource
      # No documentation available.
      #
      Aws_Config = "aws.config"
    end

    # <p>The controls that Config uses for executing remediations.</p>
    #
    # @!attribute ssm_controls
    #   <p>A SsmControls object.</p>
    #
    #   @return [SsmControls]
    #
    ExecutionControls = ::Struct.new(
      :ssm_controls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies an Amazon Web Services resource and indicates whether it complies with the Config rule that it was evaluated against.</p>
    #
    # @!attribute compliance_resource_type
    #   <p>The evaluated compliance resource type. Config accepts <code>AWS::::Account</code> resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_resource_id
    #   <p>The evaluated compliance resource ID. Config accepts only Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
    #   <p>The compliance of the Amazon Web Services resource. The valid values are <code>COMPLIANT, NON_COMPLIANT, </code> and <code>NOT_APPLICABLE</code>.</p>
    #
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute annotation
    #   <p>Supplementary information about the reason of compliance. For example, this task was completed on a specific date.</p>
    #
    #   @return [String]
    #
    # @!attribute ordering_timestamp
    #   <p>The time when the compliance was recorded. </p>
    #
    #   @return [Time]
    #
    ExternalEvaluation = ::Struct.new(
      :compliance_resource_type,
      :compliance_resource_id,
      :compliance_type,
      :annotation,
      :ordering_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List of each of the failed delete remediation exceptions with specific reasons.</p>
    #
    # @!attribute failure_message
    #   <p>Returns a failure message for delete remediation exception. For example, Config creates an exception due to an internal error.</p>
    #
    #   @return [String]
    #
    # @!attribute failed_items
    #   <p>Returns remediation exception resource key object of the failed items.</p>
    #
    #   @return [Array<RemediationExceptionResourceKey>]
    #
    FailedDeleteRemediationExceptionsBatch = ::Struct.new(
      :failure_message,
      :failed_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List of each of the failed remediations with specific reasons.</p>
    #
    # @!attribute failure_message
    #   <p>Returns a failure message. For example, the resource is already compliant.</p>
    #
    #   @return [String]
    #
    # @!attribute failed_items
    #   <p>Returns remediation configurations of the failed items.</p>
    #
    #   @return [Array<RemediationConfiguration>]
    #
    FailedRemediationBatch = ::Struct.new(
      :failure_message,
      :failed_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List of each of the failed remediation exceptions with specific reasons.</p>
    #
    # @!attribute failure_message
    #   <p>Returns a failure message. For example, the auto-remediation has failed.</p>
    #
    #   @return [String]
    #
    # @!attribute failed_items
    #   <p>Returns remediation exception resource key object of the failed items.</p>
    #
    #   @return [Array<RemediationException>]
    #
    FailedRemediationExceptionBatch = ::Struct.new(
      :failure_message,
      :failed_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the fields such as name of the field.</p>
    #
    # @!attribute name
    #   <p>Name of the field.</p>
    #
    #   @return [String]
    #
    FieldInfo = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want compliance
    #   			information.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The 12-digit account ID of the source account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The source region from where the data is aggregated.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_type
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
    #   Enum, one of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 50. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetAggregateComplianceDetailsByConfigRuleInput = ::Struct.new(
      :configuration_aggregator_name,
      :config_rule_name,
      :account_id,
      :aws_region,
      :compliance_type,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute aggregate_evaluation_results
    #   <p>Returns an AggregateEvaluationResults object.</p>
    #
    #   @return [Array<AggregateEvaluationResult>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetAggregateComplianceDetailsByConfigRuleOutput = ::Struct.new(
      :aggregate_evaluation_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters the results based on the
    #   			ConfigRuleComplianceSummaryFilters object.</p>
    #
    #   @return [ConfigRuleComplianceSummaryFilters]
    #
    # @!attribute group_by_key
    #   <p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>
    #
    #   Enum, one of: ["ACCOUNT_ID", "AWS_REGION"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 1000. You cannot specify a number greater than 1000.
    #   			If you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetAggregateConfigRuleComplianceSummaryInput = ::Struct.new(
      :configuration_aggregator_name,
      :filters,
      :group_by_key,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute group_by_key
    #   <p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>
    #
    #   @return [String]
    #
    # @!attribute aggregate_compliance_counts
    #   <p>Returns a list of AggregateComplianceCounts object.</p>
    #
    #   @return [Array<AggregateComplianceCount>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetAggregateConfigRuleComplianceSummaryOutput = ::Struct.new(
      :group_by_key,
      :aggregate_compliance_counts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters the results based on the <code>AggregateConformancePackComplianceSummaryFilters</code> object.</p>
    #
    #   @return [AggregateConformancePackComplianceSummaryFilters]
    #
    # @!attribute group_by_key
    #   <p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    #
    #   Enum, one of: ["ACCOUNT_ID", "AWS_REGION"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results returned on each page. The default is maximum. If you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetAggregateConformancePackComplianceSummaryInput = ::Struct.new(
      :configuration_aggregator_name,
      :filters,
      :group_by_key,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute aggregate_conformance_pack_compliance_summaries
    #   <p>Returns a list of <code>AggregateConformancePackComplianceSummary</code> object.</p>
    #
    #   @return [Array<AggregateConformancePackComplianceSummary>]
    #
    # @!attribute group_by_key
    #   <p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetAggregateConformancePackComplianceSummaryOutput = ::Struct.new(
      :aggregate_conformance_pack_compliance_summaries,
      :group_by_key,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters the results based on the <code>ResourceCountFilters</code> object.</p>
    #
    #   @return [ResourceCountFilters]
    #
    # @!attribute group_by_key
    #   <p>The key to group the resource counts.</p>
    #
    #   Enum, one of: ["RESOURCE_TYPE", "ACCOUNT_ID", "AWS_REGION"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of <a>GroupedResourceCount</a> objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    GetAggregateDiscoveredResourceCountsInput = ::Struct.new(
      :configuration_aggregator_name,
      :filters,
      :group_by_key,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute total_discovered_resources
    #   <p>The total number of resources that are present in an aggregator with the filters that you provide.</p>
    #
    #   @return [Integer]
    #
    # @!attribute group_by_key
    #   <p>The key passed into the request object. If <code>GroupByKey</code> is not provided, the result will be empty.</p>
    #
    #   @return [String]
    #
    # @!attribute grouped_resource_counts
    #   <p>Returns a list of GroupedResourceCount objects.</p>
    #
    #   @return [Array<GroupedResourceCount>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetAggregateDiscoveredResourceCountsOutput = ::Struct.new(
      :total_discovered_resources,
      :group_by_key,
      :grouped_resource_counts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total_discovered_resources ||= 0
      end

    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_identifier
    #   <p>An object that identifies aggregate resource.</p>
    #
    #   @return [AggregateResourceIdentifier]
    #
    GetAggregateResourceConfigInput = ::Struct.new(
      :configuration_aggregator_name,
      :resource_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_item
    #   <p>Returns a <code>ConfigurationItem</code> object.</p>
    #
    #   @return [ConfigurationItem]
    #
    GetAggregateResourceConfigOutput = ::Struct.new(
      :configuration_item,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want compliance
    #   			information.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_types
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code>,
    #   				<code>NON_COMPLIANT</code>, and
    #   			<code>NOT_APPLICABLE</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 10. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    #   @return [String]
    #
    GetComplianceDetailsByConfigRuleInput = ::Struct.new(
      :config_rule_name,
      :compliance_types,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # <p></p>
    #
    # @!attribute evaluation_results
    #   <p>Indicates whether the Amazon Web Services resource complies with the specified
    #   			Config rule.</p>
    #
    #   @return [Array<EvaluationResult>]
    #
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetComplianceDetailsByConfigRuleOutput = ::Struct.new(
      :evaluation_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_type
    #   <p>The type of the Amazon Web Services resource for which you want compliance
    #   			information.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the Amazon Web Services resource for which you want compliance
    #   			information.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_types
    #   <p>Filters the results by compliance.</p>
    #   		       <p>The allowed values are <code>COMPLIANT</code>,
    #   				<code>NON_COMPLIANT</code>, and
    #   			<code>NOT_APPLICABLE</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    #   @return [String]
    #
    GetComplianceDetailsByResourceInput = ::Struct.new(
      :resource_type,
      :resource_id,
      :compliance_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute evaluation_results
    #   <p>Indicates whether the specified Amazon Web Services resource complies each Config rule.</p>
    #
    #   @return [Array<EvaluationResult>]
    #
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetComplianceDetailsByResourceOutput = ::Struct.new(
      :evaluation_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetComplianceSummaryByConfigRuleInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute compliance_summary
    #   <p>The number of Config rules that are compliant and the
    #   			number that are noncompliant, up to a maximum of 25 for
    #   			each.</p>
    #
    #   @return [ComplianceSummary]
    #
    GetComplianceSummaryByConfigRuleOutput = ::Struct.new(
      :compliance_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_types
    #   <p>Specify one or more resource types to get the number of
    #   			resources that are compliant and the number that are noncompliant
    #   			for each resource type.</p>
    #   		       <p>For this request, you can specify an Amazon Web Services resource type such as
    #   				<code>AWS::EC2::Instance</code>. You can specify that the
    #   			resource type is an Amazon Web Services account by specifying
    #   				<code>AWS::::Account</code>.</p>
    #
    #   @return [Array<String>]
    #
    GetComplianceSummaryByResourceTypeInput = ::Struct.new(
      :resource_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute compliance_summaries_by_resource_type
    #   <p>The number of resources that are compliant and the number that
    #   			are noncompliant. If one or more resource types were provided with
    #   			the request, the numbers are returned for each resource type. The
    #   			maximum number returned is 100.</p>
    #
    #   @return [Array<ComplianceSummaryByResourceType>]
    #
    GetComplianceSummaryByResourceTypeOutput = ::Struct.new(
      :compliance_summaries_by_resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A <code>ConformancePackEvaluationFilters</code> object.</p>
    #
    #   @return [ConformancePackEvaluationFilters]
    #
    # @!attribute limit
    #   <p>The maximum number of evaluation results returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetConformancePackComplianceDetailsInput = ::Struct.new(
      :conformance_pack_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_rule_evaluation_results
    #   <p>Returns a list of <code>ConformancePackEvaluationResult</code> objects.</p>
    #
    #   @return [Array<ConformancePackEvaluationResult>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetConformancePackComplianceDetailsOutput = ::Struct.new(
      :conformance_pack_name,
      :conformance_pack_rule_evaluation_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conformance_pack_names
    #   <p>Names of conformance packs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of conformance packs returned on each page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetConformancePackComplianceSummaryInput = ::Struct.new(
      :conformance_pack_names,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute conformance_pack_compliance_summary_list
    #   <p>A list of <code>ConformancePackComplianceSummary</code> objects. </p>
    #
    #   @return [Array<ConformancePackComplianceSummary>]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetConformancePackComplianceSummaryOutput = ::Struct.new(
      :conformance_pack_compliance_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of your Config Custom Policy rule.</p>
    #
    #   @return [String]
    #
    GetCustomRulePolicyInput = ::Struct.new(
      :config_rule_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_text
    #   <p>The policy definition containing the logic for your Config Custom Policy rule.</p>
    #
    #   @return [String]
    #
    GetCustomRulePolicyOutput = ::Struct.new(
      :policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_types
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
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of <a>ResourceCount</a> objects
    #   			returned on each page. The default is 100. You cannot specify a
    #   			number greater than 100. If you specify 0, Config uses the
    #   			default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    #   @return [String]
    #
    GetDiscoveredResourceCountsInput = ::Struct.new(
      :resource_types,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute total_discovered_resources
    #   <p>The total number of resources that Config is recording in
    #   			the region for your account. If you specify resource types in the
    #   			request, Config returns only the total number of resources for
    #   			those resource types.</p>
    #
    #
    #   		       <p class="title">
    #               <b>Example</b>
    #            </p>
    #            <ol>
    #               <li>
    #   				           <p>Config is recording three resource types in the US
    #   					East (Ohio) Region for your account: 25 EC2 instances, 20
    #   					IAM users, and 15 S3 buckets, for a total of 60
    #   					resources.</p>
    #   			         </li>
    #               <li>
    #   				           <p>You make a call to the
    #   						<code>GetDiscoveredResourceCounts</code> action and
    #   					specify the resource type,
    #   						<code>"AWS::EC2::Instances"</code>, in the
    #   					request.</p>
    #   			         </li>
    #               <li>
    #   				           <p>Config returns 25 for
    #   						<code>totalDiscoveredResources</code>.</p>
    #   			         </li>
    #            </ol>
    #
    #   @return [Integer]
    #
    # @!attribute resource_counts
    #   <p>The list of <code>ResourceCount</code> objects. Each object is
    #   			listed in descending order by the number of resources.</p>
    #
    #   @return [Array<ResourceCount>]
    #
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetDiscoveredResourceCountsOutput = ::Struct.new(
      :total_discovered_resources,
      :resource_counts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total_discovered_resources ||= 0
      end

    end

    # @!attribute organization_config_rule_name
    #   <p>The name of your organization Config rule for which you want status details for member accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A <code>StatusDetailFilters</code> object.</p>
    #
    #   @return [StatusDetailFilters]
    #
    # @!attribute limit
    #   <p>The maximum number of <code>OrganizationConfigRuleDetailedStatus</code> returned on each page. If you do not specify a number, Config uses the default. The default is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    GetOrganizationConfigRuleDetailedStatusInput = ::Struct.new(
      :organization_config_rule_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute organization_config_rule_detailed_status
    #   <p>A list of <code>MemberAccountStatus</code> objects.</p>
    #
    #   @return [Array<MemberAccountStatus>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    GetOrganizationConfigRuleDetailedStatusOutput = ::Struct.new(
      :organization_config_rule_detailed_status,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_conformance_pack_name
    #   <p>The name of organization conformance pack for which you want status details for member accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>An <code>OrganizationResourceDetailedStatusFilters</code> object.</p>
    #
    #   @return [OrganizationResourceDetailedStatusFilters]
    #
    # @!attribute limit
    #   <p>The maximum number of <code>OrganizationConformancePackDetailedStatuses</code> returned on each page.
    #   			If you do not specify a number, Config uses the default. The default is 100. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    GetOrganizationConformancePackDetailedStatusInput = ::Struct.new(
      :organization_conformance_pack_name,
      :filters,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute organization_conformance_pack_detailed_statuses
    #   <p>A list of <code>OrganizationConformancePackDetailedStatus</code> objects. </p>
    #
    #   @return [Array<OrganizationConformancePackDetailedStatus>]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    GetOrganizationConformancePackDetailedStatusOutput = ::Struct.new(
      :organization_conformance_pack_detailed_statuses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_config_rule_name
    #   <p>The name of your organization Config Custom Policy rule. </p>
    #
    #   @return [String]
    #
    GetOrganizationCustomRulePolicyInput = ::Struct.new(
      :organization_config_rule_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_text
    #   <p>The policy definition containing the logic for your organization Config Custom Policy rule.</p>
    #
    #   @return [String]
    #
    GetOrganizationCustomRulePolicyOutput = ::Struct.new(
      :policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>GetResourceConfigHistory</a>
    # 			action.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource (for example.,
    #   			<code>sg-xxxxxx</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute later_time
    #   <p>The time stamp that indicates a later time. If not specified,
    #   			current time is taken.</p>
    #
    #   @return [Time]
    #
    # @!attribute earlier_time
    #   <p>The time stamp that indicates an earlier time. If not
    #   			specified, the action returns paginated results that contain
    #   			configuration items that start when the first configuration item was
    #   			recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute chronological_order
    #   <p>The chronological order for configuration items listed. By
    #   			default, the results are listed in reverse chronological
    #   			order.</p>
    #
    #   Enum, one of: ["Reverse", "Forward"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of configuration items returned on each
    #   			page. The default is 10. You cannot specify a number greater than
    #   			100. If you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    #   @return [String]
    #
    GetResourceConfigHistoryInput = ::Struct.new(
      :resource_type,
      :resource_id,
      :later_time,
      :earlier_time,
      :chronological_order,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # <p>The output for the <a>GetResourceConfigHistory</a>
    # 			action.</p>
    #
    # @!attribute configuration_items
    #   <p>A list that contains the configuration history of one or more
    #   			resources.</p>
    #
    #   @return [Array<ConfigurationItem>]
    #
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    GetResourceConfigHistoryOutput = ::Struct.new(
      :configuration_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_name
    #   <p>The name of the query.</p>
    #
    #   @return [String]
    #
    GetStoredQueryInput = ::Struct.new(
      :query_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stored_query
    #   <p>Returns a <code>StoredQuery</code> object.</p>
    #
    #   @return [StoredQuery]
    #
    GetStoredQueryOutput = ::Struct.new(
      :stored_query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The count of resources that are grouped by the group name.</p>
    #
    # @!attribute group_name
    #   <p>The name of the group that can be region, account ID, or resource type. For example, region1, region2 if the region was chosen as <code>GroupByKey</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_count
    #   <p>The number of resources in the group.</p>
    #
    #   @return [Integer]
    #
    GroupedResourceCount = ::Struct.new(
      :group_name,
      :resource_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.resource_count ||= 0
      end

    end

    # <p>Your Amazon S3 bucket policy does not permit Config to
    # 			write to it.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InsufficientDeliveryPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates one of the following errors:</p>
    # 		       <ul>
    #             <li>
    #                <p>For PutConfigRule, the rule cannot be created because the IAM role assigned to Config lacks permissions to perform the config:Put* action.</p>
    #             </li>
    #             <li>
    #                <p>For PutConfigRule, the Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.</p>
    #             </li>
    #             <li>
    #                <p>For PutOrganizationConfigRule, organization Config rule cannot be created because you do not have permissions to call IAM <code>GetRole</code> action or create a service linked role.</p>
    #             </li>
    #             <li>
    #                <p>For PutConformancePack and PutOrganizationConformancePack, a conformance pack cannot be created because you do not have permissions: </p>
    # 				           <ul>
    #                   <li>
    #                      <p>To call IAM <code>GetRole</code> action or create a service linked role.</p>
    #                   </li>
    #                   <li>
    #                      <p>To read Amazon S3 bucket.</p>
    #                   </li>
    #                </ul>
    # 			         </li>
    #          </ul>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InsufficientPermissionsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have provided a configuration recorder name that is not
    # 			valid.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidConfigurationRecorderNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified delivery channel name is not valid.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidDeliveryChannelNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The syntax of the query is incorrect.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidExpressionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified limit is outside the allowable range.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidLimitException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified next token is invalid. Specify the
    # 				<code>nextToken</code> string that was returned in the previous
    # 			response to get the next page of results.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of the specified parameters are invalid. Verify
    # 			that your parameters are valid and try again.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values might also be incorrectly formatted.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidRecordingGroupException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified <code>ResultToken</code> is invalid.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidResultTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have provided a null or empty role ARN.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidRoleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Amazon S3 key prefix is not valid.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidS3KeyPrefixException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Amazon KMS Key ARN is not valid.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidS3KmsKeyArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Amazon SNS topic does not exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidSNSTopicARNException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified time range is not valid. The earlier time is not
    # 			chronologically before the later time.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    InvalidTimeRangeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You cannot delete the delivery channel you specified because
    # 			the configuration recorder is running.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    LastDeliveryChannelDeleteFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For <code>StartConfigRulesEvaluation</code> API, this exception
    # 			is thrown if an evaluation is in progress or if you call the <a>StartConfigRulesEvaluation</a> API more than once per
    # 			minute.</p>
    # 		       <p>For <code>PutConfigurationAggregator</code> API, this exception
    # 			is thrown if the number of accounts and aggregators exceeds the
    # 			limit.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resources that you want Config to list in the response.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters the results based on the <code>ResourceFilters</code> object.</p>
    #
    #   @return [ResourceFilters]
    #
    # @!attribute limit
    #   <p>The maximum number of resource identifiers returned on each page. You cannot specify a number greater than 100. If you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    ListAggregateDiscoveredResourcesInput = ::Struct.new(
      :configuration_aggregator_name,
      :resource_type,
      :filters,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute resource_identifiers
    #   <p>Returns a list of <code>ResourceIdentifiers</code> objects.</p>
    #
    #   @return [Array<AggregateResourceIdentifier>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    ListAggregateDiscoveredResourcesOutput = ::Struct.new(
      :resource_identifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_type
    #   <p>The type of resources that you want Config to list in the
    #   			response.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute resource_ids
    #   <p>The IDs of only those resources that you want Config to
    #   			list in the response. If you do not specify this parameter, Config lists all resources of the specified type that it has
    #   			discovered.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_name
    #   <p>The custom name of only those resources that you want Config to list in the response. If you do not specify this
    #   			parameter, Config lists all resources of the specified type that
    #   			it has discovered.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of resource identifiers returned on each
    #   			page. The default is 100. You cannot specify a number greater than
    #   			100. If you specify 0, Config uses the default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute include_deleted_resources
    #   <p>Specifies whether Config includes deleted resources in the
    #   			results. By default, deleted resources are not included.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    #
    #   @return [String]
    #
    ListDiscoveredResourcesInput = ::Struct.new(
      :resource_type,
      :resource_ids,
      :resource_name,
      :limit,
      :include_deleted_resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
        self.include_deleted_resources ||= false
      end

    end

    # <p></p>
    #
    # @!attribute resource_identifiers
    #   <p>The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the
    #   			custom resource name.</p>
    #
    #   @return [Array<ResourceIdentifier>]
    #
    # @!attribute next_token
    #   <p>The string that you use in a subsequent request to get the next
    #   			page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    ListDiscoveredResourcesOutput = ::Struct.new(
      :resource_identifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call.</p>
    #
    #   @return [Integer]
    #
    ListStoredQueriesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stored_query_metadata
    #   <p>A list of <code>StoredQueryMetadata</code> objects.</p>
    #
    #   @return [Array<StoredQueryMetadata>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token.
    #   			To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter.
    #   			If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>. </p>
    #
    #   @return [String]
    #
    ListStoredQueriesOutput = ::Struct.new(
      :stored_query_metadata,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, Config uses the default. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the limit (100,000) of active custom resource types in your account.
    # 			Delete unused resources using <code>DeleteResourceConfig</code>.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    MaxActiveResourcesExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Failed to add the Config rule because the account already
    # 			contains the maximum number of 150 rules. Consider deleting any
    # 			deactivated rules before you add new rules.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    MaxNumberOfConfigRulesExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the limit of the number of recorders you can
    # 			create.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    MaxNumberOfConfigurationRecordersExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the limit (6) of the number of conformance packs in an account (6 conformance pack with 25 Config rules per pack).</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    MaxNumberOfConformancePacksExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the limit of the number of delivery channels
    # 			you can create.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    MaxNumberOfDeliveryChannelsExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the limit of the number of organization Config rules you can create.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    MaxNumberOfOrganizationConfigRulesExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the limit (6) of the number of organization conformance packs in an account (6 conformance pack with 25 Config rules per pack per account).</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    MaxNumberOfOrganizationConformancePacksExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Failed to add the retention configuration because a retention configuration with that name already exists.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    MaxNumberOfRetentionConfigurationsExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MaximumExecutionFrequency
    #
    module MaximumExecutionFrequency
      # No documentation available.
      #
      One_Hour = "One_Hour"

      # No documentation available.
      #
      Three_Hours = "Three_Hours"

      # No documentation available.
      #
      Six_Hours = "Six_Hours"

      # No documentation available.
      #
      Twelve_Hours = "Twelve_Hours"

      # No documentation available.
      #
      TwentyFour_Hours = "TwentyFour_Hours"
    end

    # Includes enum constants for MemberAccountRuleStatus
    #
    module MemberAccountRuleStatus
      # No documentation available.
      #
      CREATE_SUCCESSFUL = "CREATE_SUCCESSFUL"

      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_SUCCESSFUL = "DELETE_SUCCESSFUL"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # <p>Organization Config rule creation or deletion status in each member account. This includes the name of the rule, the status, error code and error message when the rule creation or deletion failed.</p>
    #
    # @!attribute account_id
    #   <p>The 12-digit account ID of a member account.</p>
    #
    #   @return [String]
    #
    # @!attribute config_rule_name
    #   <p>The name of Config rule deployed in the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute member_account_rule_status
    #   <p>Indicates deployment status for Config rule in the member account.
    #   			When master account calls <code>PutOrganizationConfigRule</code> action for the first time, Config rule status is created in the member account.
    #   			When master account calls <code>PutOrganizationConfigRule</code> action for the second time, Config rule status is updated in the member account.
    #   			Config rule status is deleted when the master account deletes <code>OrganizationConfigRule</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>.
    #   		</p>
    #   		       <p> Config sets the state of the rule to:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when Config rule has been created in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when Config rule is being created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when Config rule creation has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when Config rule deletion has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when Config rule is being deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when Config rule has been deleted in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when Config rule has been updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when Config rule is being updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when Config rule deletion has failed in the member account.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>An error code that is returned when Config rule creation or deletion failed in the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error message indicating that Config rule account creation or deletion has failed due to an error in the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_time
    #   <p>The timestamp of the last status update.</p>
    #
    #   @return [Time]
    #
    MemberAccountStatus = ::Struct.new(
      :account_id,
      :config_rule_name,
      :member_account_rule_status,
      :error_code,
      :error_message,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MessageType
    #
    module MessageType
      # No documentation available.
      #
      ConfigurationItemChangeNotification = "ConfigurationItemChangeNotification"

      # No documentation available.
      #
      ConfigurationSnapshotDeliveryCompleted = "ConfigurationSnapshotDeliveryCompleted"

      # No documentation available.
      #
      ScheduledNotification = "ScheduledNotification"

      # No documentation available.
      #
      OversizedConfigurationItemChangeNotification = "OversizedConfigurationItemChangeNotification"
    end

    # <p>There are no configuration recorders available to provide the
    # 			role needed to describe your resources. Create a configuration
    # 			recorder.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoAvailableConfigurationRecorderException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is no delivery channel available to record
    # 			configurations.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoAvailableDeliveryChannelException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Organization is no longer available.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoAvailableOrganizationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is no configuration recorder running.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoRunningConfigurationRecorderException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Amazon S3 bucket does not exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchBucketException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Config rule in the request is not valid. Verify that the rule is an Config Custom Policy rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchConfigRuleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Config rule that you passed in the filter does not exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchConfigRuleInConformancePackException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified a configuration aggregator that does not exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchConfigurationAggregatorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified a configuration recorder that does not
    # 			exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchConfigurationRecorderException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You specified one or more conformance packs that do not exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchConformancePackException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified a delivery channel that does not
    # 			exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchDeliveryChannelException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Config rule in the request is not valid. Verify that the rule is an organization Config Custom Policy rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchOrganizationConfigRuleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Config organization conformance pack that you passed in the filter does not exist.</p>
    # 		       <p>For DeleteOrganizationConformancePack, you tried to delete an organization conformance pack that does not exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchOrganizationConformancePackException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You specified an Config rule without a remediation configuration.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchRemediationConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You tried to delete a remediation exception that does not exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchRemediationExceptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified a retention configuration that does not exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    NoSuchRetentionConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For <code>PutConfigurationAggregator</code> API, you can see this exception for the following reasons:</p>
    # 		       <ul>
    #             <li>
    #                <p>No permission to call <code>EnableAWSServiceAccess</code> API</p>
    #             </li>
    #             <li>
    #                <p>The configuration aggregator cannot be updated because your Amazon Web Services Organization management account or the delegated administrator role changed.
    # 				Delete this aggregator and create a new one with the current Amazon Web Services Organization.</p>
    #             </li>
    #             <li>
    #                <p>The configuration aggregator is associated with a previous Amazon Web Services Organization and Config cannot aggregate data with current Amazon Web Services Organization.
    # 				Delete this aggregator and create a new one with the current Amazon Web Services Organization.</p>
    #             </li>
    #             <li>
    #                <p>You are not a registered delegated administrator for Config with permissions to call <code>ListDelegatedAdministrators</code> API.
    # 			Ensure that the management account registers delagated administrator for Config service principle name before the delegated administrator creates an aggregator.</p>
    #             </li>
    #          </ul>	
    # 		       <p>For all <code>OrganizationConfigRule</code> and <code>OrganizationConformancePack</code> APIs, Config throws an exception if APIs are called from member accounts. All APIs must be called from organization master account.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    OrganizationAccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This object contains regions to set up the aggregator and an IAM
    # 			role to retrieve organization details.</p>
    #
    # @!attribute role_arn
    #   <p>ARN of the IAM role used to retrieve Amazon Web Services Organization details
    #   			associated with the aggregator account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_regions
    #   <p>The source regions being aggregated.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute all_aws_regions
    #   <p>If true, aggregate existing Config regions and future
    #   			regions.</p>
    #
    #   @return [Boolean]
    #
    OrganizationAggregationSource = ::Struct.new(
      :role_arn,
      :aws_regions,
      :all_aws_regions,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.all_aws_regions ||= false
      end

    end

    # <p>Config resource cannot be created because your organization does not have all features enabled.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    OrganizationAllFeaturesNotEnabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An organization Config rule that has information about Config rules that Config creates in member accounts.</p>
    #
    # @!attribute organization_config_rule_name
    #   <p>The name that you assign to organization Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_config_rule_arn
    #   <p>Amazon Resource Name (ARN) of organization Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_managed_rule_metadata
    #   <p>An <code>OrganizationManagedRuleMetadata</code> object.</p>
    #
    #   @return [OrganizationManagedRuleMetadata]
    #
    # @!attribute organization_custom_rule_metadata
    #   <p>An <code>OrganizationCustomRuleMetadata</code> object.</p>
    #
    #   @return [OrganizationCustomRuleMetadata]
    #
    # @!attribute excluded_accounts
    #   <p>A comma-separated list of accounts excluded from organization Config rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute last_update_time
    #   <p>The timestamp of the last update.</p>
    #
    #   @return [Time]
    #
    # @!attribute organization_custom_policy_rule_metadata
    #   <p>An
    #   			object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have
    #   			debug logging enabled, and other custom rule metadata, such as resource type, resource
    #   			ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>
    #
    #   @return [OrganizationCustomPolicyRuleMetadataNoPolicy]
    #
    OrganizationConfigRule = ::Struct.new(
      :organization_config_rule_name,
      :organization_config_rule_arn,
      :organization_managed_rule_metadata,
      :organization_custom_rule_metadata,
      :excluded_accounts,
      :last_update_time,
      :organization_custom_policy_rule_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the status for an organization Config rule in an organization.</p>
    #
    # @!attribute organization_config_rule_name
    #   <p>The name that you assign to organization Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_rule_status
    #   <p>Indicates deployment status of an organization Config rule.
    #   			When master account calls PutOrganizationConfigRule action for the first time, Config rule status is created in all the member accounts.
    #   			When master account calls PutOrganizationConfigRule action for the second time, Config rule status is updated in all the member accounts. Additionally, Config rule status is updated when one or more member accounts join or leave an organization.
    #   			Config rule status is deleted when the master account deletes OrganizationConfigRule in all the member accounts and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>.</p>
    #   			      <p>Config sets the state of the rule to:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when an organization Config rule has been successfully created in all the member accounts. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when an organization Config rule creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when an organization Config rule creation failed in one or more member accounts within that organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when an organization Config rule deletion failed in one or more member accounts within that organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when an organization Config rule deletion is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when an organization Config rule has been successfully deleted from all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when an organization Config rule has been successfully updated in all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when an organization Config rule update is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when an organization Config rule update failed in one or more member accounts within that organization.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>An error code that is returned when organization Config rule creation or deletion has failed.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error message indicating that organization Config rule creation or deletion failed due to an error.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_time
    #   <p>The timestamp of the last update.</p>
    #
    #   @return [Time]
    #
    OrganizationConfigRuleStatus = ::Struct.new(
      :organization_config_rule_name,
      :organization_rule_status,
      :error_code,
      :error_message,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrganizationConfigRuleTriggerType
    #
    module OrganizationConfigRuleTriggerType
      # No documentation available.
      #
      CONFIGURATION_ITEM_CHANGE_NOTIFICATION = "ConfigurationItemChangeNotification"

      # No documentation available.
      #
      OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION = "OversizedConfigurationItemChangeNotification"

      # No documentation available.
      #
      SCHEDULED_NOTIFICATION = "ScheduledNotification"
    end

    # Includes enum constants for OrganizationConfigRuleTriggerTypeNoSN
    #
    module OrganizationConfigRuleTriggerTypeNoSN
      # No documentation available.
      #
      CONFIGURATION_ITEM_CHANGE_NOTIFICATION = "ConfigurationItemChangeNotification"

      # No documentation available.
      #
      OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION = "OversizedConfigurationItemChangeNotification"
    end

    # <p>An organization conformance pack that has information about conformance packs that Config creates in member accounts. </p>
    #
    # @!attribute organization_conformance_pack_name
    #   <p>The name you assign to an organization conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_conformance_pack_arn
    #   <p>Amazon Resource Name (ARN) of organization conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.  </p>
    #   		       <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute delivery_s3_key_prefix
    #   <p>Any folder structure you want to add to an Amazon S3 bucket.</p>
    #   		       <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #
    #   @return [Array<ConformancePackInputParameter>]
    #
    # @!attribute excluded_accounts
    #   <p>A comma-separated list of accounts excluded from organization conformance pack.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute last_update_time
    #   <p>Last time when organization conformation pack was updated.</p>
    #
    #   @return [Time]
    #
    OrganizationConformancePack = ::Struct.new(
      :organization_conformance_pack_name,
      :organization_conformance_pack_arn,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :excluded_accounts,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Organization conformance pack creation or deletion status in each member account.
    # 			This includes the name of the conformance pack, the status, error code and error message
    # 			when the conformance pack creation or deletion failed. </p>
    #
    # @!attribute account_id
    #   <p>The 12-digit account ID of a member account.</p>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_name
    #   <p>The name of conformance pack deployed in the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates deployment status for conformance pack in a member account.
    #   			When master account calls <code>PutOrganizationConformancePack</code> action for the first time, conformance pack status is created in the member account.
    #   			When master account calls <code>PutOrganizationConformancePack</code> action for the second time, conformance pack status is updated in the member account.
    #   			Conformance pack status is deleted when the master account deletes <code>OrganizationConformancePack</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>.
    #   		</p>
    #   		       <p> Config sets the state of the conformance pack to:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when conformance pack has been created in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when conformance pack is being created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when conformance pack creation has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when conformance pack is being deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when conformance pack has been deleted in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when conformance pack has been updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when conformance pack is being updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>An error code that is returned when conformance pack creation or
    #   			deletion failed in the member account. </p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error message indicating that conformance pack account creation or deletion
    #   			has failed due to an error in the member account. </p>
    #
    #   @return [String]
    #
    # @!attribute last_update_time
    #   <p>The timestamp of the last status update.</p>
    #
    #   @return [Time]
    #
    OrganizationConformancePackDetailedStatus = ::Struct.new(
      :account_id,
      :conformance_pack_name,
      :status,
      :error_code,
      :error_message,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the status for an organization conformance pack in an organization.</p>
    #
    # @!attribute organization_conformance_pack_name
    #   <p>The name that you assign to organization conformance pack.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates deployment status of an organization conformance pack.
    #   			When master account calls PutOrganizationConformancePack for the first time,
    #   			conformance pack status is created in all the member accounts.
    #   			When master account calls PutOrganizationConformancePack for the second time,
    #   			conformance pack status is updated in all the member accounts.
    #   			Additionally, conformance pack status is updated when one or more member accounts join or leave an
    #   			organization.
    #   			Conformance pack status is deleted when the master account deletes
    #   			OrganizationConformancePack in all the member accounts and disables service
    #   			access for <code>config-multiaccountsetup.amazonaws.com</code>.</p>
    #   		       <p>Config sets the state of the conformance pack to:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when an organization conformance pack has been successfully created in all the member accounts. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when an organization conformance pack creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when an organization conformance pack creation failed in one or more member accounts within that organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when an organization conformance pack deletion failed in one or more member accounts within that organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when an organization conformance pack deletion is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when an organization conformance pack has been successfully deleted from all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when an organization conformance pack has been successfully updated in all the member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when an organization conformance pack update is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when an organization conformance pack update failed in one or more member accounts within that organization.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>An error code that is returned when organization conformance pack creation or deletion has failed in a member account. </p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error message indicating that organization conformance pack creation or deletion failed due to an error. </p>
    #
    #   @return [String]
    #
    # @!attribute last_update_time
    #   <p>The timestamp of the last update.</p>
    #
    #   @return [Time]
    #
    OrganizationConformancePackStatus = ::Struct.new(
      :organization_conformance_pack_name,
      :status,
      :error_code,
      :error_message,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified a template that is not valid or supported.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    OrganizationConformancePackTemplateValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An
    # 			object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have
    # 			debug logging enabled, and other custom rule metadata, such as resource type, resource
    # 			ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>
    #
    # @!attribute description
    #   <p>The description that you provide for your organization Config Custom Policy rule.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_config_rule_trigger_types
    #   <p>The type of notification that initiates Config to run an evaluation for a rule.
    #   			For Config Custom Policy rules, Config supports change-initiated notification types:</p>
    #   		
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationItemChangeNotification</code> - Initiates an evaluation when Config delivers a configuration item as a result of a resource
    #   					change.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OversizedConfigurationItemChangeNotification</code> - Initiates an evaluation when
    #   						Config delivers an oversized configuration item. Config may generate this notification type when a resource changes and the
    #   					notification exceeds the maximum size allowed by Amazon SNS.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to your organization Config Custom Policy rule.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations for a rule. Your
    #   			Config Custom Policy rule is triggered when Config delivers
    #   			the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    #
    #   Enum, one of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #
    #   @return [String]
    #
    # @!attribute resource_types_scope
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_id_scope
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_key_scope
    #   <p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_value_scope
    #   <p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>
    #
    #   @return [String]
    #
    # @!attribute policy_runtime
    #   <p>The runtime system for your organization Config Custom Policy rules. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the <a href="https://github.com/aws-cloudformation/cloudformation-guard">Guard GitHub
    #   			Repository</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_text
    #   <p>The policy definition containing the logic for your organization Config Custom Policy rule.</p>
    #
    #   @return [String]
    #
    # @!attribute debug_log_delivery_accounts
    #   <p>A list of accounts that you can enable debug logging for your organization Config Custom Policy rule. List is null when debug logging is enabled for all accounts.</p>
    #
    #   @return [Array<String>]
    #
    OrganizationCustomPolicyRuleMetadata = ::Struct.new(
      :description,
      :organization_config_rule_trigger_types,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope,
      :policy_runtime,
      :policy_text,
      :debug_log_delivery_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that specifies metadata for your organization Config Custom Policy rule including the runtime system in use, which accounts have debug logging enabled, and
    # 			other custom rule metadata such as resource type, resource ID of Amazon Web Services
    # 			resource, and organization trigger types that trigger Config to evaluate
    # 				Amazon Web Services resources against a rule.</p>
    #
    # @!attribute description
    #   <p>The description that you provide for your organization Config Custom Policy rule.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_config_rule_trigger_types
    #   <p>The type of notification that triggers Config to run an evaluation for a rule.
    #   			For Config Custom Policy rules, Config supports change
    #   			triggered notification types:</p>
    #   		
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers a configuration item as a result of a resource change.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers an oversized configuration item.
    #   				Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to your organization Config Custom Policy rule.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations for a rule. Your
    #   			Config Custom Policy rule is triggered when Config delivers
    #   			the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    #
    #   Enum, one of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #
    #   @return [String]
    #
    # @!attribute resource_types_scope
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_id_scope
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_key_scope
    #   <p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_value_scope
    #   <p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>
    #
    #   @return [String]
    #
    # @!attribute policy_runtime
    #   <p>The runtime system for your organization Config Custom Policy rules. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the <a href="https://github.com/aws-cloudformation/cloudformation-guard">Guard GitHub
    #   			Repository</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute debug_log_delivery_accounts
    #   <p>A list of accounts that you can enable debug logging for your organization Config Custom Policy rule. List is null when debug logging is enabled for all accounts.</p>
    #
    #   @return [Array<String>]
    #
    OrganizationCustomPolicyRuleMetadataNoPolicy = ::Struct.new(
      :description,
      :organization_config_rule_trigger_types,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope,
      :policy_runtime,
      :debug_log_delivery_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that specifies organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN,
    # 			and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule.
    # 			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    #
    # @!attribute description
    #   <p>The description that you provide for your organization Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_function_arn
    #   <p>The lambda function ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_config_rule_trigger_types
    #   <p>The type of notification that triggers Config to run an evaluation for a rule. You can specify the following notification types:</p>
    #   		
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers a configuration item as a result of a resource change.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers an oversized configuration item.
    #   			         	Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledNotification</code> - Triggers a periodic evaluation at the frequency specified for <code>MaximumExecutionFrequency</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to your organization Config rule Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations for a rule.
    #   			Your custom rule is triggered when Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
    #   		       <note>
    #               <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid
    #   			value for the <code>MaximumExecutionFrequency</code> parameter.</p>
    #            </note>
    #
    #   Enum, one of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #
    #   @return [String]
    #
    # @!attribute resource_types_scope
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_id_scope
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_key_scope
    #   <p>One part of a key-value pair that make up a tag.
    #   			A key is a general label that acts like a category for more specific tag values. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_value_scope
    #   <p>The optional part of a key-value pair that make up a tag.
    #   			A value acts as a descriptor within a tag category (key). </p>
    #
    #   @return [String]
    #
    OrganizationCustomRuleMetadata = ::Struct.new(
      :description,
      :lambda_function_arn,
      :organization_config_rule_trigger_types,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that specifies organization managed rule metadata such as resource type and ID of Amazon Web Services resource along with the rule identifier.
    # 			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    #
    # @!attribute description
    #   <p>The description that you provide for your organization Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_identifier
    #   <p>For organization config managed rules, a predefined identifier from a
    #   			list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed
    #   			rule. To reference a managed rule, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">Using Config managed rules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute input_parameters
    #   <p>A string, in JSON format, that is passed to your organization Config rule Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_execution_frequency
    #   <p>The maximum frequency with which Config runs evaluations for a rule. You are using an Config managed rule that is triggered at a periodic frequency.</p>
    #   		       <note>
    #               <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid
    #   			value for the <code>MaximumExecutionFrequency</code> parameter.</p>
    #            </note>
    #
    #   Enum, one of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #
    #   @return [String]
    #
    # @!attribute resource_types_scope
    #   <p>The type of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_id_scope
    #   <p>The ID of the Amazon Web Services resource that was evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_key_scope
    #   <p>One part of a key-value pair that make up a tag.
    #   			A key is a general label that acts like a category for more specific tag values. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_value_scope
    #   <p>The optional part of a key-value pair that make up a tag.
    #   			A value acts as a descriptor within a tag category (key).</p>
    #
    #   @return [String]
    #
    OrganizationManagedRuleMetadata = ::Struct.new(
      :description,
      :rule_identifier,
      :input_parameters,
      :maximum_execution_frequency,
      :resource_types_scope,
      :resource_id_scope,
      :tag_key_scope,
      :tag_value_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrganizationResourceDetailedStatus
    #
    module OrganizationResourceDetailedStatus
      # No documentation available.
      #
      CREATE_SUCCESSFUL = "CREATE_SUCCESSFUL"

      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_SUCCESSFUL = "DELETE_SUCCESSFUL"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # <p>Status filter object to filter results based on specific member account ID or status type for an organization conformance pack.</p>
    #
    # @!attribute account_id
    #   <p>The 12-digit account ID of the member account within an organization.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates deployment status for conformance pack in a member account.
    #   			When master account calls <code>PutOrganizationConformancePack</code> action for the first time, conformance pack status is created in the member account.
    #   			When master account calls <code>PutOrganizationConformancePack</code> action for the second time, conformance pack status is updated in the member account.
    #   			Conformance pack status is deleted when the master account deletes <code>OrganizationConformancePack</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>.
    #   		</p>
    #   		       <p> Config sets the state of the conformance pack to:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when conformance pack has been created in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when conformance pack is being created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when conformance pack creation has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when conformance pack is being deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when conformance pack has been deleted in the member account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when conformance pack has been updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when conformance pack is being updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    OrganizationResourceDetailedStatusFilters = ::Struct.new(
      :account_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrganizationResourceStatus
    #
    module OrganizationResourceStatus
      # No documentation available.
      #
      CREATE_SUCCESSFUL = "CREATE_SUCCESSFUL"

      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_SUCCESSFUL = "DELETE_SUCCESSFUL"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # Includes enum constants for OrganizationRuleStatus
    #
    module OrganizationRuleStatus
      # No documentation available.
      #
      CREATE_SUCCESSFUL = "CREATE_SUCCESSFUL"

      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_SUCCESSFUL = "DELETE_SUCCESSFUL"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # <p>The configuration item size is outside the allowable range.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    OversizedConfigurationItemException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Owner
    #
    module Owner
      # No documentation available.
      #
      Custom_Lambda = "CUSTOM_LAMBDA"

      # No documentation available.
      #
      Aws = "AWS"

      # No documentation available.
      #
      Custom_Policy = "CUSTOM_POLICY"
    end

    # <p>An object that represents the account ID and region of an
    # 			aggregator account that is requesting authorization but is not yet
    # 			authorized.</p>
    #
    # @!attribute requester_account_id
    #   <p>The 12-digit account ID of the account requesting to aggregate
    #   			data.</p>
    #
    #   @return [String]
    #
    # @!attribute requester_aws_region
    #   <p>The region requesting to aggregate data. </p>
    #
    #   @return [String]
    #
    PendingAggregationRequest = ::Struct.new(
      :requester_account_id,
      :requester_aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate data.</p>
    #
    #   @return [String]
    #
    # @!attribute authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of tag object.</p>
    #
    #   @return [Array<Tag>]
    #
    PutAggregationAuthorizationInput = ::Struct.new(
      :authorized_account_id,
      :authorized_aws_region,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aggregation_authorization
    #   <p>Returns an AggregationAuthorization object.
    #   			
    #   		</p>
    #
    #   @return [AggregationAuthorization]
    #
    PutAggregationAuthorizationOutput = ::Struct.new(
      :aggregation_authorization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule
    #   <p>The rule that you want to add to your account.</p>
    #
    #   @return [ConfigRule]
    #
    # @!attribute tags
    #   <p>An array of tag object.</p>
    #
    #   @return [Array<Tag>]
    #
    PutConfigRuleInput = ::Struct.new(
      :config_rule,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutConfigRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute account_aggregation_sources
    #   <p>A list of AccountAggregationSource object.
    #   			
    #   		</p>
    #
    #   @return [Array<AccountAggregationSource>]
    #
    # @!attribute organization_aggregation_source
    #   <p>An OrganizationAggregationSource object.</p>
    #
    #   @return [OrganizationAggregationSource]
    #
    # @!attribute tags
    #   <p>An array of tag object.</p>
    #
    #   @return [Array<Tag>]
    #
    PutConfigurationAggregatorInput = ::Struct.new(
      :configuration_aggregator_name,
      :account_aggregation_sources,
      :organization_aggregation_source,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_aggregator
    #   <p>Returns a ConfigurationAggregator object.</p>
    #
    #   @return [ConfigurationAggregator]
    #
    PutConfigurationAggregatorOutput = ::Struct.new(
      :configuration_aggregator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>PutConfigurationRecorder</a>
    # 			action.</p>
    #
    # @!attribute configuration_recorder
    #   <p>The configuration recorder object that records each
    #   			configuration change made to the resources.</p>
    #
    #   @return [ConfigurationRecorder]
    #
    PutConfigurationRecorderInput = ::Struct.new(
      :configuration_recorder,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutConfigurationRecorderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conformance_pack_name
    #   <p>Name of the conformance pack you want to create.</p>
    #
    #   @return [String]
    #
    # @!attribute template_s3_uri
    #   <p>Location of file containing the template body (<code>s3://bucketname/prefix</code>). The uri must point to the conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same region as the conformance pack. </p>
    #   		       <note>
    #               <p>You must have access to read Amazon S3 bucket.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>
    #   		       <note>
    #               <p>You can only use a YAML template with two resource types: Config rule (<code>AWS::Config::ConfigRule</code>) and a remediation action (<code>AWS::Config::RemediationConfiguration</code>).</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
    #   		       <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket. </p>
    #   		       <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #
    #   @return [Array<ConformancePackInputParameter>]
    #
    PutConformancePackInput = ::Struct.new(
      :conformance_pack_name,
      :template_s3_uri,
      :template_body,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conformance_pack_arn
    #   <p>ARN of the conformance pack.</p>
    #
    #   @return [String]
    #
    PutConformancePackOutput = ::Struct.new(
      :conformance_pack_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>PutDeliveryChannel</a>
    # 			action.</p>
    #
    # @!attribute delivery_channel
    #   <p>The configuration delivery channel object that delivers the
    #   			configuration information to an Amazon S3 bucket and to an Amazon
    #   			SNS topic.</p>
    #
    #   @return [DeliveryChannel]
    #
    PutDeliveryChannelInput = ::Struct.new(
      :delivery_channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutDeliveryChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute evaluations
    #   <p>The assessments that the Lambda function performs. Each
    #   			evaluation identifies an Amazon Web Services resource and indicates whether it
    #   			complies with the Config rule that invokes the Lambda
    #   			function.</p>
    #
    #   @return [Array<Evaluation>]
    #
    # @!attribute result_token
    #   <p>An encrypted token that associates an evaluation with an Config rule. Identifies the rule and the event that triggered the
    #   			evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute test_mode
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
    #   @return [Boolean]
    #
    PutEvaluationsInput = ::Struct.new(
      :evaluations,
      :result_token,
      :test_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.test_mode ||= false
      end

    end

    # <p></p>
    #
    # @!attribute failed_evaluations
    #   <p>Requests that failed because of a client or server
    #   			error.</p>
    #
    #   @return [Array<Evaluation>]
    #
    PutEvaluationsOutput = ::Struct.new(
      :failed_evaluations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute external_evaluation
    #   <p>An <code>ExternalEvaluation</code> object that provides details about compliance.</p>
    #
    #   @return [ExternalEvaluation]
    #
    PutExternalEvaluationInput = ::Struct.new(
      :config_rule_name,
      :external_evaluation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutExternalEvaluationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_config_rule_name
    #   <p>The name that you assign to an organization Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_managed_rule_metadata
    #   <p>An <code>OrganizationManagedRuleMetadata</code> object. </p>
    #
    #   @return [OrganizationManagedRuleMetadata]
    #
    # @!attribute organization_custom_rule_metadata
    #   <p>An <code>OrganizationCustomRuleMetadata</code> object.</p>
    #
    #   @return [OrganizationCustomRuleMetadata]
    #
    # @!attribute excluded_accounts
    #   <p>A comma-separated list of accounts that you want to exclude from an organization Config rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organization_custom_policy_rule_metadata
    #   <p>An object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug
    #   			logging enabled, and other custom rule metadata, such as resource type, resource ID of
    #   				Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>
    #
    #   @return [OrganizationCustomPolicyRuleMetadata]
    #
    PutOrganizationConfigRuleInput = ::Struct.new(
      :organization_config_rule_name,
      :organization_managed_rule_metadata,
      :organization_custom_rule_metadata,
      :excluded_accounts,
      :organization_custom_policy_rule_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_config_rule_arn
    #   <p>The Amazon Resource Name (ARN) of an organization Config rule.</p>
    #
    #   @return [String]
    #
    PutOrganizationConfigRuleOutput = ::Struct.new(
      :organization_config_rule_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_conformance_pack_name
    #   <p>Name of the organization conformance pack you want to create.</p>
    #
    #   @return [String]
    #
    # @!attribute template_s3_uri
    #   <p>Location of file containing the template body. The uri must point to the conformance pack template
    #   			(max size: 300 KB).</p>
    #   		       <note>
    #               <p>You must have access to read Amazon S3 bucket.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>A string containing full conformance pack template body. Structure containing the template body
    #   			with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
    #   		       <note>
    #               <p>This field is optional. If used, it must be prefixed with <code>awsconfigconforms</code>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket.</p>
    #   		       <note>
    #               <p>This field is optional.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    #
    #   @return [Array<ConformancePackInputParameter>]
    #
    # @!attribute excluded_accounts
    #   <p>A list of Amazon Web Services accounts to be excluded from an organization conformance pack while deploying a conformance pack.</p>
    #
    #   @return [Array<String>]
    #
    PutOrganizationConformancePackInput = ::Struct.new(
      :organization_conformance_pack_name,
      :template_s3_uri,
      :template_body,
      :delivery_s3_bucket,
      :delivery_s3_key_prefix,
      :conformance_pack_input_parameters,
      :excluded_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_conformance_pack_arn
    #   <p>ARN of the organization conformance pack.</p>
    #
    #   @return [String]
    #
    PutOrganizationConformancePackOutput = ::Struct.new(
      :organization_conformance_pack_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute remediation_configurations
    #   <p>A list of remediation configuration objects.</p>
    #
    #   @return [Array<RemediationConfiguration>]
    #
    PutRemediationConfigurationsInput = ::Struct.new(
      :remediation_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_batches
    #   <p>Returns a list of failed remediation batch objects.</p>
    #
    #   @return [Array<FailedRemediationBatch>]
    #
    PutRemediationConfigurationsOutput = ::Struct.new(
      :failed_batches,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule_name
    #   <p>The name of the Config rule for which you want to create remediation exception.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    #
    #   @return [Array<RemediationExceptionResourceKey>]
    #
    # @!attribute message
    #   <p>The message contains an explanation of the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_time
    #   <p>The exception is automatically deleted after the expiration date.</p>
    #
    #   @return [Time]
    #
    PutRemediationExceptionsInput = ::Struct.new(
      :config_rule_name,
      :resource_keys,
      :message,
      :expiration_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_batches
    #   <p>Returns a list of failed remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.</p>
    #
    #   @return [Array<FailedRemediationExceptionBatch>]
    #
    PutRemediationExceptionsOutput = ::Struct.new(
      :failed_batches,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type
    #   <p>The type of the resource. The custom resource type must be registered with CloudFormation. </p>
    #   		       <note>
    #               <p>You cannot use the organization names “amzn”, “amazon”, “alexa”, “custom” with custom resource types. It is the first part of the ResourceType up to the first ::.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute schema_version_id
    #   <p>Version of the schema registered for the ResourceType in CloudFormation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Unique identifier of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>Name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration object of the resource in valid JSON format. It must match the schema registered with CloudFormation.</p>
    #   		       <note>
    #               <p>The configuration JSON must not exceed 64 KB.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    PutResourceConfigInput = ::Struct.new(
      :resource_type,
      :schema_version_id,
      :resource_id,
      :resource_name,
      :configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutResourceConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute retention_period_in_days
    #   <p>Number of days Config stores your historical
    #   			information.</p>
    #   		       <note>
    #   			         <p>Currently, only applicable to the configuration item
    #   				history.</p>
    #   		       </note>
    #
    #   @return [Integer]
    #
    PutRetentionConfigurationInput = ::Struct.new(
      :retention_period_in_days,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retention_period_in_days ||= 0
      end

    end

    # @!attribute retention_configuration
    #   <p>Returns a retention configuration object.</p>
    #
    #   @return [RetentionConfiguration]
    #
    PutRetentionConfigurationOutput = ::Struct.new(
      :retention_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stored_query
    #   <p>A list of <code>StoredQuery</code> objects.
    #   			The mandatory fields are <code>QueryName</code> and <code>Expression</code>.</p>
    #   		       <note>
    #               <p>When you are creating a query, you must provide a query name and an expression.
    #   			When you are updating a query, you must provide a query name but updating the description is optional.</p>
    #            </note>
    #
    #   @return [StoredQuery]
    #
    # @!attribute tags
    #   <p>A list of <code>Tags</code> object.</p>
    #
    #   @return [Array<Tag>]
    #
    PutStoredQueryInput = ::Struct.new(
      :stored_query,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_arn
    #   <p>Amazon Resource Name (ARN) of the query.
    #   			For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.</p>
    #
    #   @return [String]
    #
    PutStoredQueryOutput = ::Struct.new(
      :query_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the query.</p>
    #
    # @!attribute select_fields
    #   <p>Returns a <code>FieldInfo</code> object.</p>
    #
    #   @return [Array<FieldInfo>]
    #
    QueryInfo = ::Struct.new(
      :select_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecorderStatus
    #
    module RecorderStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Success = "Success"

      # No documentation available.
      #
      Failure = "Failure"
    end

    # <p>Specifies the types of Amazon Web Services resource for which Config
    # 			records configuration changes.</p>
    # 		       <p>In the recording group, you specify whether all supported types
    # 			or specific types of resources are recorded.</p>
    # 		       <p>By default, Config records configuration changes for all
    # 			supported types of regional resources that Config discovers in
    # 			the region in which it is running. Regional resources are tied to a
    # 			region and can be used only in that region. Examples of regional
    # 			resources are EC2 instances and EBS volumes.</p>
    # 		       <p>You can also have Config record configuration changes for
    # 			supported types of global resources (for example, IAM resources).
    # 			Global resources are not tied to an individual region and can be
    # 			used in all regions.</p>
    # 		       <important>
    # 			         <p>The configuration details for any global resource are the
    # 				same in all regions. If you customize Config in multiple
    # 				regions to record global resources, it will create multiple
    # 				configuration items each time a global resource changes: one
    # 				configuration item for each region. These configuration items
    # 				will contain identical data. To prevent duplicate configuration
    # 				items, you should consider customizing Config in only one
    # 				region to record global resources, unless you want the
    # 				configuration items to be available in multiple
    # 				regions.</p>
    # 		       </important>
    # 		       <p>If you don't want Config to record all resources, you can
    # 			specify which types of resources it will record with the
    # 				<code>resourceTypes</code> parameter.</p>
    # 		       <p>For a list of supported resource types, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported Resource Types</a>.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html">Selecting Which Resources Config Records</a>.</p>
    #
    # @!attribute all_supported
    #   <p>Specifies whether Config records configuration changes for
    #   			every supported type of regional resource.</p>
    #   		       <p>If you set this option to <code>true</code>, when Config
    #   			adds support for a new type of regional resource, it starts
    #   			recording resources of that type automatically.</p>
    #   		       <p>If you set this option to <code>true</code>, you cannot
    #   			enumerate a list of <code>resourceTypes</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_global_resource_types
    #   <p>Specifies whether Config includes all supported types of
    #   			global resources (for example, IAM resources) with the resources
    #   			that it records.</p>
    #   		       <p>Before you can set this option to <code>true</code>, you must
    #   			set the <code>allSupported</code> option to
    #   			<code>true</code>.</p>
    #   		       <p>If you set this option to <code>true</code>, when Config
    #   			adds support for a new type of global resource, it starts recording
    #   			resources of that type automatically.</p>
    #   		       <p>The configuration details for any global resource are the same
    #   			in all regions. To prevent duplicate configuration items, you should
    #   			consider customizing Config in only one region to record global
    #   			resources.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute resource_types
    #   <p>A comma-separated list that specifies the types of Amazon Web Services
    #   			resources for which Config records configuration changes (for
    #   			example, <code>AWS::EC2::Instance</code> or
    #   				<code>AWS::CloudTrail::Trail</code>).</p>
    #   		       <p>To record all configuration changes, you must
    #   			set the <code>allSupported</code> option to
    #   			<code>true</code>.</p>
    #   		       <p>If you set this option to <code>false</code>, when Config
    #   			adds support for a new type of resource, it will not record
    #   			resources of that type unless you manually add that type to your
    #   			recording group.</p>
    #   		       <p>For a list of valid <code>resourceTypes</code> values, see the
    #   				<b>resourceType Value</b> column in
    #   				<a href="https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html supported-resources">Supported Amazon Web Services resource Types</a>.</p>
    #
    #   @return [Array<String>]
    #
    RecordingGroup = ::Struct.new(
      :all_supported,
      :include_global_resource_types,
      :resource_types,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.all_supported ||= false
        self.include_global_resource_types ||= false
      end

    end

    # <p>The relationship of the related resource to the main
    # 			resource.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type of the related resource.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the related resource (for example,
    #   				<code>sg-xxxxxx</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The custom name of the related resource, if
    #   			available.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_name
    #   <p>The type of relationship with the related resource.</p>
    #
    #   @return [String]
    #
    Relationship = ::Struct.new(
      :resource_type,
      :resource_id,
      :resource_name,
      :relationship_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.</p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>The type of the target. Target executes remediation. For example, SSM document.</p>
    #
    #   Enum, one of: ["SSM_DOCUMENT"]
    #
    #   @return [String]
    #
    # @!attribute target_id
    #   <p>Target ID is the name of the public document.</p>
    #
    #   @return [String]
    #
    # @!attribute target_version
    #   <p>Version of the target. For example, version of the SSM document.</p>
    #   		       <note>
    #               <p>If you make backward incompatible changes to the SSM document,
    #   			you must call PutRemediationConfiguration API again to ensure the remediations can run.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>An object of the RemediationParameterValue.</p>
    #
    #   @return [Hash<String, RemediationParameterValue>]
    #
    # @!attribute resource_type
    #   <p>The type of a resource. </p>
    #
    #   @return [String]
    #
    # @!attribute automatic
    #   <p>The remediation is triggered automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute execution_controls
    #   <p>An ExecutionControls object.</p>
    #
    #   @return [ExecutionControls]
    #
    # @!attribute maximum_automatic_attempts
    #   <p>The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.</p>
    #   		       <p>For example, if you specify MaximumAutomaticAttempts as 5 with RetryAttemptSeconds as 50 seconds,
    #   			
    #   			Config will put a RemediationException on your behalf for the failing resource after the 5th failed attempt within 50 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retry_attempt_seconds
    #   <p>Maximum time in seconds that Config runs auto-remediation. If you do not select a number, the default is 60 seconds. </p>
    #   		       <p>For example, if you specify RetryAttemptSeconds as 50 seconds and MaximumAutomaticAttempts as 5,
    #   		Config will run auto-remediations 5 times within 50 seconds before throwing an exception.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) of remediation configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by_service
    #   <p>Name of the service that owns the service linked rule, if applicable.</p>
    #
    #   @return [String]
    #
    RemediationConfiguration = ::Struct.new(
      :config_rule_name,
      :target_type,
      :target_id,
      :target_version,
      :parameters,
      :resource_type,
      :automatic,
      :execution_controls,
      :maximum_automatic_attempts,
      :retry_attempt_seconds,
      :arn,
      :created_by_service,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.automatic ||= false
      end

    end

    # <p>An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type. </p>
    #
    # @!attribute config_rule_name
    #   <p>The name of the Config rule.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource (for example., sg-xxxxxx).</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An explanation of an remediation exception.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_time
    #   <p>The time when the remediation exception will be deleted.</p>
    #
    #   @return [Time]
    #
    RemediationException = ::Struct.new(
      :config_rule_name,
      :resource_type,
      :resource_id,
      :message,
      :expiration_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details that identify a resource within Config, including the resource type and resource ID. </p>
    #
    # @!attribute resource_type
    #   <p>The type of a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource (for example., sg-xxxxxx).</p>
    #
    #   @return [String]
    #
    RemediationExceptionResourceKey = ::Struct.new(
      :resource_type,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RemediationExecutionState
    #
    module RemediationExecutionState
      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Provides details of the current status of the invoked remediation action for that resource.</p>
    #
    # @!attribute resource_key
    #   <p>The details that identify a resource within Config, including
    #   			the resource type and resource ID.</p>
    #
    #   @return [ResourceKey]
    #
    # @!attribute state
    #   <p>ENUM of the values.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute step_details
    #   <p>Details of every step.</p>
    #
    #   @return [Array<RemediationExecutionStep>]
    #
    # @!attribute invocation_time
    #   <p>Start time when the remediation was executed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time when the remediation execution was last updated.</p>
    #
    #   @return [Time]
    #
    RemediationExecutionStatus = ::Struct.new(
      :resource_key,
      :state,
      :step_details,
      :invocation_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Name of the step from the SSM document.</p>
    #
    # @!attribute name
    #   <p>The details of the step.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The valid status of the step.</p>
    #
    #   Enum, one of: ["SUCCEEDED", "PENDING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error message if the step was interrupted during execution.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time when the step started.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_time
    #   <p>The time when the step stopped.</p>
    #
    #   @return [Time]
    #
    RemediationExecutionStep = ::Struct.new(
      :name,
      :state,
      :error_message,
      :start_time,
      :stop_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RemediationExecutionStepState
    #
    module RemediationExecutionStepState
      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later. </p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    RemediationInProgressException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.</p>
    #
    # @!attribute resource_value
    #   <p>The value is dynamic and changes at run-time.</p>
    #
    #   @return [ResourceValue]
    #
    # @!attribute static_value
    #   <p>The value is static and does not change at run-time.</p>
    #
    #   @return [StaticValue]
    #
    RemediationParameterValue = ::Struct.new(
      :resource_value,
      :static_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RemediationTargetType
    #
    module RemediationTargetType
      # No documentation available.
      #
      SSM_DOCUMENT = "SSM_DOCUMENT"
    end

    # <p>Two users are trying to modify the same query at the same time. Wait for a moment and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the resource type and the number of
    # 			resources.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type (for example,
    #   				<code>"AWS::EC2::Instance"</code>).</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>The number of resources.</p>
    #
    #   @return [Integer]
    #
    ResourceCount = ::Struct.new(
      :resource_type,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.count ||= 0
      end

    end

    # <p>Filters the resource count based on account ID, region, and resource type.</p>
    #
    # @!attribute resource_type
    #   <p>The type of the Amazon Web Services resource.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The 12-digit ID of the account.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The region where the account is located.</p>
    #
    #   @return [String]
    #
    ResourceCountFilters = ::Struct.new(
      :resource_type,
      :account_id,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceCountGroupKey
    #
    module ResourceCountGroupKey
      # No documentation available.
      #
      RESOURCE_TYPE = "RESOURCE_TYPE"

      # No documentation available.
      #
      ACCOUNT_ID = "ACCOUNT_ID"

      # No documentation available.
      #
      AWS_REGION = "AWS_REGION"
    end

    # <p>Filters the results by resource account ID, region, resource ID, and resource name.</p>
    #
    # @!attribute account_id
    #   <p>The 12-digit source account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The source region.</p>
    #
    #   @return [String]
    #
    ResourceFilters = ::Struct.new(
      :account_id,
      :resource_id,
      :resource_name,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the
    # 			custom resource name.</p>
    #
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource (for example,
    #   			<code>sg-xxxxxx</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The custom name of the resource (if available).</p>
    #
    #   @return [String]
    #
    # @!attribute resource_deletion_time
    #   <p>The time that the resource was deleted.</p>
    #
    #   @return [Time]
    #
    ResourceIdentifier = ::Struct.new(
      :resource_type,
      :resource_id,
      :resource_name,
      :resource_deletion_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You see this exception in the following cases: </p>
    # 		       <ul>
    #             <li>
    #                <p>For DeleteConfigRule, Config is deleting this rule. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteConfigRule, the rule is deleting your evaluation results. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteConfigRule, a remediation action is associated with the rule and Config cannot delete this rule. Delete the remediation action associated with the rule before deleting the rule and try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For PutConfigOrganizationRule, organization Config rule deletion is in progress. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteOrganizationConfigRule, organization Config rule creation is in progress. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For PutConformancePack and PutOrganizationConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.</p>
    #             </li>
    #             <li>
    #                <p>For DeleteConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details that identify a resource within Config, including
    # 			the resource type and resource ID.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   Enum, one of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource (for example., sg-xxxxxx). </p>
    #
    #   @return [String]
    #
    ResourceKey = ::Struct.new(
      :resource_type,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified a resource that is either unknown or has not
    # 			been discovered.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    ResourceNotDiscoveredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified a resource that does not exist.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      CustomerGateway = "AWS::EC2::CustomerGateway"

      # No documentation available.
      #
      EIP = "AWS::EC2::EIP"

      # No documentation available.
      #
      Host = "AWS::EC2::Host"

      # No documentation available.
      #
      Instance = "AWS::EC2::Instance"

      # No documentation available.
      #
      InternetGateway = "AWS::EC2::InternetGateway"

      # No documentation available.
      #
      NetworkAcl = "AWS::EC2::NetworkAcl"

      # No documentation available.
      #
      NetworkInterface = "AWS::EC2::NetworkInterface"

      # No documentation available.
      #
      RouteTable = "AWS::EC2::RouteTable"

      # No documentation available.
      #
      SecurityGroup = "AWS::EC2::SecurityGroup"

      # No documentation available.
      #
      Subnet = "AWS::EC2::Subnet"

      # No documentation available.
      #
      Trail = "AWS::CloudTrail::Trail"

      # No documentation available.
      #
      Volume = "AWS::EC2::Volume"

      # No documentation available.
      #
      VPC = "AWS::EC2::VPC"

      # No documentation available.
      #
      VPNConnection = "AWS::EC2::VPNConnection"

      # No documentation available.
      #
      VPNGateway = "AWS::EC2::VPNGateway"

      # No documentation available.
      #
      RegisteredHAInstance = "AWS::EC2::RegisteredHAInstance"

      # No documentation available.
      #
      NatGateway = "AWS::EC2::NatGateway"

      # No documentation available.
      #
      EgressOnlyInternetGateway = "AWS::EC2::EgressOnlyInternetGateway"

      # No documentation available.
      #
      VPCEndpoint = "AWS::EC2::VPCEndpoint"

      # No documentation available.
      #
      VPCEndpointService = "AWS::EC2::VPCEndpointService"

      # No documentation available.
      #
      FlowLog = "AWS::EC2::FlowLog"

      # No documentation available.
      #
      VPCPeeringConnection = "AWS::EC2::VPCPeeringConnection"

      # No documentation available.
      #
      Domain = "AWS::Elasticsearch::Domain"

      # No documentation available.
      #
      Group = "AWS::IAM::Group"

      # No documentation available.
      #
      Policy = "AWS::IAM::Policy"

      # No documentation available.
      #
      Role = "AWS::IAM::Role"

      # No documentation available.
      #
      User = "AWS::IAM::User"

      # No documentation available.
      #
      LoadBalancerV2 = "AWS::ElasticLoadBalancingV2::LoadBalancer"

      # No documentation available.
      #
      Certificate = "AWS::ACM::Certificate"

      # No documentation available.
      #
      DBInstance = "AWS::RDS::DBInstance"

      # No documentation available.
      #
      DBSubnetGroup = "AWS::RDS::DBSubnetGroup"

      # No documentation available.
      #
      DBSecurityGroup = "AWS::RDS::DBSecurityGroup"

      # No documentation available.
      #
      DBSnapshot = "AWS::RDS::DBSnapshot"

      # No documentation available.
      #
      DBCluster = "AWS::RDS::DBCluster"

      # No documentation available.
      #
      DBClusterSnapshot = "AWS::RDS::DBClusterSnapshot"

      # No documentation available.
      #
      EventSubscription = "AWS::RDS::EventSubscription"

      # No documentation available.
      #
      Bucket = "AWS::S3::Bucket"

      # No documentation available.
      #
      AccountPublicAccessBlock = "AWS::S3::AccountPublicAccessBlock"

      # No documentation available.
      #
      Cluster = "AWS::Redshift::Cluster"

      # No documentation available.
      #
      ClusterSnapshot = "AWS::Redshift::ClusterSnapshot"

      # No documentation available.
      #
      ClusterParameterGroup = "AWS::Redshift::ClusterParameterGroup"

      # No documentation available.
      #
      ClusterSecurityGroup = "AWS::Redshift::ClusterSecurityGroup"

      # No documentation available.
      #
      ClusterSubnetGroup = "AWS::Redshift::ClusterSubnetGroup"

      # No documentation available.
      #
      RedshiftEventSubscription = "AWS::Redshift::EventSubscription"

      # No documentation available.
      #
      ManagedInstanceInventory = "AWS::SSM::ManagedInstanceInventory"

      # No documentation available.
      #
      Alarm = "AWS::CloudWatch::Alarm"

      # No documentation available.
      #
      Stack = "AWS::CloudFormation::Stack"

      # No documentation available.
      #
      LoadBalancer = "AWS::ElasticLoadBalancing::LoadBalancer"

      # No documentation available.
      #
      AutoScalingGroup = "AWS::AutoScaling::AutoScalingGroup"

      # No documentation available.
      #
      LaunchConfiguration = "AWS::AutoScaling::LaunchConfiguration"

      # No documentation available.
      #
      ScalingPolicy = "AWS::AutoScaling::ScalingPolicy"

      # No documentation available.
      #
      ScheduledAction = "AWS::AutoScaling::ScheduledAction"

      # No documentation available.
      #
      Table = "AWS::DynamoDB::Table"

      # No documentation available.
      #
      Project = "AWS::CodeBuild::Project"

      # No documentation available.
      #
      RateBasedRule = "AWS::WAF::RateBasedRule"

      # No documentation available.
      #
      Rule = "AWS::WAF::Rule"

      # No documentation available.
      #
      RuleGroup = "AWS::WAF::RuleGroup"

      # No documentation available.
      #
      WebACL = "AWS::WAF::WebACL"

      # No documentation available.
      #
      RegionalRateBasedRule = "AWS::WAFRegional::RateBasedRule"

      # No documentation available.
      #
      RegionalRule = "AWS::WAFRegional::Rule"

      # No documentation available.
      #
      RegionalRuleGroup = "AWS::WAFRegional::RuleGroup"

      # No documentation available.
      #
      RegionalWebACL = "AWS::WAFRegional::WebACL"

      # No documentation available.
      #
      Distribution = "AWS::CloudFront::Distribution"

      # No documentation available.
      #
      StreamingDistribution = "AWS::CloudFront::StreamingDistribution"

      # No documentation available.
      #
      Function = "AWS::Lambda::Function"

      # No documentation available.
      #
      NetworkFirewallFirewall = "AWS::NetworkFirewall::Firewall"

      # No documentation available.
      #
      NetworkFirewallFirewallPolicy = "AWS::NetworkFirewall::FirewallPolicy"

      # No documentation available.
      #
      NetworkFirewallRuleGroup = "AWS::NetworkFirewall::RuleGroup"

      # No documentation available.
      #
      Application = "AWS::ElasticBeanstalk::Application"

      # No documentation available.
      #
      ApplicationVersion = "AWS::ElasticBeanstalk::ApplicationVersion"

      # No documentation available.
      #
      Environment = "AWS::ElasticBeanstalk::Environment"

      # No documentation available.
      #
      WebACLV2 = "AWS::WAFv2::WebACL"

      # No documentation available.
      #
      RuleGroupV2 = "AWS::WAFv2::RuleGroup"

      # No documentation available.
      #
      IPSetV2 = "AWS::WAFv2::IPSet"

      # No documentation available.
      #
      RegexPatternSetV2 = "AWS::WAFv2::RegexPatternSet"

      # No documentation available.
      #
      ManagedRuleSetV2 = "AWS::WAFv2::ManagedRuleSet"

      # No documentation available.
      #
      EncryptionConfig = "AWS::XRay::EncryptionConfig"

      # No documentation available.
      #
      AssociationCompliance = "AWS::SSM::AssociationCompliance"

      # No documentation available.
      #
      PatchCompliance = "AWS::SSM::PatchCompliance"

      # No documentation available.
      #
      Protection = "AWS::Shield::Protection"

      # No documentation available.
      #
      RegionalProtection = "AWS::ShieldRegional::Protection"

      # No documentation available.
      #
      ConformancePackCompliance = "AWS::Config::ConformancePackCompliance"

      # No documentation available.
      #
      ResourceCompliance = "AWS::Config::ResourceCompliance"

      # No documentation available.
      #
      Stage = "AWS::ApiGateway::Stage"

      # No documentation available.
      #
      RestApi = "AWS::ApiGateway::RestApi"

      # No documentation available.
      #
      StageV2 = "AWS::ApiGatewayV2::Stage"

      # No documentation available.
      #
      Api = "AWS::ApiGatewayV2::Api"

      # No documentation available.
      #
      Pipeline = "AWS::CodePipeline::Pipeline"

      # No documentation available.
      #
      CloudFormationProvisionedProduct = "AWS::ServiceCatalog::CloudFormationProvisionedProduct"

      # No documentation available.
      #
      CloudFormationProduct = "AWS::ServiceCatalog::CloudFormationProduct"

      # No documentation available.
      #
      Portfolio = "AWS::ServiceCatalog::Portfolio"

      # No documentation available.
      #
      Queue = "AWS::SQS::Queue"

      # No documentation available.
      #
      Key = "AWS::KMS::Key"

      # No documentation available.
      #
      QLDBLedger = "AWS::QLDB::Ledger"

      # No documentation available.
      #
      Secret = "AWS::SecretsManager::Secret"

      # No documentation available.
      #
      Topic = "AWS::SNS::Topic"

      # No documentation available.
      #
      FileData = "AWS::SSM::FileData"

      # No documentation available.
      #
      BackupPlan = "AWS::Backup::BackupPlan"

      # No documentation available.
      #
      BackupSelection = "AWS::Backup::BackupSelection"

      # No documentation available.
      #
      BackupVault = "AWS::Backup::BackupVault"

      # No documentation available.
      #
      BackupRecoveryPoint = "AWS::Backup::RecoveryPoint"

      # No documentation available.
      #
      ECRRepository = "AWS::ECR::Repository"

      # No documentation available.
      #
      ECSCluster = "AWS::ECS::Cluster"

      # No documentation available.
      #
      ECSService = "AWS::ECS::Service"

      # No documentation available.
      #
      ECSTaskDefinition = "AWS::ECS::TaskDefinition"

      # No documentation available.
      #
      EFSAccessPoint = "AWS::EFS::AccessPoint"

      # No documentation available.
      #
      EFSFileSystem = "AWS::EFS::FileSystem"

      # No documentation available.
      #
      EKSCluster = "AWS::EKS::Cluster"

      # No documentation available.
      #
      OpenSearchDomain = "AWS::OpenSearch::Domain"

      # No documentation available.
      #
      TransitGateway = "AWS::EC2::TransitGateway"

      # No documentation available.
      #
      KinesisStream = "AWS::Kinesis::Stream"

      # No documentation available.
      #
      KinesisStreamConsumer = "AWS::Kinesis::StreamConsumer"

      # No documentation available.
      #
      CodeDeployApplication = "AWS::CodeDeploy::Application"

      # No documentation available.
      #
      CodeDeployDeploymentConfig = "AWS::CodeDeploy::DeploymentConfig"

      # No documentation available.
      #
      CodeDeployDeploymentGroup = "AWS::CodeDeploy::DeploymentGroup"

      # No documentation available.
      #
      LaunchTemplate = "AWS::EC2::LaunchTemplate"

      # No documentation available.
      #
      ECRPublicRepository = "AWS::ECR::PublicRepository"

      # No documentation available.
      #
      GuardDutyDetector = "AWS::GuardDuty::Detector"

      # No documentation available.
      #
      EMRSecurityConfiguration = "AWS::EMR::SecurityConfiguration"

      # No documentation available.
      #
      SageMakerCodeRepository = "AWS::SageMaker::CodeRepository"
    end

    # <p>The dynamic value of the resource.</p>
    #
    # @!attribute value
    #   <p>The value is a resource ID.</p>
    #
    #   Enum, one of: ["RESOURCE_ID"]
    #
    #   @return [String]
    #
    ResourceValue = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceValueType
    #
    module ResourceValueType
      # No documentation available.
      #
      RESOURCE_ID = "RESOURCE_ID"
    end

    # <p>An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in Config.</p>
    #
    # @!attribute name
    #   <p>The name of the retention configuration object.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period_in_days
    #   <p>Number of days Config stores your historical information.</p>
    #   		       <note>
    #               <p>Currently, only applicable to the configuration item history.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    RetentionConfiguration = ::Struct.new(
      :name,
      :retention_period_in_days,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retention_period_in_days ||= 0
      end

    end

    # <p>Defines which resources trigger an evaluation for an Config
    # 			rule. The scope can include one or more resource types, a
    # 			combination of a tag key and value, or a combination of one resource
    # 			type and one resource ID. Specify a scope to constrain which
    # 			resources trigger an evaluation for a rule. Otherwise, evaluations
    # 			for the rule are triggered when any resource in your recording group
    # 			changes in configuration.</p>
    #
    # @!attribute compliance_resource_types
    #   <p>The resource types of only those Amazon Web Services resources that you want to
    #   			trigger an evaluation for the rule. You can only specify one type if
    #   			you also specify a resource ID for
    #   			<code>ComplianceResourceId</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_key
    #   <p>The tag key that is applied to only those Amazon Web Services resources that
    #   			you want to trigger an evaluation for the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_value
    #   <p>The tag value applied to only those Amazon Web Services resources that you want
    #   			to trigger an evaluation for the rule. If you specify a value for
    #   				<code>TagValue</code>, you must also specify a value for
    #   				<code>TagKey</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute compliance_resource_id
    #   <p>The ID of the only Amazon Web Services resource that you want to trigger an
    #   			evaluation for the rule. If you specify a resource ID, you must
    #   			specify one resource type for
    #   			<code>ComplianceResourceTypes</code>.</p>
    #
    #   @return [String]
    #
    Scope = ::Struct.new(
      :compliance_resource_types,
      :tag_key,
      :tag_value,
      :compliance_resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute expression
    #   <p>The SQL query SELECT command. </p>
    #
    #   @return [String]
    #
    # @!attribute configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of query results returned on each page. </p>
    #
    #   @return [Integer]
    #
    # @!attribute max_results
    #   <p>The maximum number of query results returned on each page. Config also allows the Limit request parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    SelectAggregateResourceConfigInput = ::Struct.new(
      :expression,
      :configuration_aggregator_name,
      :limit,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
        self.max_results ||= 0
      end

    end

    # @!attribute results
    #   <p>Returns the results for the SQL query.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute query_info
    #   <p>Details about the query.</p>
    #
    #   @return [QueryInfo]
    #
    # @!attribute next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    SelectAggregateResourceConfigOutput = ::Struct.new(
      :results,
      :query_info,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute expression
    #   <p>The SQL query <code>SELECT</code> command.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of query results returned on each page. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    SelectResourceConfigInput = ::Struct.new(
      :expression,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute results
    #   <p>Returns the results for the SQL query.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute query_info
    #   <p>Returns the <code>QueryInfo</code> object.</p>
    #
    #   @return [QueryInfo]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    #
    #   @return [String]
    #
    SelectResourceConfigOutput = ::Struct.new(
      :results,
      :query_info,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the CustomPolicyDetails, the rule owner (Amazon Web Services or customer), the rule
    # 			identifier, and the events that cause the evaluation of your Amazon Web Services
    # 			resources.</p>
    #
    # @!attribute owner
    #   <p>Indicates whether Amazon Web Services or the customer owns and manages the Config rule.</p>
    #   		
    #   		       <p>Config Managed Rules are predefined rules owned by Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">Config Managed Rules</a> in the Config developer guide.</p>
    #   		
    #   		       <p>Config Custom Rules are rules that you can develop either with Guard (<code>CUSTOM_POLICY</code>) or Lambda (<code>CUSTOM_LAMBDA</code>). For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html">Config Custom Rules </a> in the Config developer guide.</p>
    #
    #   Enum, one of: ["CUSTOM_LAMBDA", "AWS", "CUSTOM_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute source_identifier
    #   <p>For Config Managed rules, a predefined identifier from a
    #   			list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed
    #   			rule. To reference a managed rule, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html">List of Config Managed Rules</a>.</p>
    #   		       <p>For Config Custom Lambda rules, the identifier is the Amazon Resource Name
    #   			(ARN) of the rule's Lambda function, such as
    #   			<code>arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name</code>.</p>
    #   		
    #   		       <p>For Config Custom Policy rules, this field will be ignored.</p>
    #
    #   @return [String]
    #
    # @!attribute source_details
    #   <p>Provides the source and the message types that cause Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    #   		
    #   		       <p>If the owner is set to <code>CUSTOM_POLICY</code>, the only acceptable values for the Config rule trigger message type are <code>ConfigurationItemChangeNotification</code> and <code>OversizedConfigurationItemChangeNotification</code>.</p>
    #
    #   @return [Array<SourceDetail>]
    #
    # @!attribute custom_policy_details
    #   <p>Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to <code>CUSTOM_POLICY</code>.</p>
    #
    #   @return [CustomPolicyDetails]
    #
    Source = ::Struct.new(
      :owner,
      :source_identifier,
      :source_details,
      :custom_policy_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the source and the message types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also
    # 			provides the frequency with which you want Config to run
    # 			evaluations for the rule if the trigger type is periodic. You can
    # 			specify the parameter values for <code>SourceDetail</code> only for
    # 			custom rules. </p>
    #
    # @!attribute event_source
    #   <p>The source of the event, such as an Amazon Web Services service, that triggers
    #   			Config to evaluate your Amazon Web Services resources.</p>
    #
    #   Enum, one of: ["aws.config"]
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of notification that triggers Config to run an
    #   			evaluation for a rule. You can specify the following notification
    #   			types:</p>
    #
    #
    #   		       <ul>
    #               <li>
    #   				           <p>
    #   					             <code>ConfigurationItemChangeNotification</code> - Triggers
    #   					an evaluation when Config delivers a configuration item
    #   					as a result of a resource change.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>OversizedConfigurationItemChangeNotification</code>
    #   					- Triggers an evaluation when Config delivers an
    #   					oversized configuration item. Config may generate this
    #   					notification type when a resource changes and the
    #   					notification exceeds the maximum size allowed by Amazon
    #   					SNS.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ScheduledNotification</code> - Triggers a
    #   					periodic evaluation at the frequency specified for
    #   						<code>MaximumExecutionFrequency</code>.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ConfigurationSnapshotDeliveryCompleted</code> -
    #   					Triggers a periodic evaluation when Config delivers a
    #   					configuration snapshot.</p>
    #   			         </li>
    #            </ul>
    #
    #   		       <p>If you want your custom rule to be triggered by configuration
    #   			changes, specify two SourceDetail objects, one for
    #   				<code>ConfigurationItemChangeNotification</code> and one for
    #   				<code>OversizedConfigurationItemChangeNotification</code>.</p>
    #
    #   Enum, one of: ["ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification", "OversizedConfigurationItemChangeNotification"]
    #
    #   @return [String]
    #
    # @!attribute maximum_execution_frequency
    #   <p>The frequency at which you want Config to run evaluations
    #   			for a custom rule with a periodic trigger. If you specify a value
    #   			for <code>MaximumExecutionFrequency</code>, then
    #   				<code>MessageType</code> must use the
    #   				<code>ScheduledNotification</code> value.</p>
    #
    #
    #   		
    #
    #   		       <note>
    #   			         <p>By default, rules with a periodic trigger are evaluated
    #   				every 24 hours. To change the frequency, specify a valid value
    #   				for the <code>MaximumExecutionFrequency</code>
    #   				parameter.</p>
    #   			         <p>Based on the valid value you choose, Config runs
    #   				evaluations once for each valid value. For example, if you
    #   				choose <code>Three_Hours</code>, Config runs evaluations
    #   				once every three hours. In this case, <code>Three_Hours</code>
    #   				is the frequency of this rule. </p>
    #   		       </note>
    #
    #   Enum, one of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #
    #   @return [String]
    #
    SourceDetail = ::Struct.new(
      :event_source,
      :message_type,
      :maximum_execution_frequency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Web Services Systems Manager (SSM) specific remediation controls.</p>
    #
    # @!attribute concurrent_execution_rate_percentage
    #   <p>The maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. You can specify a percentage, such as 10%. The default value is 10. </p>
    #
    #   @return [Integer]
    #
    # @!attribute error_percentage
    #   <p>The percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule.
    #   			You can specify a percentage of errors, for example 10%. If you do not specifiy a percentage, the default is 50%.
    #   			For example, if you set the ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops running the automations when the fifth error is received. </p>
    #
    #   @return [Integer]
    #
    SsmControls = ::Struct.new(
      :concurrent_execution_rate_percentage,
      :error_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute config_rule_names
    #   <p>The list of names of Config rules that you want to run
    #   			evaluations for.</p>
    #
    #   @return [Array<String>]
    #
    StartConfigRulesEvaluationInput = ::Struct.new(
      :config_rule_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output when you start the evaluation for the specified Config rule.</p>
    #
    StartConfigRulesEvaluationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>StartConfigurationRecorder</a>
    # 			action.</p>
    #
    # @!attribute configuration_recorder_name
    #   <p>The name of the recorder object that records each configuration
    #   			change made to the resources.</p>
    #
    #   @return [String]
    #
    StartConfigurationRecorderInput = ::Struct.new(
      :configuration_recorder_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartConfigurationRecorderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_rule_name
    #   <p>The list of names of Config rules that you want to run remediation execution for.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_keys
    #   <p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>
    #
    #   @return [Array<ResourceKey>]
    #
    StartRemediationExecutionInput = ::Struct.new(
      :config_rule_name,
      :resource_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failure_message
    #   <p>Returns a failure message. For example, the resource is already compliant.</p>
    #
    #   @return [String]
    #
    # @!attribute failed_items
    #   <p>For resources that have failed to start execution, the API returns a resource key object.</p>
    #
    #   @return [Array<ResourceKey>]
    #
    StartRemediationExecutionOutput = ::Struct.new(
      :failure_message,
      :failed_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The static value of the resource.</p>
    #
    # @!attribute values
    #   <p>A list of values. For example, the ARN of the assumed role. </p>
    #
    #   @return [Array<String>]
    #
    StaticValue = ::Struct.new(
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status filter object to filter results based on specific member account ID or status type for an organization Config rule. </p>
    #
    # @!attribute account_id
    #   <p>The 12-digit account ID of the member account within an organization.</p>
    #
    #   @return [String]
    #
    # @!attribute member_account_rule_status
    #   <p>Indicates deployment status for Config rule in the member account.
    #   			When master account calls <code>PutOrganizationConfigRule</code> action for the first time, Config rule status is created in the member account.
    #   			When master account calls <code>PutOrganizationConfigRule</code> action for the second time, Config rule status is updated in the member account.
    #   			Config rule status is deleted when the master account deletes <code>OrganizationConfigRule</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>.
    #   			</p>
    #   		       <p>Config sets the state of the rule to:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_SUCCESSFUL</code> when Config rule has been created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_IN_PROGRESS</code> when Config rule is being created in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> when Config rule creation has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> when Config rule deletion has failed in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_IN_PROGRESS</code> when Config rule is being deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SUCCESSFUL</code> when Config rule has been deleted in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_SUCCESSFUL</code> when Config rule has been updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> when Config rule is being updated in the member account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> when Config rule deletion has failed in the member account.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    StatusDetailFilters = ::Struct.new(
      :account_id,
      :member_account_rule_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>StopConfigurationRecorder</a> action.</p>
    #
    # @!attribute configuration_recorder_name
    #   <p>The name of the recorder object that records each configuration change made to the resources.</p>
    #
    #   @return [String]
    #
    StopConfigurationRecorderInput = ::Struct.new(
      :configuration_recorder_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopConfigurationRecorderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the details of a stored query.</p>
    #
    # @!attribute query_id
    #   <p>The ID of the query.</p>
    #
    #   @return [String]
    #
    # @!attribute query_arn
    #   <p>Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.</p>
    #
    #   @return [String]
    #
    # @!attribute query_name
    #   <p>The name of the query.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A unique description for the query.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The expression of the query. For example, <code>SELECT
    #   			resourceId,
    #   			resourceType,
    #   			supplementaryConfiguration.BucketVersioningConfiguration.status
    #   			WHERE
    #   			resourceType = 'AWS::S3::Bucket'
    #   			AND supplementaryConfiguration.BucketVersioningConfiguration.status = 'Off'.</code>
    #            </p>
    #
    #   @return [String]
    #
    StoredQuery = ::Struct.new(
      :query_id,
      :query_arn,
      :query_name,
      :description,
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns details of a specific query. </p>
    #
    # @!attribute query_id
    #   <p>The ID of the query. </p>
    #
    #   @return [String]
    #
    # @!attribute query_arn
    #   <p>Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.</p>
    #
    #   @return [String]
    #
    # @!attribute query_name
    #   <p>The name of the query.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A unique description for the query.</p>
    #
    #   @return [String]
    #
    StoredQueryMetadata = ::Struct.new(
      :query_id,
      :query_arn,
      :query_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tags for the resource. The metadata that you apply to a resource to help you categorize and organize them.
    # 			Each tag consists of a key and an optional value, both of which you define.
    # 			Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    #
    # @!attribute key
    #   <p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of tag object.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the limit of the number of tags you can use. You have more than 50 tags.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested action is not valid.</p>
    # 		       <p>For PutStoredQuery, you will see this exception if there are missing required fields or if the input value fails the validation, or if you are trying to create more than 300 queries.</p>
    # 		       <p>For GetStoredQuery, ListStoredQuery, and DeleteStoredQuery you will see this exception if there are missing required fields or if the input value fails the validation.</p>
    #
    # @!attribute message
    #   <p>Error executing the command</p>
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
