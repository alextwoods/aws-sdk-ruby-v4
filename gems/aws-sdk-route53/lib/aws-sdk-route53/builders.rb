# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53
  module Builders

    # Operation Builder for ActivateKeySigningKey
    class ActivateKeySigningKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/keysigningkey/%<HostedZoneId>s/%<Name>s/activate',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s),
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AssociateVPCWithHostedZone
    class AssociateVPCWithHostedZone
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/associatevpc',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('AssociateVPCWithHostedZoneRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Builders::VPC.build('VPC', input[:vpc]) unless input[:vpc].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Builder for VPC
    class VPC
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VPCRegion', input[:vpc_region].to_s) unless input[:vpc_region].nil?
        xml << Hearth::XML::Node.new('VPCId', input[:vpc_id].to_s) unless input[:vpc_id].nil?
        xml
      end
    end

    # Operation Builder for ChangeCidrCollection
    class ChangeCidrCollection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/cidrcollection/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ChangeCidrCollectionRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('CollectionVersion', input[:collection_version].to_s) unless input[:collection_version].nil?
        xml << Hearth::XML::Node.new('Changes', Builders::CidrCollectionChanges.build('member', input[:changes])) unless input[:changes].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # List Builder for CidrCollectionChanges
    class CidrCollectionChanges
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::CidrCollectionChange.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for CidrCollectionChange
    class CidrCollectionChange
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LocationName', input[:location_name].to_s) unless input[:location_name].nil?
        xml << Hearth::XML::Node.new('Action', input[:action].to_s) unless input[:action].nil?
        xml << Hearth::XML::Node.new('CidrList', Builders::CidrList.build('Cidr', input[:cidr_list])) unless input[:cidr_list].nil?
        xml
      end
    end

    # List Builder for CidrList
    class CidrList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for ChangeResourceRecordSets
    class ChangeResourceRecordSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/rrset',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ChangeResourceRecordSetsRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Builders::ChangeBatch.build('ChangeBatch', input[:change_batch]) unless input[:change_batch].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Builder for ChangeBatch
    class ChangeBatch
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Hearth::XML::Node.new('Changes', Builders::Changes.build('Change', input[:changes])) unless input[:changes].nil?
        xml
      end
    end

    # List Builder for Changes
    class Changes
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::Change.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Change
    class Change
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Action', input[:action].to_s) unless input[:action].nil?
        xml << Builders::ResourceRecordSet.build('ResourceRecordSet', input[:resource_record_set]) unless input[:resource_record_set].nil?
        xml
      end
    end

    # Structure Builder for ResourceRecordSet
    class ResourceRecordSet
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Hearth::XML::Node.new('Type', input[:type].to_s) unless input[:type].nil?
        xml << Hearth::XML::Node.new('SetIdentifier', input[:set_identifier].to_s) unless input[:set_identifier].nil?
        xml << Hearth::XML::Node.new('Weight', input[:weight].to_s) unless input[:weight].nil?
        xml << Hearth::XML::Node.new('Region', input[:region].to_s) unless input[:region].nil?
        xml << Builders::GeoLocation.build('GeoLocation', input[:geo_location]) unless input[:geo_location].nil?
        xml << Hearth::XML::Node.new('Failover', input[:failover].to_s) unless input[:failover].nil?
        xml << Hearth::XML::Node.new('MultiValueAnswer', input[:multi_value_answer].to_s) unless input[:multi_value_answer].nil?
        xml << Hearth::XML::Node.new('TTL', input[:ttl].to_s) unless input[:ttl].nil?
        xml << Hearth::XML::Node.new('ResourceRecords', Builders::ResourceRecords.build('ResourceRecord', input[:resource_records])) unless input[:resource_records].nil?
        xml << Builders::AliasTarget.build('AliasTarget', input[:alias_target]) unless input[:alias_target].nil?
        xml << Hearth::XML::Node.new('HealthCheckId', input[:health_check_id].to_s) unless input[:health_check_id].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyInstanceId', input[:traffic_policy_instance_id].to_s) unless input[:traffic_policy_instance_id].nil?
        xml << Builders::CidrRoutingConfig.build('CidrRoutingConfig', input[:cidr_routing_config]) unless input[:cidr_routing_config].nil?
        xml
      end
    end

    # Structure Builder for CidrRoutingConfig
    class CidrRoutingConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CollectionId', input[:collection_id].to_s) unless input[:collection_id].nil?
        xml << Hearth::XML::Node.new('LocationName', input[:location_name].to_s) unless input[:location_name].nil?
        xml
      end
    end

    # Structure Builder for AliasTarget
    class AliasTarget
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HostedZoneId', input[:hosted_zone_id].to_s) unless input[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('DNSName', input[:dns_name].to_s) unless input[:dns_name].nil?
        xml << Hearth::XML::Node.new('EvaluateTargetHealth', input[:evaluate_target_health].to_s) unless input[:evaluate_target_health].nil?
        xml
      end
    end

    # List Builder for ResourceRecords
    class ResourceRecords
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::ResourceRecord.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ResourceRecord
    class ResourceRecord
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Value', input[:value].to_s) unless input[:value].nil?
        xml
      end
    end

    # Structure Builder for GeoLocation
    class GeoLocation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ContinentCode', input[:continent_code].to_s) unless input[:continent_code].nil?
        xml << Hearth::XML::Node.new('CountryCode', input[:country_code].to_s) unless input[:country_code].nil?
        xml << Hearth::XML::Node.new('SubdivisionCode', input[:subdivision_code].to_s) unless input[:subdivision_code].nil?
        xml
      end
    end

    # Operation Builder for ChangeTagsForResource
    class ChangeTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_type cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/tags/%<ResourceType>s/%<ResourceId>s',
            ResourceType: Hearth::HTTP.uri_escape(input[:resource_type].to_s),
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ChangeTagsForResourceRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('AddTags', Builders::TagList.build('Tag', input[:add_tags])) unless input[:add_tags].nil?
        xml << Hearth::XML::Node.new('RemoveTagKeys', Builders::TagKeyList.build('Key', input[:remove_tag_keys])) unless input[:remove_tag_keys].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::Tag.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', input[:key].to_s) unless input[:key].nil?
        xml << Hearth::XML::Node.new('Value', input[:value].to_s) unless input[:value].nil?
        xml
      end
    end

    # Operation Builder for CreateCidrCollection
    class CreateCidrCollection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2013-04-01/cidrcollection')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateCidrCollectionRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for CreateHealthCheck
    class CreateHealthCheck
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2013-04-01/healthcheck')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateHealthCheckRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Builders::HealthCheckConfig.build('HealthCheckConfig', input[:health_check_config]) unless input[:health_check_config].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Builder for HealthCheckConfig
    class HealthCheckConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IPAddress', input[:ip_address].to_s) unless input[:ip_address].nil?
        xml << Hearth::XML::Node.new('Port', input[:port].to_s) unless input[:port].nil?
        xml << Hearth::XML::Node.new('Type', input[:type].to_s) unless input[:type].nil?
        xml << Hearth::XML::Node.new('ResourcePath', input[:resource_path].to_s) unless input[:resource_path].nil?
        xml << Hearth::XML::Node.new('FullyQualifiedDomainName', input[:fully_qualified_domain_name].to_s) unless input[:fully_qualified_domain_name].nil?
        xml << Hearth::XML::Node.new('SearchString', input[:search_string].to_s) unless input[:search_string].nil?
        xml << Hearth::XML::Node.new('RequestInterval', input[:request_interval].to_s) unless input[:request_interval].nil?
        xml << Hearth::XML::Node.new('FailureThreshold', input[:failure_threshold].to_s) unless input[:failure_threshold].nil?
        xml << Hearth::XML::Node.new('MeasureLatency', input[:measure_latency].to_s) unless input[:measure_latency].nil?
        xml << Hearth::XML::Node.new('Inverted', input[:inverted].to_s) unless input[:inverted].nil?
        xml << Hearth::XML::Node.new('Disabled', input[:disabled].to_s) unless input[:disabled].nil?
        xml << Hearth::XML::Node.new('HealthThreshold', input[:health_threshold].to_s) unless input[:health_threshold].nil?
        xml << Hearth::XML::Node.new('ChildHealthChecks', Builders::ChildHealthCheckList.build('ChildHealthCheck', input[:child_health_checks])) unless input[:child_health_checks].nil?
        xml << Hearth::XML::Node.new('EnableSNI', input[:enable_sni].to_s) unless input[:enable_sni].nil?
        xml << Hearth::XML::Node.new('Regions', Builders::HealthCheckRegionList.build('Region', input[:regions])) unless input[:regions].nil?
        xml << Builders::AlarmIdentifier.build('AlarmIdentifier', input[:alarm_identifier]) unless input[:alarm_identifier].nil?
        xml << Hearth::XML::Node.new('InsufficientDataHealthStatus', input[:insufficient_data_health_status].to_s) unless input[:insufficient_data_health_status].nil?
        xml << Hearth::XML::Node.new('RoutingControlArn', input[:routing_control_arn].to_s) unless input[:routing_control_arn].nil?
        xml
      end
    end

    # Structure Builder for AlarmIdentifier
    class AlarmIdentifier
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Region', input[:region].to_s) unless input[:region].nil?
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml
      end
    end

    # List Builder for HealthCheckRegionList
    class HealthCheckRegionList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Builder for ChildHealthCheckList
    class ChildHealthCheckList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for CreateHostedZone
    class CreateHostedZone
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2013-04-01/hostedzone')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateHostedZoneRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Builders::VPC.build('VPC', input[:vpc]) unless input[:vpc].nil?
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Builders::HostedZoneConfig.build('HostedZoneConfig', input[:hosted_zone_config]) unless input[:hosted_zone_config].nil?
        xml << Hearth::XML::Node.new('DelegationSetId', input[:delegation_set_id].to_s) unless input[:delegation_set_id].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Builder for HostedZoneConfig
    class HostedZoneConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Hearth::XML::Node.new('PrivateZone', input[:private_zone].to_s) unless input[:private_zone].nil?
        xml
      end
    end

    # Operation Builder for CreateKeySigningKey
    class CreateKeySigningKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2013-04-01/keysigningkey')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateKeySigningKeyRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Hearth::XML::Node.new('HostedZoneId', input[:hosted_zone_id].to_s) unless input[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('KeyManagementServiceArn', input[:key_management_service_arn].to_s) unless input[:key_management_service_arn].nil?
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for CreateQueryLoggingConfig
    class CreateQueryLoggingConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2013-04-01/queryloggingconfig')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateQueryLoggingConfigRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HostedZoneId', input[:hosted_zone_id].to_s) unless input[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('CloudWatchLogsLogGroupArn', input[:cloud_watch_logs_log_group_arn].to_s) unless input[:cloud_watch_logs_log_group_arn].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for CreateReusableDelegationSet
    class CreateReusableDelegationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2013-04-01/delegationset')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateReusableDelegationSetRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Hearth::XML::Node.new('HostedZoneId', input[:hosted_zone_id].to_s) unless input[:hosted_zone_id].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for CreateTrafficPolicy
    class CreateTrafficPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2013-04-01/trafficpolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateTrafficPolicyRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Hearth::XML::Node.new('Document', input[:document].to_s) unless input[:document].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for CreateTrafficPolicyInstance
    class CreateTrafficPolicyInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2013-04-01/trafficpolicyinstance')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateTrafficPolicyInstanceRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HostedZoneId', input[:hosted_zone_id].to_s) unless input[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Hearth::XML::Node.new('TTL', input[:ttl].to_s) unless input[:ttl].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyId', input[:traffic_policy_id].to_s) unless input[:traffic_policy_id].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyVersion', input[:traffic_policy_version].to_s) unless input[:traffic_policy_version].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for CreateTrafficPolicyVersion
    class CreateTrafficPolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/trafficpolicy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateTrafficPolicyVersionRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('Document', input[:document].to_s) unless input[:document].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for CreateVPCAssociationAuthorization
    class CreateVPCAssociationAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/authorizevpcassociation',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateVPCAssociationAuthorizationRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Builders::VPC.build('VPC', input[:vpc]) unless input[:vpc].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for DeactivateKeySigningKey
    class DeactivateKeySigningKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/keysigningkey/%<HostedZoneId>s/%<Name>s/deactivate',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s),
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCidrCollection
    class DeleteCidrCollection
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/cidrcollection/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteHealthCheck
    class DeleteHealthCheck
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:health_check_id].to_s.empty?
          raise ArgumentError, "HTTP label :health_check_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/healthcheck/%<HealthCheckId>s',
            HealthCheckId: Hearth::HTTP.uri_escape(input[:health_check_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteHostedZone
    class DeleteHostedZone
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteKeySigningKey
    class DeleteKeySigningKey
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/keysigningkey/%<HostedZoneId>s/%<Name>s',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s),
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteQueryLoggingConfig
    class DeleteQueryLoggingConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/queryloggingconfig/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteReusableDelegationSet
    class DeleteReusableDelegationSet
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/delegationset/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTrafficPolicy
    class DeleteTrafficPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/trafficpolicy/%<Id>s/%<Version>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s),
            Version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTrafficPolicyInstance
    class DeleteTrafficPolicyInstance
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/trafficpolicyinstance/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVPCAssociationAuthorization
    class DeleteVPCAssociationAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/deauthorizevpcassociation',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DeleteVPCAssociationAuthorizationRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Builders::VPC.build('VPC', input[:vpc]) unless input[:vpc].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for DisableHostedZoneDNSSEC
    class DisableHostedZoneDNSSEC
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/disable-dnssec',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateVPCFromHostedZone
    class DisassociateVPCFromHostedZone
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/disassociatevpc',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DisassociateVPCFromHostedZoneRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Builders::VPC.build('VPC', input[:vpc]) unless input[:vpc].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for EnableHostedZoneDNSSEC
    class EnableHostedZoneDNSSEC
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/enable-dnssec',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAccountLimit
    class GetAccountLimit
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:type].to_s.empty?
          raise ArgumentError, "HTTP label :type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/accountlimit/%<Type>s',
            Type: Hearth::HTTP.uri_escape(input[:type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetChange
    class GetChange
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/change/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCheckerIpRanges
    class GetCheckerIpRanges
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/checkeripranges')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDNSSEC
    class GetDNSSEC
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/dnssec',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGeoLocation
    class GetGeoLocation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/geolocation')
        params = Hearth::Query::ParamList.new
        params['continentcode'] = input[:continent_code].to_s unless input[:continent_code].nil?
        params['countrycode'] = input[:country_code].to_s unless input[:country_code].nil?
        params['subdivisioncode'] = input[:subdivision_code].to_s unless input[:subdivision_code].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetHealthCheck
    class GetHealthCheck
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:health_check_id].to_s.empty?
          raise ArgumentError, "HTTP label :health_check_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/healthcheck/%<HealthCheckId>s',
            HealthCheckId: Hearth::HTTP.uri_escape(input[:health_check_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetHealthCheckCount
    class GetHealthCheckCount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/healthcheckcount')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetHealthCheckLastFailureReason
    class GetHealthCheckLastFailureReason
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:health_check_id].to_s.empty?
          raise ArgumentError, "HTTP label :health_check_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/healthcheck/%<HealthCheckId>s/lastfailurereason',
            HealthCheckId: Hearth::HTTP.uri_escape(input[:health_check_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetHealthCheckStatus
    class GetHealthCheckStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:health_check_id].to_s.empty?
          raise ArgumentError, "HTTP label :health_check_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/healthcheck/%<HealthCheckId>s/status',
            HealthCheckId: Hearth::HTTP.uri_escape(input[:health_check_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetHostedZone
    class GetHostedZone
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetHostedZoneCount
    class GetHostedZoneCount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/hostedzonecount')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetHostedZoneLimit
    class GetHostedZoneLimit
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:type].to_s.empty?
          raise ArgumentError, "HTTP label :type cannot be nil or empty."
        end
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzonelimit/%<HostedZoneId>s/%<Type>s',
            Type: Hearth::HTTP.uri_escape(input[:type].to_s),
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetQueryLoggingConfig
    class GetQueryLoggingConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/queryloggingconfig/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetReusableDelegationSet
    class GetReusableDelegationSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/delegationset/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetReusableDelegationSetLimit
    class GetReusableDelegationSetLimit
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:type].to_s.empty?
          raise ArgumentError, "HTTP label :type cannot be nil or empty."
        end
        if input[:delegation_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :delegation_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/reusabledelegationsetlimit/%<DelegationSetId>s/%<Type>s',
            Type: Hearth::HTTP.uri_escape(input[:type].to_s),
            DelegationSetId: Hearth::HTTP.uri_escape(input[:delegation_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTrafficPolicy
    class GetTrafficPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/trafficpolicy/%<Id>s/%<Version>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s),
            Version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTrafficPolicyInstance
    class GetTrafficPolicyInstance
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/trafficpolicyinstance/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTrafficPolicyInstanceCount
    class GetTrafficPolicyInstanceCount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/trafficpolicyinstancecount')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCidrBlocks
    class ListCidrBlocks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:collection_id].to_s.empty?
          raise ArgumentError, "HTTP label :collection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/cidrcollection/%<CollectionId>s/cidrblocks',
            CollectionId: Hearth::HTTP.uri_escape(input[:collection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['location'] = input[:location_name].to_s unless input[:location_name].nil?
        params['nexttoken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxresults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCidrCollections
    class ListCidrCollections
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/cidrcollection')
        params = Hearth::Query::ParamList.new
        params['nexttoken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxresults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCidrLocations
    class ListCidrLocations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:collection_id].to_s.empty?
          raise ArgumentError, "HTTP label :collection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/cidrcollection/%<CollectionId>s',
            CollectionId: Hearth::HTTP.uri_escape(input[:collection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nexttoken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxresults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGeoLocations
    class ListGeoLocations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/geolocations')
        params = Hearth::Query::ParamList.new
        params['startcontinentcode'] = input[:start_continent_code].to_s unless input[:start_continent_code].nil?
        params['startcountrycode'] = input[:start_country_code].to_s unless input[:start_country_code].nil?
        params['startsubdivisioncode'] = input[:start_subdivision_code].to_s unless input[:start_subdivision_code].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListHealthChecks
    class ListHealthChecks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/healthcheck')
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListHostedZones
    class ListHostedZones
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/hostedzone')
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['delegationsetid'] = input[:delegation_set_id].to_s unless input[:delegation_set_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListHostedZonesByName
    class ListHostedZonesByName
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/hostedzonesbyname')
        params = Hearth::Query::ParamList.new
        params['dnsname'] = input[:dns_name].to_s unless input[:dns_name].nil?
        params['hostedzoneid'] = input[:hosted_zone_id].to_s unless input[:hosted_zone_id].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListHostedZonesByVPC
    class ListHostedZonesByVPC
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/hostedzonesbyvpc')
        params = Hearth::Query::ParamList.new
        params['vpcid'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params['vpcregion'] = input[:vpc_region].to_s unless input[:vpc_region].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['nexttoken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListQueryLoggingConfigs
    class ListQueryLoggingConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/queryloggingconfig')
        params = Hearth::Query::ParamList.new
        params['hostedzoneid'] = input[:hosted_zone_id].to_s unless input[:hosted_zone_id].nil?
        params['nexttoken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxresults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListResourceRecordSets
    class ListResourceRecordSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/rrset',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['name'] = input[:start_record_name].to_s unless input[:start_record_name].nil?
        params['type'] = input[:start_record_type].to_s unless input[:start_record_type].nil?
        params['identifier'] = input[:start_record_identifier].to_s unless input[:start_record_identifier].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListReusableDelegationSets
    class ListReusableDelegationSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/delegationset')
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_type cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/tags/%<ResourceType>s/%<ResourceId>s',
            ResourceType: Hearth::HTTP.uri_escape(input[:resource_type].to_s),
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResources
    class ListTagsForResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/tags/%<ResourceType>s',
            ResourceType: Hearth::HTTP.uri_escape(input[:resource_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListTagsForResourcesRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('ResourceIds', Builders::TagResourceIdList.build('ResourceId', input[:resource_ids])) unless input[:resource_ids].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # List Builder for TagResourceIdList
    class TagResourceIdList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for ListTrafficPolicies
    class ListTrafficPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/trafficpolicies')
        params = Hearth::Query::ParamList.new
        params['trafficpolicyid'] = input[:traffic_policy_id_marker].to_s unless input[:traffic_policy_id_marker].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTrafficPolicyInstances
    class ListTrafficPolicyInstances
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/trafficpolicyinstances')
        params = Hearth::Query::ParamList.new
        params['hostedzoneid'] = input[:hosted_zone_id_marker].to_s unless input[:hosted_zone_id_marker].nil?
        params['trafficpolicyinstancename'] = input[:traffic_policy_instance_name_marker].to_s unless input[:traffic_policy_instance_name_marker].nil?
        params['trafficpolicyinstancetype'] = input[:traffic_policy_instance_type_marker].to_s unless input[:traffic_policy_instance_type_marker].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTrafficPolicyInstancesByHostedZone
    class ListTrafficPolicyInstancesByHostedZone
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/trafficpolicyinstances/hostedzone')
        params = Hearth::Query::ParamList.new
        params['id'] = input[:hosted_zone_id].to_s unless input[:hosted_zone_id].nil?
        params['trafficpolicyinstancename'] = input[:traffic_policy_instance_name_marker].to_s unless input[:traffic_policy_instance_name_marker].nil?
        params['trafficpolicyinstancetype'] = input[:traffic_policy_instance_type_marker].to_s unless input[:traffic_policy_instance_type_marker].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTrafficPolicyInstancesByPolicy
    class ListTrafficPolicyInstancesByPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/trafficpolicyinstances/trafficpolicy')
        params = Hearth::Query::ParamList.new
        params['id'] = input[:traffic_policy_id].to_s unless input[:traffic_policy_id].nil?
        params['version'] = input[:traffic_policy_version].to_s unless input[:traffic_policy_version].nil?
        params['hostedzoneid'] = input[:hosted_zone_id_marker].to_s unless input[:hosted_zone_id_marker].nil?
        params['trafficpolicyinstancename'] = input[:traffic_policy_instance_name_marker].to_s unless input[:traffic_policy_instance_name_marker].nil?
        params['trafficpolicyinstancetype'] = input[:traffic_policy_instance_type_marker].to_s unless input[:traffic_policy_instance_type_marker].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTrafficPolicyVersions
    class ListTrafficPolicyVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/trafficpolicies/%<Id>s/versions',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['trafficpolicyversion'] = input[:traffic_policy_version_marker].to_s unless input[:traffic_policy_version_marker].nil?
        params['maxitems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVPCAssociationAuthorizations
    class ListVPCAssociationAuthorizations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:hosted_zone_id].to_s.empty?
          raise ArgumentError, "HTTP label :hosted_zone_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<HostedZoneId>s/authorizevpcassociation',
            HostedZoneId: Hearth::HTTP.uri_escape(input[:hosted_zone_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nexttoken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxresults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TestDNSAnswer
    class TestDNSAnswer
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2013-04-01/testdnsanswer')
        params = Hearth::Query::ParamList.new
        params['hostedzoneid'] = input[:hosted_zone_id].to_s unless input[:hosted_zone_id].nil?
        params['recordname'] = input[:record_name].to_s unless input[:record_name].nil?
        params['recordtype'] = input[:record_type].to_s unless input[:record_type].nil?
        params['resolverip'] = input[:resolver_ip].to_s unless input[:resolver_ip].nil?
        params['edns0clientsubnetip'] = input[:edns0_client_subnet_ip].to_s unless input[:edns0_client_subnet_ip].nil?
        params['edns0clientsubnetmask'] = input[:edns0_client_subnet_mask].to_s unless input[:edns0_client_subnet_mask].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateHealthCheck
    class UpdateHealthCheck
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:health_check_id].to_s.empty?
          raise ArgumentError, "HTTP label :health_check_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/healthcheck/%<HealthCheckId>s',
            HealthCheckId: Hearth::HTTP.uri_escape(input[:health_check_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateHealthCheckRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HealthCheckVersion', input[:health_check_version].to_s) unless input[:health_check_version].nil?
        xml << Hearth::XML::Node.new('IPAddress', input[:ip_address].to_s) unless input[:ip_address].nil?
        xml << Hearth::XML::Node.new('Port', input[:port].to_s) unless input[:port].nil?
        xml << Hearth::XML::Node.new('ResourcePath', input[:resource_path].to_s) unless input[:resource_path].nil?
        xml << Hearth::XML::Node.new('FullyQualifiedDomainName', input[:fully_qualified_domain_name].to_s) unless input[:fully_qualified_domain_name].nil?
        xml << Hearth::XML::Node.new('SearchString', input[:search_string].to_s) unless input[:search_string].nil?
        xml << Hearth::XML::Node.new('FailureThreshold', input[:failure_threshold].to_s) unless input[:failure_threshold].nil?
        xml << Hearth::XML::Node.new('Inverted', input[:inverted].to_s) unless input[:inverted].nil?
        xml << Hearth::XML::Node.new('Disabled', input[:disabled].to_s) unless input[:disabled].nil?
        xml << Hearth::XML::Node.new('HealthThreshold', input[:health_threshold].to_s) unless input[:health_threshold].nil?
        xml << Hearth::XML::Node.new('ChildHealthChecks', Builders::ChildHealthCheckList.build('ChildHealthCheck', input[:child_health_checks])) unless input[:child_health_checks].nil?
        xml << Hearth::XML::Node.new('EnableSNI', input[:enable_sni].to_s) unless input[:enable_sni].nil?
        xml << Hearth::XML::Node.new('Regions', Builders::HealthCheckRegionList.build('Region', input[:regions])) unless input[:regions].nil?
        xml << Builders::AlarmIdentifier.build('AlarmIdentifier', input[:alarm_identifier]) unless input[:alarm_identifier].nil?
        xml << Hearth::XML::Node.new('InsufficientDataHealthStatus', input[:insufficient_data_health_status].to_s) unless input[:insufficient_data_health_status].nil?
        xml << Hearth::XML::Node.new('ResetElements', Builders::ResettableElementNameList.build('ResettableElementName', input[:reset_elements])) unless input[:reset_elements].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # List Builder for ResettableElementNameList
    class ResettableElementNameList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for UpdateHostedZoneComment
    class UpdateHostedZoneComment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/hostedzone/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateHostedZoneCommentRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for UpdateTrafficPolicyComment
    class UpdateTrafficPolicyComment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/trafficpolicy/%<Id>s/%<Version>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s),
            Version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateTrafficPolicyCommentRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for UpdateTrafficPolicyInstance
    class UpdateTrafficPolicyInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2013-04-01/trafficpolicyinstance/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateTrafficPolicyInstanceRequest')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('TTL', input[:ttl].to_s) unless input[:ttl].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyId', input[:traffic_policy_id].to_s) unless input[:traffic_policy_id].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyVersion', input[:traffic_policy_version].to_s) unless input[:traffic_policy_version].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end
  end
end
