# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Redshift
  module Parsers

    # Operation Parser for AcceptReservedNodeExchange
    class AcceptReservedNodeExchange
      def self.parse(http_resp)
        data = Types::AcceptReservedNodeExchangeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AcceptReservedNodeExchangeResult')
        xml.at('ExchangedReservedNode') do |node|
          data.exchanged_reserved_node = Parsers::ReservedNode.parse(node)
        end
        data
      end
    end

    class ReservedNode
      def self.parse(xml)
        data = Types::ReservedNode.new
        xml.at('ReservedNodeId') do |node|
          data.reserved_node_id = (node.text || '')
        end
        xml.at('ReservedNodeOfferingId') do |node|
          data.reserved_node_offering_id = (node.text || '')
        end
        xml.at('NodeType') do |node|
          data.node_type = (node.text || '')
        end
        xml.at('StartTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('Duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('FixedPrice') do |node|
          data.fixed_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('UsagePrice') do |node|
          data.usage_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('CurrencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('NodeCount') do |node|
          data.node_count = node.text&.to_i
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('OfferingType') do |node|
          data.offering_type = (node.text || '')
        end
        xml.at('RecurringCharges') do |node|
          children = node.children('RecurringCharge')
          data.recurring_charges = Parsers::RecurringChargeList.parse(children)
        end
        xml.at('ReservedNodeOfferingType') do |node|
          data.reserved_node_offering_type = (node.text || '')
        end
        return data
      end
    end

    class RecurringChargeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RecurringCharge.parse(node)
        end
        data
      end
    end

    class RecurringCharge
      def self.parse(xml)
        data = Types::RecurringCharge.new
        xml.at('RecurringChargeAmount') do |node|
          data.recurring_charge_amount = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('RecurringChargeFrequency') do |node|
          data.recurring_charge_frequency = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ReservedNodeAlreadyMigratedFault
    class ReservedNodeAlreadyMigratedFault
      def self.parse(http_resp)
        data = Types::ReservedNodeAlreadyMigratedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UnsupportedOperationFault
    class UnsupportedOperationFault
      def self.parse(http_resp)
        data = Types::UnsupportedOperationFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidReservedNodeStateFault
    class InvalidReservedNodeStateFault
      def self.parse(http_resp)
        data = Types::InvalidReservedNodeStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ReservedNodeAlreadyExistsFault
    class ReservedNodeAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ReservedNodeAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ReservedNodeOfferingNotFoundFault
    class ReservedNodeOfferingNotFoundFault
      def self.parse(http_resp)
        data = Types::ReservedNodeOfferingNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DependentServiceUnavailableFault
    class DependentServiceUnavailableFault
      def self.parse(http_resp)
        data = Types::DependentServiceUnavailableFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ReservedNodeNotFoundFault
    class ReservedNodeNotFoundFault
      def self.parse(http_resp)
        data = Types::ReservedNodeNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AddPartner
    class AddPartner
      def self.parse(http_resp)
        data = Types::AddPartnerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AddPartnerResult')
        xml.at('DatabaseName') do |node|
          data.database_name = (node.text || '')
        end
        xml.at('PartnerName') do |node|
          data.partner_name = (node.text || '')
        end
        data
      end
    end

    # Error Parser for PartnerNotFoundFault
    class PartnerNotFoundFault
      def self.parse(http_resp)
        data = Types::PartnerNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterNotFoundFault
    class ClusterNotFoundFault
      def self.parse(http_resp)
        data = Types::ClusterNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UnauthorizedPartnerIntegrationFault
    class UnauthorizedPartnerIntegrationFault
      def self.parse(http_resp)
        data = Types::UnauthorizedPartnerIntegrationFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AssociateDataShareConsumer
    class AssociateDataShareConsumer
      def self.parse(http_resp)
        data = Types::AssociateDataShareConsumerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AssociateDataShareConsumerResult')
        xml.at('DataShareArn') do |node|
          data.data_share_arn = (node.text || '')
        end
        xml.at('ProducerArn') do |node|
          data.producer_arn = (node.text || '')
        end
        xml.at('AllowPubliclyAccessibleConsumers') do |node|
          data.allow_publicly_accessible_consumers = (node.text == 'true')
        end
        xml.at('DataShareAssociations') do |node|
          children = node.children('member')
          data.data_share_associations = Parsers::DataShareAssociationList.parse(children)
        end
        xml.at('ManagedBy') do |node|
          data.managed_by = (node.text || '')
        end
        data
      end
    end

    class DataShareAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DataShareAssociation.parse(node)
        end
        data
      end
    end

    class DataShareAssociation
      def self.parse(xml)
        data = Types::DataShareAssociation.new
        xml.at('ConsumerIdentifier') do |node|
          data.consumer_identifier = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('ConsumerRegion') do |node|
          data.consumer_region = (node.text || '')
        end
        xml.at('CreatedDate') do |node|
          data.created_date = Time.parse(node.text) if node.text
        end
        xml.at('StatusChangeDate') do |node|
          data.status_change_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Error Parser for InvalidDataShareFault
    class InvalidDataShareFault
      def self.parse(http_resp)
        data = Types::InvalidDataShareFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidNamespaceFault
    class InvalidNamespaceFault
      def self.parse(http_resp)
        data = Types::InvalidNamespaceFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AuthorizeClusterSecurityGroupIngress
    class AuthorizeClusterSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::AuthorizeClusterSecurityGroupIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AuthorizeClusterSecurityGroupIngressResult')
        xml.at('ClusterSecurityGroup') do |node|
          data.cluster_security_group = Parsers::ClusterSecurityGroup.parse(node)
        end
        data
      end
    end

    class ClusterSecurityGroup
      def self.parse(xml)
        data = Types::ClusterSecurityGroup.new
        xml.at('ClusterSecurityGroupName') do |node|
          data.cluster_security_group_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EC2SecurityGroups') do |node|
          children = node.children('EC2SecurityGroup')
          data.ec2_security_groups = Parsers::EC2SecurityGroupList.parse(children)
        end
        xml.at('IPRanges') do |node|
          children = node.children('IPRange')
          data.ip_ranges = Parsers::IPRangeList.parse(children)
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

    class IPRangeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::IPRange.parse(node)
        end
        data
      end
    end

    class IPRange
      def self.parse(xml)
        data = Types::IPRange.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CIDRIP') do |node|
          data.cidrip = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class EC2SecurityGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EC2SecurityGroup.parse(node)
        end
        data
      end
    end

    class EC2SecurityGroup
      def self.parse(xml)
        data = Types::EC2SecurityGroup.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('EC2SecurityGroupName') do |node|
          data.ec2_security_group_name = (node.text || '')
        end
        xml.at('EC2SecurityGroupOwnerId') do |node|
          data.ec2_security_group_owner_id = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Error Parser for AuthorizationQuotaExceededFault
    class AuthorizationQuotaExceededFault
      def self.parse(http_resp)
        data = Types::AuthorizationQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidClusterSecurityGroupStateFault
    class InvalidClusterSecurityGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidClusterSecurityGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterSecurityGroupNotFoundFault
    class ClusterSecurityGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::ClusterSecurityGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AuthorizationAlreadyExistsFault
    class AuthorizationAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::AuthorizationAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AuthorizeDataShare
    class AuthorizeDataShare
      def self.parse(http_resp)
        data = Types::AuthorizeDataShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AuthorizeDataShareResult')
        xml.at('DataShareArn') do |node|
          data.data_share_arn = (node.text || '')
        end
        xml.at('ProducerArn') do |node|
          data.producer_arn = (node.text || '')
        end
        xml.at('AllowPubliclyAccessibleConsumers') do |node|
          data.allow_publicly_accessible_consumers = (node.text == 'true')
        end
        xml.at('DataShareAssociations') do |node|
          children = node.children('member')
          data.data_share_associations = Parsers::DataShareAssociationList.parse(children)
        end
        xml.at('ManagedBy') do |node|
          data.managed_by = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AuthorizeEndpointAccess
    class AuthorizeEndpointAccess
      def self.parse(http_resp)
        data = Types::AuthorizeEndpointAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AuthorizeEndpointAccessResult')
        xml.at('Grantor') do |node|
          data.grantor = (node.text || '')
        end
        xml.at('Grantee') do |node|
          data.grantee = (node.text || '')
        end
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('AuthorizeTime') do |node|
          data.authorize_time = Time.parse(node.text) if node.text
        end
        xml.at('ClusterStatus') do |node|
          data.cluster_status = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('AllowedAllVPCs') do |node|
          data.allowed_all_vp_cs = (node.text == 'true')
        end
        xml.at('AllowedVPCs') do |node|
          children = node.children('VpcIdentifier')
          data.allowed_vp_cs = Parsers::VpcIdentifierList.parse(children)
        end
        xml.at('EndpointCount') do |node|
          data.endpoint_count = node.text&.to_i
        end
        data
      end
    end

    class VpcIdentifierList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidClusterStateFault
    class InvalidClusterStateFault
      def self.parse(http_resp)
        data = Types::InvalidClusterStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidAuthorizationStateFault
    class InvalidAuthorizationStateFault
      def self.parse(http_resp)
        data = Types::InvalidAuthorizationStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for EndpointAuthorizationsPerClusterLimitExceededFault
    class EndpointAuthorizationsPerClusterLimitExceededFault
      def self.parse(http_resp)
        data = Types::EndpointAuthorizationsPerClusterLimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for EndpointAuthorizationAlreadyExistsFault
    class EndpointAuthorizationAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::EndpointAuthorizationAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AuthorizeSnapshotAccess
    class AuthorizeSnapshotAccess
      def self.parse(http_resp)
        data = Types::AuthorizeSnapshotAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AuthorizeSnapshotAccessResult')
        xml.at('Snapshot') do |node|
          data.snapshot = Parsers::Snapshot.parse(node)
        end
        data
      end
    end

    class Snapshot
      def self.parse(xml)
        data = Types::Snapshot.new
        xml.at('SnapshotIdentifier') do |node|
          data.snapshot_identifier = (node.text || '')
        end
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('SnapshotCreateTime') do |node|
          data.snapshot_create_time = Time.parse(node.text) if node.text
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('ClusterCreateTime') do |node|
          data.cluster_create_time = Time.parse(node.text) if node.text
        end
        xml.at('MasterUsername') do |node|
          data.master_username = (node.text || '')
        end
        xml.at('ClusterVersion') do |node|
          data.cluster_version = (node.text || '')
        end
        xml.at('EngineFullVersion') do |node|
          data.engine_full_version = (node.text || '')
        end
        xml.at('SnapshotType') do |node|
          data.snapshot_type = (node.text || '')
        end
        xml.at('NodeType') do |node|
          data.node_type = (node.text || '')
        end
        xml.at('NumberOfNodes') do |node|
          data.number_of_nodes = node.text&.to_i
        end
        xml.at('DBName') do |node|
          data.db_name = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('Encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('EncryptedWithHSM') do |node|
          data.encrypted_with_hsm = (node.text == 'true')
        end
        xml.at('AccountsWithRestoreAccess') do |node|
          children = node.children('AccountWithRestoreAccess')
          data.accounts_with_restore_access = Parsers::AccountsWithRestoreAccessList.parse(children)
        end
        xml.at('OwnerAccount') do |node|
          data.owner_account = (node.text || '')
        end
        xml.at('TotalBackupSizeInMegaBytes') do |node|
          data.total_backup_size_in_mega_bytes = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('ActualIncrementalBackupSizeInMegaBytes') do |node|
          data.actual_incremental_backup_size_in_mega_bytes = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('BackupProgressInMegaBytes') do |node|
          data.backup_progress_in_mega_bytes = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('CurrentBackupRateInMegaBytesPerSecond') do |node|
          data.current_backup_rate_in_mega_bytes_per_second = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('EstimatedSecondsToCompletion') do |node|
          data.estimated_seconds_to_completion = node.text&.to_i
        end
        xml.at('ElapsedTimeInSeconds') do |node|
          data.elapsed_time_in_seconds = node.text&.to_i
        end
        xml.at('SourceRegion') do |node|
          data.source_region = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('RestorableNodeTypes') do |node|
          children = node.children('NodeType')
          data.restorable_node_types = Parsers::RestorableNodeTypeList.parse(children)
        end
        xml.at('EnhancedVpcRouting') do |node|
          data.enhanced_vpc_routing = (node.text == 'true')
        end
        xml.at('MaintenanceTrackName') do |node|
          data.maintenance_track_name = (node.text || '')
        end
        xml.at('ManualSnapshotRetentionPeriod') do |node|
          data.manual_snapshot_retention_period = node.text&.to_i
        end
        xml.at('ManualSnapshotRemainingDays') do |node|
          data.manual_snapshot_remaining_days = node.text&.to_i
        end
        xml.at('SnapshotRetentionStartTime') do |node|
          data.snapshot_retention_start_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class RestorableNodeTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AccountsWithRestoreAccessList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccountWithRestoreAccess.parse(node)
        end
        data
      end
    end

    class AccountWithRestoreAccess
      def self.parse(xml)
        data = Types::AccountWithRestoreAccess.new
        xml.at('AccountId') do |node|
          data.account_id = (node.text || '')
        end
        xml.at('AccountAlias') do |node|
          data.account_alias = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ClusterSnapshotNotFoundFault
    class ClusterSnapshotNotFoundFault
      def self.parse(http_resp)
        data = Types::ClusterSnapshotNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DependentServiceRequestThrottlingFault
    class DependentServiceRequestThrottlingFault
      def self.parse(http_resp)
        data = Types::DependentServiceRequestThrottlingFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidClusterSnapshotStateFault
    class InvalidClusterSnapshotStateFault
      def self.parse(http_resp)
        data = Types::InvalidClusterSnapshotStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for LimitExceededFault
    class LimitExceededFault
      def self.parse(http_resp)
        data = Types::LimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for BatchDeleteClusterSnapshots
    class BatchDeleteClusterSnapshots
      def self.parse(http_resp)
        data = Types::BatchDeleteClusterSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('BatchDeleteClusterSnapshotsResult')
        xml.at('Resources') do |node|
          children = node.children('String')
          data.resources = Parsers::SnapshotIdentifierList.parse(children)
        end
        xml.at('Errors') do |node|
          children = node.children('SnapshotErrorMessage')
          data.errors = Parsers::BatchSnapshotOperationErrorList.parse(children)
        end
        data
      end
    end

    class BatchSnapshotOperationErrorList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SnapshotErrorMessage.parse(node)
        end
        data
      end
    end

    class SnapshotErrorMessage
      def self.parse(xml)
        data = Types::SnapshotErrorMessage.new
        xml.at('SnapshotIdentifier') do |node|
          data.snapshot_identifier = (node.text || '')
        end
        xml.at('SnapshotClusterIdentifier') do |node|
          data.snapshot_cluster_identifier = (node.text || '')
        end
        xml.at('FailureCode') do |node|
          data.failure_code = (node.text || '')
        end
        xml.at('FailureReason') do |node|
          data.failure_reason = (node.text || '')
        end
        return data
      end
    end

    class SnapshotIdentifierList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for BatchDeleteRequestSizeExceededFault
    class BatchDeleteRequestSizeExceededFault
      def self.parse(http_resp)
        data = Types::BatchDeleteRequestSizeExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for BatchModifyClusterSnapshots
    class BatchModifyClusterSnapshots
      def self.parse(http_resp)
        data = Types::BatchModifyClusterSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('BatchModifyClusterSnapshotsResult')
        xml.at('Resources') do |node|
          children = node.children('String')
          data.resources = Parsers::SnapshotIdentifierList.parse(children)
        end
        xml.at('Errors') do |node|
          children = node.children('SnapshotErrorMessage')
          data.errors = Parsers::BatchSnapshotOperationErrors.parse(children)
        end
        data
      end
    end

    class BatchSnapshotOperationErrors
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SnapshotErrorMessage.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidRetentionPeriodFault
    class InvalidRetentionPeriodFault
      def self.parse(http_resp)
        data = Types::InvalidRetentionPeriodFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for BatchModifyClusterSnapshotsLimitExceededFault
    class BatchModifyClusterSnapshotsLimitExceededFault
      def self.parse(http_resp)
        data = Types::BatchModifyClusterSnapshotsLimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CancelResize
    class CancelResize
      def self.parse(http_resp)
        data = Types::CancelResizeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CancelResizeResult')
        xml.at('TargetNodeType') do |node|
          data.target_node_type = (node.text || '')
        end
        xml.at('TargetNumberOfNodes') do |node|
          data.target_number_of_nodes = node.text&.to_i
        end
        xml.at('TargetClusterType') do |node|
          data.target_cluster_type = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('ImportTablesCompleted') do |node|
          children = node.children('member')
          data.import_tables_completed = Parsers::ImportTablesCompleted.parse(children)
        end
        xml.at('ImportTablesInProgress') do |node|
          children = node.children('member')
          data.import_tables_in_progress = Parsers::ImportTablesInProgress.parse(children)
        end
        xml.at('ImportTablesNotStarted') do |node|
          children = node.children('member')
          data.import_tables_not_started = Parsers::ImportTablesNotStarted.parse(children)
        end
        xml.at('AvgResizeRateInMegaBytesPerSecond') do |node|
          data.avg_resize_rate_in_mega_bytes_per_second = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('TotalResizeDataInMegaBytes') do |node|
          data.total_resize_data_in_mega_bytes = node.text&.to_i
        end
        xml.at('ProgressInMegaBytes') do |node|
          data.progress_in_mega_bytes = node.text&.to_i
        end
        xml.at('ElapsedTimeInSeconds') do |node|
          data.elapsed_time_in_seconds = node.text&.to_i
        end
        xml.at('EstimatedTimeToCompletionInSeconds') do |node|
          data.estimated_time_to_completion_in_seconds = node.text&.to_i
        end
        xml.at('ResizeType') do |node|
          data.resize_type = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('TargetEncryptionType') do |node|
          data.target_encryption_type = (node.text || '')
        end
        xml.at('DataTransferProgressPercent') do |node|
          data.data_transfer_progress_percent = Hearth::NumberHelper.deserialize(node.text)
        end
        data
      end
    end

    class ImportTablesNotStarted
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ImportTablesInProgress
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ImportTablesCompleted
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for ResizeNotFoundFault
    class ResizeNotFoundFault
      def self.parse(http_resp)
        data = Types::ResizeNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CopyClusterSnapshot
    class CopyClusterSnapshot
      def self.parse(http_resp)
        data = Types::CopyClusterSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CopyClusterSnapshotResult')
        xml.at('Snapshot') do |node|
          data.snapshot = Parsers::Snapshot.parse(node)
        end
        data
      end
    end

    # Error Parser for ClusterSnapshotAlreadyExistsFault
    class ClusterSnapshotAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ClusterSnapshotAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterSnapshotQuotaExceededFault
    class ClusterSnapshotQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ClusterSnapshotQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateAuthenticationProfile
    class CreateAuthenticationProfile
      def self.parse(http_resp)
        data = Types::CreateAuthenticationProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateAuthenticationProfileResult')
        xml.at('AuthenticationProfileName') do |node|
          data.authentication_profile_name = (node.text || '')
        end
        xml.at('AuthenticationProfileContent') do |node|
          data.authentication_profile_content = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AuthenticationProfileAlreadyExistsFault
    class AuthenticationProfileAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::AuthenticationProfileAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AuthenticationProfileQuotaExceededFault
    class AuthenticationProfileQuotaExceededFault
      def self.parse(http_resp)
        data = Types::AuthenticationProfileQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidAuthenticationProfileRequestFault
    class InvalidAuthenticationProfileRequestFault
      def self.parse(http_resp)
        data = Types::InvalidAuthenticationProfileRequestFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCluster
    class CreateCluster
      def self.parse(http_resp)
        data = Types::CreateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateClusterResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    class Cluster
      def self.parse(xml)
        data = Types::Cluster.new
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('NodeType') do |node|
          data.node_type = (node.text || '')
        end
        xml.at('ClusterStatus') do |node|
          data.cluster_status = (node.text || '')
        end
        xml.at('ClusterAvailabilityStatus') do |node|
          data.cluster_availability_status = (node.text || '')
        end
        xml.at('ModifyStatus') do |node|
          data.modify_status = (node.text || '')
        end
        xml.at('MasterUsername') do |node|
          data.master_username = (node.text || '')
        end
        xml.at('DBName') do |node|
          data.db_name = (node.text || '')
        end
        xml.at('Endpoint') do |node|
          data.endpoint = Parsers::Endpoint.parse(node)
        end
        xml.at('ClusterCreateTime') do |node|
          data.cluster_create_time = Time.parse(node.text) if node.text
        end
        xml.at('AutomatedSnapshotRetentionPeriod') do |node|
          data.automated_snapshot_retention_period = node.text&.to_i
        end
        xml.at('ManualSnapshotRetentionPeriod') do |node|
          data.manual_snapshot_retention_period = node.text&.to_i
        end
        xml.at('ClusterSecurityGroups') do |node|
          children = node.children('ClusterSecurityGroup')
          data.cluster_security_groups = Parsers::ClusterSecurityGroupMembershipList.parse(children)
        end
        xml.at('VpcSecurityGroups') do |node|
          children = node.children('VpcSecurityGroup')
          data.vpc_security_groups = Parsers::VpcSecurityGroupMembershipList.parse(children)
        end
        xml.at('ClusterParameterGroups') do |node|
          children = node.children('ClusterParameterGroup')
          data.cluster_parameter_groups = Parsers::ClusterParameterGroupStatusList.parse(children)
        end
        xml.at('ClusterSubnetGroupName') do |node|
          data.cluster_subnet_group_name = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('PreferredMaintenanceWindow') do |node|
          data.preferred_maintenance_window = (node.text || '')
        end
        xml.at('PendingModifiedValues') do |node|
          data.pending_modified_values = Parsers::PendingModifiedValues.parse(node)
        end
        xml.at('ClusterVersion') do |node|
          data.cluster_version = (node.text || '')
        end
        xml.at('AllowVersionUpgrade') do |node|
          data.allow_version_upgrade = (node.text == 'true')
        end
        xml.at('NumberOfNodes') do |node|
          data.number_of_nodes = node.text&.to_i
        end
        xml.at('PubliclyAccessible') do |node|
          data.publicly_accessible = (node.text == 'true')
        end
        xml.at('Encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('RestoreStatus') do |node|
          data.restore_status = Parsers::RestoreStatus.parse(node)
        end
        xml.at('DataTransferProgress') do |node|
          data.data_transfer_progress = Parsers::DataTransferProgress.parse(node)
        end
        xml.at('HsmStatus') do |node|
          data.hsm_status = Parsers::HsmStatus.parse(node)
        end
        xml.at('ClusterSnapshotCopyStatus') do |node|
          data.cluster_snapshot_copy_status = Parsers::ClusterSnapshotCopyStatus.parse(node)
        end
        xml.at('ClusterPublicKey') do |node|
          data.cluster_public_key = (node.text || '')
        end
        xml.at('ClusterNodes') do |node|
          children = node.children('member')
          data.cluster_nodes = Parsers::ClusterNodesList.parse(children)
        end
        xml.at('ElasticIpStatus') do |node|
          data.elastic_ip_status = Parsers::ElasticIpStatus.parse(node)
        end
        xml.at('ClusterRevisionNumber') do |node|
          data.cluster_revision_number = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('EnhancedVpcRouting') do |node|
          data.enhanced_vpc_routing = (node.text == 'true')
        end
        xml.at('IamRoles') do |node|
          children = node.children('ClusterIamRole')
          data.iam_roles = Parsers::ClusterIamRoleList.parse(children)
        end
        xml.at('PendingActions') do |node|
          children = node.children('member')
          data.pending_actions = Parsers::PendingActionsList.parse(children)
        end
        xml.at('MaintenanceTrackName') do |node|
          data.maintenance_track_name = (node.text || '')
        end
        xml.at('ElasticResizeNumberOfNodeOptions') do |node|
          data.elastic_resize_number_of_node_options = (node.text || '')
        end
        xml.at('DeferredMaintenanceWindows') do |node|
          children = node.children('DeferredMaintenanceWindow')
          data.deferred_maintenance_windows = Parsers::DeferredMaintenanceWindowsList.parse(children)
        end
        xml.at('SnapshotScheduleIdentifier') do |node|
          data.snapshot_schedule_identifier = (node.text || '')
        end
        xml.at('SnapshotScheduleState') do |node|
          data.snapshot_schedule_state = (node.text || '')
        end
        xml.at('ExpectedNextSnapshotScheduleTime') do |node|
          data.expected_next_snapshot_schedule_time = Time.parse(node.text) if node.text
        end
        xml.at('ExpectedNextSnapshotScheduleTimeStatus') do |node|
          data.expected_next_snapshot_schedule_time_status = (node.text || '')
        end
        xml.at('NextMaintenanceWindowStartTime') do |node|
          data.next_maintenance_window_start_time = Time.parse(node.text) if node.text
        end
        xml.at('ResizeInfo') do |node|
          data.resize_info = Parsers::ResizeInfo.parse(node)
        end
        xml.at('AvailabilityZoneRelocationStatus') do |node|
          data.availability_zone_relocation_status = (node.text || '')
        end
        xml.at('ClusterNamespaceArn') do |node|
          data.cluster_namespace_arn = (node.text || '')
        end
        xml.at('TotalStorageCapacityInMegaBytes') do |node|
          data.total_storage_capacity_in_mega_bytes = node.text&.to_i
        end
        xml.at('AquaConfiguration') do |node|
          data.aqua_configuration = Parsers::AquaConfiguration.parse(node)
        end
        xml.at('DefaultIamRoleArn') do |node|
          data.default_iam_role_arn = (node.text || '')
        end
        xml.at('ReservedNodeExchangeStatus') do |node|
          data.reserved_node_exchange_status = Parsers::ReservedNodeExchangeStatus.parse(node)
        end
        return data
      end
    end

    class ReservedNodeExchangeStatus
      def self.parse(xml)
        data = Types::ReservedNodeExchangeStatus.new
        xml.at('ReservedNodeExchangeRequestId') do |node|
          data.reserved_node_exchange_request_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('RequestTime') do |node|
          data.request_time = Time.parse(node.text) if node.text
        end
        xml.at('SourceReservedNodeId') do |node|
          data.source_reserved_node_id = (node.text || '')
        end
        xml.at('SourceReservedNodeType') do |node|
          data.source_reserved_node_type = (node.text || '')
        end
        xml.at('SourceReservedNodeCount') do |node|
          data.source_reserved_node_count = node.text&.to_i
        end
        xml.at('TargetReservedNodeOfferingId') do |node|
          data.target_reserved_node_offering_id = (node.text || '')
        end
        xml.at('TargetReservedNodeType') do |node|
          data.target_reserved_node_type = (node.text || '')
        end
        xml.at('TargetReservedNodeCount') do |node|
          data.target_reserved_node_count = node.text&.to_i
        end
        return data
      end
    end

    class AquaConfiguration
      def self.parse(xml)
        data = Types::AquaConfiguration.new
        xml.at('AquaStatus') do |node|
          data.aqua_status = (node.text || '')
        end
        xml.at('AquaConfigurationStatus') do |node|
          data.aqua_configuration_status = (node.text || '')
        end
        return data
      end
    end

    class ResizeInfo
      def self.parse(xml)
        data = Types::ResizeInfo.new
        xml.at('ResizeType') do |node|
          data.resize_type = (node.text || '')
        end
        xml.at('AllowCancelResize') do |node|
          data.allow_cancel_resize = (node.text == 'true')
        end
        return data
      end
    end

    class DeferredMaintenanceWindowsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DeferredMaintenanceWindow.parse(node)
        end
        data
      end
    end

    class DeferredMaintenanceWindow
      def self.parse(xml)
        data = Types::DeferredMaintenanceWindow.new
        xml.at('DeferMaintenanceIdentifier') do |node|
          data.defer_maintenance_identifier = (node.text || '')
        end
        xml.at('DeferMaintenanceStartTime') do |node|
          data.defer_maintenance_start_time = Time.parse(node.text) if node.text
        end
        xml.at('DeferMaintenanceEndTime') do |node|
          data.defer_maintenance_end_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class PendingActionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ClusterIamRoleList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterIamRole.parse(node)
        end
        data
      end
    end

    class ClusterIamRole
      def self.parse(xml)
        data = Types::ClusterIamRole.new
        xml.at('IamRoleArn') do |node|
          data.iam_role_arn = (node.text || '')
        end
        xml.at('ApplyStatus') do |node|
          data.apply_status = (node.text || '')
        end
        return data
      end
    end

    class ElasticIpStatus
      def self.parse(xml)
        data = Types::ElasticIpStatus.new
        xml.at('ElasticIp') do |node|
          data.elastic_ip = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class ClusterNodesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterNode.parse(node)
        end
        data
      end
    end

    class ClusterNode
      def self.parse(xml)
        data = Types::ClusterNode.new
        xml.at('NodeRole') do |node|
          data.node_role = (node.text || '')
        end
        xml.at('PrivateIPAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        xml.at('PublicIPAddress') do |node|
          data.public_ip_address = (node.text || '')
        end
        return data
      end
    end

    class ClusterSnapshotCopyStatus
      def self.parse(xml)
        data = Types::ClusterSnapshotCopyStatus.new
        xml.at('DestinationRegion') do |node|
          data.destination_region = (node.text || '')
        end
        xml.at('RetentionPeriod') do |node|
          data.retention_period = node.text&.to_i
        end
        xml.at('ManualSnapshotRetentionPeriod') do |node|
          data.manual_snapshot_retention_period = node.text&.to_i
        end
        xml.at('SnapshotCopyGrantName') do |node|
          data.snapshot_copy_grant_name = (node.text || '')
        end
        return data
      end
    end

    class HsmStatus
      def self.parse(xml)
        data = Types::HsmStatus.new
        xml.at('HsmClientCertificateIdentifier') do |node|
          data.hsm_client_certificate_identifier = (node.text || '')
        end
        xml.at('HsmConfigurationIdentifier') do |node|
          data.hsm_configuration_identifier = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class DataTransferProgress
      def self.parse(xml)
        data = Types::DataTransferProgress.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CurrentRateInMegaBytesPerSecond') do |node|
          data.current_rate_in_mega_bytes_per_second = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('TotalDataInMegaBytes') do |node|
          data.total_data_in_mega_bytes = node.text&.to_i
        end
        xml.at('DataTransferredInMegaBytes') do |node|
          data.data_transferred_in_mega_bytes = node.text&.to_i
        end
        xml.at('EstimatedTimeToCompletionInSeconds') do |node|
          data.estimated_time_to_completion_in_seconds = node.text&.to_i
        end
        xml.at('ElapsedTimeInSeconds') do |node|
          data.elapsed_time_in_seconds = node.text&.to_i
        end
        return data
      end
    end

    class RestoreStatus
      def self.parse(xml)
        data = Types::RestoreStatus.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CurrentRestoreRateInMegaBytesPerSecond') do |node|
          data.current_restore_rate_in_mega_bytes_per_second = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('SnapshotSizeInMegaBytes') do |node|
          data.snapshot_size_in_mega_bytes = node.text&.to_i
        end
        xml.at('ProgressInMegaBytes') do |node|
          data.progress_in_mega_bytes = node.text&.to_i
        end
        xml.at('ElapsedTimeInSeconds') do |node|
          data.elapsed_time_in_seconds = node.text&.to_i
        end
        xml.at('EstimatedTimeToCompletionInSeconds') do |node|
          data.estimated_time_to_completion_in_seconds = node.text&.to_i
        end
        return data
      end
    end

    class PendingModifiedValues
      def self.parse(xml)
        data = Types::PendingModifiedValues.new
        xml.at('MasterUserPassword') do |node|
          data.master_user_password = (node.text || '')
        end
        xml.at('NodeType') do |node|
          data.node_type = (node.text || '')
        end
        xml.at('NumberOfNodes') do |node|
          data.number_of_nodes = node.text&.to_i
        end
        xml.at('ClusterType') do |node|
          data.cluster_type = (node.text || '')
        end
        xml.at('ClusterVersion') do |node|
          data.cluster_version = (node.text || '')
        end
        xml.at('AutomatedSnapshotRetentionPeriod') do |node|
          data.automated_snapshot_retention_period = node.text&.to_i
        end
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('PubliclyAccessible') do |node|
          data.publicly_accessible = (node.text == 'true')
        end
        xml.at('EnhancedVpcRouting') do |node|
          data.enhanced_vpc_routing = (node.text == 'true')
        end
        xml.at('MaintenanceTrackName') do |node|
          data.maintenance_track_name = (node.text || '')
        end
        xml.at('EncryptionType') do |node|
          data.encryption_type = (node.text || '')
        end
        return data
      end
    end

    class ClusterParameterGroupStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterParameterGroupStatus.parse(node)
        end
        data
      end
    end

    class ClusterParameterGroupStatus
      def self.parse(xml)
        data = Types::ClusterParameterGroupStatus.new
        xml.at('ParameterGroupName') do |node|
          data.parameter_group_name = (node.text || '')
        end
        xml.at('ParameterApplyStatus') do |node|
          data.parameter_apply_status = (node.text || '')
        end
        xml.at('ClusterParameterStatusList') do |node|
          children = node.children('member')
          data.cluster_parameter_status_list = Parsers::ClusterParameterStatusList.parse(children)
        end
        return data
      end
    end

    class ClusterParameterStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterParameterStatus.parse(node)
        end
        data
      end
    end

    class ClusterParameterStatus
      def self.parse(xml)
        data = Types::ClusterParameterStatus.new
        xml.at('ParameterName') do |node|
          data.parameter_name = (node.text || '')
        end
        xml.at('ParameterApplyStatus') do |node|
          data.parameter_apply_status = (node.text || '')
        end
        xml.at('ParameterApplyErrorDescription') do |node|
          data.parameter_apply_error_description = (node.text || '')
        end
        return data
      end
    end

    class VpcSecurityGroupMembershipList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcSecurityGroupMembership.parse(node)
        end
        data
      end
    end

    class VpcSecurityGroupMembership
      def self.parse(xml)
        data = Types::VpcSecurityGroupMembership.new
        xml.at('VpcSecurityGroupId') do |node|
          data.vpc_security_group_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class ClusterSecurityGroupMembershipList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterSecurityGroupMembership.parse(node)
        end
        data
      end
    end

    class ClusterSecurityGroupMembership
      def self.parse(xml)
        data = Types::ClusterSecurityGroupMembership.new
        xml.at('ClusterSecurityGroupName') do |node|
          data.cluster_security_group_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class Endpoint
      def self.parse(xml)
        data = Types::Endpoint.new
        xml.at('Address') do |node|
          data.address = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('VpcEndpoints') do |node|
          children = node.children('VpcEndpoint')
          data.vpc_endpoints = Parsers::VpcEndpointsList.parse(children)
        end
        return data
      end
    end

    class VpcEndpointsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::VpcEndpoint.parse(node)
        end
        data
      end
    end

    class VpcEndpoint
      def self.parse(xml)
        data = Types::VpcEndpoint.new
        xml.at('VpcEndpointId') do |node|
          data.vpc_endpoint_id = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('NetworkInterfaces') do |node|
          children = node.children('NetworkInterface')
          data.network_interfaces = Parsers::NetworkInterfaceList.parse(children)
        end
        return data
      end
    end

    class NetworkInterfaceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NetworkInterface.parse(node)
        end
        data
      end
    end

    class NetworkInterface
      def self.parse(xml)
        data = Types::NetworkInterface.new
        xml.at('NetworkInterfaceId') do |node|
          data.network_interface_id = (node.text || '')
        end
        xml.at('SubnetId') do |node|
          data.subnet_id = (node.text || '')
        end
        xml.at('PrivateIpAddress') do |node|
          data.private_ip_address = (node.text || '')
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for HsmClientCertificateNotFoundFault
    class HsmClientCertificateNotFoundFault
      def self.parse(http_resp)
        data = Types::HsmClientCertificateNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterQuotaExceededFault
    class ClusterQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ClusterQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidClusterSubnetGroupStateFault
    class InvalidClusterSubnetGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidClusterSubnetGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TagLimitExceededFault
    class TagLimitExceededFault
      def self.parse(http_resp)
        data = Types::TagLimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidVPCNetworkStateFault
    class InvalidVPCNetworkStateFault
      def self.parse(http_resp)
        data = Types::InvalidVPCNetworkStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for HsmConfigurationNotFoundFault
    class HsmConfigurationNotFoundFault
      def self.parse(http_resp)
        data = Types::HsmConfigurationNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NumberOfNodesQuotaExceededFault
    class NumberOfNodesQuotaExceededFault
      def self.parse(http_resp)
        data = Types::NumberOfNodesQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterAlreadyExistsFault
    class ClusterAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ClusterAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterParameterGroupNotFoundFault
    class ClusterParameterGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::ClusterParameterGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterSubnetGroupNotFoundFault
    class ClusterSubnetGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::ClusterSubnetGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSubnet
    class InvalidSubnet
      def self.parse(http_resp)
        data = Types::InvalidSubnet.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InsufficientClusterCapacityFault
    class InsufficientClusterCapacityFault
      def self.parse(http_resp)
        data = Types::InsufficientClusterCapacityFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidClusterTrackFault
    class InvalidClusterTrackFault
      def self.parse(http_resp)
        data = Types::InvalidClusterTrackFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidElasticIpFault
    class InvalidElasticIpFault
      def self.parse(http_resp)
        data = Types::InvalidElasticIpFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SnapshotScheduleNotFoundFault
    class SnapshotScheduleNotFoundFault
      def self.parse(http_resp)
        data = Types::SnapshotScheduleNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UnauthorizedOperation
    class UnauthorizedOperation
      def self.parse(http_resp)
        data = Types::UnauthorizedOperation.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NumberOfNodesPerClusterLimitExceededFault
    class NumberOfNodesPerClusterLimitExceededFault
      def self.parse(http_resp)
        data = Types::NumberOfNodesPerClusterLimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidTagFault
    class InvalidTagFault
      def self.parse(http_resp)
        data = Types::InvalidTagFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateClusterParameterGroup
    class CreateClusterParameterGroup
      def self.parse(http_resp)
        data = Types::CreateClusterParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateClusterParameterGroupResult')
        xml.at('ClusterParameterGroup') do |node|
          data.cluster_parameter_group = Parsers::ClusterParameterGroup.parse(node)
        end
        data
      end
    end

    class ClusterParameterGroup
      def self.parse(xml)
        data = Types::ClusterParameterGroup.new
        xml.at('ParameterGroupName') do |node|
          data.parameter_group_name = (node.text || '')
        end
        xml.at('ParameterGroupFamily') do |node|
          data.parameter_group_family = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Error Parser for ClusterParameterGroupAlreadyExistsFault
    class ClusterParameterGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ClusterParameterGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterParameterGroupQuotaExceededFault
    class ClusterParameterGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ClusterParameterGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateClusterSecurityGroup
    class CreateClusterSecurityGroup
      def self.parse(http_resp)
        data = Types::CreateClusterSecurityGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateClusterSecurityGroupResult')
        xml.at('ClusterSecurityGroup') do |node|
          data.cluster_security_group = Parsers::ClusterSecurityGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for ClusterSecurityGroupQuotaExceededFault
    class ClusterSecurityGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ClusterSecurityGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterSecurityGroupAlreadyExistsFault
    class ClusterSecurityGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ClusterSecurityGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateClusterSnapshot
    class CreateClusterSnapshot
      def self.parse(http_resp)
        data = Types::CreateClusterSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateClusterSnapshotResult')
        xml.at('Snapshot') do |node|
          data.snapshot = Parsers::Snapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for CreateClusterSubnetGroup
    class CreateClusterSubnetGroup
      def self.parse(http_resp)
        data = Types::CreateClusterSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateClusterSubnetGroupResult')
        xml.at('ClusterSubnetGroup') do |node|
          data.cluster_subnet_group = Parsers::ClusterSubnetGroup.parse(node)
        end
        data
      end
    end

    class ClusterSubnetGroup
      def self.parse(xml)
        data = Types::ClusterSubnetGroup.new
        xml.at('ClusterSubnetGroupName') do |node|
          data.cluster_subnet_group_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        xml.at('SubnetGroupStatus') do |node|
          data.subnet_group_status = (node.text || '')
        end
        xml.at('Subnets') do |node|
          children = node.children('Subnet')
          data.subnets = Parsers::SubnetList.parse(children)
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class SubnetList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Subnet.parse(node)
        end
        data
      end
    end

    class Subnet
      def self.parse(xml)
        data = Types::Subnet.new
        xml.at('SubnetIdentifier') do |node|
          data.subnet_identifier = (node.text || '')
        end
        xml.at('SubnetAvailabilityZone') do |node|
          data.subnet_availability_zone = Parsers::AvailabilityZone.parse(node)
        end
        xml.at('SubnetStatus') do |node|
          data.subnet_status = (node.text || '')
        end
        return data
      end
    end

    class AvailabilityZone
      def self.parse(xml)
        data = Types::AvailabilityZone.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('SupportedPlatforms') do |node|
          children = node.children('SupportedPlatform')
          data.supported_platforms = Parsers::SupportedPlatformsList.parse(children)
        end
        return data
      end
    end

    class SupportedPlatformsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SupportedPlatform.parse(node)
        end
        data
      end
    end

    class SupportedPlatform
      def self.parse(xml)
        data = Types::SupportedPlatform.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ClusterSubnetGroupAlreadyExistsFault
    class ClusterSubnetGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ClusterSubnetGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterSubnetQuotaExceededFault
    class ClusterSubnetQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ClusterSubnetQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ClusterSubnetGroupQuotaExceededFault
    class ClusterSubnetGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ClusterSubnetGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateEndpointAccess
    class CreateEndpointAccess
      def self.parse(http_resp)
        data = Types::CreateEndpointAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateEndpointAccessResult')
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('ResourceOwner') do |node|
          data.resource_owner = (node.text || '')
        end
        xml.at('SubnetGroupName') do |node|
          data.subnet_group_name = (node.text || '')
        end
        xml.at('EndpointStatus') do |node|
          data.endpoint_status = (node.text || '')
        end
        xml.at('EndpointName') do |node|
          data.endpoint_name = (node.text || '')
        end
        xml.at('EndpointCreateTime') do |node|
          data.endpoint_create_time = Time.parse(node.text) if node.text
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('Address') do |node|
          data.address = (node.text || '')
        end
        xml.at('VpcSecurityGroups') do |node|
          children = node.children('VpcSecurityGroup')
          data.vpc_security_groups = Parsers::VpcSecurityGroupMembershipList.parse(children)
        end
        xml.at('VpcEndpoint') do |node|
          data.vpc_endpoint = Parsers::VpcEndpoint.parse(node)
        end
        data
      end
    end

    # Error Parser for EndpointsPerAuthorizationLimitExceededFault
    class EndpointsPerAuthorizationLimitExceededFault
      def self.parse(http_resp)
        data = Types::EndpointsPerAuthorizationLimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for EndpointAlreadyExistsFault
    class EndpointAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::EndpointAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AccessToClusterDeniedFault
    class AccessToClusterDeniedFault
      def self.parse(http_resp)
        data = Types::AccessToClusterDeniedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for EndpointsPerClusterLimitExceededFault
    class EndpointsPerClusterLimitExceededFault
      def self.parse(http_resp)
        data = Types::EndpointsPerClusterLimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateEventSubscription
    class CreateEventSubscription
      def self.parse(http_resp)
        data = Types::CreateEventSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateEventSubscriptionResult')
        xml.at('EventSubscription') do |node|
          data.event_subscription = Parsers::EventSubscription.parse(node)
        end
        data
      end
    end

    class EventSubscription
      def self.parse(xml)
        data = Types::EventSubscription.new
        xml.at('CustomerAwsId') do |node|
          data.customer_aws_id = (node.text || '')
        end
        xml.at('CustSubscriptionId') do |node|
          data.cust_subscription_id = (node.text || '')
        end
        xml.at('SnsTopicArn') do |node|
          data.sns_topic_arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SubscriptionCreationTime') do |node|
          data.subscription_creation_time = Time.parse(node.text) if node.text
        end
        xml.at('SourceType') do |node|
          data.source_type = (node.text || '')
        end
        xml.at('SourceIdsList') do |node|
          children = node.children('SourceId')
          data.source_ids_list = Parsers::SourceIdsList.parse(children)
        end
        xml.at('EventCategoriesList') do |node|
          children = node.children('EventCategory')
          data.event_categories_list = Parsers::EventCategoriesList.parse(children)
        end
        xml.at('Severity') do |node|
          data.severity = (node.text || '')
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class EventCategoriesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class SourceIdsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for EventSubscriptionQuotaExceededFault
    class EventSubscriptionQuotaExceededFault
      def self.parse(http_resp)
        data = Types::EventSubscriptionQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubscriptionSeverityNotFoundFault
    class SubscriptionSeverityNotFoundFault
      def self.parse(http_resp)
        data = Types::SubscriptionSeverityNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubscriptionEventIdNotFoundFault
    class SubscriptionEventIdNotFoundFault
      def self.parse(http_resp)
        data = Types::SubscriptionEventIdNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubscriptionCategoryNotFoundFault
    class SubscriptionCategoryNotFoundFault
      def self.parse(http_resp)
        data = Types::SubscriptionCategoryNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SNSTopicArnNotFoundFault
    class SNSTopicArnNotFoundFault
      def self.parse(http_resp)
        data = Types::SNSTopicArnNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubscriptionAlreadyExistFault
    class SubscriptionAlreadyExistFault
      def self.parse(http_resp)
        data = Types::SubscriptionAlreadyExistFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SNSNoAuthorizationFault
    class SNSNoAuthorizationFault
      def self.parse(http_resp)
        data = Types::SNSNoAuthorizationFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SourceNotFoundFault
    class SourceNotFoundFault
      def self.parse(http_resp)
        data = Types::SourceNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SNSInvalidTopicFault
    class SNSInvalidTopicFault
      def self.parse(http_resp)
        data = Types::SNSInvalidTopicFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateHsmClientCertificate
    class CreateHsmClientCertificate
      def self.parse(http_resp)
        data = Types::CreateHsmClientCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateHsmClientCertificateResult')
        xml.at('HsmClientCertificate') do |node|
          data.hsm_client_certificate = Parsers::HsmClientCertificate.parse(node)
        end
        data
      end
    end

    class HsmClientCertificate
      def self.parse(xml)
        data = Types::HsmClientCertificate.new
        xml.at('HsmClientCertificateIdentifier') do |node|
          data.hsm_client_certificate_identifier = (node.text || '')
        end
        xml.at('HsmClientCertificatePublicKey') do |node|
          data.hsm_client_certificate_public_key = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Error Parser for HsmClientCertificateAlreadyExistsFault
    class HsmClientCertificateAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::HsmClientCertificateAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for HsmClientCertificateQuotaExceededFault
    class HsmClientCertificateQuotaExceededFault
      def self.parse(http_resp)
        data = Types::HsmClientCertificateQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateHsmConfiguration
    class CreateHsmConfiguration
      def self.parse(http_resp)
        data = Types::CreateHsmConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateHsmConfigurationResult')
        xml.at('HsmConfiguration') do |node|
          data.hsm_configuration = Parsers::HsmConfiguration.parse(node)
        end
        data
      end
    end

    class HsmConfiguration
      def self.parse(xml)
        data = Types::HsmConfiguration.new
        xml.at('HsmConfigurationIdentifier') do |node|
          data.hsm_configuration_identifier = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('HsmIpAddress') do |node|
          data.hsm_ip_address = (node.text || '')
        end
        xml.at('HsmPartitionName') do |node|
          data.hsm_partition_name = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Error Parser for HsmConfigurationQuotaExceededFault
    class HsmConfigurationQuotaExceededFault
      def self.parse(http_resp)
        data = Types::HsmConfigurationQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for HsmConfigurationAlreadyExistsFault
    class HsmConfigurationAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::HsmConfigurationAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateScheduledAction
    class CreateScheduledAction
      def self.parse(http_resp)
        data = Types::CreateScheduledActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateScheduledActionResult')
        xml.at('ScheduledActionName') do |node|
          data.scheduled_action_name = (node.text || '')
        end
        xml.at('TargetAction') do |node|
          data.target_action = Parsers::ScheduledActionType.parse(node)
        end
        xml.at('Schedule') do |node|
          data.schedule = (node.text || '')
        end
        xml.at('IamRole') do |node|
          data.iam_role = (node.text || '')
        end
        xml.at('ScheduledActionDescription') do |node|
          data.scheduled_action_description = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('NextInvocations') do |node|
          children = node.children('ScheduledActionTime')
          data.next_invocations = Parsers::ScheduledActionTimeList.parse(children)
        end
        xml.at('StartTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('EndTime') do |node|
          data.end_time = Time.parse(node.text) if node.text
        end
        data
      end
    end

    class ScheduledActionTimeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Time.parse(node.text) if node.text
        end
        data
      end
    end

    class ScheduledActionType
      def self.parse(xml)
        data = Types::ScheduledActionType.new
        xml.at('ResizeCluster') do |node|
          data.resize_cluster = Parsers::ResizeClusterMessage.parse(node)
        end
        xml.at('PauseCluster') do |node|
          data.pause_cluster = Parsers::PauseClusterMessage.parse(node)
        end
        xml.at('ResumeCluster') do |node|
          data.resume_cluster = Parsers::ResumeClusterMessage.parse(node)
        end
        return data
      end
    end

    class ResumeClusterMessage
      def self.parse(xml)
        data = Types::ResumeClusterMessage.new
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        return data
      end
    end

    class PauseClusterMessage
      def self.parse(xml)
        data = Types::PauseClusterMessage.new
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        return data
      end
    end

    class ResizeClusterMessage
      def self.parse(xml)
        data = Types::ResizeClusterMessage.new
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('ClusterType') do |node|
          data.cluster_type = (node.text || '')
        end
        xml.at('NodeType') do |node|
          data.node_type = (node.text || '')
        end
        xml.at('NumberOfNodes') do |node|
          data.number_of_nodes = node.text&.to_i
        end
        xml.at('Classic') do |node|
          data.classic = (node.text == 'true')
        end
        xml.at('ReservedNodeId') do |node|
          data.reserved_node_id = (node.text || '')
        end
        xml.at('TargetReservedNodeOfferingId') do |node|
          data.target_reserved_node_offering_id = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ScheduledActionTypeUnsupportedFault
    class ScheduledActionTypeUnsupportedFault
      def self.parse(http_resp)
        data = Types::ScheduledActionTypeUnsupportedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ScheduledActionAlreadyExistsFault
    class ScheduledActionAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ScheduledActionAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidScheduledActionFault
    class InvalidScheduledActionFault
      def self.parse(http_resp)
        data = Types::InvalidScheduledActionFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ScheduledActionQuotaExceededFault
    class ScheduledActionQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ScheduledActionQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidScheduleFault
    class InvalidScheduleFault
      def self.parse(http_resp)
        data = Types::InvalidScheduleFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateSnapshotCopyGrant
    class CreateSnapshotCopyGrant
      def self.parse(http_resp)
        data = Types::CreateSnapshotCopyGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateSnapshotCopyGrantResult')
        xml.at('SnapshotCopyGrant') do |node|
          data.snapshot_copy_grant = Parsers::SnapshotCopyGrant.parse(node)
        end
        data
      end
    end

    class SnapshotCopyGrant
      def self.parse(xml)
        data = Types::SnapshotCopyGrant.new
        xml.at('SnapshotCopyGrantName') do |node|
          data.snapshot_copy_grant_name = (node.text || '')
        end
        xml.at('KmsKeyId') do |node|
          data.kms_key_id = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Error Parser for SnapshotCopyGrantAlreadyExistsFault
    class SnapshotCopyGrantAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::SnapshotCopyGrantAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SnapshotCopyGrantQuotaExceededFault
    class SnapshotCopyGrantQuotaExceededFault
      def self.parse(http_resp)
        data = Types::SnapshotCopyGrantQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateSnapshotSchedule
    class CreateSnapshotSchedule
      def self.parse(http_resp)
        data = Types::CreateSnapshotScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateSnapshotScheduleResult')
        xml.at('ScheduleDefinitions') do |node|
          children = node.children('ScheduleDefinition')
          data.schedule_definitions = Parsers::ScheduleDefinitionList.parse(children)
        end
        xml.at('ScheduleIdentifier') do |node|
          data.schedule_identifier = (node.text || '')
        end
        xml.at('ScheduleDescription') do |node|
          data.schedule_description = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('NextInvocations') do |node|
          children = node.children('SnapshotTime')
          data.next_invocations = Parsers::ScheduledSnapshotTimeList.parse(children)
        end
        xml.at('AssociatedClusterCount') do |node|
          data.associated_cluster_count = node.text&.to_i
        end
        xml.at('AssociatedClusters') do |node|
          children = node.children('ClusterAssociatedToSchedule')
          data.associated_clusters = Parsers::AssociatedClusterList.parse(children)
        end
        data
      end
    end

    class AssociatedClusterList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterAssociatedToSchedule.parse(node)
        end
        data
      end
    end

    class ClusterAssociatedToSchedule
      def self.parse(xml)
        data = Types::ClusterAssociatedToSchedule.new
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('ScheduleAssociationState') do |node|
          data.schedule_association_state = (node.text || '')
        end
        return data
      end
    end

    class ScheduledSnapshotTimeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Time.parse(node.text) if node.text
        end
        data
      end
    end

    class ScheduleDefinitionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for SnapshotScheduleQuotaExceededFault
    class SnapshotScheduleQuotaExceededFault
      def self.parse(http_resp)
        data = Types::SnapshotScheduleQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ScheduleDefinitionTypeUnsupportedFault
    class ScheduleDefinitionTypeUnsupportedFault
      def self.parse(http_resp)
        data = Types::ScheduleDefinitionTypeUnsupportedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SnapshotScheduleAlreadyExistsFault
    class SnapshotScheduleAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::SnapshotScheduleAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateTags
    class CreateTags
      def self.parse(http_resp)
        data = Types::CreateTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateTagsResult')
        data
      end
    end

    # Error Parser for ResourceNotFoundFault
    class ResourceNotFoundFault
      def self.parse(http_resp)
        data = Types::ResourceNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateUsageLimit
    class CreateUsageLimit
      def self.parse(http_resp)
        data = Types::CreateUsageLimitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateUsageLimitResult')
        xml.at('UsageLimitId') do |node|
          data.usage_limit_id = (node.text || '')
        end
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('FeatureType') do |node|
          data.feature_type = (node.text || '')
        end
        xml.at('LimitType') do |node|
          data.limit_type = (node.text || '')
        end
        xml.at('Amount') do |node|
          data.amount = node.text&.to_i
        end
        xml.at('Period') do |node|
          data.period = (node.text || '')
        end
        xml.at('BreachAction') do |node|
          data.breach_action = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    # Error Parser for UsageLimitAlreadyExistsFault
    class UsageLimitAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::UsageLimitAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidUsageLimitFault
    class InvalidUsageLimitFault
      def self.parse(http_resp)
        data = Types::InvalidUsageLimitFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeauthorizeDataShare
    class DeauthorizeDataShare
      def self.parse(http_resp)
        data = Types::DeauthorizeDataShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeauthorizeDataShareResult')
        xml.at('DataShareArn') do |node|
          data.data_share_arn = (node.text || '')
        end
        xml.at('ProducerArn') do |node|
          data.producer_arn = (node.text || '')
        end
        xml.at('AllowPubliclyAccessibleConsumers') do |node|
          data.allow_publicly_accessible_consumers = (node.text == 'true')
        end
        xml.at('DataShareAssociations') do |node|
          children = node.children('member')
          data.data_share_associations = Parsers::DataShareAssociationList.parse(children)
        end
        xml.at('ManagedBy') do |node|
          data.managed_by = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteAuthenticationProfile
    class DeleteAuthenticationProfile
      def self.parse(http_resp)
        data = Types::DeleteAuthenticationProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteAuthenticationProfileResult')
        xml.at('AuthenticationProfileName') do |node|
          data.authentication_profile_name = (node.text || '')
        end
        data
      end
    end

    # Error Parser for AuthenticationProfileNotFoundFault
    class AuthenticationProfileNotFoundFault
      def self.parse(http_resp)
        data = Types::AuthenticationProfileNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteCluster
    class DeleteCluster
      def self.parse(http_resp)
        data = Types::DeleteClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteClusterResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteClusterParameterGroup
    class DeleteClusterParameterGroup
      def self.parse(http_resp)
        data = Types::DeleteClusterParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteClusterParameterGroupResult')
        data
      end
    end

    # Error Parser for InvalidClusterParameterGroupStateFault
    class InvalidClusterParameterGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidClusterParameterGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteClusterSecurityGroup
    class DeleteClusterSecurityGroup
      def self.parse(http_resp)
        data = Types::DeleteClusterSecurityGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteClusterSecurityGroupResult')
        data
      end
    end

    # Operation Parser for DeleteClusterSnapshot
    class DeleteClusterSnapshot
      def self.parse(http_resp)
        data = Types::DeleteClusterSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteClusterSnapshotResult')
        xml.at('Snapshot') do |node|
          data.snapshot = Parsers::Snapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteClusterSubnetGroup
    class DeleteClusterSubnetGroup
      def self.parse(http_resp)
        data = Types::DeleteClusterSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteClusterSubnetGroupResult')
        data
      end
    end

    # Error Parser for InvalidClusterSubnetStateFault
    class InvalidClusterSubnetStateFault
      def self.parse(http_resp)
        data = Types::InvalidClusterSubnetStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteEndpointAccess
    class DeleteEndpointAccess
      def self.parse(http_resp)
        data = Types::DeleteEndpointAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteEndpointAccessResult')
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('ResourceOwner') do |node|
          data.resource_owner = (node.text || '')
        end
        xml.at('SubnetGroupName') do |node|
          data.subnet_group_name = (node.text || '')
        end
        xml.at('EndpointStatus') do |node|
          data.endpoint_status = (node.text || '')
        end
        xml.at('EndpointName') do |node|
          data.endpoint_name = (node.text || '')
        end
        xml.at('EndpointCreateTime') do |node|
          data.endpoint_create_time = Time.parse(node.text) if node.text
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('Address') do |node|
          data.address = (node.text || '')
        end
        xml.at('VpcSecurityGroups') do |node|
          children = node.children('VpcSecurityGroup')
          data.vpc_security_groups = Parsers::VpcSecurityGroupMembershipList.parse(children)
        end
        xml.at('VpcEndpoint') do |node|
          data.vpc_endpoint = Parsers::VpcEndpoint.parse(node)
        end
        data
      end
    end

    # Error Parser for EndpointNotFoundFault
    class EndpointNotFoundFault
      def self.parse(http_resp)
        data = Types::EndpointNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidEndpointStateFault
    class InvalidEndpointStateFault
      def self.parse(http_resp)
        data = Types::InvalidEndpointStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteEventSubscription
    class DeleteEventSubscription
      def self.parse(http_resp)
        data = Types::DeleteEventSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteEventSubscriptionResult')
        data
      end
    end

    # Error Parser for InvalidSubscriptionStateFault
    class InvalidSubscriptionStateFault
      def self.parse(http_resp)
        data = Types::InvalidSubscriptionStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SubscriptionNotFoundFault
    class SubscriptionNotFoundFault
      def self.parse(http_resp)
        data = Types::SubscriptionNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteHsmClientCertificate
    class DeleteHsmClientCertificate
      def self.parse(http_resp)
        data = Types::DeleteHsmClientCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteHsmClientCertificateResult')
        data
      end
    end

    # Error Parser for InvalidHsmClientCertificateStateFault
    class InvalidHsmClientCertificateStateFault
      def self.parse(http_resp)
        data = Types::InvalidHsmClientCertificateStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteHsmConfiguration
    class DeleteHsmConfiguration
      def self.parse(http_resp)
        data = Types::DeleteHsmConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteHsmConfigurationResult')
        data
      end
    end

    # Error Parser for InvalidHsmConfigurationStateFault
    class InvalidHsmConfigurationStateFault
      def self.parse(http_resp)
        data = Types::InvalidHsmConfigurationStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeletePartner
    class DeletePartner
      def self.parse(http_resp)
        data = Types::DeletePartnerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeletePartnerResult')
        xml.at('DatabaseName') do |node|
          data.database_name = (node.text || '')
        end
        xml.at('PartnerName') do |node|
          data.partner_name = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteScheduledAction
    class DeleteScheduledAction
      def self.parse(http_resp)
        data = Types::DeleteScheduledActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteScheduledActionResult')
        data
      end
    end

    # Error Parser for ScheduledActionNotFoundFault
    class ScheduledActionNotFoundFault
      def self.parse(http_resp)
        data = Types::ScheduledActionNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteSnapshotCopyGrant
    class DeleteSnapshotCopyGrant
      def self.parse(http_resp)
        data = Types::DeleteSnapshotCopyGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteSnapshotCopyGrantResult')
        data
      end
    end

    # Error Parser for SnapshotCopyGrantNotFoundFault
    class SnapshotCopyGrantNotFoundFault
      def self.parse(http_resp)
        data = Types::SnapshotCopyGrantNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidSnapshotCopyGrantStateFault
    class InvalidSnapshotCopyGrantStateFault
      def self.parse(http_resp)
        data = Types::InvalidSnapshotCopyGrantStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteSnapshotSchedule
    class DeleteSnapshotSchedule
      def self.parse(http_resp)
        data = Types::DeleteSnapshotScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteSnapshotScheduleResult')
        data
      end
    end

    # Error Parser for InvalidClusterSnapshotScheduleStateFault
    class InvalidClusterSnapshotScheduleStateFault
      def self.parse(http_resp)
        data = Types::InvalidClusterSnapshotScheduleStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteTagsResult')
        data
      end
    end

    # Operation Parser for DeleteUsageLimit
    class DeleteUsageLimit
      def self.parse(http_resp)
        data = Types::DeleteUsageLimitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteUsageLimitResult')
        data
      end
    end

    # Error Parser for UsageLimitNotFoundFault
    class UsageLimitNotFoundFault
      def self.parse(http_resp)
        data = Types::UsageLimitNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.parse(http_resp)
        data = Types::DescribeAccountAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAccountAttributesResult')
        xml.at('AccountAttributes') do |node|
          children = node.children('AccountAttribute')
          data.account_attributes = Parsers::AttributeList.parse(children)
        end
        data
      end
    end

    class AttributeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccountAttribute.parse(node)
        end
        data
      end
    end

    class AccountAttribute
      def self.parse(xml)
        data = Types::AccountAttribute.new
        xml.at('AttributeName') do |node|
          data.attribute_name = (node.text || '')
        end
        xml.at('AttributeValues') do |node|
          children = node.children('AttributeValueTarget')
          data.attribute_values = Parsers::AttributeValueList.parse(children)
        end
        return data
      end
    end

    class AttributeValueList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AttributeValueTarget.parse(node)
        end
        data
      end
    end

    class AttributeValueTarget
      def self.parse(xml)
        data = Types::AttributeValueTarget.new
        xml.at('AttributeValue') do |node|
          data.attribute_value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeAuthenticationProfiles
    class DescribeAuthenticationProfiles
      def self.parse(http_resp)
        data = Types::DescribeAuthenticationProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAuthenticationProfilesResult')
        xml.at('AuthenticationProfiles') do |node|
          children = node.children('member')
          data.authentication_profiles = Parsers::AuthenticationProfileList.parse(children)
        end
        data
      end
    end

    class AuthenticationProfileList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AuthenticationProfile.parse(node)
        end
        data
      end
    end

    class AuthenticationProfile
      def self.parse(xml)
        data = Types::AuthenticationProfile.new
        xml.at('AuthenticationProfileName') do |node|
          data.authentication_profile_name = (node.text || '')
        end
        xml.at('AuthenticationProfileContent') do |node|
          data.authentication_profile_content = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeClusterDbRevisions
    class DescribeClusterDbRevisions
      def self.parse(http_resp)
        data = Types::DescribeClusterDbRevisionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeClusterDbRevisionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ClusterDbRevisions') do |node|
          children = node.children('ClusterDbRevision')
          data.cluster_db_revisions = Parsers::ClusterDbRevisionsList.parse(children)
        end
        data
      end
    end

    class ClusterDbRevisionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterDbRevision.parse(node)
        end
        data
      end
    end

    class ClusterDbRevision
      def self.parse(xml)
        data = Types::ClusterDbRevision.new
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('CurrentDatabaseRevision') do |node|
          data.current_database_revision = (node.text || '')
        end
        xml.at('DatabaseRevisionReleaseDate') do |node|
          data.database_revision_release_date = Time.parse(node.text) if node.text
        end
        xml.at('RevisionTargets') do |node|
          children = node.children('RevisionTarget')
          data.revision_targets = Parsers::RevisionTargetsList.parse(children)
        end
        return data
      end
    end

    class RevisionTargetsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RevisionTarget.parse(node)
        end
        data
      end
    end

    class RevisionTarget
      def self.parse(xml)
        data = Types::RevisionTarget.new
        xml.at('DatabaseRevision') do |node|
          data.database_revision = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('DatabaseRevisionReleaseDate') do |node|
          data.database_revision_release_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeClusterParameterGroups
    class DescribeClusterParameterGroups
      def self.parse(http_resp)
        data = Types::DescribeClusterParameterGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeClusterParameterGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ParameterGroups') do |node|
          children = node.children('ClusterParameterGroup')
          data.parameter_groups = Parsers::ParameterGroupList.parse(children)
        end
        data
      end
    end

    class ParameterGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterParameterGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeClusterParameters
    class DescribeClusterParameters
      def self.parse(http_resp)
        data = Types::DescribeClusterParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeClusterParametersResult')
        xml.at('Parameters') do |node|
          children = node.children('Parameter')
          data.parameters = Parsers::ParametersList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class ParametersList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Parameter.parse(node)
        end
        data
      end
    end

    class Parameter
      def self.parse(xml)
        data = Types::Parameter.new
        xml.at('ParameterName') do |node|
          data.parameter_name = (node.text || '')
        end
        xml.at('ParameterValue') do |node|
          data.parameter_value = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Source') do |node|
          data.source = (node.text || '')
        end
        xml.at('DataType') do |node|
          data.data_type = (node.text || '')
        end
        xml.at('AllowedValues') do |node|
          data.allowed_values = (node.text || '')
        end
        xml.at('ApplyType') do |node|
          data.apply_type = (node.text || '')
        end
        xml.at('IsModifiable') do |node|
          data.is_modifiable = (node.text == 'true')
        end
        xml.at('MinimumEngineVersion') do |node|
          data.minimum_engine_version = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeClusterSecurityGroups
    class DescribeClusterSecurityGroups
      def self.parse(http_resp)
        data = Types::DescribeClusterSecurityGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeClusterSecurityGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ClusterSecurityGroups') do |node|
          children = node.children('ClusterSecurityGroup')
          data.cluster_security_groups = Parsers::ClusterSecurityGroups.parse(children)
        end
        data
      end
    end

    class ClusterSecurityGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterSecurityGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeClusterSnapshots
    class DescribeClusterSnapshots
      def self.parse(http_resp)
        data = Types::DescribeClusterSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeClusterSnapshotsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Snapshots') do |node|
          children = node.children('Snapshot')
          data.snapshots = Parsers::SnapshotList.parse(children)
        end
        data
      end
    end

    class SnapshotList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Snapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeClusterSubnetGroups
    class DescribeClusterSubnetGroups
      def self.parse(http_resp)
        data = Types::DescribeClusterSubnetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeClusterSubnetGroupsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ClusterSubnetGroups') do |node|
          children = node.children('ClusterSubnetGroup')
          data.cluster_subnet_groups = Parsers::ClusterSubnetGroups.parse(children)
        end
        data
      end
    end

    class ClusterSubnetGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterSubnetGroup.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeClusterTracks
    class DescribeClusterTracks
      def self.parse(http_resp)
        data = Types::DescribeClusterTracksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeClusterTracksResult')
        xml.at('MaintenanceTracks') do |node|
          children = node.children('MaintenanceTrack')
          data.maintenance_tracks = Parsers::TrackList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class TrackList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MaintenanceTrack.parse(node)
        end
        data
      end
    end

    class MaintenanceTrack
      def self.parse(xml)
        data = Types::MaintenanceTrack.new
        xml.at('MaintenanceTrackName') do |node|
          data.maintenance_track_name = (node.text || '')
        end
        xml.at('DatabaseVersion') do |node|
          data.database_version = (node.text || '')
        end
        xml.at('UpdateTargets') do |node|
          children = node.children('UpdateTarget')
          data.update_targets = Parsers::EligibleTracksToUpdateList.parse(children)
        end
        return data
      end
    end

    class EligibleTracksToUpdateList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UpdateTarget.parse(node)
        end
        data
      end
    end

    class UpdateTarget
      def self.parse(xml)
        data = Types::UpdateTarget.new
        xml.at('MaintenanceTrackName') do |node|
          data.maintenance_track_name = (node.text || '')
        end
        xml.at('DatabaseVersion') do |node|
          data.database_version = (node.text || '')
        end
        xml.at('SupportedOperations') do |node|
          children = node.children('SupportedOperation')
          data.supported_operations = Parsers::SupportedOperationList.parse(children)
        end
        return data
      end
    end

    class SupportedOperationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SupportedOperation.parse(node)
        end
        data
      end
    end

    class SupportedOperation
      def self.parse(xml)
        data = Types::SupportedOperation.new
        xml.at('OperationName') do |node|
          data.operation_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeClusterVersions
    class DescribeClusterVersions
      def self.parse(http_resp)
        data = Types::DescribeClusterVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeClusterVersionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ClusterVersions') do |node|
          children = node.children('ClusterVersion')
          data.cluster_versions = Parsers::ClusterVersionList.parse(children)
        end
        data
      end
    end

    class ClusterVersionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ClusterVersion.parse(node)
        end
        data
      end
    end

    class ClusterVersion
      def self.parse(xml)
        data = Types::ClusterVersion.new
        xml.at('ClusterVersion') do |node|
          data.cluster_version = (node.text || '')
        end
        xml.at('ClusterParameterGroupFamily') do |node|
          data.cluster_parameter_group_family = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeClusters
    class DescribeClusters
      def self.parse(http_resp)
        data = Types::DescribeClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeClustersResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Clusters') do |node|
          children = node.children('Cluster')
          data.clusters = Parsers::ClusterList.parse(children)
        end
        data
      end
    end

    class ClusterList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeDataShares
    class DescribeDataShares
      def self.parse(http_resp)
        data = Types::DescribeDataSharesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDataSharesResult')
        xml.at('DataShares') do |node|
          children = node.children('member')
          data.data_shares = Parsers::DataShareList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class DataShareList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DataShare.parse(node)
        end
        data
      end
    end

    class DataShare
      def self.parse(xml)
        data = Types::DataShare.new
        xml.at('DataShareArn') do |node|
          data.data_share_arn = (node.text || '')
        end
        xml.at('ProducerArn') do |node|
          data.producer_arn = (node.text || '')
        end
        xml.at('AllowPubliclyAccessibleConsumers') do |node|
          data.allow_publicly_accessible_consumers = (node.text == 'true')
        end
        xml.at('DataShareAssociations') do |node|
          children = node.children('member')
          data.data_share_associations = Parsers::DataShareAssociationList.parse(children)
        end
        xml.at('ManagedBy') do |node|
          data.managed_by = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeDataSharesForConsumer
    class DescribeDataSharesForConsumer
      def self.parse(http_resp)
        data = Types::DescribeDataSharesForConsumerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDataSharesForConsumerResult')
        xml.at('DataShares') do |node|
          children = node.children('member')
          data.data_shares = Parsers::DataShareList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeDataSharesForProducer
    class DescribeDataSharesForProducer
      def self.parse(http_resp)
        data = Types::DescribeDataSharesForProducerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDataSharesForProducerResult')
        xml.at('DataShares') do |node|
          children = node.children('member')
          data.data_shares = Parsers::DataShareList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeDefaultClusterParameters
    class DescribeDefaultClusterParameters
      def self.parse(http_resp)
        data = Types::DescribeDefaultClusterParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDefaultClusterParametersResult')
        xml.at('DefaultClusterParameters') do |node|
          data.default_cluster_parameters = Parsers::DefaultClusterParameters.parse(node)
        end
        data
      end
    end

    class DefaultClusterParameters
      def self.parse(xml)
        data = Types::DefaultClusterParameters.new
        xml.at('ParameterGroupFamily') do |node|
          data.parameter_group_family = (node.text || '')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Parameters') do |node|
          children = node.children('Parameter')
          data.parameters = Parsers::ParametersList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeEndpointAccess
    class DescribeEndpointAccess
      def self.parse(http_resp)
        data = Types::DescribeEndpointAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEndpointAccessResult')
        xml.at('EndpointAccessList') do |node|
          children = node.children('member')
          data.endpoint_access_list = Parsers::EndpointAccesses.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class EndpointAccesses
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EndpointAccess.parse(node)
        end
        data
      end
    end

    class EndpointAccess
      def self.parse(xml)
        data = Types::EndpointAccess.new
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('ResourceOwner') do |node|
          data.resource_owner = (node.text || '')
        end
        xml.at('SubnetGroupName') do |node|
          data.subnet_group_name = (node.text || '')
        end
        xml.at('EndpointStatus') do |node|
          data.endpoint_status = (node.text || '')
        end
        xml.at('EndpointName') do |node|
          data.endpoint_name = (node.text || '')
        end
        xml.at('EndpointCreateTime') do |node|
          data.endpoint_create_time = Time.parse(node.text) if node.text
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('Address') do |node|
          data.address = (node.text || '')
        end
        xml.at('VpcSecurityGroups') do |node|
          children = node.children('VpcSecurityGroup')
          data.vpc_security_groups = Parsers::VpcSecurityGroupMembershipList.parse(children)
        end
        xml.at('VpcEndpoint') do |node|
          data.vpc_endpoint = Parsers::VpcEndpoint.parse(node)
        end
        return data
      end
    end

    # Operation Parser for DescribeEndpointAuthorization
    class DescribeEndpointAuthorization
      def self.parse(http_resp)
        data = Types::DescribeEndpointAuthorizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEndpointAuthorizationResult')
        xml.at('EndpointAuthorizationList') do |node|
          children = node.children('member')
          data.endpoint_authorization_list = Parsers::EndpointAuthorizations.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class EndpointAuthorizations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EndpointAuthorization.parse(node)
        end
        data
      end
    end

    class EndpointAuthorization
      def self.parse(xml)
        data = Types::EndpointAuthorization.new
        xml.at('Grantor') do |node|
          data.grantor = (node.text || '')
        end
        xml.at('Grantee') do |node|
          data.grantee = (node.text || '')
        end
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('AuthorizeTime') do |node|
          data.authorize_time = Time.parse(node.text) if node.text
        end
        xml.at('ClusterStatus') do |node|
          data.cluster_status = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('AllowedAllVPCs') do |node|
          data.allowed_all_vp_cs = (node.text == 'true')
        end
        xml.at('AllowedVPCs') do |node|
          children = node.children('VpcIdentifier')
          data.allowed_vp_cs = Parsers::VpcIdentifierList.parse(children)
        end
        xml.at('EndpointCount') do |node|
          data.endpoint_count = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeEventCategories
    class DescribeEventCategories
      def self.parse(http_resp)
        data = Types::DescribeEventCategoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEventCategoriesResult')
        xml.at('EventCategoriesMapList') do |node|
          children = node.children('EventCategoriesMap')
          data.event_categories_map_list = Parsers::EventCategoriesMapList.parse(children)
        end
        data
      end
    end

    class EventCategoriesMapList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EventCategoriesMap.parse(node)
        end
        data
      end
    end

    class EventCategoriesMap
      def self.parse(xml)
        data = Types::EventCategoriesMap.new
        xml.at('SourceType') do |node|
          data.source_type = (node.text || '')
        end
        xml.at('Events') do |node|
          children = node.children('EventInfoMap')
          data.events = Parsers::EventInfoMapList.parse(children)
        end
        return data
      end
    end

    class EventInfoMapList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EventInfoMap.parse(node)
        end
        data
      end
    end

    class EventInfoMap
      def self.parse(xml)
        data = Types::EventInfoMap.new
        xml.at('EventId') do |node|
          data.event_id = (node.text || '')
        end
        xml.at('EventCategories') do |node|
          children = node.children('EventCategory')
          data.event_categories = Parsers::EventCategoriesList.parse(children)
        end
        xml.at('EventDescription') do |node|
          data.event_description = (node.text || '')
        end
        xml.at('Severity') do |node|
          data.severity = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeEventSubscriptions
    class DescribeEventSubscriptions
      def self.parse(http_resp)
        data = Types::DescribeEventSubscriptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEventSubscriptionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('EventSubscriptionsList') do |node|
          children = node.children('EventSubscription')
          data.event_subscriptions_list = Parsers::EventSubscriptionsList.parse(children)
        end
        data
      end
    end

    class EventSubscriptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EventSubscription.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeEvents
    class DescribeEvents
      def self.parse(http_resp)
        data = Types::DescribeEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEventsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('Events') do |node|
          children = node.children('Event')
          data.events = Parsers::EventList.parse(children)
        end
        data
      end
    end

    class EventList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Event.parse(node)
        end
        data
      end
    end

    class Event
      def self.parse(xml)
        data = Types::Event.new
        xml.at('SourceIdentifier') do |node|
          data.source_identifier = (node.text || '')
        end
        xml.at('SourceType') do |node|
          data.source_type = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('EventCategories') do |node|
          children = node.children('EventCategory')
          data.event_categories = Parsers::EventCategoriesList.parse(children)
        end
        xml.at('Severity') do |node|
          data.severity = (node.text || '')
        end
        xml.at('Date') do |node|
          data.date = Time.parse(node.text) if node.text
        end
        xml.at('EventId') do |node|
          data.event_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeHsmClientCertificates
    class DescribeHsmClientCertificates
      def self.parse(http_resp)
        data = Types::DescribeHsmClientCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeHsmClientCertificatesResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('HsmClientCertificates') do |node|
          children = node.children('HsmClientCertificate')
          data.hsm_client_certificates = Parsers::HsmClientCertificateList.parse(children)
        end
        data
      end
    end

    class HsmClientCertificateList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HsmClientCertificate.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeHsmConfigurations
    class DescribeHsmConfigurations
      def self.parse(http_resp)
        data = Types::DescribeHsmConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeHsmConfigurationsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('HsmConfigurations') do |node|
          children = node.children('HsmConfiguration')
          data.hsm_configurations = Parsers::HsmConfigurationList.parse(children)
        end
        data
      end
    end

    class HsmConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::HsmConfiguration.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeLoggingStatus
    class DescribeLoggingStatus
      def self.parse(http_resp)
        data = Types::DescribeLoggingStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLoggingStatusResult')
        xml.at('LoggingEnabled') do |node|
          data.logging_enabled = (node.text == 'true')
        end
        xml.at('BucketName') do |node|
          data.bucket_name = (node.text || '')
        end
        xml.at('S3KeyPrefix') do |node|
          data.s3_key_prefix = (node.text || '')
        end
        xml.at('LastSuccessfulDeliveryTime') do |node|
          data.last_successful_delivery_time = Time.parse(node.text) if node.text
        end
        xml.at('LastFailureTime') do |node|
          data.last_failure_time = Time.parse(node.text) if node.text
        end
        xml.at('LastFailureMessage') do |node|
          data.last_failure_message = (node.text || '')
        end
        xml.at('LogDestinationType') do |node|
          data.log_destination_type = (node.text || '')
        end
        xml.at('LogExports') do |node|
          children = node.children('member')
          data.log_exports = Parsers::LogTypeList.parse(children)
        end
        data
      end
    end

    class LogTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeNodeConfigurationOptions
    class DescribeNodeConfigurationOptions
      def self.parse(http_resp)
        data = Types::DescribeNodeConfigurationOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeNodeConfigurationOptionsResult')
        xml.at('NodeConfigurationOptionList') do |node|
          children = node.children('NodeConfigurationOption')
          data.node_configuration_option_list = Parsers::NodeConfigurationOptionList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class NodeConfigurationOptionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NodeConfigurationOption.parse(node)
        end
        data
      end
    end

    class NodeConfigurationOption
      def self.parse(xml)
        data = Types::NodeConfigurationOption.new
        xml.at('NodeType') do |node|
          data.node_type = (node.text || '')
        end
        xml.at('NumberOfNodes') do |node|
          data.number_of_nodes = node.text&.to_i
        end
        xml.at('EstimatedDiskUtilizationPercent') do |node|
          data.estimated_disk_utilization_percent = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Mode') do |node|
          data.mode = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for AccessToSnapshotDeniedFault
    class AccessToSnapshotDeniedFault
      def self.parse(http_resp)
        data = Types::AccessToSnapshotDeniedFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeOrderableClusterOptions
    class DescribeOrderableClusterOptions
      def self.parse(http_resp)
        data = Types::DescribeOrderableClusterOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeOrderableClusterOptionsResult')
        xml.at('OrderableClusterOptions') do |node|
          children = node.children('OrderableClusterOption')
          data.orderable_cluster_options = Parsers::OrderableClusterOptionsList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class OrderableClusterOptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OrderableClusterOption.parse(node)
        end
        data
      end
    end

    class OrderableClusterOption
      def self.parse(xml)
        data = Types::OrderableClusterOption.new
        xml.at('ClusterVersion') do |node|
          data.cluster_version = (node.text || '')
        end
        xml.at('ClusterType') do |node|
          data.cluster_type = (node.text || '')
        end
        xml.at('NodeType') do |node|
          data.node_type = (node.text || '')
        end
        xml.at('AvailabilityZones') do |node|
          children = node.children('AvailabilityZone')
          data.availability_zones = Parsers::AvailabilityZoneList.parse(children)
        end
        return data
      end
    end

    class AvailabilityZoneList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AvailabilityZone.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribePartners
    class DescribePartners
      def self.parse(http_resp)
        data = Types::DescribePartnersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribePartnersResult')
        xml.at('PartnerIntegrationInfoList') do |node|
          children = node.children('PartnerIntegrationInfo')
          data.partner_integration_info_list = Parsers::PartnerIntegrationInfoList.parse(children)
        end
        data
      end
    end

    class PartnerIntegrationInfoList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PartnerIntegrationInfo.parse(node)
        end
        data
      end
    end

    class PartnerIntegrationInfo
      def self.parse(xml)
        data = Types::PartnerIntegrationInfo.new
        xml.at('DatabaseName') do |node|
          data.database_name = (node.text || '')
        end
        xml.at('PartnerName') do |node|
          data.partner_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StatusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('CreatedAt') do |node|
          data.created_at = Time.parse(node.text) if node.text
        end
        xml.at('UpdatedAt') do |node|
          data.updated_at = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeReservedNodeExchangeStatus
    class DescribeReservedNodeExchangeStatus
      def self.parse(http_resp)
        data = Types::DescribeReservedNodeExchangeStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReservedNodeExchangeStatusResult')
        xml.at('ReservedNodeExchangeStatusDetails') do |node|
          children = node.children('ReservedNodeExchangeStatus')
          data.reserved_node_exchange_status_details = Parsers::ReservedNodeExchangeStatusList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class ReservedNodeExchangeStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedNodeExchangeStatus.parse(node)
        end
        data
      end
    end

    # Error Parser for ReservedNodeExchangeNotFoundFault
    class ReservedNodeExchangeNotFoundFault
      def self.parse(http_resp)
        data = Types::ReservedNodeExchangeNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeReservedNodeOfferings
    class DescribeReservedNodeOfferings
      def self.parse(http_resp)
        data = Types::DescribeReservedNodeOfferingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReservedNodeOfferingsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ReservedNodeOfferings') do |node|
          children = node.children('ReservedNodeOffering')
          data.reserved_node_offerings = Parsers::ReservedNodeOfferingList.parse(children)
        end
        data
      end
    end

    class ReservedNodeOfferingList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedNodeOffering.parse(node)
        end
        data
      end
    end

    class ReservedNodeOffering
      def self.parse(xml)
        data = Types::ReservedNodeOffering.new
        xml.at('ReservedNodeOfferingId') do |node|
          data.reserved_node_offering_id = (node.text || '')
        end
        xml.at('NodeType') do |node|
          data.node_type = (node.text || '')
        end
        xml.at('Duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('FixedPrice') do |node|
          data.fixed_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('UsagePrice') do |node|
          data.usage_price = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('CurrencyCode') do |node|
          data.currency_code = (node.text || '')
        end
        xml.at('OfferingType') do |node|
          data.offering_type = (node.text || '')
        end
        xml.at('RecurringCharges') do |node|
          children = node.children('RecurringCharge')
          data.recurring_charges = Parsers::RecurringChargeList.parse(children)
        end
        xml.at('ReservedNodeOfferingType') do |node|
          data.reserved_node_offering_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeReservedNodes
    class DescribeReservedNodes
      def self.parse(http_resp)
        data = Types::DescribeReservedNodesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeReservedNodesResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ReservedNodes') do |node|
          children = node.children('ReservedNode')
          data.reserved_nodes = Parsers::ReservedNodeList.parse(children)
        end
        data
      end
    end

    class ReservedNodeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedNode.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeResize
    class DescribeResize
      def self.parse(http_resp)
        data = Types::DescribeResizeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeResizeResult')
        xml.at('TargetNodeType') do |node|
          data.target_node_type = (node.text || '')
        end
        xml.at('TargetNumberOfNodes') do |node|
          data.target_number_of_nodes = node.text&.to_i
        end
        xml.at('TargetClusterType') do |node|
          data.target_cluster_type = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('ImportTablesCompleted') do |node|
          children = node.children('member')
          data.import_tables_completed = Parsers::ImportTablesCompleted.parse(children)
        end
        xml.at('ImportTablesInProgress') do |node|
          children = node.children('member')
          data.import_tables_in_progress = Parsers::ImportTablesInProgress.parse(children)
        end
        xml.at('ImportTablesNotStarted') do |node|
          children = node.children('member')
          data.import_tables_not_started = Parsers::ImportTablesNotStarted.parse(children)
        end
        xml.at('AvgResizeRateInMegaBytesPerSecond') do |node|
          data.avg_resize_rate_in_mega_bytes_per_second = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('TotalResizeDataInMegaBytes') do |node|
          data.total_resize_data_in_mega_bytes = node.text&.to_i
        end
        xml.at('ProgressInMegaBytes') do |node|
          data.progress_in_mega_bytes = node.text&.to_i
        end
        xml.at('ElapsedTimeInSeconds') do |node|
          data.elapsed_time_in_seconds = node.text&.to_i
        end
        xml.at('EstimatedTimeToCompletionInSeconds') do |node|
          data.estimated_time_to_completion_in_seconds = node.text&.to_i
        end
        xml.at('ResizeType') do |node|
          data.resize_type = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('TargetEncryptionType') do |node|
          data.target_encryption_type = (node.text || '')
        end
        xml.at('DataTransferProgressPercent') do |node|
          data.data_transfer_progress_percent = Hearth::NumberHelper.deserialize(node.text)
        end
        data
      end
    end

    # Operation Parser for DescribeScheduledActions
    class DescribeScheduledActions
      def self.parse(http_resp)
        data = Types::DescribeScheduledActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeScheduledActionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ScheduledActions') do |node|
          children = node.children('ScheduledAction')
          data.scheduled_actions = Parsers::ScheduledActionList.parse(children)
        end
        data
      end
    end

    class ScheduledActionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ScheduledAction.parse(node)
        end
        data
      end
    end

    class ScheduledAction
      def self.parse(xml)
        data = Types::ScheduledAction.new
        xml.at('ScheduledActionName') do |node|
          data.scheduled_action_name = (node.text || '')
        end
        xml.at('TargetAction') do |node|
          data.target_action = Parsers::ScheduledActionType.parse(node)
        end
        xml.at('Schedule') do |node|
          data.schedule = (node.text || '')
        end
        xml.at('IamRole') do |node|
          data.iam_role = (node.text || '')
        end
        xml.at('ScheduledActionDescription') do |node|
          data.scheduled_action_description = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('NextInvocations') do |node|
          children = node.children('ScheduledActionTime')
          data.next_invocations = Parsers::ScheduledActionTimeList.parse(children)
        end
        xml.at('StartTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('EndTime') do |node|
          data.end_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeSnapshotCopyGrants
    class DescribeSnapshotCopyGrants
      def self.parse(http_resp)
        data = Types::DescribeSnapshotCopyGrantsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeSnapshotCopyGrantsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('SnapshotCopyGrants') do |node|
          children = node.children('SnapshotCopyGrant')
          data.snapshot_copy_grants = Parsers::SnapshotCopyGrantList.parse(children)
        end
        data
      end
    end

    class SnapshotCopyGrantList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SnapshotCopyGrant.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeSnapshotSchedules
    class DescribeSnapshotSchedules
      def self.parse(http_resp)
        data = Types::DescribeSnapshotSchedulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeSnapshotSchedulesResult')
        xml.at('SnapshotSchedules') do |node|
          children = node.children('SnapshotSchedule')
          data.snapshot_schedules = Parsers::SnapshotScheduleList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class SnapshotScheduleList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SnapshotSchedule.parse(node)
        end
        data
      end
    end

    class SnapshotSchedule
      def self.parse(xml)
        data = Types::SnapshotSchedule.new
        xml.at('ScheduleDefinitions') do |node|
          children = node.children('ScheduleDefinition')
          data.schedule_definitions = Parsers::ScheduleDefinitionList.parse(children)
        end
        xml.at('ScheduleIdentifier') do |node|
          data.schedule_identifier = (node.text || '')
        end
        xml.at('ScheduleDescription') do |node|
          data.schedule_description = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('NextInvocations') do |node|
          children = node.children('SnapshotTime')
          data.next_invocations = Parsers::ScheduledSnapshotTimeList.parse(children)
        end
        xml.at('AssociatedClusterCount') do |node|
          data.associated_cluster_count = node.text&.to_i
        end
        xml.at('AssociatedClusters') do |node|
          children = node.children('ClusterAssociatedToSchedule')
          data.associated_clusters = Parsers::AssociatedClusterList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeStorage
    class DescribeStorage
      def self.parse(http_resp)
        data = Types::DescribeStorageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeStorageResult')
        xml.at('TotalBackupSizeInMegaBytes') do |node|
          data.total_backup_size_in_mega_bytes = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('TotalProvisionedStorageInMegaBytes') do |node|
          data.total_provisioned_storage_in_mega_bytes = Hearth::NumberHelper.deserialize(node.text)
        end
        data
      end
    end

    # Operation Parser for DescribeTableRestoreStatus
    class DescribeTableRestoreStatus
      def self.parse(http_resp)
        data = Types::DescribeTableRestoreStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTableRestoreStatusResult')
        xml.at('TableRestoreStatusDetails') do |node|
          children = node.children('TableRestoreStatus')
          data.table_restore_status_details = Parsers::TableRestoreStatusList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class TableRestoreStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TableRestoreStatus.parse(node)
        end
        data
      end
    end

    class TableRestoreStatus
      def self.parse(xml)
        data = Types::TableRestoreStatus.new
        xml.at('TableRestoreRequestId') do |node|
          data.table_restore_request_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('RequestTime') do |node|
          data.request_time = Time.parse(node.text) if node.text
        end
        xml.at('ProgressInMegaBytes') do |node|
          data.progress_in_mega_bytes = node.text&.to_i
        end
        xml.at('TotalDataInMegaBytes') do |node|
          data.total_data_in_mega_bytes = node.text&.to_i
        end
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('SnapshotIdentifier') do |node|
          data.snapshot_identifier = (node.text || '')
        end
        xml.at('SourceDatabaseName') do |node|
          data.source_database_name = (node.text || '')
        end
        xml.at('SourceSchemaName') do |node|
          data.source_schema_name = (node.text || '')
        end
        xml.at('SourceTableName') do |node|
          data.source_table_name = (node.text || '')
        end
        xml.at('TargetDatabaseName') do |node|
          data.target_database_name = (node.text || '')
        end
        xml.at('TargetSchemaName') do |node|
          data.target_schema_name = (node.text || '')
        end
        xml.at('NewTableName') do |node|
          data.new_table_name = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for TableRestoreNotFoundFault
    class TableRestoreNotFoundFault
      def self.parse(http_resp)
        data = Types::TableRestoreNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTagsResult')
        xml.at('TaggedResources') do |node|
          children = node.children('TaggedResource')
          data.tagged_resources = Parsers::TaggedResourceList.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class TaggedResourceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TaggedResource.parse(node)
        end
        data
      end
    end

    class TaggedResource
      def self.parse(xml)
        data = Types::TaggedResource.new
        xml.at('Tag') do |node|
          data.tag = Parsers::Tag.parse(node)
        end
        xml.at('ResourceName') do |node|
          data.resource_name = (node.text || '')
        end
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeUsageLimits
    class DescribeUsageLimits
      def self.parse(http_resp)
        data = Types::DescribeUsageLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeUsageLimitsResult')
        xml.at('UsageLimits') do |node|
          children = node.children('member')
          data.usage_limits = Parsers::UsageLimits.parse(children)
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        data
      end
    end

    class UsageLimits
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::UsageLimit.parse(node)
        end
        data
      end
    end

    class UsageLimit
      def self.parse(xml)
        data = Types::UsageLimit.new
        xml.at('UsageLimitId') do |node|
          data.usage_limit_id = (node.text || '')
        end
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('FeatureType') do |node|
          data.feature_type = (node.text || '')
        end
        xml.at('LimitType') do |node|
          data.limit_type = (node.text || '')
        end
        xml.at('Amount') do |node|
          data.amount = node.text&.to_i
        end
        xml.at('Period') do |node|
          data.period = (node.text || '')
        end
        xml.at('BreachAction') do |node|
          data.breach_action = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DisableLogging
    class DisableLogging
      def self.parse(http_resp)
        data = Types::DisableLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DisableLoggingResult')
        xml.at('LoggingEnabled') do |node|
          data.logging_enabled = (node.text == 'true')
        end
        xml.at('BucketName') do |node|
          data.bucket_name = (node.text || '')
        end
        xml.at('S3KeyPrefix') do |node|
          data.s3_key_prefix = (node.text || '')
        end
        xml.at('LastSuccessfulDeliveryTime') do |node|
          data.last_successful_delivery_time = Time.parse(node.text) if node.text
        end
        xml.at('LastFailureTime') do |node|
          data.last_failure_time = Time.parse(node.text) if node.text
        end
        xml.at('LastFailureMessage') do |node|
          data.last_failure_message = (node.text || '')
        end
        xml.at('LogDestinationType') do |node|
          data.log_destination_type = (node.text || '')
        end
        xml.at('LogExports') do |node|
          children = node.children('member')
          data.log_exports = Parsers::LogTypeList.parse(children)
        end
        data
      end
    end

    # Operation Parser for DisableSnapshotCopy
    class DisableSnapshotCopy
      def self.parse(http_resp)
        data = Types::DisableSnapshotCopyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DisableSnapshotCopyResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Error Parser for SnapshotCopyAlreadyDisabledFault
    class SnapshotCopyAlreadyDisabledFault
      def self.parse(http_resp)
        data = Types::SnapshotCopyAlreadyDisabledFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DisassociateDataShareConsumer
    class DisassociateDataShareConsumer
      def self.parse(http_resp)
        data = Types::DisassociateDataShareConsumerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DisassociateDataShareConsumerResult')
        xml.at('DataShareArn') do |node|
          data.data_share_arn = (node.text || '')
        end
        xml.at('ProducerArn') do |node|
          data.producer_arn = (node.text || '')
        end
        xml.at('AllowPubliclyAccessibleConsumers') do |node|
          data.allow_publicly_accessible_consumers = (node.text == 'true')
        end
        xml.at('DataShareAssociations') do |node|
          children = node.children('member')
          data.data_share_associations = Parsers::DataShareAssociationList.parse(children)
        end
        xml.at('ManagedBy') do |node|
          data.managed_by = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for EnableLogging
    class EnableLogging
      def self.parse(http_resp)
        data = Types::EnableLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('EnableLoggingResult')
        xml.at('LoggingEnabled') do |node|
          data.logging_enabled = (node.text == 'true')
        end
        xml.at('BucketName') do |node|
          data.bucket_name = (node.text || '')
        end
        xml.at('S3KeyPrefix') do |node|
          data.s3_key_prefix = (node.text || '')
        end
        xml.at('LastSuccessfulDeliveryTime') do |node|
          data.last_successful_delivery_time = Time.parse(node.text) if node.text
        end
        xml.at('LastFailureTime') do |node|
          data.last_failure_time = Time.parse(node.text) if node.text
        end
        xml.at('LastFailureMessage') do |node|
          data.last_failure_message = (node.text || '')
        end
        xml.at('LogDestinationType') do |node|
          data.log_destination_type = (node.text || '')
        end
        xml.at('LogExports') do |node|
          children = node.children('member')
          data.log_exports = Parsers::LogTypeList.parse(children)
        end
        data
      end
    end

    # Error Parser for BucketNotFoundFault
    class BucketNotFoundFault
      def self.parse(http_resp)
        data = Types::BucketNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidS3BucketNameFault
    class InvalidS3BucketNameFault
      def self.parse(http_resp)
        data = Types::InvalidS3BucketNameFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidS3KeyPrefixFault
    class InvalidS3KeyPrefixFault
      def self.parse(http_resp)
        data = Types::InvalidS3KeyPrefixFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InsufficientS3BucketPolicyFault
    class InsufficientS3BucketPolicyFault
      def self.parse(http_resp)
        data = Types::InsufficientS3BucketPolicyFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for EnableSnapshotCopy
    class EnableSnapshotCopy
      def self.parse(http_resp)
        data = Types::EnableSnapshotCopyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('EnableSnapshotCopyResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Error Parser for CopyToRegionDisabledFault
    class CopyToRegionDisabledFault
      def self.parse(http_resp)
        data = Types::CopyToRegionDisabledFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UnknownSnapshotCopyRegionFault
    class UnknownSnapshotCopyRegionFault
      def self.parse(http_resp)
        data = Types::UnknownSnapshotCopyRegionFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for SnapshotCopyAlreadyEnabledFault
    class SnapshotCopyAlreadyEnabledFault
      def self.parse(http_resp)
        data = Types::SnapshotCopyAlreadyEnabledFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for IncompatibleOrderableOptions
    class IncompatibleOrderableOptions
      def self.parse(http_resp)
        data = Types::IncompatibleOrderableOptions.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetClusterCredentials
    class GetClusterCredentials
      def self.parse(http_resp)
        data = Types::GetClusterCredentialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetClusterCredentialsResult')
        xml.at('DbUser') do |node|
          data.db_user = (node.text || '')
        end
        xml.at('DbPassword') do |node|
          data.db_password = (node.text || '')
        end
        xml.at('Expiration') do |node|
          data.expiration = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for GetClusterCredentialsWithIAM
    class GetClusterCredentialsWithIAM
      def self.parse(http_resp)
        data = Types::GetClusterCredentialsWithIAMOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetClusterCredentialsWithIAMResult')
        xml.at('DbUser') do |node|
          data.db_user = (node.text || '')
        end
        xml.at('DbPassword') do |node|
          data.db_password = (node.text || '')
        end
        xml.at('Expiration') do |node|
          data.expiration = Time.parse(node.text) if node.text
        end
        xml.at('NextRefreshTime') do |node|
          data.next_refresh_time = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for GetReservedNodeExchangeConfigurationOptions
    class GetReservedNodeExchangeConfigurationOptions
      def self.parse(http_resp)
        data = Types::GetReservedNodeExchangeConfigurationOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetReservedNodeExchangeConfigurationOptionsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ReservedNodeConfigurationOptionList') do |node|
          children = node.children('ReservedNodeConfigurationOption')
          data.reserved_node_configuration_option_list = Parsers::ReservedNodeConfigurationOptionList.parse(children)
        end
        data
      end
    end

    class ReservedNodeConfigurationOptionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ReservedNodeConfigurationOption.parse(node)
        end
        data
      end
    end

    class ReservedNodeConfigurationOption
      def self.parse(xml)
        data = Types::ReservedNodeConfigurationOption.new
        xml.at('SourceReservedNode') do |node|
          data.source_reserved_node = Parsers::ReservedNode.parse(node)
        end
        xml.at('TargetReservedNodeCount') do |node|
          data.target_reserved_node_count = node.text&.to_i
        end
        xml.at('TargetReservedNodeOffering') do |node|
          data.target_reserved_node_offering = Parsers::ReservedNodeOffering.parse(node)
        end
        return data
      end
    end

    # Operation Parser for GetReservedNodeExchangeOfferings
    class GetReservedNodeExchangeOfferings
      def self.parse(http_resp)
        data = Types::GetReservedNodeExchangeOfferingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetReservedNodeExchangeOfferingsResult')
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('ReservedNodeOfferings') do |node|
          children = node.children('ReservedNodeOffering')
          data.reserved_node_offerings = Parsers::ReservedNodeOfferingList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ModifyAquaConfiguration
    class ModifyAquaConfiguration
      def self.parse(http_resp)
        data = Types::ModifyAquaConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyAquaConfigurationResult')
        xml.at('AquaConfiguration') do |node|
          data.aqua_configuration = Parsers::AquaConfiguration.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyAuthenticationProfile
    class ModifyAuthenticationProfile
      def self.parse(http_resp)
        data = Types::ModifyAuthenticationProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyAuthenticationProfileResult')
        xml.at('AuthenticationProfileName') do |node|
          data.authentication_profile_name = (node.text || '')
        end
        xml.at('AuthenticationProfileContent') do |node|
          data.authentication_profile_content = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyCluster
    class ModifyCluster
      def self.parse(http_resp)
        data = Types::ModifyClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyClusterResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Error Parser for TableLimitExceededFault
    class TableLimitExceededFault
      def self.parse(http_resp)
        data = Types::TableLimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for UnsupportedOptionFault
    class UnsupportedOptionFault
      def self.parse(http_resp)
        data = Types::UnsupportedOptionFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyClusterDbRevision
    class ModifyClusterDbRevision
      def self.parse(http_resp)
        data = Types::ModifyClusterDbRevisionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyClusterDbRevisionResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Error Parser for ClusterOnLatestRevisionFault
    class ClusterOnLatestRevisionFault
      def self.parse(http_resp)
        data = Types::ClusterOnLatestRevisionFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyClusterIamRoles
    class ModifyClusterIamRoles
      def self.parse(http_resp)
        data = Types::ModifyClusterIamRolesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyClusterIamRolesResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyClusterMaintenance
    class ModifyClusterMaintenance
      def self.parse(http_resp)
        data = Types::ModifyClusterMaintenanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyClusterMaintenanceResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyClusterParameterGroup
    class ModifyClusterParameterGroup
      def self.parse(http_resp)
        data = Types::ModifyClusterParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyClusterParameterGroupResult')
        xml.at('ParameterGroupName') do |node|
          data.parameter_group_name = (node.text || '')
        end
        xml.at('ParameterGroupStatus') do |node|
          data.parameter_group_status = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyClusterSnapshot
    class ModifyClusterSnapshot
      def self.parse(http_resp)
        data = Types::ModifyClusterSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyClusterSnapshotResult')
        xml.at('Snapshot') do |node|
          data.snapshot = Parsers::Snapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyClusterSnapshotSchedule
    class ModifyClusterSnapshotSchedule
      def self.parse(http_resp)
        data = Types::ModifyClusterSnapshotScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyClusterSnapshotScheduleResult')
        data
      end
    end

    # Operation Parser for ModifyClusterSubnetGroup
    class ModifyClusterSubnetGroup
      def self.parse(http_resp)
        data = Types::ModifyClusterSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyClusterSubnetGroupResult')
        xml.at('ClusterSubnetGroup') do |node|
          data.cluster_subnet_group = Parsers::ClusterSubnetGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for SubnetAlreadyInUse
    class SubnetAlreadyInUse
      def self.parse(http_resp)
        data = Types::SubnetAlreadyInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyEndpointAccess
    class ModifyEndpointAccess
      def self.parse(http_resp)
        data = Types::ModifyEndpointAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyEndpointAccessResult')
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('ResourceOwner') do |node|
          data.resource_owner = (node.text || '')
        end
        xml.at('SubnetGroupName') do |node|
          data.subnet_group_name = (node.text || '')
        end
        xml.at('EndpointStatus') do |node|
          data.endpoint_status = (node.text || '')
        end
        xml.at('EndpointName') do |node|
          data.endpoint_name = (node.text || '')
        end
        xml.at('EndpointCreateTime') do |node|
          data.endpoint_create_time = Time.parse(node.text) if node.text
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        xml.at('Address') do |node|
          data.address = (node.text || '')
        end
        xml.at('VpcSecurityGroups') do |node|
          children = node.children('VpcSecurityGroup')
          data.vpc_security_groups = Parsers::VpcSecurityGroupMembershipList.parse(children)
        end
        xml.at('VpcEndpoint') do |node|
          data.vpc_endpoint = Parsers::VpcEndpoint.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyEventSubscription
    class ModifyEventSubscription
      def self.parse(http_resp)
        data = Types::ModifyEventSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyEventSubscriptionResult')
        xml.at('EventSubscription') do |node|
          data.event_subscription = Parsers::EventSubscription.parse(node)
        end
        data
      end
    end

    # Operation Parser for ModifyScheduledAction
    class ModifyScheduledAction
      def self.parse(http_resp)
        data = Types::ModifyScheduledActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyScheduledActionResult')
        xml.at('ScheduledActionName') do |node|
          data.scheduled_action_name = (node.text || '')
        end
        xml.at('TargetAction') do |node|
          data.target_action = Parsers::ScheduledActionType.parse(node)
        end
        xml.at('Schedule') do |node|
          data.schedule = (node.text || '')
        end
        xml.at('IamRole') do |node|
          data.iam_role = (node.text || '')
        end
        xml.at('ScheduledActionDescription') do |node|
          data.scheduled_action_description = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('NextInvocations') do |node|
          children = node.children('ScheduledActionTime')
          data.next_invocations = Parsers::ScheduledActionTimeList.parse(children)
        end
        xml.at('StartTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('EndTime') do |node|
          data.end_time = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for ModifySnapshotCopyRetentionPeriod
    class ModifySnapshotCopyRetentionPeriod
      def self.parse(http_resp)
        data = Types::ModifySnapshotCopyRetentionPeriodOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifySnapshotCopyRetentionPeriodResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Error Parser for SnapshotCopyDisabledFault
    class SnapshotCopyDisabledFault
      def self.parse(http_resp)
        data = Types::SnapshotCopyDisabledFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifySnapshotSchedule
    class ModifySnapshotSchedule
      def self.parse(http_resp)
        data = Types::ModifySnapshotScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifySnapshotScheduleResult')
        xml.at('ScheduleDefinitions') do |node|
          children = node.children('ScheduleDefinition')
          data.schedule_definitions = Parsers::ScheduleDefinitionList.parse(children)
        end
        xml.at('ScheduleIdentifier') do |node|
          data.schedule_identifier = (node.text || '')
        end
        xml.at('ScheduleDescription') do |node|
          data.schedule_description = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        xml.at('NextInvocations') do |node|
          children = node.children('SnapshotTime')
          data.next_invocations = Parsers::ScheduledSnapshotTimeList.parse(children)
        end
        xml.at('AssociatedClusterCount') do |node|
          data.associated_cluster_count = node.text&.to_i
        end
        xml.at('AssociatedClusters') do |node|
          children = node.children('ClusterAssociatedToSchedule')
          data.associated_clusters = Parsers::AssociatedClusterList.parse(children)
        end
        data
      end
    end

    # Error Parser for SnapshotScheduleUpdateInProgressFault
    class SnapshotScheduleUpdateInProgressFault
      def self.parse(http_resp)
        data = Types::SnapshotScheduleUpdateInProgressFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ModifyUsageLimit
    class ModifyUsageLimit
      def self.parse(http_resp)
        data = Types::ModifyUsageLimitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ModifyUsageLimitResult')
        xml.at('UsageLimitId') do |node|
          data.usage_limit_id = (node.text || '')
        end
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('FeatureType') do |node|
          data.feature_type = (node.text || '')
        end
        xml.at('LimitType') do |node|
          data.limit_type = (node.text || '')
        end
        xml.at('Amount') do |node|
          data.amount = node.text&.to_i
        end
        xml.at('Period') do |node|
          data.period = (node.text || '')
        end
        xml.at('BreachAction') do |node|
          data.breach_action = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    # Operation Parser for PauseCluster
    class PauseCluster
      def self.parse(http_resp)
        data = Types::PauseClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PauseClusterResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for PurchaseReservedNodeOffering
    class PurchaseReservedNodeOffering
      def self.parse(http_resp)
        data = Types::PurchaseReservedNodeOfferingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PurchaseReservedNodeOfferingResult')
        xml.at('ReservedNode') do |node|
          data.reserved_node = Parsers::ReservedNode.parse(node)
        end
        data
      end
    end

    # Error Parser for ReservedNodeQuotaExceededFault
    class ReservedNodeQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ReservedNodeQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RebootCluster
    class RebootCluster
      def self.parse(http_resp)
        data = Types::RebootClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RebootClusterResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for RejectDataShare
    class RejectDataShare
      def self.parse(http_resp)
        data = Types::RejectDataShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RejectDataShareResult')
        xml.at('DataShareArn') do |node|
          data.data_share_arn = (node.text || '')
        end
        xml.at('ProducerArn') do |node|
          data.producer_arn = (node.text || '')
        end
        xml.at('AllowPubliclyAccessibleConsumers') do |node|
          data.allow_publicly_accessible_consumers = (node.text == 'true')
        end
        xml.at('DataShareAssociations') do |node|
          children = node.children('member')
          data.data_share_associations = Parsers::DataShareAssociationList.parse(children)
        end
        xml.at('ManagedBy') do |node|
          data.managed_by = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ResetClusterParameterGroup
    class ResetClusterParameterGroup
      def self.parse(http_resp)
        data = Types::ResetClusterParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ResetClusterParameterGroupResult')
        xml.at('ParameterGroupName') do |node|
          data.parameter_group_name = (node.text || '')
        end
        xml.at('ParameterGroupStatus') do |node|
          data.parameter_group_status = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ResizeCluster
    class ResizeCluster
      def self.parse(http_resp)
        data = Types::ResizeClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ResizeClusterResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for RestoreFromClusterSnapshot
    class RestoreFromClusterSnapshot
      def self.parse(http_resp)
        data = Types::RestoreFromClusterSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RestoreFromClusterSnapshotResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Error Parser for InvalidRestoreFault
    class InvalidRestoreFault
      def self.parse(http_resp)
        data = Types::InvalidRestoreFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RestoreTableFromClusterSnapshot
    class RestoreTableFromClusterSnapshot
      def self.parse(http_resp)
        data = Types::RestoreTableFromClusterSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RestoreTableFromClusterSnapshotResult')
        xml.at('TableRestoreStatus') do |node|
          data.table_restore_status = Parsers::TableRestoreStatus.parse(node)
        end
        data
      end
    end

    # Error Parser for InProgressTableRestoreQuotaExceededFault
    class InProgressTableRestoreQuotaExceededFault
      def self.parse(http_resp)
        data = Types::InProgressTableRestoreQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidTableRestoreArgumentFault
    class InvalidTableRestoreArgumentFault
      def self.parse(http_resp)
        data = Types::InvalidTableRestoreArgumentFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ResumeCluster
    class ResumeCluster
      def self.parse(http_resp)
        data = Types::ResumeClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ResumeClusterResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for RevokeClusterSecurityGroupIngress
    class RevokeClusterSecurityGroupIngress
      def self.parse(http_resp)
        data = Types::RevokeClusterSecurityGroupIngressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RevokeClusterSecurityGroupIngressResult')
        xml.at('ClusterSecurityGroup') do |node|
          data.cluster_security_group = Parsers::ClusterSecurityGroup.parse(node)
        end
        data
      end
    end

    # Error Parser for AuthorizationNotFoundFault
    class AuthorizationNotFoundFault
      def self.parse(http_resp)
        data = Types::AuthorizationNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RevokeEndpointAccess
    class RevokeEndpointAccess
      def self.parse(http_resp)
        data = Types::RevokeEndpointAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RevokeEndpointAccessResult')
        xml.at('Grantor') do |node|
          data.grantor = (node.text || '')
        end
        xml.at('Grantee') do |node|
          data.grantee = (node.text || '')
        end
        xml.at('ClusterIdentifier') do |node|
          data.cluster_identifier = (node.text || '')
        end
        xml.at('AuthorizeTime') do |node|
          data.authorize_time = Time.parse(node.text) if node.text
        end
        xml.at('ClusterStatus') do |node|
          data.cluster_status = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('AllowedAllVPCs') do |node|
          data.allowed_all_vp_cs = (node.text == 'true')
        end
        xml.at('AllowedVPCs') do |node|
          children = node.children('VpcIdentifier')
          data.allowed_vp_cs = Parsers::VpcIdentifierList.parse(children)
        end
        xml.at('EndpointCount') do |node|
          data.endpoint_count = node.text&.to_i
        end
        data
      end
    end

    # Error Parser for EndpointAuthorizationNotFoundFault
    class EndpointAuthorizationNotFoundFault
      def self.parse(http_resp)
        data = Types::EndpointAuthorizationNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RevokeSnapshotAccess
    class RevokeSnapshotAccess
      def self.parse(http_resp)
        data = Types::RevokeSnapshotAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RevokeSnapshotAccessResult')
        xml.at('Snapshot') do |node|
          data.snapshot = Parsers::Snapshot.parse(node)
        end
        data
      end
    end

    # Operation Parser for RotateEncryptionKey
    class RotateEncryptionKey
      def self.parse(http_resp)
        data = Types::RotateEncryptionKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RotateEncryptionKeyResult')
        xml.at('Cluster') do |node|
          data.cluster = Parsers::Cluster.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdatePartnerStatus
    class UpdatePartnerStatus
      def self.parse(http_resp)
        data = Types::UpdatePartnerStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdatePartnerStatusResult')
        xml.at('DatabaseName') do |node|
          data.database_name = (node.text || '')
        end
        xml.at('PartnerName') do |node|
          data.partner_name = (node.text || '')
        end
        data
      end
    end
  end
end
