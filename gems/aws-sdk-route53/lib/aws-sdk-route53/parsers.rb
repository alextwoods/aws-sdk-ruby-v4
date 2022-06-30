# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Route53
  module Parsers

    # Operation Parser for ActivateKeySigningKey
    class ActivateKeySigningKey
      def self.parse(http_resp)
        data = Types::ActivateKeySigningKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    class ChangeInfo
      def self.parse(xml)
        data = Types::ChangeInfo.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SubmittedAt') do |node|
          data.submitted_at = Time.parse(node.text) if node.text
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for InvalidInput
    class InvalidInput
      def self.parse(http_resp)
        data = Types::InvalidInput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidKMSArn
    class InvalidKMSArn
      def self.parse(http_resp)
        data = Types::InvalidKMSArn.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidKeySigningKeyStatus
    class InvalidKeySigningKeyStatus
      def self.parse(http_resp)
        data = Types::InvalidKeySigningKeyStatus.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ConcurrentModification
    class ConcurrentModification
      def self.parse(http_resp)
        data = Types::ConcurrentModification.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchKeySigningKey
    class NoSuchKeySigningKey
      def self.parse(http_resp)
        data = Types::NoSuchKeySigningKey.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSigningStatus
    class InvalidSigningStatus
      def self.parse(http_resp)
        data = Types::InvalidSigningStatus.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AssociateVPCWithHostedZone
    class AssociateVPCWithHostedZone
      def self.parse(http_resp)
        data = Types::AssociateVPCWithHostedZoneOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    # Error Parser for PriorRequestNotComplete
    class PriorRequestNotComplete
      def self.parse(http_resp)
        data = Types::PriorRequestNotComplete.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidVPCId
    class InvalidVPCId
      def self.parse(http_resp)
        data = Types::InvalidVPCId.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for LimitsExceeded
    class LimitsExceeded
      def self.parse(http_resp)
        data = Types::LimitsExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NotAuthorizedException
    class NotAuthorizedException
      def self.parse(http_resp)
        data = Types::NotAuthorizedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchHostedZone
    class NoSuchHostedZone
      def self.parse(http_resp)
        data = Types::NoSuchHostedZone.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ConflictingDomainExists
    class ConflictingDomainExists
      def self.parse(http_resp)
        data = Types::ConflictingDomainExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for PublicZoneVPCAssociation
    class PublicZoneVPCAssociation
      def self.parse(http_resp)
        data = Types::PublicZoneVPCAssociation.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ChangeCidrCollection
    class ChangeCidrCollection
      def self.parse(http_resp)
        data = Types::ChangeCidrCollectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CidrBlockInUseException
    class CidrBlockInUseException
      def self.parse(http_resp)
        data = Types::CidrBlockInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CidrCollectionVersionMismatchException
    class CidrCollectionVersionMismatchException
      def self.parse(http_resp)
        data = Types::CidrCollectionVersionMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchCidrCollectionException
    class NoSuchCidrCollectionException
      def self.parse(http_resp)
        data = Types::NoSuchCidrCollectionException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ChangeResourceRecordSets
    class ChangeResourceRecordSets
      def self.parse(http_resp)
        data = Types::ChangeResourceRecordSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidChangeBatch
    class InvalidChangeBatch
      def self.parse(http_resp)
        data = Types::InvalidChangeBatch.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('messages') do |node|
          children = node.children('Message')
          data.messages = Parsers::ErrorMessages.parse(children)
        end
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    class ErrorMessages
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchHealthCheck
    class NoSuchHealthCheck
      def self.parse(http_resp)
        data = Types::NoSuchHealthCheck.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ChangeTagsForResource
    class ChangeTagsForResource
      def self.parse(http_resp)
        data = Types::ChangeTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCidrCollection
    class CreateCidrCollection
      def self.parse(http_resp)
        data = Types::CreateCidrCollectionOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Collection') do |node|
          data.collection = Parsers::CidrCollection.parse(node)
        end
        data
      end
    end

    class CidrCollection
      def self.parse(xml)
        data = Types::CidrCollection.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Version') do |node|
          data.version = node.text&.to_i
        end
        return data
      end
    end

    # Error Parser for CidrCollectionAlreadyExistsException
    class CidrCollectionAlreadyExistsException
      def self.parse(http_resp)
        data = Types::CidrCollectionAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateHealthCheck
    class CreateHealthCheck
      def self.parse(http_resp)
        data = Types::CreateHealthCheckOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HealthCheck') do |node|
          data.health_check = Parsers::HealthCheck.parse(node)
        end
        data
      end
    end

    class HealthCheck
      def self.parse(xml)
        data = Types::HealthCheck.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        xml.at('LinkedService') do |node|
          data.linked_service = Parsers::LinkedService.parse(node)
        end
        xml.at('HealthCheckConfig') do |node|
          data.health_check_config = Parsers::HealthCheckConfig.parse(node)
        end
        xml.at('HealthCheckVersion') do |node|
          data.health_check_version = node.text&.to_i
        end
        xml.at('CloudWatchAlarmConfiguration') do |node|
          data.cloud_watch_alarm_configuration = Parsers::CloudWatchAlarmConfiguration.parse(node)
        end
        return data
      end
    end

    class CloudWatchAlarmConfiguration
      def self.parse(xml)
        data = Types::CloudWatchAlarmConfiguration.new
        xml.at('EvaluationPeriods') do |node|
          data.evaluation_periods = node.text&.to_i
        end
        xml.at('Threshold') do |node|
          data.threshold = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('ComparisonOperator') do |node|
          data.comparison_operator = (node.text || '')
        end
        xml.at('Period') do |node|
          data.period = node.text&.to_i
        end
        xml.at('MetricName') do |node|
          data.metric_name = (node.text || '')
        end
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('Statistic') do |node|
          data.statistic = (node.text || '')
        end
        xml.at('Dimensions') do |node|
          children = node.children('Dimension')
          data.dimensions = Parsers::DimensionList.parse(children)
        end
        return data
      end
    end

    class DimensionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Dimension.parse(node)
        end
        data
      end
    end

    class Dimension
      def self.parse(xml)
        data = Types::Dimension.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class HealthCheckConfig
      def self.parse(xml)
        data = Types::HealthCheckConfig.new
        xml.at('IPAddress') do |node|
          data.ip_address = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('ResourcePath') do |node|
          data.resource_path = (node.text || '')
        end
        xml.at('FullyQualifiedDomainName') do |node|
          data.fully_qualified_domain_name = (node.text || '')
        end
        xml.at('SearchString') do |node|
          data.search_string = (node.text || '')
        end
        xml.at('RequestInterval') do |node|
          data.request_interval = node.text&.to_i
        end
        xml.at('FailureThreshold') do |node|
          data.failure_threshold = node.text&.to_i
        end
        xml.at('MeasureLatency') do |node|
          data.measure_latency = (node.text == 'true')
        end
        xml.at('Inverted') do |node|
          data.inverted = (node.text == 'true')
        end
        xml.at('Disabled') do |node|
          data.disabled = (node.text == 'true')
        end
        xml.at('HealthThreshold') do |node|
          data.health_threshold = node.text&.to_i
        end
        xml.at('ChildHealthChecks') do |node|
          children = node.children('ChildHealthCheck')
          data.child_health_checks = Parsers::ChildHealthCheckList.parse(children)
        end
        xml.at('EnableSNI') do |node|
          data.enable_sni = (node.text == 'true')
        end
        xml.at('Regions') do |node|
          children = node.children('Region')
          data.regions = Parsers::HealthCheckRegionList.parse(children)
        end
        xml.at('AlarmIdentifier') do |node|
          data.alarm_identifier = Parsers::AlarmIdentifier.parse(node)
        end
        xml.at('InsufficientDataHealthStatus') do |node|
          data.insufficient_data_health_status = (node.text || '')
        end
        xml.at('RoutingControlArn') do |node|
          data.routing_control_arn = (node.text || '')
        end
        return data
      end
    end

    class AlarmIdentifier
      def self.parse(xml)
        data = Types::AlarmIdentifier.new
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        return data
      end
    end

    class HealthCheckRegionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ChildHealthCheckList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class LinkedService
      def self.parse(xml)
        data = Types::LinkedService.new
        xml.at('ServicePrincipal') do |node|
          data.service_principal = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for TooManyHealthChecks
    class TooManyHealthChecks
      def self.parse(http_resp)
        data = Types::TooManyHealthChecks.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for HealthCheckAlreadyExists
    class HealthCheckAlreadyExists
      def self.parse(http_resp)
        data = Types::HealthCheckAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateHostedZone
    class CreateHostedZone
      def self.parse(http_resp)
        data = Types::CreateHostedZoneOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HostedZone') do |node|
          data.hosted_zone = Parsers::HostedZone.parse(node)
        end
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        xml.at('DelegationSet') do |node|
          data.delegation_set = Parsers::DelegationSet.parse(node)
        end
        xml.at('VPC') do |node|
          data.vpc = Parsers::VPC.parse(node)
        end
        data
      end
    end

    class VPC
      def self.parse(xml)
        data = Types::VPC.new
        xml.at('VPCRegion') do |node|
          data.vpc_region = (node.text || '')
        end
        xml.at('VPCId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    class DelegationSet
      def self.parse(xml)
        data = Types::DelegationSet.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        xml.at('NameServers') do |node|
          children = node.children('NameServer')
          data.name_servers = Parsers::DelegationSetNameServers.parse(children)
        end
        return data
      end
    end

    class DelegationSetNameServers
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class HostedZone
      def self.parse(xml)
        data = Types::HostedZone.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        xml.at('Config') do |node|
          data.config = Parsers::HostedZoneConfig.parse(node)
        end
        xml.at('ResourceRecordSetCount') do |node|
          data.resource_record_set_count = node.text&.to_i
        end
        xml.at('LinkedService') do |node|
          data.linked_service = Parsers::LinkedService.parse(node)
        end
        return data
      end
    end

    class HostedZoneConfig
      def self.parse(xml)
        data = Types::HostedZoneConfig.new
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('PrivateZone') do |node|
          data.private_zone = (node.text == 'true')
        end
        return data
      end
    end

    # Error Parser for TooManyHostedZones
    class TooManyHostedZones
      def self.parse(http_resp)
        data = Types::TooManyHostedZones.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DelegationSetNotAvailable
    class DelegationSetNotAvailable
      def self.parse(http_resp)
        data = Types::DelegationSetNotAvailable.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DelegationSetNotReusable
    class DelegationSetNotReusable
      def self.parse(http_resp)
        data = Types::DelegationSetNotReusable.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchDelegationSet
    class NoSuchDelegationSet
      def self.parse(http_resp)
        data = Types::NoSuchDelegationSet.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDomainName
    class InvalidDomainName
      def self.parse(http_resp)
        data = Types::InvalidDomainName.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for HostedZoneAlreadyExists
    class HostedZoneAlreadyExists
      def self.parse(http_resp)
        data = Types::HostedZoneAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateKeySigningKey
    class CreateKeySigningKey
      def self.parse(http_resp)
        data = Types::CreateKeySigningKeyOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        xml.at('KeySigningKey') do |node|
          data.key_signing_key = Parsers::KeySigningKey.parse(node)
        end
        data
      end
    end

    class KeySigningKey
      def self.parse(xml)
        data = Types::KeySigningKey.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('KmsArn') do |node|
          data.kms_arn = (node.text || '')
        end
        xml.at('Flag') do |node|
          data.flag = node.text&.to_i
        end
        xml.at('SigningAlgorithmMnemonic') do |node|
          data.signing_algorithm_mnemonic = (node.text || '')
        end
        xml.at('SigningAlgorithmType') do |node|
          data.signing_algorithm_type = node.text&.to_i
        end
        xml.at('DigestAlgorithmMnemonic') do |node|
          data.digest_algorithm_mnemonic = (node.text || '')
        end
        xml.at('DigestAlgorithmType') do |node|
          data.digest_algorithm_type = node.text&.to_i
        end
        xml.at('KeyTag') do |node|
          data.key_tag = node.text&.to_i
        end
        xml.at('DigestValue') do |node|
          data.digest_value = (node.text || '')
        end
        xml.at('PublicKey') do |node|
          data.public_key = (node.text || '')
        end
        xml.at('DSRecord') do |node|
          data.ds_record = (node.text || '')
        end
        xml.at('DNSKEYRecord') do |node|
          data.dnskey_record = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StatusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('CreatedDate') do |node|
          data.created_date = Time.parse(node.text) if node.text
        end
        xml.at('LastModifiedDate') do |node|
          data.last_modified_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Error Parser for InvalidKeySigningKeyName
    class InvalidKeySigningKeyName
      def self.parse(http_resp)
        data = Types::InvalidKeySigningKeyName.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidArgument
    class InvalidArgument
      def self.parse(http_resp)
        data = Types::InvalidArgument.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyKeySigningKeys
    class TooManyKeySigningKeys
      def self.parse(http_resp)
        data = Types::TooManyKeySigningKeys.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for KeySigningKeyAlreadyExists
    class KeySigningKeyAlreadyExists
      def self.parse(http_resp)
        data = Types::KeySigningKeyAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateQueryLoggingConfig
    class CreateQueryLoggingConfig
      def self.parse(http_resp)
        data = Types::CreateQueryLoggingConfigOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('QueryLoggingConfig') do |node|
          data.query_logging_config = Parsers::QueryLoggingConfig.parse(node)
        end
        data
      end
    end

    class QueryLoggingConfig
      def self.parse(xml)
        data = Types::QueryLoggingConfig.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('HostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        xml.at('CloudWatchLogsLogGroupArn') do |node|
          data.cloud_watch_logs_log_group_arn = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for QueryLoggingConfigAlreadyExists
    class QueryLoggingConfigAlreadyExists
      def self.parse(http_resp)
        data = Types::QueryLoggingConfigAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InsufficientCloudWatchLogsResourcePolicy
    class InsufficientCloudWatchLogsResourcePolicy
      def self.parse(http_resp)
        data = Types::InsufficientCloudWatchLogsResourcePolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchCloudWatchLogsLogGroup
    class NoSuchCloudWatchLogsLogGroup
      def self.parse(http_resp)
        data = Types::NoSuchCloudWatchLogsLogGroup.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateReusableDelegationSet
    class CreateReusableDelegationSet
      def self.parse(http_resp)
        data = Types::CreateReusableDelegationSetOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('DelegationSet') do |node|
          data.delegation_set = Parsers::DelegationSet.parse(node)
        end
        data
      end
    end

    # Error Parser for DelegationSetAlreadyReusable
    class DelegationSetAlreadyReusable
      def self.parse(http_resp)
        data = Types::DelegationSetAlreadyReusable.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for HostedZoneNotFound
    class HostedZoneNotFound
      def self.parse(http_resp)
        data = Types::HostedZoneNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DelegationSetAlreadyCreated
    class DelegationSetAlreadyCreated
      def self.parse(http_resp)
        data = Types::DelegationSetAlreadyCreated.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateTrafficPolicy
    class CreateTrafficPolicy
      def self.parse(http_resp)
        data = Types::CreateTrafficPolicyOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicy') do |node|
          data.traffic_policy = Parsers::TrafficPolicy.parse(node)
        end
        data
      end
    end

    class TrafficPolicy
      def self.parse(xml)
        data = Types::TrafficPolicy.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Version') do |node|
          data.version = node.text&.to_i
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('Document') do |node|
          data.document = (node.text || '')
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for InvalidTrafficPolicyDocument
    class InvalidTrafficPolicyDocument
      def self.parse(http_resp)
        data = Types::InvalidTrafficPolicyDocument.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyTrafficPolicies
    class TooManyTrafficPolicies
      def self.parse(http_resp)
        data = Types::TooManyTrafficPolicies.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TrafficPolicyAlreadyExists
    class TrafficPolicyAlreadyExists
      def self.parse(http_resp)
        data = Types::TrafficPolicyAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateTrafficPolicyInstance
    class CreateTrafficPolicyInstance
      def self.parse(http_resp)
        data = Types::CreateTrafficPolicyInstanceOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicyInstance') do |node|
          data.traffic_policy_instance = Parsers::TrafficPolicyInstance.parse(node)
        end
        data
      end
    end

    class TrafficPolicyInstance
      def self.parse(xml)
        data = Types::TrafficPolicyInstance.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('HostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('TTL') do |node|
          data.ttl = node.text&.to_i
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('TrafficPolicyId') do |node|
          data.traffic_policy_id = (node.text || '')
        end
        xml.at('TrafficPolicyVersion') do |node|
          data.traffic_policy_version = node.text&.to_i
        end
        xml.at('TrafficPolicyType') do |node|
          data.traffic_policy_type = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for NoSuchTrafficPolicy
    class NoSuchTrafficPolicy
      def self.parse(http_resp)
        data = Types::NoSuchTrafficPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyTrafficPolicyInstances
    class TooManyTrafficPolicyInstances
      def self.parse(http_resp)
        data = Types::TooManyTrafficPolicyInstances.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TrafficPolicyInstanceAlreadyExists
    class TrafficPolicyInstanceAlreadyExists
      def self.parse(http_resp)
        data = Types::TrafficPolicyInstanceAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateTrafficPolicyVersion
    class CreateTrafficPolicyVersion
      def self.parse(http_resp)
        data = Types::CreateTrafficPolicyVersionOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicy') do |node|
          data.traffic_policy = Parsers::TrafficPolicy.parse(node)
        end
        data
      end
    end

    # Error Parser for TooManyTrafficPolicyVersionsForCurrentPolicy
    class TooManyTrafficPolicyVersionsForCurrentPolicy
      def self.parse(http_resp)
        data = Types::TooManyTrafficPolicyVersionsForCurrentPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateVPCAssociationAuthorization
    class CreateVPCAssociationAuthorization
      def self.parse(http_resp)
        data = Types::CreateVPCAssociationAuthorizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        xml.at('VPC') do |node|
          data.vpc = Parsers::VPC.parse(node)
        end
        data
      end
    end

    # Error Parser for TooManyVPCAssociationAuthorizations
    class TooManyVPCAssociationAuthorizations
      def self.parse(http_resp)
        data = Types::TooManyVPCAssociationAuthorizations.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeactivateKeySigningKey
    class DeactivateKeySigningKey
      def self.parse(http_resp)
        data = Types::DeactivateKeySigningKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    # Error Parser for KeySigningKeyInUse
    class KeySigningKeyInUse
      def self.parse(http_resp)
        data = Types::KeySigningKeyInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for KeySigningKeyInParentDSRecord
    class KeySigningKeyInParentDSRecord
      def self.parse(http_resp)
        data = Types::KeySigningKeyInParentDSRecord.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteCidrCollection
    class DeleteCidrCollection
      def self.parse(http_resp)
        data = Types::DeleteCidrCollectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for CidrCollectionInUseException
    class CidrCollectionInUseException
      def self.parse(http_resp)
        data = Types::CidrCollectionInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteHealthCheck
    class DeleteHealthCheck
      def self.parse(http_resp)
        data = Types::DeleteHealthCheckOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for HealthCheckInUse
    class HealthCheckInUse
      def self.parse(http_resp)
        data = Types::HealthCheckInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteHostedZone
    class DeleteHostedZone
      def self.parse(http_resp)
        data = Types::DeleteHostedZoneOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    # Error Parser for HostedZoneNotEmpty
    class HostedZoneNotEmpty
      def self.parse(http_resp)
        data = Types::HostedZoneNotEmpty.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteKeySigningKey
    class DeleteKeySigningKey
      def self.parse(http_resp)
        data = Types::DeleteKeySigningKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteQueryLoggingConfig
    class DeleteQueryLoggingConfig
      def self.parse(http_resp)
        data = Types::DeleteQueryLoggingConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for NoSuchQueryLoggingConfig
    class NoSuchQueryLoggingConfig
      def self.parse(http_resp)
        data = Types::NoSuchQueryLoggingConfig.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteReusableDelegationSet
    class DeleteReusableDelegationSet
      def self.parse(http_resp)
        data = Types::DeleteReusableDelegationSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for DelegationSetInUse
    class DelegationSetInUse
      def self.parse(http_resp)
        data = Types::DelegationSetInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteTrafficPolicy
    class DeleteTrafficPolicy
      def self.parse(http_resp)
        data = Types::DeleteTrafficPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for TrafficPolicyInUse
    class TrafficPolicyInUse
      def self.parse(http_resp)
        data = Types::TrafficPolicyInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteTrafficPolicyInstance
    class DeleteTrafficPolicyInstance
      def self.parse(http_resp)
        data = Types::DeleteTrafficPolicyInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for NoSuchTrafficPolicyInstance
    class NoSuchTrafficPolicyInstance
      def self.parse(http_resp)
        data = Types::NoSuchTrafficPolicyInstance.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteVPCAssociationAuthorization
    class DeleteVPCAssociationAuthorization
      def self.parse(http_resp)
        data = Types::DeleteVPCAssociationAuthorizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for VPCAssociationAuthorizationNotFound
    class VPCAssociationAuthorizationNotFound
      def self.parse(http_resp)
        data = Types::VPCAssociationAuthorizationNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DisableHostedZoneDNSSEC
    class DisableHostedZoneDNSSEC
      def self.parse(http_resp)
        data = Types::DisableHostedZoneDNSSECOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    # Error Parser for DNSSECNotFound
    class DNSSECNotFound
      def self.parse(http_resp)
        data = Types::DNSSECNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DisassociateVPCFromHostedZone
    class DisassociateVPCFromHostedZone
      def self.parse(http_resp)
        data = Types::DisassociateVPCFromHostedZoneOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    # Error Parser for LastVPCAssociation
    class LastVPCAssociation
      def self.parse(http_resp)
        data = Types::LastVPCAssociation.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for VPCAssociationNotFound
    class VPCAssociationNotFound
      def self.parse(http_resp)
        data = Types::VPCAssociationNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for EnableHostedZoneDNSSEC
    class EnableHostedZoneDNSSEC
      def self.parse(http_resp)
        data = Types::EnableHostedZoneDNSSECOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    # Error Parser for HostedZonePartiallyDelegated
    class HostedZonePartiallyDelegated
      def self.parse(http_resp)
        data = Types::HostedZonePartiallyDelegated.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for KeySigningKeyWithActiveStatusNotFound
    class KeySigningKeyWithActiveStatusNotFound
      def self.parse(http_resp)
        data = Types::KeySigningKeyWithActiveStatusNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetAccountLimit
    class GetAccountLimit
      def self.parse(http_resp)
        data = Types::GetAccountLimitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Limit') do |node|
          data.limit = Parsers::AccountLimit.parse(node)
        end
        xml.at('Count') do |node|
          data.count = node.text&.to_i
        end
        data
      end
    end

    class AccountLimit
      def self.parse(xml)
        data = Types::AccountLimit.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for GetChange
    class GetChange
      def self.parse(http_resp)
        data = Types::GetChangeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ChangeInfo') do |node|
          data.change_info = Parsers::ChangeInfo.parse(node)
        end
        data
      end
    end

    # Error Parser for NoSuchChange
    class NoSuchChange
      def self.parse(http_resp)
        data = Types::NoSuchChange.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetCheckerIpRanges
    class GetCheckerIpRanges
      def self.parse(http_resp)
        data = Types::GetCheckerIpRangesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('CheckerIpRanges') do |node|
          children = node.children('member')
          data.checker_ip_ranges = Parsers::CheckerIpRanges.parse(children)
        end
        data
      end
    end

    class CheckerIpRanges
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetDNSSEC
    class GetDNSSEC
      def self.parse(http_resp)
        data = Types::GetDNSSECOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Status') do |node|
          data.status = Parsers::DNSSECStatus.parse(node)
        end
        xml.at('KeySigningKeys') do |node|
          children = node.children('member')
          data.key_signing_keys = Parsers::KeySigningKeys.parse(children)
        end
        data
      end
    end

    class KeySigningKeys
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::KeySigningKey.parse(node)
        end
        data
      end
    end

    class DNSSECStatus
      def self.parse(xml)
        data = Types::DNSSECStatus.new
        xml.at('ServeSignature') do |node|
          data.serve_signature = (node.text || '')
        end
        xml.at('StatusMessage') do |node|
          data.status_message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetGeoLocation
    class GetGeoLocation
      def self.parse(http_resp)
        data = Types::GetGeoLocationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('GeoLocationDetails') do |node|
          data.geo_location_details = Parsers::GeoLocationDetails.parse(node)
        end
        data
      end
    end

    class GeoLocationDetails
      def self.parse(xml)
        data = Types::GeoLocationDetails.new
        xml.at('ContinentCode') do |node|
          data.continent_code = (node.text || '')
        end
        xml.at('ContinentName') do |node|
          data.continent_name = (node.text || '')
        end
        xml.at('CountryCode') do |node|
          data.country_code = (node.text || '')
        end
        xml.at('CountryName') do |node|
          data.country_name = (node.text || '')
        end
        xml.at('SubdivisionCode') do |node|
          data.subdivision_code = (node.text || '')
        end
        xml.at('SubdivisionName') do |node|
          data.subdivision_name = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for NoSuchGeoLocation
    class NoSuchGeoLocation
      def self.parse(http_resp)
        data = Types::NoSuchGeoLocation.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetHealthCheck
    class GetHealthCheck
      def self.parse(http_resp)
        data = Types::GetHealthCheckOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HealthCheck') do |node|
          data.health_check = Parsers::HealthCheck.parse(node)
        end
        data
      end
    end

    # Error Parser for IncompatibleVersion
    class IncompatibleVersion
      def self.parse(http_resp)
        data = Types::IncompatibleVersion.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetHealthCheckCount
    class GetHealthCheckCount
      def self.parse(http_resp)
        data = Types::GetHealthCheckCountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HealthCheckCount') do |node|
          data.health_check_count = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for GetHealthCheckLastFailureReason
    class GetHealthCheckLastFailureReason
      def self.parse(http_resp)
        data = Types::GetHealthCheckLastFailureReasonOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HealthCheckObservations') do |node|
          children = node.children('HealthCheckObservation')
          data.health_check_observations = Parsers::HealthCheckObservations.parse(children)
        end
        data
      end
    end

    class HealthCheckObservations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HealthCheckObservation.parse(node)
        end
        data
      end
    end

    class HealthCheckObservation
      def self.parse(xml)
        data = Types::HealthCheckObservation.new
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        xml.at('IPAddress') do |node|
          data.ip_address = (node.text || '')
        end
        xml.at('StatusReport') do |node|
          data.status_report = Parsers::StatusReport.parse(node)
        end
        return data
      end
    end

    class StatusReport
      def self.parse(xml)
        data = Types::StatusReport.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CheckedTime') do |node|
          data.checked_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for GetHealthCheckStatus
    class GetHealthCheckStatus
      def self.parse(http_resp)
        data = Types::GetHealthCheckStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HealthCheckObservations') do |node|
          children = node.children('HealthCheckObservation')
          data.health_check_observations = Parsers::HealthCheckObservations.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetHostedZone
    class GetHostedZone
      def self.parse(http_resp)
        data = Types::GetHostedZoneOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HostedZone') do |node|
          data.hosted_zone = Parsers::HostedZone.parse(node)
        end
        xml.at('DelegationSet') do |node|
          data.delegation_set = Parsers::DelegationSet.parse(node)
        end
        xml.at('VPCs') do |node|
          children = node.children('VPC')
          data.vp_cs = Parsers::VPCs.parse(children)
        end
        data
      end
    end

    class VPCs
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VPC.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetHostedZoneCount
    class GetHostedZoneCount
      def self.parse(http_resp)
        data = Types::GetHostedZoneCountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HostedZoneCount') do |node|
          data.hosted_zone_count = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for GetHostedZoneLimit
    class GetHostedZoneLimit
      def self.parse(http_resp)
        data = Types::GetHostedZoneLimitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Limit') do |node|
          data.limit = Parsers::HostedZoneLimit.parse(node)
        end
        xml.at('Count') do |node|
          data.count = node.text&.to_i
        end
        data
      end
    end

    class HostedZoneLimit
      def self.parse(xml)
        data = Types::HostedZoneLimit.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = node.text&.to_i
        end
        return data
      end
    end

    # Error Parser for HostedZoneNotPrivate
    class HostedZoneNotPrivate
      def self.parse(http_resp)
        data = Types::HostedZoneNotPrivate.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetQueryLoggingConfig
    class GetQueryLoggingConfig
      def self.parse(http_resp)
        data = Types::GetQueryLoggingConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('QueryLoggingConfig') do |node|
          data.query_logging_config = Parsers::QueryLoggingConfig.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetReusableDelegationSet
    class GetReusableDelegationSet
      def self.parse(http_resp)
        data = Types::GetReusableDelegationSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('DelegationSet') do |node|
          data.delegation_set = Parsers::DelegationSet.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetReusableDelegationSetLimit
    class GetReusableDelegationSetLimit
      def self.parse(http_resp)
        data = Types::GetReusableDelegationSetLimitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Limit') do |node|
          data.limit = Parsers::ReusableDelegationSetLimit.parse(node)
        end
        xml.at('Count') do |node|
          data.count = node.text&.to_i
        end
        data
      end
    end

    class ReusableDelegationSetLimit
      def self.parse(xml)
        data = Types::ReusableDelegationSetLimit.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for GetTrafficPolicy
    class GetTrafficPolicy
      def self.parse(http_resp)
        data = Types::GetTrafficPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicy') do |node|
          data.traffic_policy = Parsers::TrafficPolicy.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetTrafficPolicyInstance
    class GetTrafficPolicyInstance
      def self.parse(http_resp)
        data = Types::GetTrafficPolicyInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicyInstance') do |node|
          data.traffic_policy_instance = Parsers::TrafficPolicyInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetTrafficPolicyInstanceCount
    class GetTrafficPolicyInstanceCount
      def self.parse(http_resp)
        data = Types::GetTrafficPolicyInstanceCountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicyInstanceCount') do |node|
          data.traffic_policy_instance_count = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for ListCidrBlocks
    class ListCidrBlocks
      def self.parse(http_resp)
        data = Types::ListCidrBlocksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('CidrBlocks') do |node|
          children = node.children('member')
          data.cidr_blocks = Parsers::CidrBlockSummaries.parse(children)
        end
        data
      end
    end

    class CidrBlockSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CidrBlockSummary.parse(node)
        end
        data
      end
    end

    class CidrBlockSummary
      def self.parse(xml)
        data = Types::CidrBlockSummary.new
        xml.at('CidrBlock') do |node|
          data.cidr_block = (node.text || '')
        end
        xml.at('LocationName') do |node|
          data.location_name = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for NoSuchCidrLocationException
    class NoSuchCidrLocationException
      def self.parse(http_resp)
        data = Types::NoSuchCidrLocationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListCidrCollections
    class ListCidrCollections
      def self.parse(http_resp)
        data = Types::ListCidrCollectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('CidrCollections') do |node|
          children = node.children('member')
          data.cidr_collections = Parsers::CollectionSummaries.parse(children)
        end
        data
      end
    end

    class CollectionSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CollectionSummary.parse(node)
        end
        data
      end
    end

    class CollectionSummary
      def self.parse(xml)
        data = Types::CollectionSummary.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Version') do |node|
          data.version = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for ListCidrLocations
    class ListCidrLocations
      def self.parse(http_resp)
        data = Types::ListCidrLocationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('CidrLocations') do |node|
          children = node.children('member')
          data.cidr_locations = Parsers::LocationSummaries.parse(children)
        end
        data
      end
    end

    class LocationSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LocationSummary.parse(node)
        end
        data
      end
    end

    class LocationSummary
      def self.parse(xml)
        data = Types::LocationSummary.new
        xml.at('LocationName') do |node|
          data.location_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListGeoLocations
    class ListGeoLocations
      def self.parse(http_resp)
        data = Types::ListGeoLocationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('GeoLocationDetailsList') do |node|
          children = node.children('GeoLocationDetails')
          data.geo_location_details_list = Parsers::GeoLocationDetailsList.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('NextContinentCode') do |node|
          data.next_continent_code = (node.text || '')
        end
        xml.at('NextCountryCode') do |node|
          data.next_country_code = (node.text || '')
        end
        xml.at('NextSubdivisionCode') do |node|
          data.next_subdivision_code = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    class GeoLocationDetailsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::GeoLocationDetails.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListHealthChecks
    class ListHealthChecks
      def self.parse(http_resp)
        data = Types::ListHealthChecksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HealthChecks') do |node|
          children = node.children('HealthCheck')
          data.health_checks = Parsers::HealthChecks.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    class HealthChecks
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HealthCheck.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListHostedZones
    class ListHostedZones
      def self.parse(http_resp)
        data = Types::ListHostedZonesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HostedZones') do |node|
          children = node.children('HostedZone')
          data.hosted_zones = Parsers::HostedZones.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    class HostedZones
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HostedZone.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListHostedZonesByName
    class ListHostedZonesByName
      def self.parse(http_resp)
        data = Types::ListHostedZonesByNameOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HostedZones') do |node|
          children = node.children('HostedZone')
          data.hosted_zones = Parsers::HostedZones.parse(children)
        end
        xml.at('DNSName') do |node|
          data.dns_name = (node.text || '')
        end
        xml.at('HostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('NextDNSName') do |node|
          data.next_dns_name = (node.text || '')
        end
        xml.at('NextHostedZoneId') do |node|
          data.next_hosted_zone_id = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for ListHostedZonesByVPC
    class ListHostedZonesByVPC
      def self.parse(http_resp)
        data = Types::ListHostedZonesByVPCOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HostedZoneSummaries') do |node|
          children = node.children('HostedZoneSummary')
          data.hosted_zone_summaries = Parsers::HostedZoneSummaries.parse(children)
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class HostedZoneSummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HostedZoneSummary.parse(node)
        end
        data
      end
    end

    class HostedZoneSummary
      def self.parse(xml)
        data = Types::HostedZoneSummary.new
        xml.at('HostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Owner') do |node|
          data.owner = Parsers::HostedZoneOwner.parse(node)
        end
        return data
      end
    end

    class HostedZoneOwner
      def self.parse(xml)
        data = Types::HostedZoneOwner.new
        xml.at('OwningAccount') do |node|
          data.owning_account = (node.text || '')
        end
        xml.at('OwningService') do |node|
          data.owning_service = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for InvalidPaginationToken
    class InvalidPaginationToken
      def self.parse(http_resp)
        data = Types::InvalidPaginationToken.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListQueryLoggingConfigs
    class ListQueryLoggingConfigs
      def self.parse(http_resp)
        data = Types::ListQueryLoggingConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('QueryLoggingConfigs') do |node|
          children = node.children('QueryLoggingConfig')
          data.query_logging_configs = Parsers::QueryLoggingConfigs.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class QueryLoggingConfigs
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::QueryLoggingConfig.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListResourceRecordSets
    class ListResourceRecordSets
      def self.parse(http_resp)
        data = Types::ListResourceRecordSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ResourceRecordSets') do |node|
          children = node.children('ResourceRecordSet')
          data.resource_record_sets = Parsers::ResourceRecordSets.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('NextRecordName') do |node|
          data.next_record_name = (node.text || '')
        end
        xml.at('NextRecordType') do |node|
          data.next_record_type = (node.text || '')
        end
        xml.at('NextRecordIdentifier') do |node|
          data.next_record_identifier = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    class ResourceRecordSets
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ResourceRecordSet.parse(node)
        end
        data
      end
    end

    class ResourceRecordSet
      def self.parse(xml)
        data = Types::ResourceRecordSet.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('SetIdentifier') do |node|
          data.set_identifier = (node.text || '')
        end
        xml.at('Weight') do |node|
          data.weight = node.text&.to_i
        end
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        xml.at('GeoLocation') do |node|
          data.geo_location = Parsers::GeoLocation.parse(node)
        end
        xml.at('Failover') do |node|
          data.failover = (node.text || '')
        end
        xml.at('MultiValueAnswer') do |node|
          data.multi_value_answer = (node.text == 'true')
        end
        xml.at('TTL') do |node|
          data.ttl = node.text&.to_i
        end
        xml.at('ResourceRecords') do |node|
          children = node.children('ResourceRecord')
          data.resource_records = Parsers::ResourceRecords.parse(children)
        end
        xml.at('AliasTarget') do |node|
          data.alias_target = Parsers::AliasTarget.parse(node)
        end
        xml.at('HealthCheckId') do |node|
          data.health_check_id = (node.text || '')
        end
        xml.at('TrafficPolicyInstanceId') do |node|
          data.traffic_policy_instance_id = (node.text || '')
        end
        xml.at('CidrRoutingConfig') do |node|
          data.cidr_routing_config = Parsers::CidrRoutingConfig.parse(node)
        end
        return data
      end
    end

    class CidrRoutingConfig
      def self.parse(xml)
        data = Types::CidrRoutingConfig.new
        xml.at('CollectionId') do |node|
          data.collection_id = (node.text || '')
        end
        xml.at('LocationName') do |node|
          data.location_name = (node.text || '')
        end
        return data
      end
    end

    class AliasTarget
      def self.parse(xml)
        data = Types::AliasTarget.new
        xml.at('HostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        xml.at('DNSName') do |node|
          data.dns_name = (node.text || '')
        end
        xml.at('EvaluateTargetHealth') do |node|
          data.evaluate_target_health = (node.text == 'true')
        end
        return data
      end
    end

    class ResourceRecords
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ResourceRecord.parse(node)
        end
        data
      end
    end

    class ResourceRecord
      def self.parse(xml)
        data = Types::ResourceRecord.new
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class GeoLocation
      def self.parse(xml)
        data = Types::GeoLocation.new
        xml.at('ContinentCode') do |node|
          data.continent_code = (node.text || '')
        end
        xml.at('CountryCode') do |node|
          data.country_code = (node.text || '')
        end
        xml.at('SubdivisionCode') do |node|
          data.subdivision_code = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListReusableDelegationSets
    class ListReusableDelegationSets
      def self.parse(http_resp)
        data = Types::ListReusableDelegationSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('DelegationSets') do |node|
          children = node.children('DelegationSet')
          data.delegation_sets = Parsers::DelegationSets.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    class DelegationSets
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DelegationSet.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ResourceTagSet') do |node|
          data.resource_tag_set = Parsers::ResourceTagSet.parse(node)
        end
        data
      end
    end

    class ResourceTagSet
      def self.parse(xml)
        data = Types::ResourceTagSet.new
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('ResourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListTagsForResources
    class ListTagsForResources
      def self.parse(http_resp)
        data = Types::ListTagsForResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ResourceTagSets') do |node|
          children = node.children('ResourceTagSet')
          data.resource_tag_sets = Parsers::ResourceTagSetList.parse(children)
        end
        data
      end
    end

    class ResourceTagSetList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ResourceTagSet.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListTrafficPolicies
    class ListTrafficPolicies
      def self.parse(http_resp)
        data = Types::ListTrafficPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicySummaries') do |node|
          children = node.children('TrafficPolicySummary')
          data.traffic_policy_summaries = Parsers::TrafficPolicySummaries.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('TrafficPolicyIdMarker') do |node|
          data.traffic_policy_id_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    class TrafficPolicySummaries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TrafficPolicySummary.parse(node)
        end
        data
      end
    end

    class TrafficPolicySummary
      def self.parse(xml)
        data = Types::TrafficPolicySummary.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('LatestVersion') do |node|
          data.latest_version = node.text&.to_i
        end
        xml.at('TrafficPolicyCount') do |node|
          data.traffic_policy_count = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for ListTrafficPolicyInstances
    class ListTrafficPolicyInstances
      def self.parse(http_resp)
        data = Types::ListTrafficPolicyInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicyInstances') do |node|
          children = node.children('TrafficPolicyInstance')
          data.traffic_policy_instances = Parsers::TrafficPolicyInstances.parse(children)
        end
        xml.at('HostedZoneIdMarker') do |node|
          data.hosted_zone_id_marker = (node.text || '')
        end
        xml.at('TrafficPolicyInstanceNameMarker') do |node|
          data.traffic_policy_instance_name_marker = (node.text || '')
        end
        xml.at('TrafficPolicyInstanceTypeMarker') do |node|
          data.traffic_policy_instance_type_marker = (node.text || '')
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    class TrafficPolicyInstances
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TrafficPolicyInstance.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListTrafficPolicyInstancesByHostedZone
    class ListTrafficPolicyInstancesByHostedZone
      def self.parse(http_resp)
        data = Types::ListTrafficPolicyInstancesByHostedZoneOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicyInstances') do |node|
          children = node.children('TrafficPolicyInstance')
          data.traffic_policy_instances = Parsers::TrafficPolicyInstances.parse(children)
        end
        xml.at('TrafficPolicyInstanceNameMarker') do |node|
          data.traffic_policy_instance_name_marker = (node.text || '')
        end
        xml.at('TrafficPolicyInstanceTypeMarker') do |node|
          data.traffic_policy_instance_type_marker = (node.text || '')
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for ListTrafficPolicyInstancesByPolicy
    class ListTrafficPolicyInstancesByPolicy
      def self.parse(http_resp)
        data = Types::ListTrafficPolicyInstancesByPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicyInstances') do |node|
          children = node.children('TrafficPolicyInstance')
          data.traffic_policy_instances = Parsers::TrafficPolicyInstances.parse(children)
        end
        xml.at('HostedZoneIdMarker') do |node|
          data.hosted_zone_id_marker = (node.text || '')
        end
        xml.at('TrafficPolicyInstanceNameMarker') do |node|
          data.traffic_policy_instance_name_marker = (node.text || '')
        end
        xml.at('TrafficPolicyInstanceTypeMarker') do |node|
          data.traffic_policy_instance_type_marker = (node.text || '')
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for ListTrafficPolicyVersions
    class ListTrafficPolicyVersions
      def self.parse(http_resp)
        data = Types::ListTrafficPolicyVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicies') do |node|
          children = node.children('TrafficPolicy')
          data.traffic_policies = Parsers::TrafficPolicies.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('TrafficPolicyVersionMarker') do |node|
          data.traffic_policy_version_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        data
      end
    end

    class TrafficPolicies
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TrafficPolicy.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListVPCAssociationAuthorizations
    class ListVPCAssociationAuthorizations
      def self.parse(http_resp)
        data = Types::ListVPCAssociationAuthorizationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HostedZoneId') do |node|
          data.hosted_zone_id = (node.text || '')
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('VPCs') do |node|
          children = node.children('VPC')
          data.vp_cs = Parsers::VPCs.parse(children)
        end
        data
      end
    end

    # Operation Parser for TestDNSAnswer
    class TestDNSAnswer
      def self.parse(http_resp)
        data = Types::TestDNSAnswerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Nameserver') do |node|
          data.nameserver = (node.text || '')
        end
        xml.at('RecordName') do |node|
          data.record_name = (node.text || '')
        end
        xml.at('RecordType') do |node|
          data.record_type = (node.text || '')
        end
        xml.at('RecordData') do |node|
          children = node.children('RecordDataEntry')
          data.record_data = Parsers::RecordData.parse(children)
        end
        xml.at('ResponseCode') do |node|
          data.response_code = (node.text || '')
        end
        xml.at('Protocol') do |node|
          data.protocol = (node.text || '')
        end
        data
      end
    end

    class RecordData
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateHealthCheck
    class UpdateHealthCheck
      def self.parse(http_resp)
        data = Types::UpdateHealthCheckOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HealthCheck') do |node|
          data.health_check = Parsers::HealthCheck.parse(node)
        end
        data
      end
    end

    # Error Parser for HealthCheckVersionMismatch
    class HealthCheckVersionMismatch
      def self.parse(http_resp)
        data = Types::HealthCheckVersionMismatch.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateHostedZoneComment
    class UpdateHostedZoneComment
      def self.parse(http_resp)
        data = Types::UpdateHostedZoneCommentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('HostedZone') do |node|
          data.hosted_zone = Parsers::HostedZone.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateTrafficPolicyComment
    class UpdateTrafficPolicyComment
      def self.parse(http_resp)
        data = Types::UpdateTrafficPolicyCommentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicy') do |node|
          data.traffic_policy = Parsers::TrafficPolicy.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateTrafficPolicyInstance
    class UpdateTrafficPolicyInstance
      def self.parse(http_resp)
        data = Types::UpdateTrafficPolicyInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TrafficPolicyInstance') do |node|
          data.traffic_policy_instance = Parsers::TrafficPolicyInstance.parse(node)
        end
        data
      end
    end

    # Error Parser for ConflictingTypes
    class ConflictingTypes
      def self.parse(http_resp)
        data = Types::ConflictingTypes.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end
  end
end
