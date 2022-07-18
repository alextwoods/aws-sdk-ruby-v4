# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Shield
  module Stubs

    # Operation Stubber for AssociateDRTLogBucket
    class AssociateDRTLogBucket
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateDRTRole
    class AssociateDRTRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateHealthCheck
    class AssociateHealthCheck
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateProactiveEngagementDetails
    class AssociateProactiveEngagementDetails
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProtection
    class CreateProtection
      def self.default(visited=[])
        {
          protection_id: 'protection_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProtectionId'] = stub[:protection_id] unless stub[:protection_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProtectionGroup
    class CreateProtectionGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSubscription
    class CreateSubscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProtection
    class DeleteProtection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProtectionGroup
    class DeleteProtectionGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSubscription
    class DeleteSubscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAttack
    class DescribeAttack
      def self.default(visited=[])
        {
          attack: AttackDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Attack'] = Stubs::AttackDetail.stub(stub[:attack]) unless stub[:attack].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AttackDetail
    class AttackDetail
      def self.default(visited=[])
        return nil if visited.include?('AttackDetail')
        visited = visited + ['AttackDetail']
        {
          attack_id: 'attack_id',
          resource_arn: 'resource_arn',
          sub_resources: SubResourceSummaryList.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          attack_counters: SummarizedCounterList.default(visited),
          attack_properties: AttackProperties.default(visited),
          mitigations: MitigationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttackDetail.new
        data = {}
        data['AttackId'] = stub[:attack_id] unless stub[:attack_id].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['SubResources'] = Stubs::SubResourceSummaryList.stub(stub[:sub_resources]) unless stub[:sub_resources].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['AttackCounters'] = Stubs::SummarizedCounterList.stub(stub[:attack_counters]) unless stub[:attack_counters].nil?
        data['AttackProperties'] = Stubs::AttackProperties.stub(stub[:attack_properties]) unless stub[:attack_properties].nil?
        data['Mitigations'] = Stubs::MitigationList.stub(stub[:mitigations]) unless stub[:mitigations].nil?
        data
      end
    end

    # List Stubber for MitigationList
    class MitigationList
      def self.default(visited=[])
        return nil if visited.include?('MitigationList')
        visited = visited + ['MitigationList']
        [
          Mitigation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Mitigation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Mitigation
    class Mitigation
      def self.default(visited=[])
        return nil if visited.include?('Mitigation')
        visited = visited + ['Mitigation']
        {
          mitigation_name: 'mitigation_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Mitigation.new
        data = {}
        data['MitigationName'] = stub[:mitigation_name] unless stub[:mitigation_name].nil?
        data
      end
    end

    # List Stubber for AttackProperties
    class AttackProperties
      def self.default(visited=[])
        return nil if visited.include?('AttackProperties')
        visited = visited + ['AttackProperties']
        [
          AttackProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttackProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttackProperty
    class AttackProperty
      def self.default(visited=[])
        return nil if visited.include?('AttackProperty')
        visited = visited + ['AttackProperty']
        {
          attack_layer: 'attack_layer',
          attack_property_identifier: 'attack_property_identifier',
          top_contributors: TopContributors.default(visited),
          unit: 'unit',
          total: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AttackProperty.new
        data = {}
        data['AttackLayer'] = stub[:attack_layer] unless stub[:attack_layer].nil?
        data['AttackPropertyIdentifier'] = stub[:attack_property_identifier] unless stub[:attack_property_identifier].nil?
        data['TopContributors'] = Stubs::TopContributors.stub(stub[:top_contributors]) unless stub[:top_contributors].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data['Total'] = stub[:total] unless stub[:total].nil?
        data
      end
    end

    # List Stubber for TopContributors
    class TopContributors
      def self.default(visited=[])
        return nil if visited.include?('TopContributors')
        visited = visited + ['TopContributors']
        [
          Contributor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Contributor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Contributor
    class Contributor
      def self.default(visited=[])
        return nil if visited.include?('Contributor')
        visited = visited + ['Contributor']
        {
          name: 'name',
          value: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Contributor.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for SummarizedCounterList
    class SummarizedCounterList
      def self.default(visited=[])
        return nil if visited.include?('SummarizedCounterList')
        visited = visited + ['SummarizedCounterList']
        [
          SummarizedCounter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SummarizedCounter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SummarizedCounter
    class SummarizedCounter
      def self.default(visited=[])
        return nil if visited.include?('SummarizedCounter')
        visited = visited + ['SummarizedCounter']
        {
          name: 'name',
          max: 1.0,
          average: 1.0,
          sum: 1.0,
          n: 1,
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::SummarizedCounter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Max'] = Hearth::NumberHelper.serialize(stub[:max])
        data['Average'] = Hearth::NumberHelper.serialize(stub[:average])
        data['Sum'] = Hearth::NumberHelper.serialize(stub[:sum])
        data['N'] = stub[:n] unless stub[:n].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # List Stubber for SubResourceSummaryList
    class SubResourceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('SubResourceSummaryList')
        visited = visited + ['SubResourceSummaryList']
        [
          SubResourceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SubResourceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SubResourceSummary
    class SubResourceSummary
      def self.default(visited=[])
        return nil if visited.include?('SubResourceSummary')
        visited = visited + ['SubResourceSummary']
        {
          type: 'type',
          id: 'id',
          attack_vectors: SummarizedAttackVectorList.default(visited),
          counters: SummarizedCounterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubResourceSummary.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['AttackVectors'] = Stubs::SummarizedAttackVectorList.stub(stub[:attack_vectors]) unless stub[:attack_vectors].nil?
        data['Counters'] = Stubs::SummarizedCounterList.stub(stub[:counters]) unless stub[:counters].nil?
        data
      end
    end

    # List Stubber for SummarizedAttackVectorList
    class SummarizedAttackVectorList
      def self.default(visited=[])
        return nil if visited.include?('SummarizedAttackVectorList')
        visited = visited + ['SummarizedAttackVectorList']
        [
          SummarizedAttackVector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SummarizedAttackVector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SummarizedAttackVector
    class SummarizedAttackVector
      def self.default(visited=[])
        return nil if visited.include?('SummarizedAttackVector')
        visited = visited + ['SummarizedAttackVector']
        {
          vector_type: 'vector_type',
          vector_counters: SummarizedCounterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SummarizedAttackVector.new
        data = {}
        data['VectorType'] = stub[:vector_type] unless stub[:vector_type].nil?
        data['VectorCounters'] = Stubs::SummarizedCounterList.stub(stub[:vector_counters]) unless stub[:vector_counters].nil?
        data
      end
    end

    # Operation Stubber for DescribeAttackStatistics
    class DescribeAttackStatistics
      def self.default(visited=[])
        {
          time_range: TimeRange.default(visited),
          data_items: AttackStatisticsDataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TimeRange'] = Stubs::TimeRange.stub(stub[:time_range]) unless stub[:time_range].nil?
        data['DataItems'] = Stubs::AttackStatisticsDataList.stub(stub[:data_items]) unless stub[:data_items].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AttackStatisticsDataList
    class AttackStatisticsDataList
      def self.default(visited=[])
        return nil if visited.include?('AttackStatisticsDataList')
        visited = visited + ['AttackStatisticsDataList']
        [
          AttackStatisticsDataItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttackStatisticsDataItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttackStatisticsDataItem
    class AttackStatisticsDataItem
      def self.default(visited=[])
        return nil if visited.include?('AttackStatisticsDataItem')
        visited = visited + ['AttackStatisticsDataItem']
        {
          attack_volume: AttackVolume.default(visited),
          attack_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AttackStatisticsDataItem.new
        data = {}
        data['AttackVolume'] = Stubs::AttackVolume.stub(stub[:attack_volume]) unless stub[:attack_volume].nil?
        data['AttackCount'] = stub[:attack_count] unless stub[:attack_count].nil?
        data
      end
    end

    # Structure Stubber for AttackVolume
    class AttackVolume
      def self.default(visited=[])
        return nil if visited.include?('AttackVolume')
        visited = visited + ['AttackVolume']
        {
          bits_per_second: AttackVolumeStatistics.default(visited),
          packets_per_second: AttackVolumeStatistics.default(visited),
          requests_per_second: AttackVolumeStatistics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttackVolume.new
        data = {}
        data['BitsPerSecond'] = Stubs::AttackVolumeStatistics.stub(stub[:bits_per_second]) unless stub[:bits_per_second].nil?
        data['PacketsPerSecond'] = Stubs::AttackVolumeStatistics.stub(stub[:packets_per_second]) unless stub[:packets_per_second].nil?
        data['RequestsPerSecond'] = Stubs::AttackVolumeStatistics.stub(stub[:requests_per_second]) unless stub[:requests_per_second].nil?
        data
      end
    end

    # Structure Stubber for AttackVolumeStatistics
    class AttackVolumeStatistics
      def self.default(visited=[])
        return nil if visited.include?('AttackVolumeStatistics')
        visited = visited + ['AttackVolumeStatistics']
        {
          max: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::AttackVolumeStatistics.new
        data = {}
        data['Max'] = Hearth::NumberHelper.serialize(stub[:max])
        data
      end
    end

    # Structure Stubber for TimeRange
    class TimeRange
      def self.default(visited=[])
        return nil if visited.include?('TimeRange')
        visited = visited + ['TimeRange']
        {
          from_inclusive: Time.now,
          to_exclusive: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeRange.new
        data = {}
        data['FromInclusive'] = Hearth::TimeHelper.to_epoch_seconds(stub[:from_inclusive]).to_i unless stub[:from_inclusive].nil?
        data['ToExclusive'] = Hearth::TimeHelper.to_epoch_seconds(stub[:to_exclusive]).to_i unless stub[:to_exclusive].nil?
        data
      end
    end

    # Operation Stubber for DescribeDRTAccess
    class DescribeDRTAccess
      def self.default(visited=[])
        {
          role_arn: 'role_arn',
          log_bucket_list: LogBucketList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['LogBucketList'] = Stubs::LogBucketList.stub(stub[:log_bucket_list]) unless stub[:log_bucket_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LogBucketList
    class LogBucketList
      def self.default(visited=[])
        return nil if visited.include?('LogBucketList')
        visited = visited + ['LogBucketList']
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

    # Operation Stubber for DescribeEmergencyContactSettings
    class DescribeEmergencyContactSettings
      def self.default(visited=[])
        {
          emergency_contact_list: EmergencyContactList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EmergencyContactList'] = Stubs::EmergencyContactList.stub(stub[:emergency_contact_list]) unless stub[:emergency_contact_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EmergencyContactList
    class EmergencyContactList
      def self.default(visited=[])
        return nil if visited.include?('EmergencyContactList')
        visited = visited + ['EmergencyContactList']
        [
          EmergencyContact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EmergencyContact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EmergencyContact
    class EmergencyContact
      def self.default(visited=[])
        return nil if visited.include?('EmergencyContact')
        visited = visited + ['EmergencyContact']
        {
          email_address: 'email_address',
          phone_number: 'phone_number',
          contact_notes: 'contact_notes',
        }
      end

      def self.stub(stub)
        stub ||= Types::EmergencyContact.new
        data = {}
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['ContactNotes'] = stub[:contact_notes] unless stub[:contact_notes].nil?
        data
      end
    end

    # Operation Stubber for DescribeProtection
    class DescribeProtection
      def self.default(visited=[])
        {
          protection: Protection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Protection'] = Stubs::Protection.stub(stub[:protection]) unless stub[:protection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Protection
    class Protection
      def self.default(visited=[])
        return nil if visited.include?('Protection')
        visited = visited + ['Protection']
        {
          id: 'id',
          name: 'name',
          resource_arn: 'resource_arn',
          health_check_ids: HealthCheckIds.default(visited),
          protection_arn: 'protection_arn',
          application_layer_automatic_response_configuration: ApplicationLayerAutomaticResponseConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Protection.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['HealthCheckIds'] = Stubs::HealthCheckIds.stub(stub[:health_check_ids]) unless stub[:health_check_ids].nil?
        data['ProtectionArn'] = stub[:protection_arn] unless stub[:protection_arn].nil?
        data['ApplicationLayerAutomaticResponseConfiguration'] = Stubs::ApplicationLayerAutomaticResponseConfiguration.stub(stub[:application_layer_automatic_response_configuration]) unless stub[:application_layer_automatic_response_configuration].nil?
        data
      end
    end

    # Structure Stubber for ApplicationLayerAutomaticResponseConfiguration
    class ApplicationLayerAutomaticResponseConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ApplicationLayerAutomaticResponseConfiguration')
        visited = visited + ['ApplicationLayerAutomaticResponseConfiguration']
        {
          status: 'status',
          action: ResponseAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationLayerAutomaticResponseConfiguration.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Action'] = Stubs::ResponseAction.stub(stub[:action]) unless stub[:action].nil?
        data
      end
    end

    # Structure Stubber for ResponseAction
    class ResponseAction
      def self.default(visited=[])
        return nil if visited.include?('ResponseAction')
        visited = visited + ['ResponseAction']
        {
          block: BlockAction.default(visited),
          count: CountAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseAction.new
        data = {}
        data['Block'] = Stubs::BlockAction.stub(stub[:block]) unless stub[:block].nil?
        data['Count'] = Stubs::CountAction.stub(stub[:count]) unless stub[:count].nil?
        data
      end
    end

    # Structure Stubber for CountAction
    class CountAction
      def self.default(visited=[])
        return nil if visited.include?('CountAction')
        visited = visited + ['CountAction']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::CountAction.new
        data = {}
        data
      end
    end

    # Structure Stubber for BlockAction
    class BlockAction
      def self.default(visited=[])
        return nil if visited.include?('BlockAction')
        visited = visited + ['BlockAction']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::BlockAction.new
        data = {}
        data
      end
    end

    # List Stubber for HealthCheckIds
    class HealthCheckIds
      def self.default(visited=[])
        return nil if visited.include?('HealthCheckIds')
        visited = visited + ['HealthCheckIds']
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

    # Operation Stubber for DescribeProtectionGroup
    class DescribeProtectionGroup
      def self.default(visited=[])
        {
          protection_group: ProtectionGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProtectionGroup'] = Stubs::ProtectionGroup.stub(stub[:protection_group]) unless stub[:protection_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ProtectionGroup
    class ProtectionGroup
      def self.default(visited=[])
        return nil if visited.include?('ProtectionGroup')
        visited = visited + ['ProtectionGroup']
        {
          protection_group_id: 'protection_group_id',
          aggregation: 'aggregation',
          pattern: 'pattern',
          resource_type: 'resource_type',
          members: ProtectionGroupMembers.default(visited),
          protection_group_arn: 'protection_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtectionGroup.new
        data = {}
        data['ProtectionGroupId'] = stub[:protection_group_id] unless stub[:protection_group_id].nil?
        data['Aggregation'] = stub[:aggregation] unless stub[:aggregation].nil?
        data['Pattern'] = stub[:pattern] unless stub[:pattern].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Members'] = Stubs::ProtectionGroupMembers.stub(stub[:members]) unless stub[:members].nil?
        data['ProtectionGroupArn'] = stub[:protection_group_arn] unless stub[:protection_group_arn].nil?
        data
      end
    end

    # List Stubber for ProtectionGroupMembers
    class ProtectionGroupMembers
      def self.default(visited=[])
        return nil if visited.include?('ProtectionGroupMembers')
        visited = visited + ['ProtectionGroupMembers']
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

    # Operation Stubber for DescribeSubscription
    class DescribeSubscription
      def self.default(visited=[])
        {
          subscription: Subscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Subscription'] = Stubs::Subscription.stub(stub[:subscription]) unless stub[:subscription].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Subscription
    class Subscription
      def self.default(visited=[])
        return nil if visited.include?('Subscription')
        visited = visited + ['Subscription']
        {
          start_time: Time.now,
          end_time: Time.now,
          time_commitment_in_seconds: 1,
          auto_renew: 'auto_renew',
          limits: Limits.default(visited),
          proactive_engagement_status: 'proactive_engagement_status',
          subscription_limits: SubscriptionLimits.default(visited),
          subscription_arn: 'subscription_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Subscription.new
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['TimeCommitmentInSeconds'] = stub[:time_commitment_in_seconds] unless stub[:time_commitment_in_seconds].nil?
        data['AutoRenew'] = stub[:auto_renew] unless stub[:auto_renew].nil?
        data['Limits'] = Stubs::Limits.stub(stub[:limits]) unless stub[:limits].nil?
        data['ProactiveEngagementStatus'] = stub[:proactive_engagement_status] unless stub[:proactive_engagement_status].nil?
        data['SubscriptionLimits'] = Stubs::SubscriptionLimits.stub(stub[:subscription_limits]) unless stub[:subscription_limits].nil?
        data['SubscriptionArn'] = stub[:subscription_arn] unless stub[:subscription_arn].nil?
        data
      end
    end

    # Structure Stubber for SubscriptionLimits
    class SubscriptionLimits
      def self.default(visited=[])
        return nil if visited.include?('SubscriptionLimits')
        visited = visited + ['SubscriptionLimits']
        {
          protection_limits: ProtectionLimits.default(visited),
          protection_group_limits: ProtectionGroupLimits.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubscriptionLimits.new
        data = {}
        data['ProtectionLimits'] = Stubs::ProtectionLimits.stub(stub[:protection_limits]) unless stub[:protection_limits].nil?
        data['ProtectionGroupLimits'] = Stubs::ProtectionGroupLimits.stub(stub[:protection_group_limits]) unless stub[:protection_group_limits].nil?
        data
      end
    end

    # Structure Stubber for ProtectionGroupLimits
    class ProtectionGroupLimits
      def self.default(visited=[])
        return nil if visited.include?('ProtectionGroupLimits')
        visited = visited + ['ProtectionGroupLimits']
        {
          max_protection_groups: 1,
          pattern_type_limits: ProtectionGroupPatternTypeLimits.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtectionGroupLimits.new
        data = {}
        data['MaxProtectionGroups'] = stub[:max_protection_groups] unless stub[:max_protection_groups].nil?
        data['PatternTypeLimits'] = Stubs::ProtectionGroupPatternTypeLimits.stub(stub[:pattern_type_limits]) unless stub[:pattern_type_limits].nil?
        data
      end
    end

    # Structure Stubber for ProtectionGroupPatternTypeLimits
    class ProtectionGroupPatternTypeLimits
      def self.default(visited=[])
        return nil if visited.include?('ProtectionGroupPatternTypeLimits')
        visited = visited + ['ProtectionGroupPatternTypeLimits']
        {
          arbitrary_pattern_limits: ProtectionGroupArbitraryPatternLimits.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtectionGroupPatternTypeLimits.new
        data = {}
        data['ArbitraryPatternLimits'] = Stubs::ProtectionGroupArbitraryPatternLimits.stub(stub[:arbitrary_pattern_limits]) unless stub[:arbitrary_pattern_limits].nil?
        data
      end
    end

    # Structure Stubber for ProtectionGroupArbitraryPatternLimits
    class ProtectionGroupArbitraryPatternLimits
      def self.default(visited=[])
        return nil if visited.include?('ProtectionGroupArbitraryPatternLimits')
        visited = visited + ['ProtectionGroupArbitraryPatternLimits']
        {
          max_members: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtectionGroupArbitraryPatternLimits.new
        data = {}
        data['MaxMembers'] = stub[:max_members] unless stub[:max_members].nil?
        data
      end
    end

    # Structure Stubber for ProtectionLimits
    class ProtectionLimits
      def self.default(visited=[])
        return nil if visited.include?('ProtectionLimits')
        visited = visited + ['ProtectionLimits']
        {
          protected_resource_type_limits: Limits.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProtectionLimits.new
        data = {}
        data['ProtectedResourceTypeLimits'] = Stubs::Limits.stub(stub[:protected_resource_type_limits]) unless stub[:protected_resource_type_limits].nil?
        data
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Limit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Limit
    class Limit
      def self.default(visited=[])
        return nil if visited.include?('Limit')
        visited = visited + ['Limit']
        {
          type: 'type',
          max: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Limit.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Max'] = stub[:max] unless stub[:max].nil?
        data
      end
    end

    # Operation Stubber for DisableApplicationLayerAutomaticResponse
    class DisableApplicationLayerAutomaticResponse
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableProactiveEngagement
    class DisableProactiveEngagement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateDRTLogBucket
    class DisassociateDRTLogBucket
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateDRTRole
    class DisassociateDRTRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateHealthCheck
    class DisassociateHealthCheck
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableApplicationLayerAutomaticResponse
    class EnableApplicationLayerAutomaticResponse
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableProactiveEngagement
    class EnableProactiveEngagement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSubscriptionState
    class GetSubscriptionState
      def self.default(visited=[])
        {
          subscription_state: 'subscription_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubscriptionState'] = stub[:subscription_state] unless stub[:subscription_state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAttacks
    class ListAttacks
      def self.default(visited=[])
        {
          attack_summaries: AttackSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AttackSummaries'] = Stubs::AttackSummaries.stub(stub[:attack_summaries]) unless stub[:attack_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AttackSummaries
    class AttackSummaries
      def self.default(visited=[])
        return nil if visited.include?('AttackSummaries')
        visited = visited + ['AttackSummaries']
        [
          AttackSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttackSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttackSummary
    class AttackSummary
      def self.default(visited=[])
        return nil if visited.include?('AttackSummary')
        visited = visited + ['AttackSummary']
        {
          attack_id: 'attack_id',
          resource_arn: 'resource_arn',
          start_time: Time.now,
          end_time: Time.now,
          attack_vectors: AttackVectorDescriptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttackSummary.new
        data = {}
        data['AttackId'] = stub[:attack_id] unless stub[:attack_id].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['AttackVectors'] = Stubs::AttackVectorDescriptionList.stub(stub[:attack_vectors]) unless stub[:attack_vectors].nil?
        data
      end
    end

    # List Stubber for AttackVectorDescriptionList
    class AttackVectorDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('AttackVectorDescriptionList')
        visited = visited + ['AttackVectorDescriptionList']
        [
          AttackVectorDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttackVectorDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttackVectorDescription
    class AttackVectorDescription
      def self.default(visited=[])
        return nil if visited.include?('AttackVectorDescription')
        visited = visited + ['AttackVectorDescription']
        {
          vector_type: 'vector_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttackVectorDescription.new
        data = {}
        data['VectorType'] = stub[:vector_type] unless stub[:vector_type].nil?
        data
      end
    end

    # Operation Stubber for ListProtectionGroups
    class ListProtectionGroups
      def self.default(visited=[])
        {
          protection_groups: ProtectionGroups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProtectionGroups'] = Stubs::ProtectionGroups.stub(stub[:protection_groups]) unless stub[:protection_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProtectionGroups
    class ProtectionGroups
      def self.default(visited=[])
        return nil if visited.include?('ProtectionGroups')
        visited = visited + ['ProtectionGroups']
        [
          ProtectionGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProtectionGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListProtections
    class ListProtections
      def self.default(visited=[])
        {
          protections: Protections.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Protections'] = Stubs::Protections.stub(stub[:protections]) unless stub[:protections].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Protections
    class Protections
      def self.default(visited=[])
        return nil if visited.include?('Protections')
        visited = visited + ['Protections']
        [
          Protection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Protection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResourcesInProtectionGroup
    class ListResourcesInProtectionGroup
      def self.default(visited=[])
        {
          resource_arns: ResourceArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceArns'] = Stubs::ResourceArnList.stub(stub[:resource_arns]) unless stub[:resource_arns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceArnList
    class ResourceArnList
      def self.default(visited=[])
        return nil if visited.include?('ResourceArnList')
        visited = visited + ['ResourceArnList']
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

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
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

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplicationLayerAutomaticResponse
    class UpdateApplicationLayerAutomaticResponse
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEmergencyContactSettings
    class UpdateEmergencyContactSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProtectionGroup
    class UpdateProtectionGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSubscription
    class UpdateSubscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
