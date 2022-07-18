# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancing
  module Builders

    # Operation Builder for AddTags
    class AddTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddTags'
        params['Version'] = '2012-06-01'
        Builders::LoadBalancerNames.build(input[:load_balancer_names], params, context: context + 'LoadBalancerNames' + '.member') unless input[:load_balancer_names].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for LoadBalancerNames
    class LoadBalancerNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ApplySecurityGroupsToLoadBalancer
    class ApplySecurityGroupsToLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ApplySecurityGroupsToLoadBalancer'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::SecurityGroups.build(input[:security_groups], params, context: context + 'SecurityGroups' + '.member') unless input[:security_groups].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SecurityGroups
    class SecurityGroups
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AttachLoadBalancerToSubnets
    class AttachLoadBalancerToSubnets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachLoadBalancerToSubnets'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::Subnets.build(input[:subnets], params, context: context + 'Subnets' + '.member') unless input[:subnets].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for Subnets
    class Subnets
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ConfigureHealthCheck
    class ConfigureHealthCheck
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ConfigureHealthCheck'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::HealthCheck.build(input[:health_check], params, context: context + 'HealthCheck' + '.') unless input[:health_check].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for HealthCheck
    class HealthCheck
      def self.build(input, params, context: nil)
        params[context + 'Target'] = input[:target].to_s unless input[:target].nil?
        params[context + 'Interval'] = input[:interval].to_s unless input[:interval].nil?
        params[context + 'Timeout'] = input[:timeout].to_s unless input[:timeout].nil?
        params[context + 'UnhealthyThreshold'] = input[:unhealthy_threshold].to_s unless input[:unhealthy_threshold].nil?
        params[context + 'HealthyThreshold'] = input[:healthy_threshold].to_s unless input[:healthy_threshold].nil?
      end
    end

    # Operation Builder for CreateAppCookieStickinessPolicy
    class CreateAppCookieStickinessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateAppCookieStickinessPolicy'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'CookieName'] = input[:cookie_name].to_s unless input[:cookie_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateLBCookieStickinessPolicy
    class CreateLBCookieStickinessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLBCookieStickinessPolicy'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'CookieExpirationPeriod'] = input[:cookie_expiration_period].to_s unless input[:cookie_expiration_period].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateLoadBalancer
    class CreateLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLoadBalancer'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::Listeners.build(input[:listeners], params, context: context + 'Listeners' + '.member') unless input[:listeners].nil?
        Builders::AvailabilityZones.build(input[:availability_zones], params, context: context + 'AvailabilityZones' + '.member') unless input[:availability_zones].nil?
        Builders::Subnets.build(input[:subnets], params, context: context + 'Subnets' + '.member') unless input[:subnets].nil?
        Builders::SecurityGroups.build(input[:security_groups], params, context: context + 'SecurityGroups' + '.member') unless input[:security_groups].nil?
        params[context + 'Scheme'] = input[:scheme].to_s unless input[:scheme].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AvailabilityZones
    class AvailabilityZones
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for Listeners
    class Listeners
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Listener.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Listener
    class Listener
      def self.build(input, params, context: nil)
        params[context + 'Protocol'] = input[:protocol].to_s unless input[:protocol].nil?
        params[context + 'LoadBalancerPort'] = input[:load_balancer_port].to_s unless input[:load_balancer_port].nil?
        params[context + 'InstanceProtocol'] = input[:instance_protocol].to_s unless input[:instance_protocol].nil?
        params[context + 'InstancePort'] = input[:instance_port].to_s unless input[:instance_port].nil?
        params[context + 'SSLCertificateId'] = input[:ssl_certificate_id].to_s unless input[:ssl_certificate_id].nil?
      end
    end

    # Operation Builder for CreateLoadBalancerListeners
    class CreateLoadBalancerListeners
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLoadBalancerListeners'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::Listeners.build(input[:listeners], params, context: context + 'Listeners' + '.member') unless input[:listeners].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateLoadBalancerPolicy
    class CreateLoadBalancerPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLoadBalancerPolicy'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'PolicyTypeName'] = input[:policy_type_name].to_s unless input[:policy_type_name].nil?
        Builders::PolicyAttributes.build(input[:policy_attributes], params, context: context + 'PolicyAttributes' + '.member') unless input[:policy_attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PolicyAttributes
    class PolicyAttributes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::PolicyAttribute.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for PolicyAttribute
    class PolicyAttribute
      def self.build(input, params, context: nil)
        params[context + 'AttributeName'] = input[:attribute_name].to_s unless input[:attribute_name].nil?
        params[context + 'AttributeValue'] = input[:attribute_value].to_s unless input[:attribute_value].nil?
      end
    end

    # Operation Builder for DeleteLoadBalancer
    class DeleteLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLoadBalancer'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteLoadBalancerListeners
    class DeleteLoadBalancerListeners
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLoadBalancerListeners'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::Ports.build(input[:load_balancer_ports], params, context: context + 'LoadBalancerPorts' + '.member') unless input[:load_balancer_ports].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for Ports
    class Ports
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteLoadBalancerPolicy
    class DeleteLoadBalancerPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLoadBalancerPolicy'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeregisterInstancesFromLoadBalancer
    class DeregisterInstancesFromLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeregisterInstancesFromLoadBalancer'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::Instances.build(input[:instances], params, context: context + 'Instances' + '.member') unless input[:instances].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for Instances
    class Instances
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Instance.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Instance
    class Instance
      def self.build(input, params, context: nil)
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
      end
    end

    # Operation Builder for DescribeAccountLimits
    class DescribeAccountLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAccountLimits'
        params['Version'] = '2012-06-01'
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeInstanceHealth
    class DescribeInstanceHealth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceHealth'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::Instances.build(input[:instances], params, context: context + 'Instances' + '.member') unless input[:instances].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeLoadBalancerAttributes
    class DescribeLoadBalancerAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLoadBalancerAttributes'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeLoadBalancerPolicies
    class DescribeLoadBalancerPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLoadBalancerPolicies'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::PolicyNames.build(input[:policy_names], params, context: context + 'PolicyNames' + '.member') unless input[:policy_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PolicyNames
    class PolicyNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLoadBalancerPolicyTypes
    class DescribeLoadBalancerPolicyTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLoadBalancerPolicyTypes'
        params['Version'] = '2012-06-01'
        Builders::PolicyTypeNames.build(input[:policy_type_names], params, context: context + 'PolicyTypeNames' + '.member') unless input[:policy_type_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PolicyTypeNames
    class PolicyTypeNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLoadBalancers
    class DescribeLoadBalancers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLoadBalancers'
        params['Version'] = '2012-06-01'
        Builders::LoadBalancerNames.build(input[:load_balancer_names], params, context: context + 'LoadBalancerNames' + '.member') unless input[:load_balancer_names].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTags
    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTags'
        params['Version'] = '2012-06-01'
        Builders::LoadBalancerNamesMax20.build(input[:load_balancer_names], params, context: context + 'LoadBalancerNames' + '.member') unless input[:load_balancer_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LoadBalancerNamesMax20
    class LoadBalancerNamesMax20
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DetachLoadBalancerFromSubnets
    class DetachLoadBalancerFromSubnets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachLoadBalancerFromSubnets'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::Subnets.build(input[:subnets], params, context: context + 'Subnets' + '.member') unless input[:subnets].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableAvailabilityZonesForLoadBalancer
    class DisableAvailabilityZonesForLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableAvailabilityZonesForLoadBalancer'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::AvailabilityZones.build(input[:availability_zones], params, context: context + 'AvailabilityZones' + '.member') unless input[:availability_zones].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableAvailabilityZonesForLoadBalancer
    class EnableAvailabilityZonesForLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableAvailabilityZonesForLoadBalancer'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::AvailabilityZones.build(input[:availability_zones], params, context: context + 'AvailabilityZones' + '.member') unless input[:availability_zones].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyLoadBalancerAttributes
    class ModifyLoadBalancerAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyLoadBalancerAttributes'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::LoadBalancerAttributes.build(input[:load_balancer_attributes], params, context: context + 'LoadBalancerAttributes' + '.') unless input[:load_balancer_attributes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for LoadBalancerAttributes
    class LoadBalancerAttributes
      def self.build(input, params, context: nil)
        Builders::CrossZoneLoadBalancing.build(input[:cross_zone_load_balancing], params, context: context + 'CrossZoneLoadBalancing' + '.') unless input[:cross_zone_load_balancing].nil?
        Builders::AccessLog.build(input[:access_log], params, context: context + 'AccessLog' + '.') unless input[:access_log].nil?
        Builders::ConnectionDraining.build(input[:connection_draining], params, context: context + 'ConnectionDraining' + '.') unless input[:connection_draining].nil?
        Builders::ConnectionSettings.build(input[:connection_settings], params, context: context + 'ConnectionSettings' + '.') unless input[:connection_settings].nil?
        Builders::AdditionalAttributes.build(input[:additional_attributes], params, context: context + 'AdditionalAttributes' + '.member') unless input[:additional_attributes].nil?
      end
    end

    # List Builder for AdditionalAttributes
    class AdditionalAttributes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::AdditionalAttribute.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for AdditionalAttribute
    class AdditionalAttribute
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Structure Builder for ConnectionSettings
    class ConnectionSettings
      def self.build(input, params, context: nil)
        params[context + 'IdleTimeout'] = input[:idle_timeout].to_s unless input[:idle_timeout].nil?
      end
    end

    # Structure Builder for ConnectionDraining
    class ConnectionDraining
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'Timeout'] = input[:timeout].to_s unless input[:timeout].nil?
      end
    end

    # Structure Builder for AccessLog
    class AccessLog
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'S3BucketName'] = input[:s3_bucket_name].to_s unless input[:s3_bucket_name].nil?
        params[context + 'EmitInterval'] = input[:emit_interval].to_s unless input[:emit_interval].nil?
        params[context + 'S3BucketPrefix'] = input[:s3_bucket_prefix].to_s unless input[:s3_bucket_prefix].nil?
      end
    end

    # Structure Builder for CrossZoneLoadBalancing
    class CrossZoneLoadBalancing
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # Operation Builder for RegisterInstancesWithLoadBalancer
    class RegisterInstancesWithLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RegisterInstancesWithLoadBalancer'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        Builders::Instances.build(input[:instances], params, context: context + 'Instances' + '.member') unless input[:instances].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveTags
    class RemoveTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveTags'
        params['Version'] = '2012-06-01'
        Builders::LoadBalancerNames.build(input[:load_balancer_names], params, context: context + 'LoadBalancerNames' + '.member') unless input[:load_balancer_names].nil?
        Builders::TagKeyList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::TagKeyOnly.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for TagKeyOnly
    class TagKeyOnly
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
      end
    end

    # Operation Builder for SetLoadBalancerListenerSSLCertificate
    class SetLoadBalancerListenerSSLCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetLoadBalancerListenerSSLCertificate'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        params[context + 'LoadBalancerPort'] = input[:load_balancer_port].to_s unless input[:load_balancer_port].nil?
        params[context + 'SSLCertificateId'] = input[:ssl_certificate_id].to_s unless input[:ssl_certificate_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetLoadBalancerPoliciesForBackendServer
    class SetLoadBalancerPoliciesForBackendServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetLoadBalancerPoliciesForBackendServer'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        params[context + 'InstancePort'] = input[:instance_port].to_s unless input[:instance_port].nil?
        Builders::PolicyNames.build(input[:policy_names], params, context: context + 'PolicyNames' + '.member') unless input[:policy_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetLoadBalancerPoliciesOfListener
    class SetLoadBalancerPoliciesOfListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetLoadBalancerPoliciesOfListener'
        params['Version'] = '2012-06-01'
        params[context + 'LoadBalancerName'] = input[:load_balancer_name].to_s unless input[:load_balancer_name].nil?
        params[context + 'LoadBalancerPort'] = input[:load_balancer_port].to_s unless input[:load_balancer_port].nil?
        Builders::PolicyNames.build(input[:policy_names], params, context: context + 'PolicyNames' + '.member') unless input[:policy_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
