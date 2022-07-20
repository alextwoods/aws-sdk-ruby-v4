# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Route53
  module Stubs

    # Operation Stubber for ActivateKeySigningKey
    class ActivateKeySigningKey
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ActivateKeySigningKeyResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ChangeInfo
    class ChangeInfo
      def self.default(visited=[])
        return nil if visited.include?('ChangeInfo')
        visited = visited + ['ChangeInfo']
        {
          id: 'id',
          status: 'status',
          submitted_at: Time.now,
          comment: 'comment',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ChangeInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('SubmittedAt', Hearth::TimeHelper.to_date_time(stub[:submitted_at])) unless stub[:submitted_at].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml
      end
    end

    # Operation Stubber for AssociateVPCWithHostedZone
    class AssociateVPCWithHostedZone
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('AssociateVPCWithHostedZoneResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ChangeCidrCollection
    class ChangeCidrCollection
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ChangeCidrCollectionResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ChangeResourceRecordSets
    class ChangeResourceRecordSets
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ChangeResourceRecordSetsResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ChangeTagsForResource
    class ChangeTagsForResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCidrCollection
    class CreateCidrCollection
      def self.default(visited=[])
        {
          collection: CidrCollection.default(visited),
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateCidrCollectionResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::CidrCollection.stub('Collection', stub[:collection]) unless stub[:collection].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for CidrCollection
    class CidrCollection
      def self.default(visited=[])
        return nil if visited.include?('CidrCollection')
        visited = visited + ['CidrCollection']
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          version: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CidrCollection.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Version', stub[:version].to_s) unless stub[:version].nil?
        xml
      end
    end

    # Operation Stubber for CreateHealthCheck
    class CreateHealthCheck
      def self.default(visited=[])
        {
          health_check: HealthCheck.default(visited),
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateHealthCheckResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::HealthCheck.stub('HealthCheck', stub[:health_check]) unless stub[:health_check].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for HealthCheck
    class HealthCheck
      def self.default(visited=[])
        return nil if visited.include?('HealthCheck')
        visited = visited + ['HealthCheck']
        {
          id: 'id',
          caller_reference: 'caller_reference',
          linked_service: LinkedService.default(visited),
          health_check_config: HealthCheckConfig.default(visited),
          health_check_version: 1,
          cloud_watch_alarm_configuration: CloudWatchAlarmConfiguration.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HealthCheck.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml << Stubs::LinkedService.stub('LinkedService', stub[:linked_service]) unless stub[:linked_service].nil?
        xml << Stubs::HealthCheckConfig.stub('HealthCheckConfig', stub[:health_check_config]) unless stub[:health_check_config].nil?
        xml << Hearth::XML::Node.new('HealthCheckVersion', stub[:health_check_version].to_s) unless stub[:health_check_version].nil?
        xml << Stubs::CloudWatchAlarmConfiguration.stub('CloudWatchAlarmConfiguration', stub[:cloud_watch_alarm_configuration]) unless stub[:cloud_watch_alarm_configuration].nil?
        xml
      end
    end

    # Structure Stubber for CloudWatchAlarmConfiguration
    class CloudWatchAlarmConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchAlarmConfiguration')
        visited = visited + ['CloudWatchAlarmConfiguration']
        {
          evaluation_periods: 1,
          threshold: 1.0,
          comparison_operator: 'comparison_operator',
          period: 1,
          metric_name: 'metric_name',
          namespace: 'namespace',
          statistic: 'statistic',
          dimensions: DimensionList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CloudWatchAlarmConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EvaluationPeriods', stub[:evaluation_periods].to_s) unless stub[:evaluation_periods].nil?
        xml << Hearth::XML::Node.new('Threshold', Hearth::NumberHelper.serialize(stub[:threshold]).to_s) unless stub[:threshold].nil?
        xml << Hearth::XML::Node.new('ComparisonOperator', stub[:comparison_operator].to_s) unless stub[:comparison_operator].nil?
        xml << Hearth::XML::Node.new('Period', stub[:period].to_s) unless stub[:period].nil?
        xml << Hearth::XML::Node.new('MetricName', stub[:metric_name].to_s) unless stub[:metric_name].nil?
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('Statistic', stub[:statistic].to_s) unless stub[:statistic].nil?
        xml << Hearth::XML::Node.new('Dimensions', Stubs::DimensionList.stub('Dimension', stub[:dimensions])) unless stub[:dimensions].nil?
        xml
      end
    end

    # List Stubber for DimensionList
    class DimensionList
      def self.default(visited=[])
        return nil if visited.include?('DimensionList')
        visited = visited + ['DimensionList']
        [
          Dimension.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Dimension.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Dimension
    class Dimension
      def self.default(visited=[])
        return nil if visited.include?('Dimension')
        visited = visited + ['Dimension']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Dimension.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Structure Stubber for HealthCheckConfig
    class HealthCheckConfig
      def self.default(visited=[])
        return nil if visited.include?('HealthCheckConfig')
        visited = visited + ['HealthCheckConfig']
        {
          ip_address: 'ip_address',
          port: 1,
          type: 'type',
          resource_path: 'resource_path',
          fully_qualified_domain_name: 'fully_qualified_domain_name',
          search_string: 'search_string',
          request_interval: 1,
          failure_threshold: 1,
          measure_latency: false,
          inverted: false,
          disabled: false,
          health_threshold: 1,
          child_health_checks: ChildHealthCheckList.default(visited),
          enable_sni: false,
          regions: HealthCheckRegionList.default(visited),
          alarm_identifier: AlarmIdentifier.default(visited),
          insufficient_data_health_status: 'insufficient_data_health_status',
          routing_control_arn: 'routing_control_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HealthCheckConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IPAddress', stub[:ip_address].to_s) unless stub[:ip_address].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('ResourcePath', stub[:resource_path].to_s) unless stub[:resource_path].nil?
        xml << Hearth::XML::Node.new('FullyQualifiedDomainName', stub[:fully_qualified_domain_name].to_s) unless stub[:fully_qualified_domain_name].nil?
        xml << Hearth::XML::Node.new('SearchString', stub[:search_string].to_s) unless stub[:search_string].nil?
        xml << Hearth::XML::Node.new('RequestInterval', stub[:request_interval].to_s) unless stub[:request_interval].nil?
        xml << Hearth::XML::Node.new('FailureThreshold', stub[:failure_threshold].to_s) unless stub[:failure_threshold].nil?
        xml << Hearth::XML::Node.new('MeasureLatency', stub[:measure_latency].to_s) unless stub[:measure_latency].nil?
        xml << Hearth::XML::Node.new('Inverted', stub[:inverted].to_s) unless stub[:inverted].nil?
        xml << Hearth::XML::Node.new('Disabled', stub[:disabled].to_s) unless stub[:disabled].nil?
        xml << Hearth::XML::Node.new('HealthThreshold', stub[:health_threshold].to_s) unless stub[:health_threshold].nil?
        xml << Hearth::XML::Node.new('ChildHealthChecks', Stubs::ChildHealthCheckList.stub('ChildHealthCheck', stub[:child_health_checks])) unless stub[:child_health_checks].nil?
        xml << Hearth::XML::Node.new('EnableSNI', stub[:enable_sni].to_s) unless stub[:enable_sni].nil?
        xml << Hearth::XML::Node.new('Regions', Stubs::HealthCheckRegionList.stub('Region', stub[:regions])) unless stub[:regions].nil?
        xml << Stubs::AlarmIdentifier.stub('AlarmIdentifier', stub[:alarm_identifier]) unless stub[:alarm_identifier].nil?
        xml << Hearth::XML::Node.new('InsufficientDataHealthStatus', stub[:insufficient_data_health_status].to_s) unless stub[:insufficient_data_health_status].nil?
        xml << Hearth::XML::Node.new('RoutingControlArn', stub[:routing_control_arn].to_s) unless stub[:routing_control_arn].nil?
        xml
      end
    end

    # Structure Stubber for AlarmIdentifier
    class AlarmIdentifier
      def self.default(visited=[])
        return nil if visited.include?('AlarmIdentifier')
        visited = visited + ['AlarmIdentifier']
        {
          region: 'region',
          name: 'name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AlarmIdentifier.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml
      end
    end

    # List Stubber for HealthCheckRegionList
    class HealthCheckRegionList
      def self.default(visited=[])
        return nil if visited.include?('HealthCheckRegionList')
        visited = visited + ['HealthCheckRegionList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for ChildHealthCheckList
    class ChildHealthCheckList
      def self.default(visited=[])
        return nil if visited.include?('ChildHealthCheckList')
        visited = visited + ['ChildHealthCheckList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LinkedService
    class LinkedService
      def self.default(visited=[])
        return nil if visited.include?('LinkedService')
        visited = visited + ['LinkedService']
        {
          service_principal: 'service_principal',
          description: 'description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LinkedService.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ServicePrincipal', stub[:service_principal].to_s) unless stub[:service_principal].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml
      end
    end

    # Operation Stubber for CreateHostedZone
    class CreateHostedZone
      def self.default(visited=[])
        {
          hosted_zone: HostedZone.default(visited),
          change_info: ChangeInfo.default(visited),
          delegation_set: DelegationSet.default(visited),
          vpc: VPC.default(visited),
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateHostedZoneResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::HostedZone.stub('HostedZone', stub[:hosted_zone]) unless stub[:hosted_zone].nil?
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        xml << Stubs::DelegationSet.stub('DelegationSet', stub[:delegation_set]) unless stub[:delegation_set].nil?
        xml << Stubs::VPC.stub('VPC', stub[:vpc]) unless stub[:vpc].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for VPC
    class VPC
      def self.default(visited=[])
        return nil if visited.include?('VPC')
        visited = visited + ['VPC']
        {
          vpc_region: 'vpc_region',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::VPC.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VPCRegion', stub[:vpc_region].to_s) unless stub[:vpc_region].nil?
        xml << Hearth::XML::Node.new('VPCId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml
      end
    end

    # Structure Stubber for DelegationSet
    class DelegationSet
      def self.default(visited=[])
        return nil if visited.include?('DelegationSet')
        visited = visited + ['DelegationSet']
        {
          id: 'id',
          caller_reference: 'caller_reference',
          name_servers: DelegationSetNameServers.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DelegationSet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml << Hearth::XML::Node.new('NameServers', Stubs::DelegationSetNameServers.stub('NameServer', stub[:name_servers])) unless stub[:name_servers].nil?
        xml
      end
    end

    # List Stubber for DelegationSetNameServers
    class DelegationSetNameServers
      def self.default(visited=[])
        return nil if visited.include?('DelegationSetNameServers')
        visited = visited + ['DelegationSetNameServers']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for HostedZone
    class HostedZone
      def self.default(visited=[])
        return nil if visited.include?('HostedZone')
        visited = visited + ['HostedZone']
        {
          id: 'id',
          name: 'name',
          caller_reference: 'caller_reference',
          config: HostedZoneConfig.default(visited),
          resource_record_set_count: 1,
          linked_service: LinkedService.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HostedZone.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml << Stubs::HostedZoneConfig.stub('Config', stub[:config]) unless stub[:config].nil?
        xml << Hearth::XML::Node.new('ResourceRecordSetCount', stub[:resource_record_set_count].to_s) unless stub[:resource_record_set_count].nil?
        xml << Stubs::LinkedService.stub('LinkedService', stub[:linked_service]) unless stub[:linked_service].nil?
        xml
      end
    end

    # Structure Stubber for HostedZoneConfig
    class HostedZoneConfig
      def self.default(visited=[])
        return nil if visited.include?('HostedZoneConfig')
        visited = visited + ['HostedZoneConfig']
        {
          comment: 'comment',
          private_zone: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HostedZoneConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Hearth::XML::Node.new('PrivateZone', stub[:private_zone].to_s) unless stub[:private_zone].nil?
        xml
      end
    end

    # Operation Stubber for CreateKeySigningKey
    class CreateKeySigningKey
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
          key_signing_key: KeySigningKey.default(visited),
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateKeySigningKeyResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        xml << Stubs::KeySigningKey.stub('KeySigningKey', stub[:key_signing_key]) unless stub[:key_signing_key].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for KeySigningKey
    class KeySigningKey
      def self.default(visited=[])
        return nil if visited.include?('KeySigningKey')
        visited = visited + ['KeySigningKey']
        {
          name: 'name',
          kms_arn: 'kms_arn',
          flag: 1,
          signing_algorithm_mnemonic: 'signing_algorithm_mnemonic',
          signing_algorithm_type: 1,
          digest_algorithm_mnemonic: 'digest_algorithm_mnemonic',
          digest_algorithm_type: 1,
          key_tag: 1,
          digest_value: 'digest_value',
          public_key: 'public_key',
          ds_record: 'ds_record',
          dnskey_record: 'dnskey_record',
          status: 'status',
          status_message: 'status_message',
          created_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KeySigningKey.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('KmsArn', stub[:kms_arn].to_s) unless stub[:kms_arn].nil?
        xml << Hearth::XML::Node.new('Flag', stub[:flag].to_s) unless stub[:flag].nil?
        xml << Hearth::XML::Node.new('SigningAlgorithmMnemonic', stub[:signing_algorithm_mnemonic].to_s) unless stub[:signing_algorithm_mnemonic].nil?
        xml << Hearth::XML::Node.new('SigningAlgorithmType', stub[:signing_algorithm_type].to_s) unless stub[:signing_algorithm_type].nil?
        xml << Hearth::XML::Node.new('DigestAlgorithmMnemonic', stub[:digest_algorithm_mnemonic].to_s) unless stub[:digest_algorithm_mnemonic].nil?
        xml << Hearth::XML::Node.new('DigestAlgorithmType', stub[:digest_algorithm_type].to_s) unless stub[:digest_algorithm_type].nil?
        xml << Hearth::XML::Node.new('KeyTag', stub[:key_tag].to_s) unless stub[:key_tag].nil?
        xml << Hearth::XML::Node.new('DigestValue', stub[:digest_value].to_s) unless stub[:digest_value].nil?
        xml << Hearth::XML::Node.new('PublicKey', stub[:public_key].to_s) unless stub[:public_key].nil?
        xml << Hearth::XML::Node.new('DSRecord', stub[:ds_record].to_s) unless stub[:ds_record].nil?
        xml << Hearth::XML::Node.new('DNSKEYRecord', stub[:dnskey_record].to_s) unless stub[:dnskey_record].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('StatusMessage', stub[:status_message].to_s) unless stub[:status_message].nil?
        xml << Hearth::XML::Node.new('CreatedDate', Hearth::TimeHelper.to_date_time(stub[:created_date])) unless stub[:created_date].nil?
        xml << Hearth::XML::Node.new('LastModifiedDate', Hearth::TimeHelper.to_date_time(stub[:last_modified_date])) unless stub[:last_modified_date].nil?
        xml
      end
    end

    # Operation Stubber for CreateQueryLoggingConfig
    class CreateQueryLoggingConfig
      def self.default(visited=[])
        {
          query_logging_config: QueryLoggingConfig.default(visited),
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateQueryLoggingConfigResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::QueryLoggingConfig.stub('QueryLoggingConfig', stub[:query_logging_config]) unless stub[:query_logging_config].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for QueryLoggingConfig
    class QueryLoggingConfig
      def self.default(visited=[])
        return nil if visited.include?('QueryLoggingConfig')
        visited = visited + ['QueryLoggingConfig']
        {
          id: 'id',
          hosted_zone_id: 'hosted_zone_id',
          cloud_watch_logs_log_group_arn: 'cloud_watch_logs_log_group_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::QueryLoggingConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('HostedZoneId', stub[:hosted_zone_id].to_s) unless stub[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('CloudWatchLogsLogGroupArn', stub[:cloud_watch_logs_log_group_arn].to_s) unless stub[:cloud_watch_logs_log_group_arn].nil?
        xml
      end
    end

    # Operation Stubber for CreateReusableDelegationSet
    class CreateReusableDelegationSet
      def self.default(visited=[])
        {
          delegation_set: DelegationSet.default(visited),
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateReusableDelegationSetResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::DelegationSet.stub('DelegationSet', stub[:delegation_set]) unless stub[:delegation_set].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for CreateTrafficPolicy
    class CreateTrafficPolicy
      def self.default(visited=[])
        {
          traffic_policy: TrafficPolicy.default(visited),
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateTrafficPolicyResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::TrafficPolicy.stub('TrafficPolicy', stub[:traffic_policy]) unless stub[:traffic_policy].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for TrafficPolicy
    class TrafficPolicy
      def self.default(visited=[])
        return nil if visited.include?('TrafficPolicy')
        visited = visited + ['TrafficPolicy']
        {
          id: 'id',
          version: 1,
          name: 'name',
          type: 'type',
          document: 'document',
          comment: 'comment',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TrafficPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Version', stub[:version].to_s) unless stub[:version].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('Document', stub[:document].to_s) unless stub[:document].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml
      end
    end

    # Operation Stubber for CreateTrafficPolicyInstance
    class CreateTrafficPolicyInstance
      def self.default(visited=[])
        {
          traffic_policy_instance: TrafficPolicyInstance.default(visited),
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateTrafficPolicyInstanceResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::TrafficPolicyInstance.stub('TrafficPolicyInstance', stub[:traffic_policy_instance]) unless stub[:traffic_policy_instance].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for TrafficPolicyInstance
    class TrafficPolicyInstance
      def self.default(visited=[])
        return nil if visited.include?('TrafficPolicyInstance')
        visited = visited + ['TrafficPolicyInstance']
        {
          id: 'id',
          hosted_zone_id: 'hosted_zone_id',
          name: 'name',
          ttl: 1,
          state: 'state',
          message: 'message',
          traffic_policy_id: 'traffic_policy_id',
          traffic_policy_version: 1,
          traffic_policy_type: 'traffic_policy_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TrafficPolicyInstance.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('HostedZoneId', stub[:hosted_zone_id].to_s) unless stub[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('TTL', stub[:ttl].to_s) unless stub[:ttl].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyId', stub[:traffic_policy_id].to_s) unless stub[:traffic_policy_id].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyVersion', stub[:traffic_policy_version].to_s) unless stub[:traffic_policy_version].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyType', stub[:traffic_policy_type].to_s) unless stub[:traffic_policy_type].nil?
        xml
      end
    end

    # Operation Stubber for CreateTrafficPolicyVersion
    class CreateTrafficPolicyVersion
      def self.default(visited=[])
        {
          traffic_policy: TrafficPolicy.default(visited),
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateTrafficPolicyVersionResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::TrafficPolicy.stub('TrafficPolicy', stub[:traffic_policy]) unless stub[:traffic_policy].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for CreateVPCAssociationAuthorization
    class CreateVPCAssociationAuthorization
      def self.default(visited=[])
        {
          hosted_zone_id: 'hosted_zone_id',
          vpc: VPC.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateVPCAssociationAuthorizationResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HostedZoneId', stub[:hosted_zone_id].to_s) unless stub[:hosted_zone_id].nil?
        xml << Stubs::VPC.stub('VPC', stub[:vpc]) unless stub[:vpc].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for DeactivateKeySigningKey
    class DeactivateKeySigningKey
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DeactivateKeySigningKeyResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for DeleteCidrCollection
    class DeleteCidrCollection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHealthCheck
    class DeleteHealthCheck
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHostedZone
    class DeleteHostedZone
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DeleteHostedZoneResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for DeleteKeySigningKey
    class DeleteKeySigningKey
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DeleteKeySigningKeyResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for DeleteQueryLoggingConfig
    class DeleteQueryLoggingConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReusableDelegationSet
    class DeleteReusableDelegationSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTrafficPolicy
    class DeleteTrafficPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTrafficPolicyInstance
    class DeleteTrafficPolicyInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVPCAssociationAuthorization
    class DeleteVPCAssociationAuthorization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableHostedZoneDNSSEC
    class DisableHostedZoneDNSSEC
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DisableHostedZoneDNSSECResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for DisassociateVPCFromHostedZone
    class DisassociateVPCFromHostedZone
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DisassociateVPCFromHostedZoneResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for EnableHostedZoneDNSSEC
    class EnableHostedZoneDNSSEC
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('EnableHostedZoneDNSSECResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetAccountLimit
    class GetAccountLimit
      def self.default(visited=[])
        {
          limit: AccountLimit.default(visited),
          count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetAccountLimitResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::AccountLimit.stub('Limit', stub[:limit]) unless stub[:limit].nil?
        xml << Hearth::XML::Node.new('Count', stub[:count].to_s) unless stub[:count].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for AccountLimit
    class AccountLimit
      def self.default(visited=[])
        return nil if visited.include?('AccountLimit')
        visited = visited + ['AccountLimit']
        {
          type: 'type',
          value: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccountLimit.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for GetChange
    class GetChange
      def self.default(visited=[])
        {
          change_info: ChangeInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetChangeResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ChangeInfo.stub('ChangeInfo', stub[:change_info]) unless stub[:change_info].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetCheckerIpRanges
    class GetCheckerIpRanges
      def self.default(visited=[])
        {
          checker_ip_ranges: CheckerIpRanges.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetCheckerIpRangesResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('CheckerIpRanges', Stubs::CheckerIpRanges.stub('member', stub[:checker_ip_ranges])) unless stub[:checker_ip_ranges].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for CheckerIpRanges
    class CheckerIpRanges
      def self.default(visited=[])
        return nil if visited.include?('CheckerIpRanges')
        visited = visited + ['CheckerIpRanges']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetDNSSEC
    class GetDNSSEC
      def self.default(visited=[])
        {
          status: DNSSECStatus.default(visited),
          key_signing_keys: KeySigningKeys.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetDNSSECResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::DNSSECStatus.stub('Status', stub[:status]) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('KeySigningKeys', Stubs::KeySigningKeys.stub('member', stub[:key_signing_keys])) unless stub[:key_signing_keys].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for KeySigningKeys
    class KeySigningKeys
      def self.default(visited=[])
        return nil if visited.include?('KeySigningKeys')
        visited = visited + ['KeySigningKeys']
        [
          KeySigningKey.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::KeySigningKey.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DNSSECStatus
    class DNSSECStatus
      def self.default(visited=[])
        return nil if visited.include?('DNSSECStatus')
        visited = visited + ['DNSSECStatus']
        {
          serve_signature: 'serve_signature',
          status_message: 'status_message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DNSSECStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ServeSignature', stub[:serve_signature].to_s) unless stub[:serve_signature].nil?
        xml << Hearth::XML::Node.new('StatusMessage', stub[:status_message].to_s) unless stub[:status_message].nil?
        xml
      end
    end

    # Operation Stubber for GetGeoLocation
    class GetGeoLocation
      def self.default(visited=[])
        {
          geo_location_details: GeoLocationDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetGeoLocationResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::GeoLocationDetails.stub('GeoLocationDetails', stub[:geo_location_details]) unless stub[:geo_location_details].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for GeoLocationDetails
    class GeoLocationDetails
      def self.default(visited=[])
        return nil if visited.include?('GeoLocationDetails')
        visited = visited + ['GeoLocationDetails']
        {
          continent_code: 'continent_code',
          continent_name: 'continent_name',
          country_code: 'country_code',
          country_name: 'country_name',
          subdivision_code: 'subdivision_code',
          subdivision_name: 'subdivision_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GeoLocationDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ContinentCode', stub[:continent_code].to_s) unless stub[:continent_code].nil?
        xml << Hearth::XML::Node.new('ContinentName', stub[:continent_name].to_s) unless stub[:continent_name].nil?
        xml << Hearth::XML::Node.new('CountryCode', stub[:country_code].to_s) unless stub[:country_code].nil?
        xml << Hearth::XML::Node.new('CountryName', stub[:country_name].to_s) unless stub[:country_name].nil?
        xml << Hearth::XML::Node.new('SubdivisionCode', stub[:subdivision_code].to_s) unless stub[:subdivision_code].nil?
        xml << Hearth::XML::Node.new('SubdivisionName', stub[:subdivision_name].to_s) unless stub[:subdivision_name].nil?
        xml
      end
    end

    # Operation Stubber for GetHealthCheck
    class GetHealthCheck
      def self.default(visited=[])
        {
          health_check: HealthCheck.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetHealthCheckResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::HealthCheck.stub('HealthCheck', stub[:health_check]) unless stub[:health_check].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetHealthCheckCount
    class GetHealthCheckCount
      def self.default(visited=[])
        {
          health_check_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetHealthCheckCountResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HealthCheckCount', stub[:health_check_count].to_s) unless stub[:health_check_count].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetHealthCheckLastFailureReason
    class GetHealthCheckLastFailureReason
      def self.default(visited=[])
        {
          health_check_observations: HealthCheckObservations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetHealthCheckLastFailureReasonResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HealthCheckObservations', Stubs::HealthCheckObservations.stub('HealthCheckObservation', stub[:health_check_observations])) unless stub[:health_check_observations].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for HealthCheckObservations
    class HealthCheckObservations
      def self.default(visited=[])
        return nil if visited.include?('HealthCheckObservations')
        visited = visited + ['HealthCheckObservations']
        [
          HealthCheckObservation.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::HealthCheckObservation.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for HealthCheckObservation
    class HealthCheckObservation
      def self.default(visited=[])
        return nil if visited.include?('HealthCheckObservation')
        visited = visited + ['HealthCheckObservation']
        {
          region: 'region',
          ip_address: 'ip_address',
          status_report: StatusReport.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HealthCheckObservation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml << Hearth::XML::Node.new('IPAddress', stub[:ip_address].to_s) unless stub[:ip_address].nil?
        xml << Stubs::StatusReport.stub('StatusReport', stub[:status_report]) unless stub[:status_report].nil?
        xml
      end
    end

    # Structure Stubber for StatusReport
    class StatusReport
      def self.default(visited=[])
        return nil if visited.include?('StatusReport')
        visited = visited + ['StatusReport']
        {
          status: 'status',
          checked_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StatusReport.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CheckedTime', Hearth::TimeHelper.to_date_time(stub[:checked_time])) unless stub[:checked_time].nil?
        xml
      end
    end

    # Operation Stubber for GetHealthCheckStatus
    class GetHealthCheckStatus
      def self.default(visited=[])
        {
          health_check_observations: HealthCheckObservations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetHealthCheckStatusResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HealthCheckObservations', Stubs::HealthCheckObservations.stub('HealthCheckObservation', stub[:health_check_observations])) unless stub[:health_check_observations].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetHostedZone
    class GetHostedZone
      def self.default(visited=[])
        {
          hosted_zone: HostedZone.default(visited),
          delegation_set: DelegationSet.default(visited),
          vp_cs: VPCs.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetHostedZoneResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::HostedZone.stub('HostedZone', stub[:hosted_zone]) unless stub[:hosted_zone].nil?
        xml << Stubs::DelegationSet.stub('DelegationSet', stub[:delegation_set]) unless stub[:delegation_set].nil?
        xml << Hearth::XML::Node.new('VPCs', Stubs::VPCs.stub('VPC', stub[:vp_cs])) unless stub[:vp_cs].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for VPCs
    class VPCs
      def self.default(visited=[])
        return nil if visited.include?('VPCs')
        visited = visited + ['VPCs']
        [
          VPC.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::VPC.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetHostedZoneCount
    class GetHostedZoneCount
      def self.default(visited=[])
        {
          hosted_zone_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetHostedZoneCountResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HostedZoneCount', stub[:hosted_zone_count].to_s) unless stub[:hosted_zone_count].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetHostedZoneLimit
    class GetHostedZoneLimit
      def self.default(visited=[])
        {
          limit: HostedZoneLimit.default(visited),
          count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetHostedZoneLimitResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::HostedZoneLimit.stub('Limit', stub[:limit]) unless stub[:limit].nil?
        xml << Hearth::XML::Node.new('Count', stub[:count].to_s) unless stub[:count].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for HostedZoneLimit
    class HostedZoneLimit
      def self.default(visited=[])
        return nil if visited.include?('HostedZoneLimit')
        visited = visited + ['HostedZoneLimit']
        {
          type: 'type',
          value: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HostedZoneLimit.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for GetQueryLoggingConfig
    class GetQueryLoggingConfig
      def self.default(visited=[])
        {
          query_logging_config: QueryLoggingConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetQueryLoggingConfigResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::QueryLoggingConfig.stub('QueryLoggingConfig', stub[:query_logging_config]) unless stub[:query_logging_config].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetReusableDelegationSet
    class GetReusableDelegationSet
      def self.default(visited=[])
        {
          delegation_set: DelegationSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetReusableDelegationSetResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::DelegationSet.stub('DelegationSet', stub[:delegation_set]) unless stub[:delegation_set].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetReusableDelegationSetLimit
    class GetReusableDelegationSetLimit
      def self.default(visited=[])
        {
          limit: ReusableDelegationSetLimit.default(visited),
          count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetReusableDelegationSetLimitResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ReusableDelegationSetLimit.stub('Limit', stub[:limit]) unless stub[:limit].nil?
        xml << Hearth::XML::Node.new('Count', stub[:count].to_s) unless stub[:count].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ReusableDelegationSetLimit
    class ReusableDelegationSetLimit
      def self.default(visited=[])
        return nil if visited.include?('ReusableDelegationSetLimit')
        visited = visited + ['ReusableDelegationSetLimit']
        {
          type: 'type',
          value: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReusableDelegationSetLimit.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for GetTrafficPolicy
    class GetTrafficPolicy
      def self.default(visited=[])
        {
          traffic_policy: TrafficPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetTrafficPolicyResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::TrafficPolicy.stub('TrafficPolicy', stub[:traffic_policy]) unless stub[:traffic_policy].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetTrafficPolicyInstance
    class GetTrafficPolicyInstance
      def self.default(visited=[])
        {
          traffic_policy_instance: TrafficPolicyInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetTrafficPolicyInstanceResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::TrafficPolicyInstance.stub('TrafficPolicyInstance', stub[:traffic_policy_instance]) unless stub[:traffic_policy_instance].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetTrafficPolicyInstanceCount
    class GetTrafficPolicyInstanceCount
      def self.default(visited=[])
        {
          traffic_policy_instance_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetTrafficPolicyInstanceCountResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('TrafficPolicyInstanceCount', stub[:traffic_policy_instance_count].to_s) unless stub[:traffic_policy_instance_count].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListCidrBlocks
    class ListCidrBlocks
      def self.default(visited=[])
        {
          next_token: 'next_token',
          cidr_blocks: CidrBlockSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListCidrBlocksResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('CidrBlocks', Stubs::CidrBlockSummaries.stub('member', stub[:cidr_blocks])) unless stub[:cidr_blocks].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for CidrBlockSummaries
    class CidrBlockSummaries
      def self.default(visited=[])
        return nil if visited.include?('CidrBlockSummaries')
        visited = visited + ['CidrBlockSummaries']
        [
          CidrBlockSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::CidrBlockSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CidrBlockSummary
    class CidrBlockSummary
      def self.default(visited=[])
        return nil if visited.include?('CidrBlockSummary')
        visited = visited + ['CidrBlockSummary']
        {
          cidr_block: 'cidr_block',
          location_name: 'location_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CidrBlockSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CidrBlock', stub[:cidr_block].to_s) unless stub[:cidr_block].nil?
        xml << Hearth::XML::Node.new('LocationName', stub[:location_name].to_s) unless stub[:location_name].nil?
        xml
      end
    end

    # Operation Stubber for ListCidrCollections
    class ListCidrCollections
      def self.default(visited=[])
        {
          next_token: 'next_token',
          cidr_collections: CollectionSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListCidrCollectionsResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('CidrCollections', Stubs::CollectionSummaries.stub('member', stub[:cidr_collections])) unless stub[:cidr_collections].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for CollectionSummaries
    class CollectionSummaries
      def self.default(visited=[])
        return nil if visited.include?('CollectionSummaries')
        visited = visited + ['CollectionSummaries']
        [
          CollectionSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::CollectionSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CollectionSummary
    class CollectionSummary
      def self.default(visited=[])
        return nil if visited.include?('CollectionSummary')
        visited = visited + ['CollectionSummary']
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          version: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CollectionSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Version', stub[:version].to_s) unless stub[:version].nil?
        xml
      end
    end

    # Operation Stubber for ListCidrLocations
    class ListCidrLocations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          cidr_locations: LocationSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListCidrLocationsResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('CidrLocations', Stubs::LocationSummaries.stub('member', stub[:cidr_locations])) unless stub[:cidr_locations].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for LocationSummaries
    class LocationSummaries
      def self.default(visited=[])
        return nil if visited.include?('LocationSummaries')
        visited = visited + ['LocationSummaries']
        [
          LocationSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::LocationSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LocationSummary
    class LocationSummary
      def self.default(visited=[])
        return nil if visited.include?('LocationSummary')
        visited = visited + ['LocationSummary']
        {
          location_name: 'location_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LocationSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LocationName', stub[:location_name].to_s) unless stub[:location_name].nil?
        xml
      end
    end

    # Operation Stubber for ListGeoLocations
    class ListGeoLocations
      def self.default(visited=[])
        {
          geo_location_details_list: GeoLocationDetailsList.default(visited),
          is_truncated: false,
          next_continent_code: 'next_continent_code',
          next_country_code: 'next_country_code',
          next_subdivision_code: 'next_subdivision_code',
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListGeoLocationsResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('GeoLocationDetailsList', Stubs::GeoLocationDetailsList.stub('GeoLocationDetails', stub[:geo_location_details_list])) unless stub[:geo_location_details_list].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('NextContinentCode', stub[:next_continent_code].to_s) unless stub[:next_continent_code].nil?
        xml << Hearth::XML::Node.new('NextCountryCode', stub[:next_country_code].to_s) unless stub[:next_country_code].nil?
        xml << Hearth::XML::Node.new('NextSubdivisionCode', stub[:next_subdivision_code].to_s) unless stub[:next_subdivision_code].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for GeoLocationDetailsList
    class GeoLocationDetailsList
      def self.default(visited=[])
        return nil if visited.include?('GeoLocationDetailsList')
        visited = visited + ['GeoLocationDetailsList']
        [
          GeoLocationDetails.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::GeoLocationDetails.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListHealthChecks
    class ListHealthChecks
      def self.default(visited=[])
        {
          health_checks: HealthChecks.default(visited),
          marker: 'marker',
          is_truncated: false,
          next_marker: 'next_marker',
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListHealthChecksResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HealthChecks', Stubs::HealthChecks.stub('HealthCheck', stub[:health_checks])) unless stub[:health_checks].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for HealthChecks
    class HealthChecks
      def self.default(visited=[])
        return nil if visited.include?('HealthChecks')
        visited = visited + ['HealthChecks']
        [
          HealthCheck.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::HealthCheck.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListHostedZones
    class ListHostedZones
      def self.default(visited=[])
        {
          hosted_zones: HostedZones.default(visited),
          marker: 'marker',
          is_truncated: false,
          next_marker: 'next_marker',
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListHostedZonesResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HostedZones', Stubs::HostedZones.stub('HostedZone', stub[:hosted_zones])) unless stub[:hosted_zones].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for HostedZones
    class HostedZones
      def self.default(visited=[])
        return nil if visited.include?('HostedZones')
        visited = visited + ['HostedZones']
        [
          HostedZone.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::HostedZone.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListHostedZonesByName
    class ListHostedZonesByName
      def self.default(visited=[])
        {
          hosted_zones: HostedZones.default(visited),
          dns_name: 'dns_name',
          hosted_zone_id: 'hosted_zone_id',
          is_truncated: false,
          next_dns_name: 'next_dns_name',
          next_hosted_zone_id: 'next_hosted_zone_id',
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListHostedZonesByNameResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HostedZones', Stubs::HostedZones.stub('HostedZone', stub[:hosted_zones])) unless stub[:hosted_zones].nil?
        xml << Hearth::XML::Node.new('DNSName', stub[:dns_name].to_s) unless stub[:dns_name].nil?
        xml << Hearth::XML::Node.new('HostedZoneId', stub[:hosted_zone_id].to_s) unless stub[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('NextDNSName', stub[:next_dns_name].to_s) unless stub[:next_dns_name].nil?
        xml << Hearth::XML::Node.new('NextHostedZoneId', stub[:next_hosted_zone_id].to_s) unless stub[:next_hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListHostedZonesByVPC
    class ListHostedZonesByVPC
      def self.default(visited=[])
        {
          hosted_zone_summaries: HostedZoneSummaries.default(visited),
          max_items: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListHostedZonesByVPCResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HostedZoneSummaries', Stubs::HostedZoneSummaries.stub('HostedZoneSummary', stub[:hosted_zone_summaries])) unless stub[:hosted_zone_summaries].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for HostedZoneSummaries
    class HostedZoneSummaries
      def self.default(visited=[])
        return nil if visited.include?('HostedZoneSummaries')
        visited = visited + ['HostedZoneSummaries']
        [
          HostedZoneSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::HostedZoneSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for HostedZoneSummary
    class HostedZoneSummary
      def self.default(visited=[])
        return nil if visited.include?('HostedZoneSummary')
        visited = visited + ['HostedZoneSummary']
        {
          hosted_zone_id: 'hosted_zone_id',
          name: 'name',
          owner: HostedZoneOwner.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HostedZoneSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HostedZoneId', stub[:hosted_zone_id].to_s) unless stub[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Stubs::HostedZoneOwner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        xml
      end
    end

    # Structure Stubber for HostedZoneOwner
    class HostedZoneOwner
      def self.default(visited=[])
        return nil if visited.include?('HostedZoneOwner')
        visited = visited + ['HostedZoneOwner']
        {
          owning_account: 'owning_account',
          owning_service: 'owning_service',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HostedZoneOwner.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OwningAccount', stub[:owning_account].to_s) unless stub[:owning_account].nil?
        xml << Hearth::XML::Node.new('OwningService', stub[:owning_service].to_s) unless stub[:owning_service].nil?
        xml
      end
    end

    # Operation Stubber for ListQueryLoggingConfigs
    class ListQueryLoggingConfigs
      def self.default(visited=[])
        {
          query_logging_configs: QueryLoggingConfigs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListQueryLoggingConfigsResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('QueryLoggingConfigs', Stubs::QueryLoggingConfigs.stub('QueryLoggingConfig', stub[:query_logging_configs])) unless stub[:query_logging_configs].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for QueryLoggingConfigs
    class QueryLoggingConfigs
      def self.default(visited=[])
        return nil if visited.include?('QueryLoggingConfigs')
        visited = visited + ['QueryLoggingConfigs']
        [
          QueryLoggingConfig.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::QueryLoggingConfig.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListResourceRecordSets
    class ListResourceRecordSets
      def self.default(visited=[])
        {
          resource_record_sets: ResourceRecordSets.default(visited),
          is_truncated: false,
          next_record_name: 'next_record_name',
          next_record_type: 'next_record_type',
          next_record_identifier: 'next_record_identifier',
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListResourceRecordSetsResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('ResourceRecordSets', Stubs::ResourceRecordSets.stub('ResourceRecordSet', stub[:resource_record_sets])) unless stub[:resource_record_sets].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('NextRecordName', stub[:next_record_name].to_s) unless stub[:next_record_name].nil?
        xml << Hearth::XML::Node.new('NextRecordType', stub[:next_record_type].to_s) unless stub[:next_record_type].nil?
        xml << Hearth::XML::Node.new('NextRecordIdentifier', stub[:next_record_identifier].to_s) unless stub[:next_record_identifier].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for ResourceRecordSets
    class ResourceRecordSets
      def self.default(visited=[])
        return nil if visited.include?('ResourceRecordSets')
        visited = visited + ['ResourceRecordSets']
        [
          ResourceRecordSet.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ResourceRecordSet.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResourceRecordSet
    class ResourceRecordSet
      def self.default(visited=[])
        return nil if visited.include?('ResourceRecordSet')
        visited = visited + ['ResourceRecordSet']
        {
          name: 'name',
          type: 'type',
          set_identifier: 'set_identifier',
          weight: 1,
          region: 'region',
          geo_location: GeoLocation.default(visited),
          failover: 'failover',
          multi_value_answer: false,
          ttl: 1,
          resource_records: ResourceRecords.default(visited),
          alias_target: AliasTarget.default(visited),
          health_check_id: 'health_check_id',
          traffic_policy_instance_id: 'traffic_policy_instance_id',
          cidr_routing_config: CidrRoutingConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceRecordSet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('SetIdentifier', stub[:set_identifier].to_s) unless stub[:set_identifier].nil?
        xml << Hearth::XML::Node.new('Weight', stub[:weight].to_s) unless stub[:weight].nil?
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml << Stubs::GeoLocation.stub('GeoLocation', stub[:geo_location]) unless stub[:geo_location].nil?
        xml << Hearth::XML::Node.new('Failover', stub[:failover].to_s) unless stub[:failover].nil?
        xml << Hearth::XML::Node.new('MultiValueAnswer', stub[:multi_value_answer].to_s) unless stub[:multi_value_answer].nil?
        xml << Hearth::XML::Node.new('TTL', stub[:ttl].to_s) unless stub[:ttl].nil?
        xml << Hearth::XML::Node.new('ResourceRecords', Stubs::ResourceRecords.stub('ResourceRecord', stub[:resource_records])) unless stub[:resource_records].nil?
        xml << Stubs::AliasTarget.stub('AliasTarget', stub[:alias_target]) unless stub[:alias_target].nil?
        xml << Hearth::XML::Node.new('HealthCheckId', stub[:health_check_id].to_s) unless stub[:health_check_id].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyInstanceId', stub[:traffic_policy_instance_id].to_s) unless stub[:traffic_policy_instance_id].nil?
        xml << Stubs::CidrRoutingConfig.stub('CidrRoutingConfig', stub[:cidr_routing_config]) unless stub[:cidr_routing_config].nil?
        xml
      end
    end

    # Structure Stubber for CidrRoutingConfig
    class CidrRoutingConfig
      def self.default(visited=[])
        return nil if visited.include?('CidrRoutingConfig')
        visited = visited + ['CidrRoutingConfig']
        {
          collection_id: 'collection_id',
          location_name: 'location_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CidrRoutingConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CollectionId', stub[:collection_id].to_s) unless stub[:collection_id].nil?
        xml << Hearth::XML::Node.new('LocationName', stub[:location_name].to_s) unless stub[:location_name].nil?
        xml
      end
    end

    # Structure Stubber for AliasTarget
    class AliasTarget
      def self.default(visited=[])
        return nil if visited.include?('AliasTarget')
        visited = visited + ['AliasTarget']
        {
          hosted_zone_id: 'hosted_zone_id',
          dns_name: 'dns_name',
          evaluate_target_health: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AliasTarget.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HostedZoneId', stub[:hosted_zone_id].to_s) unless stub[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('DNSName', stub[:dns_name].to_s) unless stub[:dns_name].nil?
        xml << Hearth::XML::Node.new('EvaluateTargetHealth', stub[:evaluate_target_health].to_s) unless stub[:evaluate_target_health].nil?
        xml
      end
    end

    # List Stubber for ResourceRecords
    class ResourceRecords
      def self.default(visited=[])
        return nil if visited.include?('ResourceRecords')
        visited = visited + ['ResourceRecords']
        [
          ResourceRecord.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ResourceRecord.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResourceRecord
    class ResourceRecord
      def self.default(visited=[])
        return nil if visited.include?('ResourceRecord')
        visited = visited + ['ResourceRecord']
        {
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceRecord.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Structure Stubber for GeoLocation
    class GeoLocation
      def self.default(visited=[])
        return nil if visited.include?('GeoLocation')
        visited = visited + ['GeoLocation']
        {
          continent_code: 'continent_code',
          country_code: 'country_code',
          subdivision_code: 'subdivision_code',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GeoLocation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ContinentCode', stub[:continent_code].to_s) unless stub[:continent_code].nil?
        xml << Hearth::XML::Node.new('CountryCode', stub[:country_code].to_s) unless stub[:country_code].nil?
        xml << Hearth::XML::Node.new('SubdivisionCode', stub[:subdivision_code].to_s) unless stub[:subdivision_code].nil?
        xml
      end
    end

    # Operation Stubber for ListReusableDelegationSets
    class ListReusableDelegationSets
      def self.default(visited=[])
        {
          delegation_sets: DelegationSets.default(visited),
          marker: 'marker',
          is_truncated: false,
          next_marker: 'next_marker',
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListReusableDelegationSetsResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('DelegationSets', Stubs::DelegationSets.stub('DelegationSet', stub[:delegation_sets])) unless stub[:delegation_sets].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for DelegationSets
    class DelegationSets
      def self.default(visited=[])
        return nil if visited.include?('DelegationSets')
        visited = visited + ['DelegationSets']
        [
          DelegationSet.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::DelegationSet.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_tag_set: ResourceTagSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListTagsForResourceResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::ResourceTagSet.stub('ResourceTagSet', stub[:resource_tag_set]) unless stub[:resource_tag_set].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ResourceTagSet
    class ResourceTagSet
      def self.default(visited=[])
        return nil if visited.include?('ResourceTagSet')
        visited = visited + ['ResourceTagSet']
        {
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceTagSet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('ResourceId', stub[:resource_id].to_s) unless stub[:resource_id].nil?
        xml << Hearth::XML::Node.new('Tags', Stubs::TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
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
        stub ||= []
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

    # Operation Stubber for ListTagsForResources
    class ListTagsForResources
      def self.default(visited=[])
        {
          resource_tag_sets: ResourceTagSetList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListTagsForResourcesResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('ResourceTagSets', Stubs::ResourceTagSetList.stub('ResourceTagSet', stub[:resource_tag_sets])) unless stub[:resource_tag_sets].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for ResourceTagSetList
    class ResourceTagSetList
      def self.default(visited=[])
        return nil if visited.include?('ResourceTagSetList')
        visited = visited + ['ResourceTagSetList']
        [
          ResourceTagSet.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ResourceTagSet.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListTrafficPolicies
    class ListTrafficPolicies
      def self.default(visited=[])
        {
          traffic_policy_summaries: TrafficPolicySummaries.default(visited),
          is_truncated: false,
          traffic_policy_id_marker: 'traffic_policy_id_marker',
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListTrafficPoliciesResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('TrafficPolicySummaries', Stubs::TrafficPolicySummaries.stub('TrafficPolicySummary', stub[:traffic_policy_summaries])) unless stub[:traffic_policy_summaries].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyIdMarker', stub[:traffic_policy_id_marker].to_s) unless stub[:traffic_policy_id_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for TrafficPolicySummaries
    class TrafficPolicySummaries
      def self.default(visited=[])
        return nil if visited.include?('TrafficPolicySummaries')
        visited = visited + ['TrafficPolicySummaries']
        [
          TrafficPolicySummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::TrafficPolicySummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TrafficPolicySummary
    class TrafficPolicySummary
      def self.default(visited=[])
        return nil if visited.include?('TrafficPolicySummary')
        visited = visited + ['TrafficPolicySummary']
        {
          id: 'id',
          name: 'name',
          type: 'type',
          latest_version: 1,
          traffic_policy_count: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TrafficPolicySummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('LatestVersion', stub[:latest_version].to_s) unless stub[:latest_version].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyCount', stub[:traffic_policy_count].to_s) unless stub[:traffic_policy_count].nil?
        xml
      end
    end

    # Operation Stubber for ListTrafficPolicyInstances
    class ListTrafficPolicyInstances
      def self.default(visited=[])
        {
          traffic_policy_instances: TrafficPolicyInstances.default(visited),
          hosted_zone_id_marker: 'hosted_zone_id_marker',
          traffic_policy_instance_name_marker: 'traffic_policy_instance_name_marker',
          traffic_policy_instance_type_marker: 'traffic_policy_instance_type_marker',
          is_truncated: false,
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListTrafficPolicyInstancesResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('TrafficPolicyInstances', Stubs::TrafficPolicyInstances.stub('TrafficPolicyInstance', stub[:traffic_policy_instances])) unless stub[:traffic_policy_instances].nil?
        xml << Hearth::XML::Node.new('HostedZoneIdMarker', stub[:hosted_zone_id_marker].to_s) unless stub[:hosted_zone_id_marker].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyInstanceNameMarker', stub[:traffic_policy_instance_name_marker].to_s) unless stub[:traffic_policy_instance_name_marker].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyInstanceTypeMarker', stub[:traffic_policy_instance_type_marker].to_s) unless stub[:traffic_policy_instance_type_marker].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for TrafficPolicyInstances
    class TrafficPolicyInstances
      def self.default(visited=[])
        return nil if visited.include?('TrafficPolicyInstances')
        visited = visited + ['TrafficPolicyInstances']
        [
          TrafficPolicyInstance.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::TrafficPolicyInstance.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListTrafficPolicyInstancesByHostedZone
    class ListTrafficPolicyInstancesByHostedZone
      def self.default(visited=[])
        {
          traffic_policy_instances: TrafficPolicyInstances.default(visited),
          traffic_policy_instance_name_marker: 'traffic_policy_instance_name_marker',
          traffic_policy_instance_type_marker: 'traffic_policy_instance_type_marker',
          is_truncated: false,
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListTrafficPolicyInstancesByHostedZoneResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('TrafficPolicyInstances', Stubs::TrafficPolicyInstances.stub('TrafficPolicyInstance', stub[:traffic_policy_instances])) unless stub[:traffic_policy_instances].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyInstanceNameMarker', stub[:traffic_policy_instance_name_marker].to_s) unless stub[:traffic_policy_instance_name_marker].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyInstanceTypeMarker', stub[:traffic_policy_instance_type_marker].to_s) unless stub[:traffic_policy_instance_type_marker].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListTrafficPolicyInstancesByPolicy
    class ListTrafficPolicyInstancesByPolicy
      def self.default(visited=[])
        {
          traffic_policy_instances: TrafficPolicyInstances.default(visited),
          hosted_zone_id_marker: 'hosted_zone_id_marker',
          traffic_policy_instance_name_marker: 'traffic_policy_instance_name_marker',
          traffic_policy_instance_type_marker: 'traffic_policy_instance_type_marker',
          is_truncated: false,
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListTrafficPolicyInstancesByPolicyResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('TrafficPolicyInstances', Stubs::TrafficPolicyInstances.stub('TrafficPolicyInstance', stub[:traffic_policy_instances])) unless stub[:traffic_policy_instances].nil?
        xml << Hearth::XML::Node.new('HostedZoneIdMarker', stub[:hosted_zone_id_marker].to_s) unless stub[:hosted_zone_id_marker].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyInstanceNameMarker', stub[:traffic_policy_instance_name_marker].to_s) unless stub[:traffic_policy_instance_name_marker].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyInstanceTypeMarker', stub[:traffic_policy_instance_type_marker].to_s) unless stub[:traffic_policy_instance_type_marker].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListTrafficPolicyVersions
    class ListTrafficPolicyVersions
      def self.default(visited=[])
        {
          traffic_policies: TrafficPolicies.default(visited),
          is_truncated: false,
          traffic_policy_version_marker: 'traffic_policy_version_marker',
          max_items: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListTrafficPolicyVersionsResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('TrafficPolicies', Stubs::TrafficPolicies.stub('TrafficPolicy', stub[:traffic_policies])) unless stub[:traffic_policies].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('TrafficPolicyVersionMarker', stub[:traffic_policy_version_marker].to_s) unless stub[:traffic_policy_version_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for TrafficPolicies
    class TrafficPolicies
      def self.default(visited=[])
        return nil if visited.include?('TrafficPolicies')
        visited = visited + ['TrafficPolicies']
        [
          TrafficPolicy.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::TrafficPolicy.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListVPCAssociationAuthorizations
    class ListVPCAssociationAuthorizations
      def self.default(visited=[])
        {
          hosted_zone_id: 'hosted_zone_id',
          next_token: 'next_token',
          vp_cs: VPCs.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListVPCAssociationAuthorizationsResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('HostedZoneId', stub[:hosted_zone_id].to_s) unless stub[:hosted_zone_id].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('VPCs', Stubs::VPCs.stub('VPC', stub[:vp_cs])) unless stub[:vp_cs].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for TestDNSAnswer
    class TestDNSAnswer
      def self.default(visited=[])
        {
          nameserver: 'nameserver',
          record_name: 'record_name',
          record_type: 'record_type',
          record_data: RecordData.default(visited),
          response_code: 'response_code',
          protocol: 'protocol',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('TestDNSAnswerResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Hearth::XML::Node.new('Nameserver', stub[:nameserver].to_s) unless stub[:nameserver].nil?
        xml << Hearth::XML::Node.new('RecordName', stub[:record_name].to_s) unless stub[:record_name].nil?
        xml << Hearth::XML::Node.new('RecordType', stub[:record_type].to_s) unless stub[:record_type].nil?
        xml << Hearth::XML::Node.new('RecordData', Stubs::RecordData.stub('RecordDataEntry', stub[:record_data])) unless stub[:record_data].nil?
        xml << Hearth::XML::Node.new('ResponseCode', stub[:response_code].to_s) unless stub[:response_code].nil?
        xml << Hearth::XML::Node.new('Protocol', stub[:protocol].to_s) unless stub[:protocol].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # List Stubber for RecordData
    class RecordData
      def self.default(visited=[])
        return nil if visited.include?('RecordData')
        visited = visited + ['RecordData']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for UpdateHealthCheck
    class UpdateHealthCheck
      def self.default(visited=[])
        {
          health_check: HealthCheck.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateHealthCheckResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::HealthCheck.stub('HealthCheck', stub[:health_check]) unless stub[:health_check].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateHostedZoneComment
    class UpdateHostedZoneComment
      def self.default(visited=[])
        {
          hosted_zone: HostedZone.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateHostedZoneCommentResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::HostedZone.stub('HostedZone', stub[:hosted_zone]) unless stub[:hosted_zone].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateTrafficPolicyComment
    class UpdateTrafficPolicyComment
      def self.default(visited=[])
        {
          traffic_policy: TrafficPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateTrafficPolicyCommentResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::TrafficPolicy.stub('TrafficPolicy', stub[:traffic_policy]) unless stub[:traffic_policy].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateTrafficPolicyInstance
    class UpdateTrafficPolicyInstance
      def self.default(visited=[])
        {
          traffic_policy_instance: TrafficPolicyInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateTrafficPolicyInstanceResponse')
        xml.attributes['xmlns'] = 'https://route53.amazonaws.com/doc/2013-04-01/'
        xml << Stubs::TrafficPolicyInstance.stub('TrafficPolicyInstance', stub[:traffic_policy_instance]) unless stub[:traffic_policy_instance].nil?
        http_resp.body = ::StringIO.new(xml.to_str)
      end
    end
  end
end
