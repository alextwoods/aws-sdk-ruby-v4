# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancing
  module Stubs

    # Operation Stubber for AddTags
    class AddTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddTagsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('AddTagsResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ApplySecurityGroupsToLoadBalancer
    class ApplySecurityGroupsToLoadBalancer
      def self.default(visited=[])
        {
          security_groups: SecurityGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ApplySecurityGroupsToLoadBalancerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('ApplySecurityGroupsToLoadBalancerResult')
        xml << Hearth::XML::Node.new('SecurityGroups', Stubs::SecurityGroups.stub('member', stub[:security_groups])) unless stub[:security_groups].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SecurityGroups
    class SecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroups')
        visited = visited + ['SecurityGroups']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for AttachLoadBalancerToSubnets
    class AttachLoadBalancerToSubnets
      def self.default(visited=[])
        {
          subnets: Subnets.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AttachLoadBalancerToSubnetsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('AttachLoadBalancerToSubnetsResult')
        xml << Hearth::XML::Node.new('Subnets', Stubs::Subnets.stub('member', stub[:subnets])) unless stub[:subnets].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Subnets
    class Subnets
      def self.default(visited=[])
        return nil if visited.include?('Subnets')
        visited = visited + ['Subnets']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ConfigureHealthCheck
    class ConfigureHealthCheck
      def self.default(visited=[])
        {
          health_check: HealthCheck.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ConfigureHealthCheckResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('ConfigureHealthCheckResult')
        xml << Stubs::HealthCheck.stub('HealthCheck', stub[:health_check]) unless stub[:health_check].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for HealthCheck
    class HealthCheck
      def self.default(visited=[])
        return nil if visited.include?('HealthCheck')
        visited = visited + ['HealthCheck']
        {
          target: 'target',
          interval: 1,
          timeout: 1,
          unhealthy_threshold: 1,
          healthy_threshold: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HealthCheck.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Target', stub[:target].to_s) unless stub[:target].nil?
        xml << Hearth::XML::Node.new('Interval', stub[:interval].to_s) unless stub[:interval].nil?
        xml << Hearth::XML::Node.new('Timeout', stub[:timeout].to_s) unless stub[:timeout].nil?
        xml << Hearth::XML::Node.new('UnhealthyThreshold', stub[:unhealthy_threshold].to_s) unless stub[:unhealthy_threshold].nil?
        xml << Hearth::XML::Node.new('HealthyThreshold', stub[:healthy_threshold].to_s) unless stub[:healthy_threshold].nil?
        xml
      end
    end

    # Operation Stubber for CreateAppCookieStickinessPolicy
    class CreateAppCookieStickinessPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateAppCookieStickinessPolicyResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('CreateAppCookieStickinessPolicyResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLBCookieStickinessPolicy
    class CreateLBCookieStickinessPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateLBCookieStickinessPolicyResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('CreateLBCookieStickinessPolicyResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLoadBalancer
    class CreateLoadBalancer
      def self.default(visited=[])
        {
          dns_name: 'dns_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateLoadBalancerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('CreateLoadBalancerResult')
        xml << Hearth::XML::Node.new('DNSName', stub[:dns_name].to_s) unless stub[:dns_name].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLoadBalancerListeners
    class CreateLoadBalancerListeners
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateLoadBalancerListenersResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('CreateLoadBalancerListenersResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLoadBalancerPolicy
    class CreateLoadBalancerPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateLoadBalancerPolicyResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('CreateLoadBalancerPolicyResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLoadBalancer
    class DeleteLoadBalancer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteLoadBalancerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DeleteLoadBalancerResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLoadBalancerListeners
    class DeleteLoadBalancerListeners
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteLoadBalancerListenersResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DeleteLoadBalancerListenersResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLoadBalancerPolicy
    class DeleteLoadBalancerPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteLoadBalancerPolicyResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DeleteLoadBalancerPolicyResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterInstancesFromLoadBalancer
    class DeregisterInstancesFromLoadBalancer
      def self.default(visited=[])
        {
          instances: Instances.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeregisterInstancesFromLoadBalancerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DeregisterInstancesFromLoadBalancerResult')
        xml << Hearth::XML::Node.new('Instances', Stubs::Instances.stub('member', stub[:instances])) unless stub[:instances].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Instances
    class Instances
      def self.default(visited=[])
        return nil if visited.include?('Instances')
        visited = visited + ['Instances']
        [
          Instance.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Instance.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          instance_id: 'instance_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Instance.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InstanceId', stub[:instance_id].to_s) unless stub[:instance_id].nil?
        xml
      end
    end

    # Operation Stubber for DescribeAccountLimits
    class DescribeAccountLimits
      def self.default(visited=[])
        {
          limits: Limits.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAccountLimitsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DescribeAccountLimitsResult')
        xml << Hearth::XML::Node.new('Limits', Stubs::Limits.stub('member', stub[:limits])) unless stub[:limits].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Limits
    class Limits
      def self.default(visited=[])
        return nil if visited.include?('Limits')
        visited = visited + ['Limits']
        [
          Limit.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Limit.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Limit
    class Limit
      def self.default(visited=[])
        return nil if visited.include?('Limit')
        visited = visited + ['Limit']
        {
          name: 'name',
          max: 'max',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Limit.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Max', stub[:max].to_s) unless stub[:max].nil?
        xml
      end
    end

    # Operation Stubber for DescribeInstanceHealth
    class DescribeInstanceHealth
      def self.default(visited=[])
        {
          instance_states: InstanceStates.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeInstanceHealthResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DescribeInstanceHealthResult')
        xml << Hearth::XML::Node.new('InstanceStates', Stubs::InstanceStates.stub('member', stub[:instance_states])) unless stub[:instance_states].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceStates
    class InstanceStates
      def self.default(visited=[])
        return nil if visited.include?('InstanceStates')
        visited = visited + ['InstanceStates']
        [
          InstanceState.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::InstanceState.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for InstanceState
    class InstanceState
      def self.default(visited=[])
        return nil if visited.include?('InstanceState')
        visited = visited + ['InstanceState']
        {
          instance_id: 'instance_id',
          state: 'state',
          reason_code: 'reason_code',
          description: 'description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceState.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InstanceId', stub[:instance_id].to_s) unless stub[:instance_id].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('ReasonCode', stub[:reason_code].to_s) unless stub[:reason_code].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml
      end
    end

    # Operation Stubber for DescribeLoadBalancerAttributes
    class DescribeLoadBalancerAttributes
      def self.default(visited=[])
        {
          load_balancer_attributes: LoadBalancerAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLoadBalancerAttributesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DescribeLoadBalancerAttributesResult')
        xml << Stubs::LoadBalancerAttributes.stub('LoadBalancerAttributes', stub[:load_balancer_attributes]) unless stub[:load_balancer_attributes].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for LoadBalancerAttributes
    class LoadBalancerAttributes
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerAttributes')
        visited = visited + ['LoadBalancerAttributes']
        {
          cross_zone_load_balancing: CrossZoneLoadBalancing.default(visited),
          access_log: AccessLog.default(visited),
          connection_draining: ConnectionDraining.default(visited),
          connection_settings: ConnectionSettings.default(visited),
          additional_attributes: AdditionalAttributes.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancerAttributes.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::CrossZoneLoadBalancing.stub('CrossZoneLoadBalancing', stub[:cross_zone_load_balancing]) unless stub[:cross_zone_load_balancing].nil?
        xml << Stubs::AccessLog.stub('AccessLog', stub[:access_log]) unless stub[:access_log].nil?
        xml << Stubs::ConnectionDraining.stub('ConnectionDraining', stub[:connection_draining]) unless stub[:connection_draining].nil?
        xml << Stubs::ConnectionSettings.stub('ConnectionSettings', stub[:connection_settings]) unless stub[:connection_settings].nil?
        xml << Hearth::XML::Node.new('AdditionalAttributes', Stubs::AdditionalAttributes.stub('member', stub[:additional_attributes])) unless stub[:additional_attributes].nil?
        xml
      end
    end

    # List Stubber for AdditionalAttributes
    class AdditionalAttributes
      def self.default(visited=[])
        return nil if visited.include?('AdditionalAttributes')
        visited = visited + ['AdditionalAttributes']
        [
          AdditionalAttribute.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AdditionalAttribute.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AdditionalAttribute
    class AdditionalAttribute
      def self.default(visited=[])
        return nil if visited.include?('AdditionalAttribute')
        visited = visited + ['AdditionalAttribute']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AdditionalAttribute.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Structure Stubber for ConnectionSettings
    class ConnectionSettings
      def self.default(visited=[])
        return nil if visited.include?('ConnectionSettings')
        visited = visited + ['ConnectionSettings']
        {
          idle_timeout: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ConnectionSettings.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IdleTimeout', stub[:idle_timeout].to_s) unless stub[:idle_timeout].nil?
        xml
      end
    end

    # Structure Stubber for ConnectionDraining
    class ConnectionDraining
      def self.default(visited=[])
        return nil if visited.include?('ConnectionDraining')
        visited = visited + ['ConnectionDraining']
        {
          enabled: false,
          timeout: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ConnectionDraining.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('Timeout', stub[:timeout].to_s) unless stub[:timeout].nil?
        xml
      end
    end

    # Structure Stubber for AccessLog
    class AccessLog
      def self.default(visited=[])
        return nil if visited.include?('AccessLog')
        visited = visited + ['AccessLog']
        {
          enabled: false,
          s3_bucket_name: 's3_bucket_name',
          emit_interval: 1,
          s3_bucket_prefix: 's3_bucket_prefix',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccessLog.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('S3BucketName', stub[:s3_bucket_name].to_s) unless stub[:s3_bucket_name].nil?
        xml << Hearth::XML::Node.new('EmitInterval', stub[:emit_interval].to_s) unless stub[:emit_interval].nil?
        xml << Hearth::XML::Node.new('S3BucketPrefix', stub[:s3_bucket_prefix].to_s) unless stub[:s3_bucket_prefix].nil?
        xml
      end
    end

    # Structure Stubber for CrossZoneLoadBalancing
    class CrossZoneLoadBalancing
      def self.default(visited=[])
        return nil if visited.include?('CrossZoneLoadBalancing')
        visited = visited + ['CrossZoneLoadBalancing']
        {
          enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CrossZoneLoadBalancing.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml
      end
    end

    # Operation Stubber for DescribeLoadBalancerPolicies
    class DescribeLoadBalancerPolicies
      def self.default(visited=[])
        {
          policy_descriptions: PolicyDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLoadBalancerPoliciesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DescribeLoadBalancerPoliciesResult')
        xml << Hearth::XML::Node.new('PolicyDescriptions', Stubs::PolicyDescriptions.stub('member', stub[:policy_descriptions])) unless stub[:policy_descriptions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PolicyDescriptions
    class PolicyDescriptions
      def self.default(visited=[])
        return nil if visited.include?('PolicyDescriptions')
        visited = visited + ['PolicyDescriptions']
        [
          PolicyDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PolicyDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PolicyDescription
    class PolicyDescription
      def self.default(visited=[])
        return nil if visited.include?('PolicyDescription')
        visited = visited + ['PolicyDescription']
        {
          policy_name: 'policy_name',
          policy_type_name: 'policy_type_name',
          policy_attribute_descriptions: PolicyAttributeDescriptions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyTypeName', stub[:policy_type_name].to_s) unless stub[:policy_type_name].nil?
        xml << Hearth::XML::Node.new('PolicyAttributeDescriptions', Stubs::PolicyAttributeDescriptions.stub('member', stub[:policy_attribute_descriptions])) unless stub[:policy_attribute_descriptions].nil?
        xml
      end
    end

    # List Stubber for PolicyAttributeDescriptions
    class PolicyAttributeDescriptions
      def self.default(visited=[])
        return nil if visited.include?('PolicyAttributeDescriptions')
        visited = visited + ['PolicyAttributeDescriptions']
        [
          PolicyAttributeDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PolicyAttributeDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PolicyAttributeDescription
    class PolicyAttributeDescription
      def self.default(visited=[])
        return nil if visited.include?('PolicyAttributeDescription')
        visited = visited + ['PolicyAttributeDescription']
        {
          attribute_name: 'attribute_name',
          attribute_value: 'attribute_value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyAttributeDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AttributeName', stub[:attribute_name].to_s) unless stub[:attribute_name].nil?
        xml << Hearth::XML::Node.new('AttributeValue', stub[:attribute_value].to_s) unless stub[:attribute_value].nil?
        xml
      end
    end

    # Operation Stubber for DescribeLoadBalancerPolicyTypes
    class DescribeLoadBalancerPolicyTypes
      def self.default(visited=[])
        {
          policy_type_descriptions: PolicyTypeDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLoadBalancerPolicyTypesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DescribeLoadBalancerPolicyTypesResult')
        xml << Hearth::XML::Node.new('PolicyTypeDescriptions', Stubs::PolicyTypeDescriptions.stub('member', stub[:policy_type_descriptions])) unless stub[:policy_type_descriptions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PolicyTypeDescriptions
    class PolicyTypeDescriptions
      def self.default(visited=[])
        return nil if visited.include?('PolicyTypeDescriptions')
        visited = visited + ['PolicyTypeDescriptions']
        [
          PolicyTypeDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PolicyTypeDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PolicyTypeDescription
    class PolicyTypeDescription
      def self.default(visited=[])
        return nil if visited.include?('PolicyTypeDescription')
        visited = visited + ['PolicyTypeDescription']
        {
          policy_type_name: 'policy_type_name',
          description: 'description',
          policy_attribute_type_descriptions: PolicyAttributeTypeDescriptions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyTypeDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PolicyTypeName', stub[:policy_type_name].to_s) unless stub[:policy_type_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('PolicyAttributeTypeDescriptions', Stubs::PolicyAttributeTypeDescriptions.stub('member', stub[:policy_attribute_type_descriptions])) unless stub[:policy_attribute_type_descriptions].nil?
        xml
      end
    end

    # List Stubber for PolicyAttributeTypeDescriptions
    class PolicyAttributeTypeDescriptions
      def self.default(visited=[])
        return nil if visited.include?('PolicyAttributeTypeDescriptions')
        visited = visited + ['PolicyAttributeTypeDescriptions']
        [
          PolicyAttributeTypeDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PolicyAttributeTypeDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PolicyAttributeTypeDescription
    class PolicyAttributeTypeDescription
      def self.default(visited=[])
        return nil if visited.include?('PolicyAttributeTypeDescription')
        visited = visited + ['PolicyAttributeTypeDescription']
        {
          attribute_name: 'attribute_name',
          attribute_type: 'attribute_type',
          description: 'description',
          default_value: 'default_value',
          cardinality: 'cardinality',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyAttributeTypeDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AttributeName', stub[:attribute_name].to_s) unless stub[:attribute_name].nil?
        xml << Hearth::XML::Node.new('AttributeType', stub[:attribute_type].to_s) unless stub[:attribute_type].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('Cardinality', stub[:cardinality].to_s) unless stub[:cardinality].nil?
        xml
      end
    end

    # Operation Stubber for DescribeLoadBalancers
    class DescribeLoadBalancers
      def self.default(visited=[])
        {
          load_balancer_descriptions: LoadBalancerDescriptions.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLoadBalancersResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DescribeLoadBalancersResult')
        xml << Hearth::XML::Node.new('LoadBalancerDescriptions', Stubs::LoadBalancerDescriptions.stub('member', stub[:load_balancer_descriptions])) unless stub[:load_balancer_descriptions].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for LoadBalancerDescriptions
    class LoadBalancerDescriptions
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerDescriptions')
        visited = visited + ['LoadBalancerDescriptions']
        [
          LoadBalancerDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LoadBalancerDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LoadBalancerDescription
    class LoadBalancerDescription
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerDescription')
        visited = visited + ['LoadBalancerDescription']
        {
          load_balancer_name: 'load_balancer_name',
          dns_name: 'dns_name',
          canonical_hosted_zone_name: 'canonical_hosted_zone_name',
          canonical_hosted_zone_name_id: 'canonical_hosted_zone_name_id',
          listener_descriptions: ListenerDescriptions.default(visited),
          policies: Policies.default(visited),
          backend_server_descriptions: BackendServerDescriptions.default(visited),
          availability_zones: AvailabilityZones.default(visited),
          subnets: Subnets.default(visited),
          vpc_id: 'vpc_id',
          instances: Instances.default(visited),
          health_check: HealthCheck.default(visited),
          source_security_group: SourceSecurityGroup.default(visited),
          security_groups: SecurityGroups.default(visited),
          created_time: Time.now,
          scheme: 'scheme',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancerDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LoadBalancerName', stub[:load_balancer_name].to_s) unless stub[:load_balancer_name].nil?
        xml << Hearth::XML::Node.new('DNSName', stub[:dns_name].to_s) unless stub[:dns_name].nil?
        xml << Hearth::XML::Node.new('CanonicalHostedZoneName', stub[:canonical_hosted_zone_name].to_s) unless stub[:canonical_hosted_zone_name].nil?
        xml << Hearth::XML::Node.new('CanonicalHostedZoneNameID', stub[:canonical_hosted_zone_name_id].to_s) unless stub[:canonical_hosted_zone_name_id].nil?
        xml << Hearth::XML::Node.new('ListenerDescriptions', Stubs::ListenerDescriptions.stub('member', stub[:listener_descriptions])) unless stub[:listener_descriptions].nil?
        xml << Stubs::Policies.stub('Policies', stub[:policies]) unless stub[:policies].nil?
        xml << Hearth::XML::Node.new('BackendServerDescriptions', Stubs::BackendServerDescriptions.stub('member', stub[:backend_server_descriptions])) unless stub[:backend_server_descriptions].nil?
        xml << Hearth::XML::Node.new('AvailabilityZones', Stubs::AvailabilityZones.stub('member', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml << Hearth::XML::Node.new('Subnets', Stubs::Subnets.stub('member', stub[:subnets])) unless stub[:subnets].nil?
        xml << Hearth::XML::Node.new('VPCId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('Instances', Stubs::Instances.stub('member', stub[:instances])) unless stub[:instances].nil?
        xml << Stubs::HealthCheck.stub('HealthCheck', stub[:health_check]) unless stub[:health_check].nil?
        xml << Stubs::SourceSecurityGroup.stub('SourceSecurityGroup', stub[:source_security_group]) unless stub[:source_security_group].nil?
        xml << Hearth::XML::Node.new('SecurityGroups', Stubs::SecurityGroups.stub('member', stub[:security_groups])) unless stub[:security_groups].nil?
        xml << Hearth::XML::Node.new('CreatedTime', Hearth::TimeHelper.to_date_time(stub[:created_time])) unless stub[:created_time].nil?
        xml << Hearth::XML::Node.new('Scheme', stub[:scheme].to_s) unless stub[:scheme].nil?
        xml
      end
    end

    # Structure Stubber for SourceSecurityGroup
    class SourceSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('SourceSecurityGroup')
        visited = visited + ['SourceSecurityGroup']
        {
          owner_alias: 'owner_alias',
          group_name: 'group_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SourceSecurityGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OwnerAlias', stub[:owner_alias].to_s) unless stub[:owner_alias].nil?
        xml << Hearth::XML::Node.new('GroupName', stub[:group_name].to_s) unless stub[:group_name].nil?
        xml
      end
    end

    # List Stubber for AvailabilityZones
    class AvailabilityZones
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZones')
        visited = visited + ['AvailabilityZones']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for BackendServerDescriptions
    class BackendServerDescriptions
      def self.default(visited=[])
        return nil if visited.include?('BackendServerDescriptions')
        visited = visited + ['BackendServerDescriptions']
        [
          BackendServerDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::BackendServerDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for BackendServerDescription
    class BackendServerDescription
      def self.default(visited=[])
        return nil if visited.include?('BackendServerDescription')
        visited = visited + ['BackendServerDescription']
        {
          instance_port: 1,
          policy_names: PolicyNames.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::BackendServerDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InstancePort', stub[:instance_port].to_s) unless stub[:instance_port].nil?
        xml << Hearth::XML::Node.new('PolicyNames', Stubs::PolicyNames.stub('member', stub[:policy_names])) unless stub[:policy_names].nil?
        xml
      end
    end

    # List Stubber for PolicyNames
    class PolicyNames
      def self.default(visited=[])
        return nil if visited.include?('PolicyNames')
        visited = visited + ['PolicyNames']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Policies
    class Policies
      def self.default(visited=[])
        return nil if visited.include?('Policies')
        visited = visited + ['Policies']
        {
          app_cookie_stickiness_policies: AppCookieStickinessPolicies.default(visited),
          lb_cookie_stickiness_policies: LBCookieStickinessPolicies.default(visited),
          other_policies: PolicyNames.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Policies.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AppCookieStickinessPolicies', Stubs::AppCookieStickinessPolicies.stub('member', stub[:app_cookie_stickiness_policies])) unless stub[:app_cookie_stickiness_policies].nil?
        xml << Hearth::XML::Node.new('LBCookieStickinessPolicies', Stubs::LBCookieStickinessPolicies.stub('member', stub[:lb_cookie_stickiness_policies])) unless stub[:lb_cookie_stickiness_policies].nil?
        xml << Hearth::XML::Node.new('OtherPolicies', Stubs::PolicyNames.stub('member', stub[:other_policies])) unless stub[:other_policies].nil?
        xml
      end
    end

    # List Stubber for LBCookieStickinessPolicies
    class LBCookieStickinessPolicies
      def self.default(visited=[])
        return nil if visited.include?('LBCookieStickinessPolicies')
        visited = visited + ['LBCookieStickinessPolicies']
        [
          LBCookieStickinessPolicy.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LBCookieStickinessPolicy.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LBCookieStickinessPolicy
    class LBCookieStickinessPolicy
      def self.default(visited=[])
        return nil if visited.include?('LBCookieStickinessPolicy')
        visited = visited + ['LBCookieStickinessPolicy']
        {
          policy_name: 'policy_name',
          cookie_expiration_period: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LBCookieStickinessPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('CookieExpirationPeriod', stub[:cookie_expiration_period].to_s) unless stub[:cookie_expiration_period].nil?
        xml
      end
    end

    # List Stubber for AppCookieStickinessPolicies
    class AppCookieStickinessPolicies
      def self.default(visited=[])
        return nil if visited.include?('AppCookieStickinessPolicies')
        visited = visited + ['AppCookieStickinessPolicies']
        [
          AppCookieStickinessPolicy.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AppCookieStickinessPolicy.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AppCookieStickinessPolicy
    class AppCookieStickinessPolicy
      def self.default(visited=[])
        return nil if visited.include?('AppCookieStickinessPolicy')
        visited = visited + ['AppCookieStickinessPolicy']
        {
          policy_name: 'policy_name',
          cookie_name: 'cookie_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AppCookieStickinessPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('CookieName', stub[:cookie_name].to_s) unless stub[:cookie_name].nil?
        xml
      end
    end

    # List Stubber for ListenerDescriptions
    class ListenerDescriptions
      def self.default(visited=[])
        return nil if visited.include?('ListenerDescriptions')
        visited = visited + ['ListenerDescriptions']
        [
          ListenerDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ListenerDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ListenerDescription
    class ListenerDescription
      def self.default(visited=[])
        return nil if visited.include?('ListenerDescription')
        visited = visited + ['ListenerDescription']
        {
          listener: Listener.default(visited),
          policy_names: PolicyNames.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ListenerDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::Listener.stub('Listener', stub[:listener]) unless stub[:listener].nil?
        xml << Hearth::XML::Node.new('PolicyNames', Stubs::PolicyNames.stub('member', stub[:policy_names])) unless stub[:policy_names].nil?
        xml
      end
    end

    # Structure Stubber for Listener
    class Listener
      def self.default(visited=[])
        return nil if visited.include?('Listener')
        visited = visited + ['Listener']
        {
          protocol: 'protocol',
          load_balancer_port: 1,
          instance_protocol: 'instance_protocol',
          instance_port: 1,
          ssl_certificate_id: 'ssl_certificate_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Listener.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Protocol', stub[:protocol].to_s) unless stub[:protocol].nil?
        xml << Hearth::XML::Node.new('LoadBalancerPort', stub[:load_balancer_port].to_s) unless stub[:load_balancer_port].nil?
        xml << Hearth::XML::Node.new('InstanceProtocol', stub[:instance_protocol].to_s) unless stub[:instance_protocol].nil?
        xml << Hearth::XML::Node.new('InstancePort', stub[:instance_port].to_s) unless stub[:instance_port].nil?
        xml << Hearth::XML::Node.new('SSLCertificateId', stub[:ssl_certificate_id].to_s) unless stub[:ssl_certificate_id].nil?
        xml
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags
      def self.default(visited=[])
        {
          tag_descriptions: TagDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTagsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DescribeTagsResult')
        xml << Hearth::XML::Node.new('TagDescriptions', Stubs::TagDescriptions.stub('member', stub[:tag_descriptions])) unless stub[:tag_descriptions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TagDescriptions
    class TagDescriptions
      def self.default(visited=[])
        return nil if visited.include?('TagDescriptions')
        visited = visited + ['TagDescriptions']
        [
          TagDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::TagDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TagDescription
    class TagDescription
      def self.default(visited=[])
        return nil if visited.include?('TagDescription')
        visited = visited + ['TagDescription']
        {
          load_balancer_name: 'load_balancer_name',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TagDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LoadBalancerName', stub[:load_balancer_name].to_s) unless stub[:load_balancer_name].nil?
        xml << Hearth::XML::Node.new('Tags', Stubs::TagList.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for DetachLoadBalancerFromSubnets
    class DetachLoadBalancerFromSubnets
      def self.default(visited=[])
        {
          subnets: Subnets.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetachLoadBalancerFromSubnetsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DetachLoadBalancerFromSubnetsResult')
        xml << Hearth::XML::Node.new('Subnets', Stubs::Subnets.stub('member', stub[:subnets])) unless stub[:subnets].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableAvailabilityZonesForLoadBalancer
    class DisableAvailabilityZonesForLoadBalancer
      def self.default(visited=[])
        {
          availability_zones: AvailabilityZones.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DisableAvailabilityZonesForLoadBalancerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('DisableAvailabilityZonesForLoadBalancerResult')
        xml << Hearth::XML::Node.new('AvailabilityZones', Stubs::AvailabilityZones.stub('member', stub[:availability_zones])) unless stub[:availability_zones].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableAvailabilityZonesForLoadBalancer
    class EnableAvailabilityZonesForLoadBalancer
      def self.default(visited=[])
        {
          availability_zones: AvailabilityZones.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('EnableAvailabilityZonesForLoadBalancerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('EnableAvailabilityZonesForLoadBalancerResult')
        xml << Hearth::XML::Node.new('AvailabilityZones', Stubs::AvailabilityZones.stub('member', stub[:availability_zones])) unless stub[:availability_zones].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyLoadBalancerAttributes
    class ModifyLoadBalancerAttributes
      def self.default(visited=[])
        {
          load_balancer_name: 'load_balancer_name',
          load_balancer_attributes: LoadBalancerAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyLoadBalancerAttributesResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('ModifyLoadBalancerAttributesResult')
        xml << Hearth::XML::Node.new('LoadBalancerName', stub[:load_balancer_name].to_s) unless stub[:load_balancer_name].nil?
        xml << Stubs::LoadBalancerAttributes.stub('LoadBalancerAttributes', stub[:load_balancer_attributes]) unless stub[:load_balancer_attributes].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterInstancesWithLoadBalancer
    class RegisterInstancesWithLoadBalancer
      def self.default(visited=[])
        {
          instances: Instances.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RegisterInstancesWithLoadBalancerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('RegisterInstancesWithLoadBalancerResult')
        xml << Hearth::XML::Node.new('Instances', Stubs::Instances.stub('member', stub[:instances])) unless stub[:instances].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTags
    class RemoveTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveTagsResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('RemoveTagsResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetLoadBalancerListenerSSLCertificate
    class SetLoadBalancerListenerSSLCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetLoadBalancerListenerSSLCertificateResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('SetLoadBalancerListenerSSLCertificateResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetLoadBalancerPoliciesForBackendServer
    class SetLoadBalancerPoliciesForBackendServer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetLoadBalancerPoliciesForBackendServerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('SetLoadBalancerPoliciesForBackendServerResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetLoadBalancerPoliciesOfListener
    class SetLoadBalancerPoliciesOfListener
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetLoadBalancerPoliciesOfListenerResponse')
        response.attributes['xmlns'] = 'http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/'
        xml = Hearth::XML::Node.new('SetLoadBalancerPoliciesOfListenerResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
