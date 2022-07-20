# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Redshift
  module Stubs

    # Operation Stubber for AcceptReservedNodeExchange
    class AcceptReservedNodeExchange
      def self.default(visited=[])
        {
          exchanged_reserved_node: ReservedNode.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AcceptReservedNodeExchangeResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('AcceptReservedNodeExchangeResult')
        xml << ReservedNode.stub('ExchangedReservedNode', stub[:exchanged_reserved_node]) unless stub[:exchanged_reserved_node].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReservedNode
    class ReservedNode
      def self.default(visited=[])
        return nil if visited.include?('ReservedNode')
        visited = visited + ['ReservedNode']
        {
          reserved_node_id: 'reserved_node_id',
          reserved_node_offering_id: 'reserved_node_offering_id',
          node_type: 'node_type',
          start_time: Time.now,
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          currency_code: 'currency_code',
          node_count: 1,
          state: 'state',
          offering_type: 'offering_type',
          recurring_charges: RecurringChargeList.default(visited),
          reserved_node_offering_type: 'reserved_node_offering_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReservedNode.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReservedNodeId', stub[:reserved_node_id].to_s) unless stub[:reserved_node_id].nil?
        xml << Hearth::XML::Node.new('ReservedNodeOfferingId', stub[:reserved_node_offering_id].to_s) unless stub[:reserved_node_offering_id].nil?
        xml << Hearth::XML::Node.new('NodeType', stub[:node_type].to_s) unless stub[:node_type].nil?
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('Duration', stub[:duration].to_s) unless stub[:duration].nil?
        xml << Hearth::XML::Node.new('FixedPrice', Hearth::NumberHelper.serialize(stub[:fixed_price]).to_s) unless stub[:fixed_price].nil?
        xml << Hearth::XML::Node.new('UsagePrice', Hearth::NumberHelper.serialize(stub[:usage_price]).to_s) unless stub[:usage_price].nil?
        xml << Hearth::XML::Node.new('CurrencyCode', stub[:currency_code].to_s) unless stub[:currency_code].nil?
        xml << Hearth::XML::Node.new('NodeCount', stub[:node_count].to_s) unless stub[:node_count].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('OfferingType', stub[:offering_type].to_s) unless stub[:offering_type].nil?
        xml << Hearth::XML::Node.new('RecurringCharges', RecurringChargeList.stub('RecurringCharge', stub[:recurring_charges])) unless stub[:recurring_charges].nil?
        xml << Hearth::XML::Node.new('ReservedNodeOfferingType', stub[:reserved_node_offering_type].to_s) unless stub[:reserved_node_offering_type].nil?
        xml
      end
    end

    # List Stubber for RecurringChargeList
    class RecurringChargeList
      def self.default(visited=[])
        return nil if visited.include?('RecurringChargeList')
        visited = visited + ['RecurringChargeList']
        [
          RecurringCharge.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << RecurringCharge.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RecurringCharge
    class RecurringCharge
      def self.default(visited=[])
        return nil if visited.include?('RecurringCharge')
        visited = visited + ['RecurringCharge']
        {
          recurring_charge_amount: 1.0,
          recurring_charge_frequency: 'recurring_charge_frequency',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RecurringCharge.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RecurringChargeAmount', Hearth::NumberHelper.serialize(stub[:recurring_charge_amount]).to_s) unless stub[:recurring_charge_amount].nil?
        xml << Hearth::XML::Node.new('RecurringChargeFrequency', stub[:recurring_charge_frequency].to_s) unless stub[:recurring_charge_frequency].nil?
        xml
      end
    end

    # Operation Stubber for AddPartner
    class AddPartner
      def self.default(visited=[])
        {
          database_name: 'database_name',
          partner_name: 'partner_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddPartnerResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('AddPartnerResult')
        xml << Hearth::XML::Node.new('DatabaseName', stub[:database_name].to_s) unless stub[:database_name].nil?
        xml << Hearth::XML::Node.new('PartnerName', stub[:partner_name].to_s) unless stub[:partner_name].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateDataShareConsumer
    class AssociateDataShareConsumer
      def self.default(visited=[])
        {
          data_share_arn: 'data_share_arn',
          producer_arn: 'producer_arn',
          allow_publicly_accessible_consumers: false,
          data_share_associations: DataShareAssociationList.default(visited),
          managed_by: 'managed_by',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AssociateDataShareConsumerResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('AssociateDataShareConsumerResult')
        xml << Hearth::XML::Node.new('DataShareArn', stub[:data_share_arn].to_s) unless stub[:data_share_arn].nil?
        xml << Hearth::XML::Node.new('ProducerArn', stub[:producer_arn].to_s) unless stub[:producer_arn].nil?
        xml << Hearth::XML::Node.new('AllowPubliclyAccessibleConsumers', stub[:allow_publicly_accessible_consumers].to_s) unless stub[:allow_publicly_accessible_consumers].nil?
        xml << Hearth::XML::Node.new('DataShareAssociations', DataShareAssociationList.stub('member', stub[:data_share_associations])) unless stub[:data_share_associations].nil?
        xml << Hearth::XML::Node.new('ManagedBy', stub[:managed_by].to_s) unless stub[:managed_by].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DataShareAssociationList
    class DataShareAssociationList
      def self.default(visited=[])
        return nil if visited.include?('DataShareAssociationList')
        visited = visited + ['DataShareAssociationList']
        [
          DataShareAssociation.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << DataShareAssociation.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DataShareAssociation
    class DataShareAssociation
      def self.default(visited=[])
        return nil if visited.include?('DataShareAssociation')
        visited = visited + ['DataShareAssociation']
        {
          consumer_identifier: 'consumer_identifier',
          status: 'status',
          consumer_region: 'consumer_region',
          created_date: Time.now,
          status_change_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DataShareAssociation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ConsumerIdentifier', stub[:consumer_identifier].to_s) unless stub[:consumer_identifier].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('ConsumerRegion', stub[:consumer_region].to_s) unless stub[:consumer_region].nil?
        xml << Hearth::XML::Node.new('CreatedDate', Hearth::TimeHelper.to_date_time(stub[:created_date])) unless stub[:created_date].nil?
        xml << Hearth::XML::Node.new('StatusChangeDate', Hearth::TimeHelper.to_date_time(stub[:status_change_date])) unless stub[:status_change_date].nil?
        xml
      end
    end

    # Operation Stubber for AuthorizeClusterSecurityGroupIngress
    class AuthorizeClusterSecurityGroupIngress
      def self.default(visited=[])
        {
          cluster_security_group: ClusterSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AuthorizeClusterSecurityGroupIngressResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('AuthorizeClusterSecurityGroupIngressResult')
        xml << ClusterSecurityGroup.stub('ClusterSecurityGroup', stub[:cluster_security_group]) unless stub[:cluster_security_group].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ClusterSecurityGroup
    class ClusterSecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('ClusterSecurityGroup')
        visited = visited + ['ClusterSecurityGroup']
        {
          cluster_security_group_name: 'cluster_security_group_name',
          description: 'description',
          ec2_security_groups: EC2SecurityGroupList.default(visited),
          ip_ranges: IPRangeList.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterSecurityGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterSecurityGroupName', stub[:cluster_security_group_name].to_s) unless stub[:cluster_security_group_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroups', EC2SecurityGroupList.stub('EC2SecurityGroup', stub[:ec2_security_groups])) unless stub[:ec2_security_groups].nil?
        xml << Hearth::XML::Node.new('IPRanges', IPRangeList.stub('IPRange', stub[:ip_ranges])) unless stub[:ip_ranges].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
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
          xml << Tag.stub(node_name, element) unless element.nil?
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

    # List Stubber for IPRangeList
    class IPRangeList
      def self.default(visited=[])
        return nil if visited.include?('IPRangeList')
        visited = visited + ['IPRangeList']
        [
          IPRange.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << IPRange.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for IPRange
    class IPRange
      def self.default(visited=[])
        return nil if visited.include?('IPRange')
        visited = visited + ['IPRange']
        {
          status: 'status',
          cidrip: 'cidrip',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IPRange.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CIDRIP', stub[:cidrip].to_s) unless stub[:cidrip].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # List Stubber for EC2SecurityGroupList
    class EC2SecurityGroupList
      def self.default(visited=[])
        return nil if visited.include?('EC2SecurityGroupList')
        visited = visited + ['EC2SecurityGroupList']
        [
          EC2SecurityGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << EC2SecurityGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EC2SecurityGroup
    class EC2SecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('EC2SecurityGroup')
        visited = visited + ['EC2SecurityGroup']
        {
          status: 'status',
          ec2_security_group_name: 'ec2_security_group_name',
          ec2_security_group_owner_id: 'ec2_security_group_owner_id',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EC2SecurityGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroupName', stub[:ec2_security_group_name].to_s) unless stub[:ec2_security_group_name].nil?
        xml << Hearth::XML::Node.new('EC2SecurityGroupOwnerId', stub[:ec2_security_group_owner_id].to_s) unless stub[:ec2_security_group_owner_id].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for AuthorizeDataShare
    class AuthorizeDataShare
      def self.default(visited=[])
        {
          data_share_arn: 'data_share_arn',
          producer_arn: 'producer_arn',
          allow_publicly_accessible_consumers: false,
          data_share_associations: DataShareAssociationList.default(visited),
          managed_by: 'managed_by',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AuthorizeDataShareResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('AuthorizeDataShareResult')
        xml << Hearth::XML::Node.new('DataShareArn', stub[:data_share_arn].to_s) unless stub[:data_share_arn].nil?
        xml << Hearth::XML::Node.new('ProducerArn', stub[:producer_arn].to_s) unless stub[:producer_arn].nil?
        xml << Hearth::XML::Node.new('AllowPubliclyAccessibleConsumers', stub[:allow_publicly_accessible_consumers].to_s) unless stub[:allow_publicly_accessible_consumers].nil?
        xml << Hearth::XML::Node.new('DataShareAssociations', DataShareAssociationList.stub('member', stub[:data_share_associations])) unless stub[:data_share_associations].nil?
        xml << Hearth::XML::Node.new('ManagedBy', stub[:managed_by].to_s) unless stub[:managed_by].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AuthorizeEndpointAccess
    class AuthorizeEndpointAccess
      def self.default(visited=[])
        {
          grantor: 'grantor',
          grantee: 'grantee',
          cluster_identifier: 'cluster_identifier',
          authorize_time: Time.now,
          cluster_status: 'cluster_status',
          status: 'status',
          allowed_all_vp_cs: false,
          allowed_vp_cs: VpcIdentifierList.default(visited),
          endpoint_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AuthorizeEndpointAccessResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('AuthorizeEndpointAccessResult')
        xml << Hearth::XML::Node.new('Grantor', stub[:grantor].to_s) unless stub[:grantor].nil?
        xml << Hearth::XML::Node.new('Grantee', stub[:grantee].to_s) unless stub[:grantee].nil?
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('AuthorizeTime', Hearth::TimeHelper.to_date_time(stub[:authorize_time])) unless stub[:authorize_time].nil?
        xml << Hearth::XML::Node.new('ClusterStatus', stub[:cluster_status].to_s) unless stub[:cluster_status].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('AllowedAllVPCs', stub[:allowed_all_vp_cs].to_s) unless stub[:allowed_all_vp_cs].nil?
        xml << Hearth::XML::Node.new('AllowedVPCs', VpcIdentifierList.stub('VpcIdentifier', stub[:allowed_vp_cs])) unless stub[:allowed_vp_cs].nil?
        xml << Hearth::XML::Node.new('EndpointCount', stub[:endpoint_count].to_s) unless stub[:endpoint_count].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for VpcIdentifierList
    class VpcIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('VpcIdentifierList')
        visited = visited + ['VpcIdentifierList']
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

    # Operation Stubber for AuthorizeSnapshotAccess
    class AuthorizeSnapshotAccess
      def self.default(visited=[])
        {
          snapshot: Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AuthorizeSnapshotAccessResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('AuthorizeSnapshotAccessResult')
        xml << Snapshot.stub('Snapshot', stub[:snapshot]) unless stub[:snapshot].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for Snapshot
    class Snapshot
      def self.default(visited=[])
        return nil if visited.include?('Snapshot')
        visited = visited + ['Snapshot']
        {
          snapshot_identifier: 'snapshot_identifier',
          cluster_identifier: 'cluster_identifier',
          snapshot_create_time: Time.now,
          status: 'status',
          port: 1,
          availability_zone: 'availability_zone',
          cluster_create_time: Time.now,
          master_username: 'master_username',
          cluster_version: 'cluster_version',
          engine_full_version: 'engine_full_version',
          snapshot_type: 'snapshot_type',
          node_type: 'node_type',
          number_of_nodes: 1,
          db_name: 'db_name',
          vpc_id: 'vpc_id',
          encrypted: false,
          kms_key_id: 'kms_key_id',
          encrypted_with_hsm: false,
          accounts_with_restore_access: AccountsWithRestoreAccessList.default(visited),
          owner_account: 'owner_account',
          total_backup_size_in_mega_bytes: 1.0,
          actual_incremental_backup_size_in_mega_bytes: 1.0,
          backup_progress_in_mega_bytes: 1.0,
          current_backup_rate_in_mega_bytes_per_second: 1.0,
          estimated_seconds_to_completion: 1,
          elapsed_time_in_seconds: 1,
          source_region: 'source_region',
          tags: TagList.default(visited),
          restorable_node_types: RestorableNodeTypeList.default(visited),
          enhanced_vpc_routing: false,
          maintenance_track_name: 'maintenance_track_name',
          manual_snapshot_retention_period: 1,
          manual_snapshot_remaining_days: 1,
          snapshot_retention_start_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Snapshot.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SnapshotIdentifier', stub[:snapshot_identifier].to_s) unless stub[:snapshot_identifier].nil?
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('SnapshotCreateTime', Hearth::TimeHelper.to_date_time(stub[:snapshot_create_time])) unless stub[:snapshot_create_time].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml << Hearth::XML::Node.new('ClusterCreateTime', Hearth::TimeHelper.to_date_time(stub[:cluster_create_time])) unless stub[:cluster_create_time].nil?
        xml << Hearth::XML::Node.new('MasterUsername', stub[:master_username].to_s) unless stub[:master_username].nil?
        xml << Hearth::XML::Node.new('ClusterVersion', stub[:cluster_version].to_s) unless stub[:cluster_version].nil?
        xml << Hearth::XML::Node.new('EngineFullVersion', stub[:engine_full_version].to_s) unless stub[:engine_full_version].nil?
        xml << Hearth::XML::Node.new('SnapshotType', stub[:snapshot_type].to_s) unless stub[:snapshot_type].nil?
        xml << Hearth::XML::Node.new('NodeType', stub[:node_type].to_s) unless stub[:node_type].nil?
        xml << Hearth::XML::Node.new('NumberOfNodes', stub[:number_of_nodes].to_s) unless stub[:number_of_nodes].nil?
        xml << Hearth::XML::Node.new('DBName', stub[:db_name].to_s) unless stub[:db_name].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('Encrypted', stub[:encrypted].to_s) unless stub[:encrypted].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('EncryptedWithHSM', stub[:encrypted_with_hsm].to_s) unless stub[:encrypted_with_hsm].nil?
        xml << Hearth::XML::Node.new('AccountsWithRestoreAccess', AccountsWithRestoreAccessList.stub('AccountWithRestoreAccess', stub[:accounts_with_restore_access])) unless stub[:accounts_with_restore_access].nil?
        xml << Hearth::XML::Node.new('OwnerAccount', stub[:owner_account].to_s) unless stub[:owner_account].nil?
        xml << Hearth::XML::Node.new('TotalBackupSizeInMegaBytes', Hearth::NumberHelper.serialize(stub[:total_backup_size_in_mega_bytes]).to_s) unless stub[:total_backup_size_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('ActualIncrementalBackupSizeInMegaBytes', Hearth::NumberHelper.serialize(stub[:actual_incremental_backup_size_in_mega_bytes]).to_s) unless stub[:actual_incremental_backup_size_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('BackupProgressInMegaBytes', Hearth::NumberHelper.serialize(stub[:backup_progress_in_mega_bytes]).to_s) unless stub[:backup_progress_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('CurrentBackupRateInMegaBytesPerSecond', Hearth::NumberHelper.serialize(stub[:current_backup_rate_in_mega_bytes_per_second]).to_s) unless stub[:current_backup_rate_in_mega_bytes_per_second].nil?
        xml << Hearth::XML::Node.new('EstimatedSecondsToCompletion', stub[:estimated_seconds_to_completion].to_s) unless stub[:estimated_seconds_to_completion].nil?
        xml << Hearth::XML::Node.new('ElapsedTimeInSeconds', stub[:elapsed_time_in_seconds].to_s) unless stub[:elapsed_time_in_seconds].nil?
        xml << Hearth::XML::Node.new('SourceRegion', stub[:source_region].to_s) unless stub[:source_region].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('RestorableNodeTypes', RestorableNodeTypeList.stub('NodeType', stub[:restorable_node_types])) unless stub[:restorable_node_types].nil?
        xml << Hearth::XML::Node.new('EnhancedVpcRouting', stub[:enhanced_vpc_routing].to_s) unless stub[:enhanced_vpc_routing].nil?
        xml << Hearth::XML::Node.new('MaintenanceTrackName', stub[:maintenance_track_name].to_s) unless stub[:maintenance_track_name].nil?
        xml << Hearth::XML::Node.new('ManualSnapshotRetentionPeriod', stub[:manual_snapshot_retention_period].to_s) unless stub[:manual_snapshot_retention_period].nil?
        xml << Hearth::XML::Node.new('ManualSnapshotRemainingDays', stub[:manual_snapshot_remaining_days].to_s) unless stub[:manual_snapshot_remaining_days].nil?
        xml << Hearth::XML::Node.new('SnapshotRetentionStartTime', Hearth::TimeHelper.to_date_time(stub[:snapshot_retention_start_time])) unless stub[:snapshot_retention_start_time].nil?
        xml
      end
    end

    # List Stubber for RestorableNodeTypeList
    class RestorableNodeTypeList
      def self.default(visited=[])
        return nil if visited.include?('RestorableNodeTypeList')
        visited = visited + ['RestorableNodeTypeList']
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

    # List Stubber for AccountsWithRestoreAccessList
    class AccountsWithRestoreAccessList
      def self.default(visited=[])
        return nil if visited.include?('AccountsWithRestoreAccessList')
        visited = visited + ['AccountsWithRestoreAccessList']
        [
          AccountWithRestoreAccess.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AccountWithRestoreAccess.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AccountWithRestoreAccess
    class AccountWithRestoreAccess
      def self.default(visited=[])
        return nil if visited.include?('AccountWithRestoreAccess')
        visited = visited + ['AccountWithRestoreAccess']
        {
          account_id: 'account_id',
          account_alias: 'account_alias',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccountWithRestoreAccess.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AccountId', stub[:account_id].to_s) unless stub[:account_id].nil?
        xml << Hearth::XML::Node.new('AccountAlias', stub[:account_alias].to_s) unless stub[:account_alias].nil?
        xml
      end
    end

    # Operation Stubber for BatchDeleteClusterSnapshots
    class BatchDeleteClusterSnapshots
      def self.default(visited=[])
        {
          resources: SnapshotIdentifierList.default(visited),
          errors: BatchSnapshotOperationErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('BatchDeleteClusterSnapshotsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('BatchDeleteClusterSnapshotsResult')
        xml << Hearth::XML::Node.new('Resources', SnapshotIdentifierList.stub('String', stub[:resources])) unless stub[:resources].nil?
        xml << Hearth::XML::Node.new('Errors', BatchSnapshotOperationErrorList.stub('SnapshotErrorMessage', stub[:errors])) unless stub[:errors].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for BatchSnapshotOperationErrorList
    class BatchSnapshotOperationErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchSnapshotOperationErrorList')
        visited = visited + ['BatchSnapshotOperationErrorList']
        [
          SnapshotErrorMessage.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SnapshotErrorMessage.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SnapshotErrorMessage
    class SnapshotErrorMessage
      def self.default(visited=[])
        return nil if visited.include?('SnapshotErrorMessage')
        visited = visited + ['SnapshotErrorMessage']
        {
          snapshot_identifier: 'snapshot_identifier',
          snapshot_cluster_identifier: 'snapshot_cluster_identifier',
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SnapshotErrorMessage.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SnapshotIdentifier', stub[:snapshot_identifier].to_s) unless stub[:snapshot_identifier].nil?
        xml << Hearth::XML::Node.new('SnapshotClusterIdentifier', stub[:snapshot_cluster_identifier].to_s) unless stub[:snapshot_cluster_identifier].nil?
        xml << Hearth::XML::Node.new('FailureCode', stub[:failure_code].to_s) unless stub[:failure_code].nil?
        xml << Hearth::XML::Node.new('FailureReason', stub[:failure_reason].to_s) unless stub[:failure_reason].nil?
        xml
      end
    end

    # List Stubber for SnapshotIdentifierList
    class SnapshotIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotIdentifierList')
        visited = visited + ['SnapshotIdentifierList']
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

    # Operation Stubber for BatchModifyClusterSnapshots
    class BatchModifyClusterSnapshots
      def self.default(visited=[])
        {
          resources: SnapshotIdentifierList.default(visited),
          errors: BatchSnapshotOperationErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('BatchModifyClusterSnapshotsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('BatchModifyClusterSnapshotsResult')
        xml << Hearth::XML::Node.new('Resources', SnapshotIdentifierList.stub('String', stub[:resources])) unless stub[:resources].nil?
        xml << Hearth::XML::Node.new('Errors', BatchSnapshotOperationErrors.stub('SnapshotErrorMessage', stub[:errors])) unless stub[:errors].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for BatchSnapshotOperationErrors
    class BatchSnapshotOperationErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchSnapshotOperationErrors')
        visited = visited + ['BatchSnapshotOperationErrors']
        [
          SnapshotErrorMessage.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SnapshotErrorMessage.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CancelResize
    class CancelResize
      def self.default(visited=[])
        {
          target_node_type: 'target_node_type',
          target_number_of_nodes: 1,
          target_cluster_type: 'target_cluster_type',
          status: 'status',
          import_tables_completed: ImportTablesCompleted.default(visited),
          import_tables_in_progress: ImportTablesInProgress.default(visited),
          import_tables_not_started: ImportTablesNotStarted.default(visited),
          avg_resize_rate_in_mega_bytes_per_second: 1.0,
          total_resize_data_in_mega_bytes: 1,
          progress_in_mega_bytes: 1,
          elapsed_time_in_seconds: 1,
          estimated_time_to_completion_in_seconds: 1,
          resize_type: 'resize_type',
          message: 'message',
          target_encryption_type: 'target_encryption_type',
          data_transfer_progress_percent: 1.0,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CancelResizeResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CancelResizeResult')
        xml << Hearth::XML::Node.new('TargetNodeType', stub[:target_node_type].to_s) unless stub[:target_node_type].nil?
        xml << Hearth::XML::Node.new('TargetNumberOfNodes', stub[:target_number_of_nodes].to_s) unless stub[:target_number_of_nodes].nil?
        xml << Hearth::XML::Node.new('TargetClusterType', stub[:target_cluster_type].to_s) unless stub[:target_cluster_type].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('ImportTablesCompleted', ImportTablesCompleted.stub('member', stub[:import_tables_completed])) unless stub[:import_tables_completed].nil?
        xml << Hearth::XML::Node.new('ImportTablesInProgress', ImportTablesInProgress.stub('member', stub[:import_tables_in_progress])) unless stub[:import_tables_in_progress].nil?
        xml << Hearth::XML::Node.new('ImportTablesNotStarted', ImportTablesNotStarted.stub('member', stub[:import_tables_not_started])) unless stub[:import_tables_not_started].nil?
        xml << Hearth::XML::Node.new('AvgResizeRateInMegaBytesPerSecond', Hearth::NumberHelper.serialize(stub[:avg_resize_rate_in_mega_bytes_per_second]).to_s) unless stub[:avg_resize_rate_in_mega_bytes_per_second].nil?
        xml << Hearth::XML::Node.new('TotalResizeDataInMegaBytes', stub[:total_resize_data_in_mega_bytes].to_s) unless stub[:total_resize_data_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('ProgressInMegaBytes', stub[:progress_in_mega_bytes].to_s) unless stub[:progress_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('ElapsedTimeInSeconds', stub[:elapsed_time_in_seconds].to_s) unless stub[:elapsed_time_in_seconds].nil?
        xml << Hearth::XML::Node.new('EstimatedTimeToCompletionInSeconds', stub[:estimated_time_to_completion_in_seconds].to_s) unless stub[:estimated_time_to_completion_in_seconds].nil?
        xml << Hearth::XML::Node.new('ResizeType', stub[:resize_type].to_s) unless stub[:resize_type].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('TargetEncryptionType', stub[:target_encryption_type].to_s) unless stub[:target_encryption_type].nil?
        xml << Hearth::XML::Node.new('DataTransferProgressPercent', Hearth::NumberHelper.serialize(stub[:data_transfer_progress_percent]).to_s) unless stub[:data_transfer_progress_percent].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ImportTablesNotStarted
    class ImportTablesNotStarted
      def self.default(visited=[])
        return nil if visited.include?('ImportTablesNotStarted')
        visited = visited + ['ImportTablesNotStarted']
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

    # List Stubber for ImportTablesInProgress
    class ImportTablesInProgress
      def self.default(visited=[])
        return nil if visited.include?('ImportTablesInProgress')
        visited = visited + ['ImportTablesInProgress']
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

    # List Stubber for ImportTablesCompleted
    class ImportTablesCompleted
      def self.default(visited=[])
        return nil if visited.include?('ImportTablesCompleted')
        visited = visited + ['ImportTablesCompleted']
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

    # Operation Stubber for CopyClusterSnapshot
    class CopyClusterSnapshot
      def self.default(visited=[])
        {
          snapshot: Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CopyClusterSnapshotResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CopyClusterSnapshotResult')
        xml << Snapshot.stub('Snapshot', stub[:snapshot]) unless stub[:snapshot].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAuthenticationProfile
    class CreateAuthenticationProfile
      def self.default(visited=[])
        {
          authentication_profile_name: 'authentication_profile_name',
          authentication_profile_content: 'authentication_profile_content',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateAuthenticationProfileResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateAuthenticationProfileResult')
        xml << Hearth::XML::Node.new('AuthenticationProfileName', stub[:authentication_profile_name].to_s) unless stub[:authentication_profile_name].nil?
        xml << Hearth::XML::Node.new('AuthenticationProfileContent', stub[:authentication_profile_content].to_s) unless stub[:authentication_profile_content].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCluster
    class CreateCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateClusterResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateClusterResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for Cluster
    class Cluster
      def self.default(visited=[])
        return nil if visited.include?('Cluster')
        visited = visited + ['Cluster']
        {
          cluster_identifier: 'cluster_identifier',
          node_type: 'node_type',
          cluster_status: 'cluster_status',
          cluster_availability_status: 'cluster_availability_status',
          modify_status: 'modify_status',
          master_username: 'master_username',
          db_name: 'db_name',
          endpoint: Endpoint.default(visited),
          cluster_create_time: Time.now,
          automated_snapshot_retention_period: 1,
          manual_snapshot_retention_period: 1,
          cluster_security_groups: ClusterSecurityGroupMembershipList.default(visited),
          vpc_security_groups: VpcSecurityGroupMembershipList.default(visited),
          cluster_parameter_groups: ClusterParameterGroupStatusList.default(visited),
          cluster_subnet_group_name: 'cluster_subnet_group_name',
          vpc_id: 'vpc_id',
          availability_zone: 'availability_zone',
          preferred_maintenance_window: 'preferred_maintenance_window',
          pending_modified_values: PendingModifiedValues.default(visited),
          cluster_version: 'cluster_version',
          allow_version_upgrade: false,
          number_of_nodes: 1,
          publicly_accessible: false,
          encrypted: false,
          restore_status: RestoreStatus.default(visited),
          data_transfer_progress: DataTransferProgress.default(visited),
          hsm_status: HsmStatus.default(visited),
          cluster_snapshot_copy_status: ClusterSnapshotCopyStatus.default(visited),
          cluster_public_key: 'cluster_public_key',
          cluster_nodes: ClusterNodesList.default(visited),
          elastic_ip_status: ElasticIpStatus.default(visited),
          cluster_revision_number: 'cluster_revision_number',
          tags: TagList.default(visited),
          kms_key_id: 'kms_key_id',
          enhanced_vpc_routing: false,
          iam_roles: ClusterIamRoleList.default(visited),
          pending_actions: PendingActionsList.default(visited),
          maintenance_track_name: 'maintenance_track_name',
          elastic_resize_number_of_node_options: 'elastic_resize_number_of_node_options',
          deferred_maintenance_windows: DeferredMaintenanceWindowsList.default(visited),
          snapshot_schedule_identifier: 'snapshot_schedule_identifier',
          snapshot_schedule_state: 'snapshot_schedule_state',
          expected_next_snapshot_schedule_time: Time.now,
          expected_next_snapshot_schedule_time_status: 'expected_next_snapshot_schedule_time_status',
          next_maintenance_window_start_time: Time.now,
          resize_info: ResizeInfo.default(visited),
          availability_zone_relocation_status: 'availability_zone_relocation_status',
          cluster_namespace_arn: 'cluster_namespace_arn',
          total_storage_capacity_in_mega_bytes: 1,
          aqua_configuration: AquaConfiguration.default(visited),
          default_iam_role_arn: 'default_iam_role_arn',
          reserved_node_exchange_status: ReservedNodeExchangeStatus.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Cluster.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('NodeType', stub[:node_type].to_s) unless stub[:node_type].nil?
        xml << Hearth::XML::Node.new('ClusterStatus', stub[:cluster_status].to_s) unless stub[:cluster_status].nil?
        xml << Hearth::XML::Node.new('ClusterAvailabilityStatus', stub[:cluster_availability_status].to_s) unless stub[:cluster_availability_status].nil?
        xml << Hearth::XML::Node.new('ModifyStatus', stub[:modify_status].to_s) unless stub[:modify_status].nil?
        xml << Hearth::XML::Node.new('MasterUsername', stub[:master_username].to_s) unless stub[:master_username].nil?
        xml << Hearth::XML::Node.new('DBName', stub[:db_name].to_s) unless stub[:db_name].nil?
        xml << Endpoint.stub('Endpoint', stub[:endpoint]) unless stub[:endpoint].nil?
        xml << Hearth::XML::Node.new('ClusterCreateTime', Hearth::TimeHelper.to_date_time(stub[:cluster_create_time])) unless stub[:cluster_create_time].nil?
        xml << Hearth::XML::Node.new('AutomatedSnapshotRetentionPeriod', stub[:automated_snapshot_retention_period].to_s) unless stub[:automated_snapshot_retention_period].nil?
        xml << Hearth::XML::Node.new('ManualSnapshotRetentionPeriod', stub[:manual_snapshot_retention_period].to_s) unless stub[:manual_snapshot_retention_period].nil?
        xml << Hearth::XML::Node.new('ClusterSecurityGroups', ClusterSecurityGroupMembershipList.stub('ClusterSecurityGroup', stub[:cluster_security_groups])) unless stub[:cluster_security_groups].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroups', VpcSecurityGroupMembershipList.stub('VpcSecurityGroup', stub[:vpc_security_groups])) unless stub[:vpc_security_groups].nil?
        xml << Hearth::XML::Node.new('ClusterParameterGroups', ClusterParameterGroupStatusList.stub('ClusterParameterGroup', stub[:cluster_parameter_groups])) unless stub[:cluster_parameter_groups].nil?
        xml << Hearth::XML::Node.new('ClusterSubnetGroupName', stub[:cluster_subnet_group_name].to_s) unless stub[:cluster_subnet_group_name].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml << Hearth::XML::Node.new('PreferredMaintenanceWindow', stub[:preferred_maintenance_window].to_s) unless stub[:preferred_maintenance_window].nil?
        xml << PendingModifiedValues.stub('PendingModifiedValues', stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        xml << Hearth::XML::Node.new('ClusterVersion', stub[:cluster_version].to_s) unless stub[:cluster_version].nil?
        xml << Hearth::XML::Node.new('AllowVersionUpgrade', stub[:allow_version_upgrade].to_s) unless stub[:allow_version_upgrade].nil?
        xml << Hearth::XML::Node.new('NumberOfNodes', stub[:number_of_nodes].to_s) unless stub[:number_of_nodes].nil?
        xml << Hearth::XML::Node.new('PubliclyAccessible', stub[:publicly_accessible].to_s) unless stub[:publicly_accessible].nil?
        xml << Hearth::XML::Node.new('Encrypted', stub[:encrypted].to_s) unless stub[:encrypted].nil?
        xml << RestoreStatus.stub('RestoreStatus', stub[:restore_status]) unless stub[:restore_status].nil?
        xml << DataTransferProgress.stub('DataTransferProgress', stub[:data_transfer_progress]) unless stub[:data_transfer_progress].nil?
        xml << HsmStatus.stub('HsmStatus', stub[:hsm_status]) unless stub[:hsm_status].nil?
        xml << ClusterSnapshotCopyStatus.stub('ClusterSnapshotCopyStatus', stub[:cluster_snapshot_copy_status]) unless stub[:cluster_snapshot_copy_status].nil?
        xml << Hearth::XML::Node.new('ClusterPublicKey', stub[:cluster_public_key].to_s) unless stub[:cluster_public_key].nil?
        xml << Hearth::XML::Node.new('ClusterNodes', ClusterNodesList.stub('member', stub[:cluster_nodes])) unless stub[:cluster_nodes].nil?
        xml << ElasticIpStatus.stub('ElasticIpStatus', stub[:elastic_ip_status]) unless stub[:elastic_ip_status].nil?
        xml << Hearth::XML::Node.new('ClusterRevisionNumber', stub[:cluster_revision_number].to_s) unless stub[:cluster_revision_number].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('EnhancedVpcRouting', stub[:enhanced_vpc_routing].to_s) unless stub[:enhanced_vpc_routing].nil?
        xml << Hearth::XML::Node.new('IamRoles', ClusterIamRoleList.stub('ClusterIamRole', stub[:iam_roles])) unless stub[:iam_roles].nil?
        xml << Hearth::XML::Node.new('PendingActions', PendingActionsList.stub('member', stub[:pending_actions])) unless stub[:pending_actions].nil?
        xml << Hearth::XML::Node.new('MaintenanceTrackName', stub[:maintenance_track_name].to_s) unless stub[:maintenance_track_name].nil?
        xml << Hearth::XML::Node.new('ElasticResizeNumberOfNodeOptions', stub[:elastic_resize_number_of_node_options].to_s) unless stub[:elastic_resize_number_of_node_options].nil?
        xml << Hearth::XML::Node.new('DeferredMaintenanceWindows', DeferredMaintenanceWindowsList.stub('DeferredMaintenanceWindow', stub[:deferred_maintenance_windows])) unless stub[:deferred_maintenance_windows].nil?
        xml << Hearth::XML::Node.new('SnapshotScheduleIdentifier', stub[:snapshot_schedule_identifier].to_s) unless stub[:snapshot_schedule_identifier].nil?
        xml << Hearth::XML::Node.new('SnapshotScheduleState', stub[:snapshot_schedule_state].to_s) unless stub[:snapshot_schedule_state].nil?
        xml << Hearth::XML::Node.new('ExpectedNextSnapshotScheduleTime', Hearth::TimeHelper.to_date_time(stub[:expected_next_snapshot_schedule_time])) unless stub[:expected_next_snapshot_schedule_time].nil?
        xml << Hearth::XML::Node.new('ExpectedNextSnapshotScheduleTimeStatus', stub[:expected_next_snapshot_schedule_time_status].to_s) unless stub[:expected_next_snapshot_schedule_time_status].nil?
        xml << Hearth::XML::Node.new('NextMaintenanceWindowStartTime', Hearth::TimeHelper.to_date_time(stub[:next_maintenance_window_start_time])) unless stub[:next_maintenance_window_start_time].nil?
        xml << ResizeInfo.stub('ResizeInfo', stub[:resize_info]) unless stub[:resize_info].nil?
        xml << Hearth::XML::Node.new('AvailabilityZoneRelocationStatus', stub[:availability_zone_relocation_status].to_s) unless stub[:availability_zone_relocation_status].nil?
        xml << Hearth::XML::Node.new('ClusterNamespaceArn', stub[:cluster_namespace_arn].to_s) unless stub[:cluster_namespace_arn].nil?
        xml << Hearth::XML::Node.new('TotalStorageCapacityInMegaBytes', stub[:total_storage_capacity_in_mega_bytes].to_s) unless stub[:total_storage_capacity_in_mega_bytes].nil?
        xml << AquaConfiguration.stub('AquaConfiguration', stub[:aqua_configuration]) unless stub[:aqua_configuration].nil?
        xml << Hearth::XML::Node.new('DefaultIamRoleArn', stub[:default_iam_role_arn].to_s) unless stub[:default_iam_role_arn].nil?
        xml << ReservedNodeExchangeStatus.stub('ReservedNodeExchangeStatus', stub[:reserved_node_exchange_status]) unless stub[:reserved_node_exchange_status].nil?
        xml
      end
    end

    # Structure Stubber for ReservedNodeExchangeStatus
    class ReservedNodeExchangeStatus
      def self.default(visited=[])
        return nil if visited.include?('ReservedNodeExchangeStatus')
        visited = visited + ['ReservedNodeExchangeStatus']
        {
          reserved_node_exchange_request_id: 'reserved_node_exchange_request_id',
          status: 'status',
          request_time: Time.now,
          source_reserved_node_id: 'source_reserved_node_id',
          source_reserved_node_type: 'source_reserved_node_type',
          source_reserved_node_count: 1,
          target_reserved_node_offering_id: 'target_reserved_node_offering_id',
          target_reserved_node_type: 'target_reserved_node_type',
          target_reserved_node_count: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReservedNodeExchangeStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReservedNodeExchangeRequestId', stub[:reserved_node_exchange_request_id].to_s) unless stub[:reserved_node_exchange_request_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('RequestTime', Hearth::TimeHelper.to_date_time(stub[:request_time])) unless stub[:request_time].nil?
        xml << Hearth::XML::Node.new('SourceReservedNodeId', stub[:source_reserved_node_id].to_s) unless stub[:source_reserved_node_id].nil?
        xml << Hearth::XML::Node.new('SourceReservedNodeType', stub[:source_reserved_node_type].to_s) unless stub[:source_reserved_node_type].nil?
        xml << Hearth::XML::Node.new('SourceReservedNodeCount', stub[:source_reserved_node_count].to_s) unless stub[:source_reserved_node_count].nil?
        xml << Hearth::XML::Node.new('TargetReservedNodeOfferingId', stub[:target_reserved_node_offering_id].to_s) unless stub[:target_reserved_node_offering_id].nil?
        xml << Hearth::XML::Node.new('TargetReservedNodeType', stub[:target_reserved_node_type].to_s) unless stub[:target_reserved_node_type].nil?
        xml << Hearth::XML::Node.new('TargetReservedNodeCount', stub[:target_reserved_node_count].to_s) unless stub[:target_reserved_node_count].nil?
        xml
      end
    end

    # Structure Stubber for AquaConfiguration
    class AquaConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AquaConfiguration')
        visited = visited + ['AquaConfiguration']
        {
          aqua_status: 'aqua_status',
          aqua_configuration_status: 'aqua_configuration_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AquaConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AquaStatus', stub[:aqua_status].to_s) unless stub[:aqua_status].nil?
        xml << Hearth::XML::Node.new('AquaConfigurationStatus', stub[:aqua_configuration_status].to_s) unless stub[:aqua_configuration_status].nil?
        xml
      end
    end

    # Structure Stubber for ResizeInfo
    class ResizeInfo
      def self.default(visited=[])
        return nil if visited.include?('ResizeInfo')
        visited = visited + ['ResizeInfo']
        {
          resize_type: 'resize_type',
          allow_cancel_resize: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResizeInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ResizeType', stub[:resize_type].to_s) unless stub[:resize_type].nil?
        xml << Hearth::XML::Node.new('AllowCancelResize', stub[:allow_cancel_resize].to_s) unless stub[:allow_cancel_resize].nil?
        xml
      end
    end

    # List Stubber for DeferredMaintenanceWindowsList
    class DeferredMaintenanceWindowsList
      def self.default(visited=[])
        return nil if visited.include?('DeferredMaintenanceWindowsList')
        visited = visited + ['DeferredMaintenanceWindowsList']
        [
          DeferredMaintenanceWindow.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << DeferredMaintenanceWindow.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DeferredMaintenanceWindow
    class DeferredMaintenanceWindow
      def self.default(visited=[])
        return nil if visited.include?('DeferredMaintenanceWindow')
        visited = visited + ['DeferredMaintenanceWindow']
        {
          defer_maintenance_identifier: 'defer_maintenance_identifier',
          defer_maintenance_start_time: Time.now,
          defer_maintenance_end_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DeferredMaintenanceWindow.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DeferMaintenanceIdentifier', stub[:defer_maintenance_identifier].to_s) unless stub[:defer_maintenance_identifier].nil?
        xml << Hearth::XML::Node.new('DeferMaintenanceStartTime', Hearth::TimeHelper.to_date_time(stub[:defer_maintenance_start_time])) unless stub[:defer_maintenance_start_time].nil?
        xml << Hearth::XML::Node.new('DeferMaintenanceEndTime', Hearth::TimeHelper.to_date_time(stub[:defer_maintenance_end_time])) unless stub[:defer_maintenance_end_time].nil?
        xml
      end
    end

    # List Stubber for PendingActionsList
    class PendingActionsList
      def self.default(visited=[])
        return nil if visited.include?('PendingActionsList')
        visited = visited + ['PendingActionsList']
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

    # List Stubber for ClusterIamRoleList
    class ClusterIamRoleList
      def self.default(visited=[])
        return nil if visited.include?('ClusterIamRoleList')
        visited = visited + ['ClusterIamRoleList']
        [
          ClusterIamRole.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterIamRole.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ClusterIamRole
    class ClusterIamRole
      def self.default(visited=[])
        return nil if visited.include?('ClusterIamRole')
        visited = visited + ['ClusterIamRole']
        {
          iam_role_arn: 'iam_role_arn',
          apply_status: 'apply_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterIamRole.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IamRoleArn', stub[:iam_role_arn].to_s) unless stub[:iam_role_arn].nil?
        xml << Hearth::XML::Node.new('ApplyStatus', stub[:apply_status].to_s) unless stub[:apply_status].nil?
        xml
      end
    end

    # Structure Stubber for ElasticIpStatus
    class ElasticIpStatus
      def self.default(visited=[])
        return nil if visited.include?('ElasticIpStatus')
        visited = visited + ['ElasticIpStatus']
        {
          elastic_ip: 'elastic_ip',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ElasticIpStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ElasticIp', stub[:elastic_ip].to_s) unless stub[:elastic_ip].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # List Stubber for ClusterNodesList
    class ClusterNodesList
      def self.default(visited=[])
        return nil if visited.include?('ClusterNodesList')
        visited = visited + ['ClusterNodesList']
        [
          ClusterNode.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterNode.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ClusterNode
    class ClusterNode
      def self.default(visited=[])
        return nil if visited.include?('ClusterNode')
        visited = visited + ['ClusterNode']
        {
          node_role: 'node_role',
          private_ip_address: 'private_ip_address',
          public_ip_address: 'public_ip_address',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterNode.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NodeRole', stub[:node_role].to_s) unless stub[:node_role].nil?
        xml << Hearth::XML::Node.new('PrivateIPAddress', stub[:private_ip_address].to_s) unless stub[:private_ip_address].nil?
        xml << Hearth::XML::Node.new('PublicIPAddress', stub[:public_ip_address].to_s) unless stub[:public_ip_address].nil?
        xml
      end
    end

    # Structure Stubber for ClusterSnapshotCopyStatus
    class ClusterSnapshotCopyStatus
      def self.default(visited=[])
        return nil if visited.include?('ClusterSnapshotCopyStatus')
        visited = visited + ['ClusterSnapshotCopyStatus']
        {
          destination_region: 'destination_region',
          retention_period: 1,
          manual_snapshot_retention_period: 1,
          snapshot_copy_grant_name: 'snapshot_copy_grant_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterSnapshotCopyStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DestinationRegion', stub[:destination_region].to_s) unless stub[:destination_region].nil?
        xml << Hearth::XML::Node.new('RetentionPeriod', stub[:retention_period].to_s) unless stub[:retention_period].nil?
        xml << Hearth::XML::Node.new('ManualSnapshotRetentionPeriod', stub[:manual_snapshot_retention_period].to_s) unless stub[:manual_snapshot_retention_period].nil?
        xml << Hearth::XML::Node.new('SnapshotCopyGrantName', stub[:snapshot_copy_grant_name].to_s) unless stub[:snapshot_copy_grant_name].nil?
        xml
      end
    end

    # Structure Stubber for HsmStatus
    class HsmStatus
      def self.default(visited=[])
        return nil if visited.include?('HsmStatus')
        visited = visited + ['HsmStatus']
        {
          hsm_client_certificate_identifier: 'hsm_client_certificate_identifier',
          hsm_configuration_identifier: 'hsm_configuration_identifier',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HsmStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HsmClientCertificateIdentifier', stub[:hsm_client_certificate_identifier].to_s) unless stub[:hsm_client_certificate_identifier].nil?
        xml << Hearth::XML::Node.new('HsmConfigurationIdentifier', stub[:hsm_configuration_identifier].to_s) unless stub[:hsm_configuration_identifier].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for DataTransferProgress
    class DataTransferProgress
      def self.default(visited=[])
        return nil if visited.include?('DataTransferProgress')
        visited = visited + ['DataTransferProgress']
        {
          status: 'status',
          current_rate_in_mega_bytes_per_second: 1.0,
          total_data_in_mega_bytes: 1,
          data_transferred_in_mega_bytes: 1,
          estimated_time_to_completion_in_seconds: 1,
          elapsed_time_in_seconds: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DataTransferProgress.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CurrentRateInMegaBytesPerSecond', Hearth::NumberHelper.serialize(stub[:current_rate_in_mega_bytes_per_second]).to_s) unless stub[:current_rate_in_mega_bytes_per_second].nil?
        xml << Hearth::XML::Node.new('TotalDataInMegaBytes', stub[:total_data_in_mega_bytes].to_s) unless stub[:total_data_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('DataTransferredInMegaBytes', stub[:data_transferred_in_mega_bytes].to_s) unless stub[:data_transferred_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('EstimatedTimeToCompletionInSeconds', stub[:estimated_time_to_completion_in_seconds].to_s) unless stub[:estimated_time_to_completion_in_seconds].nil?
        xml << Hearth::XML::Node.new('ElapsedTimeInSeconds', stub[:elapsed_time_in_seconds].to_s) unless stub[:elapsed_time_in_seconds].nil?
        xml
      end
    end

    # Structure Stubber for RestoreStatus
    class RestoreStatus
      def self.default(visited=[])
        return nil if visited.include?('RestoreStatus')
        visited = visited + ['RestoreStatus']
        {
          status: 'status',
          current_restore_rate_in_mega_bytes_per_second: 1.0,
          snapshot_size_in_mega_bytes: 1,
          progress_in_mega_bytes: 1,
          elapsed_time_in_seconds: 1,
          estimated_time_to_completion_in_seconds: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RestoreStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CurrentRestoreRateInMegaBytesPerSecond', Hearth::NumberHelper.serialize(stub[:current_restore_rate_in_mega_bytes_per_second]).to_s) unless stub[:current_restore_rate_in_mega_bytes_per_second].nil?
        xml << Hearth::XML::Node.new('SnapshotSizeInMegaBytes', stub[:snapshot_size_in_mega_bytes].to_s) unless stub[:snapshot_size_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('ProgressInMegaBytes', stub[:progress_in_mega_bytes].to_s) unless stub[:progress_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('ElapsedTimeInSeconds', stub[:elapsed_time_in_seconds].to_s) unless stub[:elapsed_time_in_seconds].nil?
        xml << Hearth::XML::Node.new('EstimatedTimeToCompletionInSeconds', stub[:estimated_time_to_completion_in_seconds].to_s) unless stub[:estimated_time_to_completion_in_seconds].nil?
        xml
      end
    end

    # Structure Stubber for PendingModifiedValues
    class PendingModifiedValues
      def self.default(visited=[])
        return nil if visited.include?('PendingModifiedValues')
        visited = visited + ['PendingModifiedValues']
        {
          master_user_password: 'master_user_password',
          node_type: 'node_type',
          number_of_nodes: 1,
          cluster_type: 'cluster_type',
          cluster_version: 'cluster_version',
          automated_snapshot_retention_period: 1,
          cluster_identifier: 'cluster_identifier',
          publicly_accessible: false,
          enhanced_vpc_routing: false,
          maintenance_track_name: 'maintenance_track_name',
          encryption_type: 'encryption_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PendingModifiedValues.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MasterUserPassword', stub[:master_user_password].to_s) unless stub[:master_user_password].nil?
        xml << Hearth::XML::Node.new('NodeType', stub[:node_type].to_s) unless stub[:node_type].nil?
        xml << Hearth::XML::Node.new('NumberOfNodes', stub[:number_of_nodes].to_s) unless stub[:number_of_nodes].nil?
        xml << Hearth::XML::Node.new('ClusterType', stub[:cluster_type].to_s) unless stub[:cluster_type].nil?
        xml << Hearth::XML::Node.new('ClusterVersion', stub[:cluster_version].to_s) unless stub[:cluster_version].nil?
        xml << Hearth::XML::Node.new('AutomatedSnapshotRetentionPeriod', stub[:automated_snapshot_retention_period].to_s) unless stub[:automated_snapshot_retention_period].nil?
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('PubliclyAccessible', stub[:publicly_accessible].to_s) unless stub[:publicly_accessible].nil?
        xml << Hearth::XML::Node.new('EnhancedVpcRouting', stub[:enhanced_vpc_routing].to_s) unless stub[:enhanced_vpc_routing].nil?
        xml << Hearth::XML::Node.new('MaintenanceTrackName', stub[:maintenance_track_name].to_s) unless stub[:maintenance_track_name].nil?
        xml << Hearth::XML::Node.new('EncryptionType', stub[:encryption_type].to_s) unless stub[:encryption_type].nil?
        xml
      end
    end

    # List Stubber for ClusterParameterGroupStatusList
    class ClusterParameterGroupStatusList
      def self.default(visited=[])
        return nil if visited.include?('ClusterParameterGroupStatusList')
        visited = visited + ['ClusterParameterGroupStatusList']
        [
          ClusterParameterGroupStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterParameterGroupStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ClusterParameterGroupStatus
    class ClusterParameterGroupStatus
      def self.default(visited=[])
        return nil if visited.include?('ClusterParameterGroupStatus')
        visited = visited + ['ClusterParameterGroupStatus']
        {
          parameter_group_name: 'parameter_group_name',
          parameter_apply_status: 'parameter_apply_status',
          cluster_parameter_status_list: ClusterParameterStatusList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterParameterGroupStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterGroupName', stub[:parameter_group_name].to_s) unless stub[:parameter_group_name].nil?
        xml << Hearth::XML::Node.new('ParameterApplyStatus', stub[:parameter_apply_status].to_s) unless stub[:parameter_apply_status].nil?
        xml << Hearth::XML::Node.new('ClusterParameterStatusList', ClusterParameterStatusList.stub('member', stub[:cluster_parameter_status_list])) unless stub[:cluster_parameter_status_list].nil?
        xml
      end
    end

    # List Stubber for ClusterParameterStatusList
    class ClusterParameterStatusList
      def self.default(visited=[])
        return nil if visited.include?('ClusterParameterStatusList')
        visited = visited + ['ClusterParameterStatusList']
        [
          ClusterParameterStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterParameterStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ClusterParameterStatus
    class ClusterParameterStatus
      def self.default(visited=[])
        return nil if visited.include?('ClusterParameterStatus')
        visited = visited + ['ClusterParameterStatus']
        {
          parameter_name: 'parameter_name',
          parameter_apply_status: 'parameter_apply_status',
          parameter_apply_error_description: 'parameter_apply_error_description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterParameterStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterName', stub[:parameter_name].to_s) unless stub[:parameter_name].nil?
        xml << Hearth::XML::Node.new('ParameterApplyStatus', stub[:parameter_apply_status].to_s) unless stub[:parameter_apply_status].nil?
        xml << Hearth::XML::Node.new('ParameterApplyErrorDescription', stub[:parameter_apply_error_description].to_s) unless stub[:parameter_apply_error_description].nil?
        xml
      end
    end

    # List Stubber for VpcSecurityGroupMembershipList
    class VpcSecurityGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('VpcSecurityGroupMembershipList')
        visited = visited + ['VpcSecurityGroupMembershipList']
        [
          VpcSecurityGroupMembership.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << VpcSecurityGroupMembership.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for VpcSecurityGroupMembership
    class VpcSecurityGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('VpcSecurityGroupMembership')
        visited = visited + ['VpcSecurityGroupMembership']
        {
          vpc_security_group_id: 'vpc_security_group_id',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::VpcSecurityGroupMembership.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VpcSecurityGroupId', stub[:vpc_security_group_id].to_s) unless stub[:vpc_security_group_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # List Stubber for ClusterSecurityGroupMembershipList
    class ClusterSecurityGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('ClusterSecurityGroupMembershipList')
        visited = visited + ['ClusterSecurityGroupMembershipList']
        [
          ClusterSecurityGroupMembership.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterSecurityGroupMembership.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ClusterSecurityGroupMembership
    class ClusterSecurityGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('ClusterSecurityGroupMembership')
        visited = visited + ['ClusterSecurityGroupMembership']
        {
          cluster_security_group_name: 'cluster_security_group_name',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterSecurityGroupMembership.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterSecurityGroupName', stub[:cluster_security_group_name].to_s) unless stub[:cluster_security_group_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          address: 'address',
          port: 1,
          vpc_endpoints: VpcEndpointsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Endpoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Address', stub[:address].to_s) unless stub[:address].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('VpcEndpoints', VpcEndpointsList.stub('VpcEndpoint', stub[:vpc_endpoints])) unless stub[:vpc_endpoints].nil?
        xml
      end
    end

    # List Stubber for VpcEndpointsList
    class VpcEndpointsList
      def self.default(visited=[])
        return nil if visited.include?('VpcEndpointsList')
        visited = visited + ['VpcEndpointsList']
        [
          VpcEndpoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << VpcEndpoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for VpcEndpoint
    class VpcEndpoint
      def self.default(visited=[])
        return nil if visited.include?('VpcEndpoint')
        visited = visited + ['VpcEndpoint']
        {
          vpc_endpoint_id: 'vpc_endpoint_id',
          vpc_id: 'vpc_id',
          network_interfaces: NetworkInterfaceList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::VpcEndpoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VpcEndpointId', stub[:vpc_endpoint_id].to_s) unless stub[:vpc_endpoint_id].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('NetworkInterfaces', NetworkInterfaceList.stub('NetworkInterface', stub[:network_interfaces])) unless stub[:network_interfaces].nil?
        xml
      end
    end

    # List Stubber for NetworkInterfaceList
    class NetworkInterfaceList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceList')
        visited = visited + ['NetworkInterfaceList']
        [
          NetworkInterface.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << NetworkInterface.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          network_interface_id: 'network_interface_id',
          subnet_id: 'subnet_id',
          private_ip_address: 'private_ip_address',
          availability_zone: 'availability_zone',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NetworkInterface.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NetworkInterfaceId', stub[:network_interface_id].to_s) unless stub[:network_interface_id].nil?
        xml << Hearth::XML::Node.new('SubnetId', stub[:subnet_id].to_s) unless stub[:subnet_id].nil?
        xml << Hearth::XML::Node.new('PrivateIpAddress', stub[:private_ip_address].to_s) unless stub[:private_ip_address].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml
      end
    end

    # Operation Stubber for CreateClusterParameterGroup
    class CreateClusterParameterGroup
      def self.default(visited=[])
        {
          cluster_parameter_group: ClusterParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateClusterParameterGroupResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateClusterParameterGroupResult')
        xml << ClusterParameterGroup.stub('ClusterParameterGroup', stub[:cluster_parameter_group]) unless stub[:cluster_parameter_group].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ClusterParameterGroup
    class ClusterParameterGroup
      def self.default(visited=[])
        return nil if visited.include?('ClusterParameterGroup')
        visited = visited + ['ClusterParameterGroup']
        {
          parameter_group_name: 'parameter_group_name',
          parameter_group_family: 'parameter_group_family',
          description: 'description',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterParameterGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterGroupName', stub[:parameter_group_name].to_s) unless stub[:parameter_group_name].nil?
        xml << Hearth::XML::Node.new('ParameterGroupFamily', stub[:parameter_group_family].to_s) unless stub[:parameter_group_family].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for CreateClusterSecurityGroup
    class CreateClusterSecurityGroup
      def self.default(visited=[])
        {
          cluster_security_group: ClusterSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateClusterSecurityGroupResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateClusterSecurityGroupResult')
        xml << ClusterSecurityGroup.stub('ClusterSecurityGroup', stub[:cluster_security_group]) unless stub[:cluster_security_group].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateClusterSnapshot
    class CreateClusterSnapshot
      def self.default(visited=[])
        {
          snapshot: Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateClusterSnapshotResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateClusterSnapshotResult')
        xml << Snapshot.stub('Snapshot', stub[:snapshot]) unless stub[:snapshot].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateClusterSubnetGroup
    class CreateClusterSubnetGroup
      def self.default(visited=[])
        {
          cluster_subnet_group: ClusterSubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateClusterSubnetGroupResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateClusterSubnetGroupResult')
        xml << ClusterSubnetGroup.stub('ClusterSubnetGroup', stub[:cluster_subnet_group]) unless stub[:cluster_subnet_group].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ClusterSubnetGroup
    class ClusterSubnetGroup
      def self.default(visited=[])
        return nil if visited.include?('ClusterSubnetGroup')
        visited = visited + ['ClusterSubnetGroup']
        {
          cluster_subnet_group_name: 'cluster_subnet_group_name',
          description: 'description',
          vpc_id: 'vpc_id',
          subnet_group_status: 'subnet_group_status',
          subnets: SubnetList.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterSubnetGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterSubnetGroupName', stub[:cluster_subnet_group_name].to_s) unless stub[:cluster_subnet_group_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml << Hearth::XML::Node.new('SubnetGroupStatus', stub[:subnet_group_status].to_s) unless stub[:subnet_group_status].nil?
        xml << Hearth::XML::Node.new('Subnets', SubnetList.stub('Subnet', stub[:subnets])) unless stub[:subnets].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # List Stubber for SubnetList
    class SubnetList
      def self.default(visited=[])
        return nil if visited.include?('SubnetList')
        visited = visited + ['SubnetList']
        [
          Subnet.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Subnet.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Subnet
    class Subnet
      def self.default(visited=[])
        return nil if visited.include?('Subnet')
        visited = visited + ['Subnet']
        {
          subnet_identifier: 'subnet_identifier',
          subnet_availability_zone: AvailabilityZone.default(visited),
          subnet_status: 'subnet_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Subnet.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SubnetIdentifier', stub[:subnet_identifier].to_s) unless stub[:subnet_identifier].nil?
        xml << AvailabilityZone.stub('SubnetAvailabilityZone', stub[:subnet_availability_zone]) unless stub[:subnet_availability_zone].nil?
        xml << Hearth::XML::Node.new('SubnetStatus', stub[:subnet_status].to_s) unless stub[:subnet_status].nil?
        xml
      end
    end

    # Structure Stubber for AvailabilityZone
    class AvailabilityZone
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZone')
        visited = visited + ['AvailabilityZone']
        {
          name: 'name',
          supported_platforms: SupportedPlatformsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AvailabilityZone.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('SupportedPlatforms', SupportedPlatformsList.stub('SupportedPlatform', stub[:supported_platforms])) unless stub[:supported_platforms].nil?
        xml
      end
    end

    # List Stubber for SupportedPlatformsList
    class SupportedPlatformsList
      def self.default(visited=[])
        return nil if visited.include?('SupportedPlatformsList')
        visited = visited + ['SupportedPlatformsList']
        [
          SupportedPlatform.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SupportedPlatform.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SupportedPlatform
    class SupportedPlatform
      def self.default(visited=[])
        return nil if visited.include?('SupportedPlatform')
        visited = visited + ['SupportedPlatform']
        {
          name: 'name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SupportedPlatform.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml
      end
    end

    # Operation Stubber for CreateEndpointAccess
    class CreateEndpointAccess
      def self.default(visited=[])
        {
          cluster_identifier: 'cluster_identifier',
          resource_owner: 'resource_owner',
          subnet_group_name: 'subnet_group_name',
          endpoint_status: 'endpoint_status',
          endpoint_name: 'endpoint_name',
          endpoint_create_time: Time.now,
          port: 1,
          address: 'address',
          vpc_security_groups: VpcSecurityGroupMembershipList.default(visited),
          vpc_endpoint: VpcEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateEndpointAccessResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateEndpointAccessResult')
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('ResourceOwner', stub[:resource_owner].to_s) unless stub[:resource_owner].nil?
        xml << Hearth::XML::Node.new('SubnetGroupName', stub[:subnet_group_name].to_s) unless stub[:subnet_group_name].nil?
        xml << Hearth::XML::Node.new('EndpointStatus', stub[:endpoint_status].to_s) unless stub[:endpoint_status].nil?
        xml << Hearth::XML::Node.new('EndpointName', stub[:endpoint_name].to_s) unless stub[:endpoint_name].nil?
        xml << Hearth::XML::Node.new('EndpointCreateTime', Hearth::TimeHelper.to_date_time(stub[:endpoint_create_time])) unless stub[:endpoint_create_time].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('Address', stub[:address].to_s) unless stub[:address].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroups', VpcSecurityGroupMembershipList.stub('VpcSecurityGroup', stub[:vpc_security_groups])) unless stub[:vpc_security_groups].nil?
        xml << VpcEndpoint.stub('VpcEndpoint', stub[:vpc_endpoint]) unless stub[:vpc_endpoint].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEventSubscription
    class CreateEventSubscription
      def self.default(visited=[])
        {
          event_subscription: EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateEventSubscriptionResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateEventSubscriptionResult')
        xml << EventSubscription.stub('EventSubscription', stub[:event_subscription]) unless stub[:event_subscription].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for EventSubscription
    class EventSubscription
      def self.default(visited=[])
        return nil if visited.include?('EventSubscription')
        visited = visited + ['EventSubscription']
        {
          customer_aws_id: 'customer_aws_id',
          cust_subscription_id: 'cust_subscription_id',
          sns_topic_arn: 'sns_topic_arn',
          status: 'status',
          subscription_creation_time: Time.now,
          source_type: 'source_type',
          source_ids_list: SourceIdsList.default(visited),
          event_categories_list: EventCategoriesList.default(visited),
          severity: 'severity',
          enabled: false,
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EventSubscription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CustomerAwsId', stub[:customer_aws_id].to_s) unless stub[:customer_aws_id].nil?
        xml << Hearth::XML::Node.new('CustSubscriptionId', stub[:cust_subscription_id].to_s) unless stub[:cust_subscription_id].nil?
        xml << Hearth::XML::Node.new('SnsTopicArn', stub[:sns_topic_arn].to_s) unless stub[:sns_topic_arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('SubscriptionCreationTime', Hearth::TimeHelper.to_date_time(stub[:subscription_creation_time])) unless stub[:subscription_creation_time].nil?
        xml << Hearth::XML::Node.new('SourceType', stub[:source_type].to_s) unless stub[:source_type].nil?
        xml << Hearth::XML::Node.new('SourceIdsList', SourceIdsList.stub('SourceId', stub[:source_ids_list])) unless stub[:source_ids_list].nil?
        xml << Hearth::XML::Node.new('EventCategoriesList', EventCategoriesList.stub('EventCategory', stub[:event_categories_list])) unless stub[:event_categories_list].nil?
        xml << Hearth::XML::Node.new('Severity', stub[:severity].to_s) unless stub[:severity].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # List Stubber for EventCategoriesList
    class EventCategoriesList
      def self.default(visited=[])
        return nil if visited.include?('EventCategoriesList')
        visited = visited + ['EventCategoriesList']
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

    # List Stubber for SourceIdsList
    class SourceIdsList
      def self.default(visited=[])
        return nil if visited.include?('SourceIdsList')
        visited = visited + ['SourceIdsList']
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

    # Operation Stubber for CreateHsmClientCertificate
    class CreateHsmClientCertificate
      def self.default(visited=[])
        {
          hsm_client_certificate: HsmClientCertificate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateHsmClientCertificateResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateHsmClientCertificateResult')
        xml << HsmClientCertificate.stub('HsmClientCertificate', stub[:hsm_client_certificate]) unless stub[:hsm_client_certificate].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for HsmClientCertificate
    class HsmClientCertificate
      def self.default(visited=[])
        return nil if visited.include?('HsmClientCertificate')
        visited = visited + ['HsmClientCertificate']
        {
          hsm_client_certificate_identifier: 'hsm_client_certificate_identifier',
          hsm_client_certificate_public_key: 'hsm_client_certificate_public_key',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HsmClientCertificate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HsmClientCertificateIdentifier', stub[:hsm_client_certificate_identifier].to_s) unless stub[:hsm_client_certificate_identifier].nil?
        xml << Hearth::XML::Node.new('HsmClientCertificatePublicKey', stub[:hsm_client_certificate_public_key].to_s) unless stub[:hsm_client_certificate_public_key].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for CreateHsmConfiguration
    class CreateHsmConfiguration
      def self.default(visited=[])
        {
          hsm_configuration: HsmConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateHsmConfigurationResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateHsmConfigurationResult')
        xml << HsmConfiguration.stub('HsmConfiguration', stub[:hsm_configuration]) unless stub[:hsm_configuration].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for HsmConfiguration
    class HsmConfiguration
      def self.default(visited=[])
        return nil if visited.include?('HsmConfiguration')
        visited = visited + ['HsmConfiguration']
        {
          hsm_configuration_identifier: 'hsm_configuration_identifier',
          description: 'description',
          hsm_ip_address: 'hsm_ip_address',
          hsm_partition_name: 'hsm_partition_name',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::HsmConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HsmConfigurationIdentifier', stub[:hsm_configuration_identifier].to_s) unless stub[:hsm_configuration_identifier].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('HsmIpAddress', stub[:hsm_ip_address].to_s) unless stub[:hsm_ip_address].nil?
        xml << Hearth::XML::Node.new('HsmPartitionName', stub[:hsm_partition_name].to_s) unless stub[:hsm_partition_name].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for CreateScheduledAction
    class CreateScheduledAction
      def self.default(visited=[])
        {
          scheduled_action_name: 'scheduled_action_name',
          target_action: ScheduledActionType.default(visited),
          schedule: 'schedule',
          iam_role: 'iam_role',
          scheduled_action_description: 'scheduled_action_description',
          state: 'state',
          next_invocations: ScheduledActionTimeList.default(visited),
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateScheduledActionResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateScheduledActionResult')
        xml << Hearth::XML::Node.new('ScheduledActionName', stub[:scheduled_action_name].to_s) unless stub[:scheduled_action_name].nil?
        xml << ScheduledActionType.stub('TargetAction', stub[:target_action]) unless stub[:target_action].nil?
        xml << Hearth::XML::Node.new('Schedule', stub[:schedule].to_s) unless stub[:schedule].nil?
        xml << Hearth::XML::Node.new('IamRole', stub[:iam_role].to_s) unless stub[:iam_role].nil?
        xml << Hearth::XML::Node.new('ScheduledActionDescription', stub[:scheduled_action_description].to_s) unless stub[:scheduled_action_description].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('NextInvocations', ScheduledActionTimeList.stub('ScheduledActionTime', stub[:next_invocations])) unless stub[:next_invocations].nil?
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('EndTime', Hearth::TimeHelper.to_date_time(stub[:end_time])) unless stub[:end_time].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ScheduledActionTimeList
    class ScheduledActionTimeList
      def self.default(visited=[])
        return nil if visited.include?('ScheduledActionTimeList')
        visited = visited + ['ScheduledActionTimeList']
        [
          Time.now
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, Hearth::TimeHelper.to_date_time(element)) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ScheduledActionType
    class ScheduledActionType
      def self.default(visited=[])
        return nil if visited.include?('ScheduledActionType')
        visited = visited + ['ScheduledActionType']
        {
          resize_cluster: ResizeClusterMessage.default(visited),
          pause_cluster: PauseClusterMessage.default(visited),
          resume_cluster: ResumeClusterMessage.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ScheduledActionType.new
        xml = Hearth::XML::Node.new(node_name)
        xml << ResizeClusterMessage.stub('ResizeCluster', stub[:resize_cluster]) unless stub[:resize_cluster].nil?
        xml << PauseClusterMessage.stub('PauseCluster', stub[:pause_cluster]) unless stub[:pause_cluster].nil?
        xml << ResumeClusterMessage.stub('ResumeCluster', stub[:resume_cluster]) unless stub[:resume_cluster].nil?
        xml
      end
    end

    # Structure Stubber for ResumeClusterMessage
    class ResumeClusterMessage
      def self.default(visited=[])
        return nil if visited.include?('ResumeClusterMessage')
        visited = visited + ['ResumeClusterMessage']
        {
          cluster_identifier: 'cluster_identifier',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResumeClusterMessage.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml
      end
    end

    # Structure Stubber for PauseClusterMessage
    class PauseClusterMessage
      def self.default(visited=[])
        return nil if visited.include?('PauseClusterMessage')
        visited = visited + ['PauseClusterMessage']
        {
          cluster_identifier: 'cluster_identifier',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PauseClusterMessage.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml
      end
    end

    # Structure Stubber for ResizeClusterMessage
    class ResizeClusterMessage
      def self.default(visited=[])
        return nil if visited.include?('ResizeClusterMessage')
        visited = visited + ['ResizeClusterMessage']
        {
          cluster_identifier: 'cluster_identifier',
          cluster_type: 'cluster_type',
          node_type: 'node_type',
          number_of_nodes: 1,
          classic: false,
          reserved_node_id: 'reserved_node_id',
          target_reserved_node_offering_id: 'target_reserved_node_offering_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResizeClusterMessage.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('ClusterType', stub[:cluster_type].to_s) unless stub[:cluster_type].nil?
        xml << Hearth::XML::Node.new('NodeType', stub[:node_type].to_s) unless stub[:node_type].nil?
        xml << Hearth::XML::Node.new('NumberOfNodes', stub[:number_of_nodes].to_s) unless stub[:number_of_nodes].nil?
        xml << Hearth::XML::Node.new('Classic', stub[:classic].to_s) unless stub[:classic].nil?
        xml << Hearth::XML::Node.new('ReservedNodeId', stub[:reserved_node_id].to_s) unless stub[:reserved_node_id].nil?
        xml << Hearth::XML::Node.new('TargetReservedNodeOfferingId', stub[:target_reserved_node_offering_id].to_s) unless stub[:target_reserved_node_offering_id].nil?
        xml
      end
    end

    # Operation Stubber for CreateSnapshotCopyGrant
    class CreateSnapshotCopyGrant
      def self.default(visited=[])
        {
          snapshot_copy_grant: SnapshotCopyGrant.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateSnapshotCopyGrantResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateSnapshotCopyGrantResult')
        xml << SnapshotCopyGrant.stub('SnapshotCopyGrant', stub[:snapshot_copy_grant]) unless stub[:snapshot_copy_grant].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for SnapshotCopyGrant
    class SnapshotCopyGrant
      def self.default(visited=[])
        return nil if visited.include?('SnapshotCopyGrant')
        visited = visited + ['SnapshotCopyGrant']
        {
          snapshot_copy_grant_name: 'snapshot_copy_grant_name',
          kms_key_id: 'kms_key_id',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SnapshotCopyGrant.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SnapshotCopyGrantName', stub[:snapshot_copy_grant_name].to_s) unless stub[:snapshot_copy_grant_name].nil?
        xml << Hearth::XML::Node.new('KmsKeyId', stub[:kms_key_id].to_s) unless stub[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for CreateSnapshotSchedule
    class CreateSnapshotSchedule
      def self.default(visited=[])
        {
          schedule_definitions: ScheduleDefinitionList.default(visited),
          schedule_identifier: 'schedule_identifier',
          schedule_description: 'schedule_description',
          tags: TagList.default(visited),
          next_invocations: ScheduledSnapshotTimeList.default(visited),
          associated_cluster_count: 1,
          associated_clusters: AssociatedClusterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateSnapshotScheduleResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateSnapshotScheduleResult')
        xml << Hearth::XML::Node.new('ScheduleDefinitions', ScheduleDefinitionList.stub('ScheduleDefinition', stub[:schedule_definitions])) unless stub[:schedule_definitions].nil?
        xml << Hearth::XML::Node.new('ScheduleIdentifier', stub[:schedule_identifier].to_s) unless stub[:schedule_identifier].nil?
        xml << Hearth::XML::Node.new('ScheduleDescription', stub[:schedule_description].to_s) unless stub[:schedule_description].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('NextInvocations', ScheduledSnapshotTimeList.stub('SnapshotTime', stub[:next_invocations])) unless stub[:next_invocations].nil?
        xml << Hearth::XML::Node.new('AssociatedClusterCount', stub[:associated_cluster_count].to_s) unless stub[:associated_cluster_count].nil?
        xml << Hearth::XML::Node.new('AssociatedClusters', AssociatedClusterList.stub('ClusterAssociatedToSchedule', stub[:associated_clusters])) unless stub[:associated_clusters].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AssociatedClusterList
    class AssociatedClusterList
      def self.default(visited=[])
        return nil if visited.include?('AssociatedClusterList')
        visited = visited + ['AssociatedClusterList']
        [
          ClusterAssociatedToSchedule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterAssociatedToSchedule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ClusterAssociatedToSchedule
    class ClusterAssociatedToSchedule
      def self.default(visited=[])
        return nil if visited.include?('ClusterAssociatedToSchedule')
        visited = visited + ['ClusterAssociatedToSchedule']
        {
          cluster_identifier: 'cluster_identifier',
          schedule_association_state: 'schedule_association_state',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterAssociatedToSchedule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('ScheduleAssociationState', stub[:schedule_association_state].to_s) unless stub[:schedule_association_state].nil?
        xml
      end
    end

    # List Stubber for ScheduledSnapshotTimeList
    class ScheduledSnapshotTimeList
      def self.default(visited=[])
        return nil if visited.include?('ScheduledSnapshotTimeList')
        visited = visited + ['ScheduledSnapshotTimeList']
        [
          Time.now
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, Hearth::TimeHelper.to_date_time(element)) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for ScheduleDefinitionList
    class ScheduleDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('ScheduleDefinitionList')
        visited = visited + ['ScheduleDefinitionList']
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

    # Operation Stubber for CreateTags
    class CreateTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateTagsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateTagsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUsageLimit
    class CreateUsageLimit
      def self.default(visited=[])
        {
          usage_limit_id: 'usage_limit_id',
          cluster_identifier: 'cluster_identifier',
          feature_type: 'feature_type',
          limit_type: 'limit_type',
          amount: 1,
          period: 'period',
          breach_action: 'breach_action',
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateUsageLimitResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('CreateUsageLimitResult')
        xml << Hearth::XML::Node.new('UsageLimitId', stub[:usage_limit_id].to_s) unless stub[:usage_limit_id].nil?
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('FeatureType', stub[:feature_type].to_s) unless stub[:feature_type].nil?
        xml << Hearth::XML::Node.new('LimitType', stub[:limit_type].to_s) unless stub[:limit_type].nil?
        xml << Hearth::XML::Node.new('Amount', stub[:amount].to_s) unless stub[:amount].nil?
        xml << Hearth::XML::Node.new('Period', stub[:period].to_s) unless stub[:period].nil?
        xml << Hearth::XML::Node.new('BreachAction', stub[:breach_action].to_s) unless stub[:breach_action].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeauthorizeDataShare
    class DeauthorizeDataShare
      def self.default(visited=[])
        {
          data_share_arn: 'data_share_arn',
          producer_arn: 'producer_arn',
          allow_publicly_accessible_consumers: false,
          data_share_associations: DataShareAssociationList.default(visited),
          managed_by: 'managed_by',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeauthorizeDataShareResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeauthorizeDataShareResult')
        xml << Hearth::XML::Node.new('DataShareArn', stub[:data_share_arn].to_s) unless stub[:data_share_arn].nil?
        xml << Hearth::XML::Node.new('ProducerArn', stub[:producer_arn].to_s) unless stub[:producer_arn].nil?
        xml << Hearth::XML::Node.new('AllowPubliclyAccessibleConsumers', stub[:allow_publicly_accessible_consumers].to_s) unless stub[:allow_publicly_accessible_consumers].nil?
        xml << Hearth::XML::Node.new('DataShareAssociations', DataShareAssociationList.stub('member', stub[:data_share_associations])) unless stub[:data_share_associations].nil?
        xml << Hearth::XML::Node.new('ManagedBy', stub[:managed_by].to_s) unless stub[:managed_by].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAuthenticationProfile
    class DeleteAuthenticationProfile
      def self.default(visited=[])
        {
          authentication_profile_name: 'authentication_profile_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteAuthenticationProfileResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteAuthenticationProfileResult')
        xml << Hearth::XML::Node.new('AuthenticationProfileName', stub[:authentication_profile_name].to_s) unless stub[:authentication_profile_name].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCluster
    class DeleteCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteClusterResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteClusterResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteClusterParameterGroup
    class DeleteClusterParameterGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteClusterParameterGroupResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteClusterParameterGroupResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteClusterSecurityGroup
    class DeleteClusterSecurityGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteClusterSecurityGroupResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteClusterSecurityGroupResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteClusterSnapshot
    class DeleteClusterSnapshot
      def self.default(visited=[])
        {
          snapshot: Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteClusterSnapshotResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteClusterSnapshotResult')
        xml << Snapshot.stub('Snapshot', stub[:snapshot]) unless stub[:snapshot].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteClusterSubnetGroup
    class DeleteClusterSubnetGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteClusterSubnetGroupResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteClusterSubnetGroupResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEndpointAccess
    class DeleteEndpointAccess
      def self.default(visited=[])
        {
          cluster_identifier: 'cluster_identifier',
          resource_owner: 'resource_owner',
          subnet_group_name: 'subnet_group_name',
          endpoint_status: 'endpoint_status',
          endpoint_name: 'endpoint_name',
          endpoint_create_time: Time.now,
          port: 1,
          address: 'address',
          vpc_security_groups: VpcSecurityGroupMembershipList.default(visited),
          vpc_endpoint: VpcEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteEndpointAccessResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteEndpointAccessResult')
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('ResourceOwner', stub[:resource_owner].to_s) unless stub[:resource_owner].nil?
        xml << Hearth::XML::Node.new('SubnetGroupName', stub[:subnet_group_name].to_s) unless stub[:subnet_group_name].nil?
        xml << Hearth::XML::Node.new('EndpointStatus', stub[:endpoint_status].to_s) unless stub[:endpoint_status].nil?
        xml << Hearth::XML::Node.new('EndpointName', stub[:endpoint_name].to_s) unless stub[:endpoint_name].nil?
        xml << Hearth::XML::Node.new('EndpointCreateTime', Hearth::TimeHelper.to_date_time(stub[:endpoint_create_time])) unless stub[:endpoint_create_time].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('Address', stub[:address].to_s) unless stub[:address].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroups', VpcSecurityGroupMembershipList.stub('VpcSecurityGroup', stub[:vpc_security_groups])) unless stub[:vpc_security_groups].nil?
        xml << VpcEndpoint.stub('VpcEndpoint', stub[:vpc_endpoint]) unless stub[:vpc_endpoint].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventSubscription
    class DeleteEventSubscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteEventSubscriptionResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteEventSubscriptionResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHsmClientCertificate
    class DeleteHsmClientCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteHsmClientCertificateResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteHsmClientCertificateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHsmConfiguration
    class DeleteHsmConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteHsmConfigurationResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteHsmConfigurationResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePartner
    class DeletePartner
      def self.default(visited=[])
        {
          database_name: 'database_name',
          partner_name: 'partner_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeletePartnerResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeletePartnerResult')
        xml << Hearth::XML::Node.new('DatabaseName', stub[:database_name].to_s) unless stub[:database_name].nil?
        xml << Hearth::XML::Node.new('PartnerName', stub[:partner_name].to_s) unless stub[:partner_name].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteScheduledAction
    class DeleteScheduledAction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteScheduledActionResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteScheduledActionResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSnapshotCopyGrant
    class DeleteSnapshotCopyGrant
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteSnapshotCopyGrantResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteSnapshotCopyGrantResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSnapshotSchedule
    class DeleteSnapshotSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteSnapshotScheduleResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteSnapshotScheduleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTags
    class DeleteTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteTagsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteTagsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUsageLimit
    class DeleteUsageLimit
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteUsageLimitResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DeleteUsageLimitResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.default(visited=[])
        {
          account_attributes: AttributeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAccountAttributesResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeAccountAttributesResult')
        xml << Hearth::XML::Node.new('AccountAttributes', AttributeList.stub('AccountAttribute', stub[:account_attributes])) unless stub[:account_attributes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AttributeList
    class AttributeList
      def self.default(visited=[])
        return nil if visited.include?('AttributeList')
        visited = visited + ['AttributeList']
        [
          AccountAttribute.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AccountAttribute.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AccountAttribute
    class AccountAttribute
      def self.default(visited=[])
        return nil if visited.include?('AccountAttribute')
        visited = visited + ['AccountAttribute']
        {
          attribute_name: 'attribute_name',
          attribute_values: AttributeValueList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccountAttribute.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AttributeName', stub[:attribute_name].to_s) unless stub[:attribute_name].nil?
        xml << Hearth::XML::Node.new('AttributeValues', AttributeValueList.stub('AttributeValueTarget', stub[:attribute_values])) unless stub[:attribute_values].nil?
        xml
      end
    end

    # List Stubber for AttributeValueList
    class AttributeValueList
      def self.default(visited=[])
        return nil if visited.include?('AttributeValueList')
        visited = visited + ['AttributeValueList']
        [
          AttributeValueTarget.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AttributeValueTarget.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AttributeValueTarget
    class AttributeValueTarget
      def self.default(visited=[])
        return nil if visited.include?('AttributeValueTarget')
        visited = visited + ['AttributeValueTarget']
        {
          attribute_value: 'attribute_value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AttributeValueTarget.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AttributeValue', stub[:attribute_value].to_s) unless stub[:attribute_value].nil?
        xml
      end
    end

    # Operation Stubber for DescribeAuthenticationProfiles
    class DescribeAuthenticationProfiles
      def self.default(visited=[])
        {
          authentication_profiles: AuthenticationProfileList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAuthenticationProfilesResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeAuthenticationProfilesResult')
        xml << Hearth::XML::Node.new('AuthenticationProfiles', AuthenticationProfileList.stub('member', stub[:authentication_profiles])) unless stub[:authentication_profiles].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AuthenticationProfileList
    class AuthenticationProfileList
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationProfileList')
        visited = visited + ['AuthenticationProfileList']
        [
          AuthenticationProfile.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AuthenticationProfile.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AuthenticationProfile
    class AuthenticationProfile
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationProfile')
        visited = visited + ['AuthenticationProfile']
        {
          authentication_profile_name: 'authentication_profile_name',
          authentication_profile_content: 'authentication_profile_content',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AuthenticationProfile.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AuthenticationProfileName', stub[:authentication_profile_name].to_s) unless stub[:authentication_profile_name].nil?
        xml << Hearth::XML::Node.new('AuthenticationProfileContent', stub[:authentication_profile_content].to_s) unless stub[:authentication_profile_content].nil?
        xml
      end
    end

    # Operation Stubber for DescribeClusterDbRevisions
    class DescribeClusterDbRevisions
      def self.default(visited=[])
        {
          marker: 'marker',
          cluster_db_revisions: ClusterDbRevisionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeClusterDbRevisionsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeClusterDbRevisionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ClusterDbRevisions', ClusterDbRevisionsList.stub('ClusterDbRevision', stub[:cluster_db_revisions])) unless stub[:cluster_db_revisions].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ClusterDbRevisionsList
    class ClusterDbRevisionsList
      def self.default(visited=[])
        return nil if visited.include?('ClusterDbRevisionsList')
        visited = visited + ['ClusterDbRevisionsList']
        [
          ClusterDbRevision.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterDbRevision.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ClusterDbRevision
    class ClusterDbRevision
      def self.default(visited=[])
        return nil if visited.include?('ClusterDbRevision')
        visited = visited + ['ClusterDbRevision']
        {
          cluster_identifier: 'cluster_identifier',
          current_database_revision: 'current_database_revision',
          database_revision_release_date: Time.now,
          revision_targets: RevisionTargetsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterDbRevision.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('CurrentDatabaseRevision', stub[:current_database_revision].to_s) unless stub[:current_database_revision].nil?
        xml << Hearth::XML::Node.new('DatabaseRevisionReleaseDate', Hearth::TimeHelper.to_date_time(stub[:database_revision_release_date])) unless stub[:database_revision_release_date].nil?
        xml << Hearth::XML::Node.new('RevisionTargets', RevisionTargetsList.stub('RevisionTarget', stub[:revision_targets])) unless stub[:revision_targets].nil?
        xml
      end
    end

    # List Stubber for RevisionTargetsList
    class RevisionTargetsList
      def self.default(visited=[])
        return nil if visited.include?('RevisionTargetsList')
        visited = visited + ['RevisionTargetsList']
        [
          RevisionTarget.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << RevisionTarget.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RevisionTarget
    class RevisionTarget
      def self.default(visited=[])
        return nil if visited.include?('RevisionTarget')
        visited = visited + ['RevisionTarget']
        {
          database_revision: 'database_revision',
          description: 'description',
          database_revision_release_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RevisionTarget.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DatabaseRevision', stub[:database_revision].to_s) unless stub[:database_revision].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('DatabaseRevisionReleaseDate', Hearth::TimeHelper.to_date_time(stub[:database_revision_release_date])) unless stub[:database_revision_release_date].nil?
        xml
      end
    end

    # Operation Stubber for DescribeClusterParameterGroups
    class DescribeClusterParameterGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          parameter_groups: ParameterGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeClusterParameterGroupsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeClusterParameterGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ParameterGroups', ParameterGroupList.stub('ClusterParameterGroup', stub[:parameter_groups])) unless stub[:parameter_groups].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterGroupList
    class ParameterGroupList
      def self.default(visited=[])
        return nil if visited.include?('ParameterGroupList')
        visited = visited + ['ParameterGroupList']
        [
          ClusterParameterGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterParameterGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeClusterParameters
    class DescribeClusterParameters
      def self.default(visited=[])
        {
          parameters: ParametersList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeClusterParametersResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeClusterParametersResult')
        xml << Hearth::XML::Node.new('Parameters', ParametersList.stub('Parameter', stub[:parameters])) unless stub[:parameters].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ParametersList
    class ParametersList
      def self.default(visited=[])
        return nil if visited.include?('ParametersList')
        visited = visited + ['ParametersList']
        [
          Parameter.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Parameter.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Parameter
    class Parameter
      def self.default(visited=[])
        return nil if visited.include?('Parameter')
        visited = visited + ['Parameter']
        {
          parameter_name: 'parameter_name',
          parameter_value: 'parameter_value',
          description: 'description',
          source: 'source',
          data_type: 'data_type',
          allowed_values: 'allowed_values',
          apply_type: 'apply_type',
          is_modifiable: false,
          minimum_engine_version: 'minimum_engine_version',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Parameter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterName', stub[:parameter_name].to_s) unless stub[:parameter_name].nil?
        xml << Hearth::XML::Node.new('ParameterValue', stub[:parameter_value].to_s) unless stub[:parameter_value].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Source', stub[:source].to_s) unless stub[:source].nil?
        xml << Hearth::XML::Node.new('DataType', stub[:data_type].to_s) unless stub[:data_type].nil?
        xml << Hearth::XML::Node.new('AllowedValues', stub[:allowed_values].to_s) unless stub[:allowed_values].nil?
        xml << Hearth::XML::Node.new('ApplyType', stub[:apply_type].to_s) unless stub[:apply_type].nil?
        xml << Hearth::XML::Node.new('IsModifiable', stub[:is_modifiable].to_s) unless stub[:is_modifiable].nil?
        xml << Hearth::XML::Node.new('MinimumEngineVersion', stub[:minimum_engine_version].to_s) unless stub[:minimum_engine_version].nil?
        xml
      end
    end

    # Operation Stubber for DescribeClusterSecurityGroups
    class DescribeClusterSecurityGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          cluster_security_groups: ClusterSecurityGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeClusterSecurityGroupsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeClusterSecurityGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ClusterSecurityGroups', ClusterSecurityGroups.stub('ClusterSecurityGroup', stub[:cluster_security_groups])) unless stub[:cluster_security_groups].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ClusterSecurityGroups
    class ClusterSecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('ClusterSecurityGroups')
        visited = visited + ['ClusterSecurityGroups']
        [
          ClusterSecurityGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterSecurityGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeClusterSnapshots
    class DescribeClusterSnapshots
      def self.default(visited=[])
        {
          marker: 'marker',
          snapshots: SnapshotList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeClusterSnapshotsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeClusterSnapshotsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('Snapshots', SnapshotList.stub('Snapshot', stub[:snapshots])) unless stub[:snapshots].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SnapshotList
    class SnapshotList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotList')
        visited = visited + ['SnapshotList']
        [
          Snapshot.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Snapshot.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeClusterSubnetGroups
    class DescribeClusterSubnetGroups
      def self.default(visited=[])
        {
          marker: 'marker',
          cluster_subnet_groups: ClusterSubnetGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeClusterSubnetGroupsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeClusterSubnetGroupsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ClusterSubnetGroups', ClusterSubnetGroups.stub('ClusterSubnetGroup', stub[:cluster_subnet_groups])) unless stub[:cluster_subnet_groups].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ClusterSubnetGroups
    class ClusterSubnetGroups
      def self.default(visited=[])
        return nil if visited.include?('ClusterSubnetGroups')
        visited = visited + ['ClusterSubnetGroups']
        [
          ClusterSubnetGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterSubnetGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeClusterTracks
    class DescribeClusterTracks
      def self.default(visited=[])
        {
          maintenance_tracks: TrackList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeClusterTracksResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeClusterTracksResult')
        xml << Hearth::XML::Node.new('MaintenanceTracks', TrackList.stub('MaintenanceTrack', stub[:maintenance_tracks])) unless stub[:maintenance_tracks].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TrackList
    class TrackList
      def self.default(visited=[])
        return nil if visited.include?('TrackList')
        visited = visited + ['TrackList']
        [
          MaintenanceTrack.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MaintenanceTrack.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MaintenanceTrack
    class MaintenanceTrack
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceTrack')
        visited = visited + ['MaintenanceTrack']
        {
          maintenance_track_name: 'maintenance_track_name',
          database_version: 'database_version',
          update_targets: EligibleTracksToUpdateList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MaintenanceTrack.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MaintenanceTrackName', stub[:maintenance_track_name].to_s) unless stub[:maintenance_track_name].nil?
        xml << Hearth::XML::Node.new('DatabaseVersion', stub[:database_version].to_s) unless stub[:database_version].nil?
        xml << Hearth::XML::Node.new('UpdateTargets', EligibleTracksToUpdateList.stub('UpdateTarget', stub[:update_targets])) unless stub[:update_targets].nil?
        xml
      end
    end

    # List Stubber for EligibleTracksToUpdateList
    class EligibleTracksToUpdateList
      def self.default(visited=[])
        return nil if visited.include?('EligibleTracksToUpdateList')
        visited = visited + ['EligibleTracksToUpdateList']
        [
          UpdateTarget.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << UpdateTarget.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for UpdateTarget
    class UpdateTarget
      def self.default(visited=[])
        return nil if visited.include?('UpdateTarget')
        visited = visited + ['UpdateTarget']
        {
          maintenance_track_name: 'maintenance_track_name',
          database_version: 'database_version',
          supported_operations: SupportedOperationList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UpdateTarget.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MaintenanceTrackName', stub[:maintenance_track_name].to_s) unless stub[:maintenance_track_name].nil?
        xml << Hearth::XML::Node.new('DatabaseVersion', stub[:database_version].to_s) unless stub[:database_version].nil?
        xml << Hearth::XML::Node.new('SupportedOperations', SupportedOperationList.stub('SupportedOperation', stub[:supported_operations])) unless stub[:supported_operations].nil?
        xml
      end
    end

    # List Stubber for SupportedOperationList
    class SupportedOperationList
      def self.default(visited=[])
        return nil if visited.include?('SupportedOperationList')
        visited = visited + ['SupportedOperationList']
        [
          SupportedOperation.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SupportedOperation.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SupportedOperation
    class SupportedOperation
      def self.default(visited=[])
        return nil if visited.include?('SupportedOperation')
        visited = visited + ['SupportedOperation']
        {
          operation_name: 'operation_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SupportedOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OperationName', stub[:operation_name].to_s) unless stub[:operation_name].nil?
        xml
      end
    end

    # Operation Stubber for DescribeClusterVersions
    class DescribeClusterVersions
      def self.default(visited=[])
        {
          marker: 'marker',
          cluster_versions: ClusterVersionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeClusterVersionsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeClusterVersionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ClusterVersions', ClusterVersionList.stub('ClusterVersion', stub[:cluster_versions])) unless stub[:cluster_versions].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ClusterVersionList
    class ClusterVersionList
      def self.default(visited=[])
        return nil if visited.include?('ClusterVersionList')
        visited = visited + ['ClusterVersionList']
        [
          ClusterVersion.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ClusterVersion.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ClusterVersion
    class ClusterVersion
      def self.default(visited=[])
        return nil if visited.include?('ClusterVersion')
        visited = visited + ['ClusterVersion']
        {
          cluster_version: 'cluster_version',
          cluster_parameter_group_family: 'cluster_parameter_group_family',
          description: 'description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ClusterVersion.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterVersion', stub[:cluster_version].to_s) unless stub[:cluster_version].nil?
        xml << Hearth::XML::Node.new('ClusterParameterGroupFamily', stub[:cluster_parameter_group_family].to_s) unless stub[:cluster_parameter_group_family].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml
      end
    end

    # Operation Stubber for DescribeClusters
    class DescribeClusters
      def self.default(visited=[])
        {
          marker: 'marker',
          clusters: ClusterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeClustersResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeClustersResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('Clusters', ClusterList.stub('Cluster', stub[:clusters])) unless stub[:clusters].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ClusterList
    class ClusterList
      def self.default(visited=[])
        return nil if visited.include?('ClusterList')
        visited = visited + ['ClusterList']
        [
          Cluster.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Cluster.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeDataShares
    class DescribeDataShares
      def self.default(visited=[])
        {
          data_shares: DataShareList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDataSharesResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeDataSharesResult')
        xml << Hearth::XML::Node.new('DataShares', DataShareList.stub('member', stub[:data_shares])) unless stub[:data_shares].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DataShareList
    class DataShareList
      def self.default(visited=[])
        return nil if visited.include?('DataShareList')
        visited = visited + ['DataShareList']
        [
          DataShare.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << DataShare.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DataShare
    class DataShare
      def self.default(visited=[])
        return nil if visited.include?('DataShare')
        visited = visited + ['DataShare']
        {
          data_share_arn: 'data_share_arn',
          producer_arn: 'producer_arn',
          allow_publicly_accessible_consumers: false,
          data_share_associations: DataShareAssociationList.default(visited),
          managed_by: 'managed_by',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DataShare.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DataShareArn', stub[:data_share_arn].to_s) unless stub[:data_share_arn].nil?
        xml << Hearth::XML::Node.new('ProducerArn', stub[:producer_arn].to_s) unless stub[:producer_arn].nil?
        xml << Hearth::XML::Node.new('AllowPubliclyAccessibleConsumers', stub[:allow_publicly_accessible_consumers].to_s) unless stub[:allow_publicly_accessible_consumers].nil?
        xml << Hearth::XML::Node.new('DataShareAssociations', DataShareAssociationList.stub('member', stub[:data_share_associations])) unless stub[:data_share_associations].nil?
        xml << Hearth::XML::Node.new('ManagedBy', stub[:managed_by].to_s) unless stub[:managed_by].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDataSharesForConsumer
    class DescribeDataSharesForConsumer
      def self.default(visited=[])
        {
          data_shares: DataShareList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDataSharesForConsumerResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeDataSharesForConsumerResult')
        xml << Hearth::XML::Node.new('DataShares', DataShareList.stub('member', stub[:data_shares])) unless stub[:data_shares].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDataSharesForProducer
    class DescribeDataSharesForProducer
      def self.default(visited=[])
        {
          data_shares: DataShareList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDataSharesForProducerResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeDataSharesForProducerResult')
        xml << Hearth::XML::Node.new('DataShares', DataShareList.stub('member', stub[:data_shares])) unless stub[:data_shares].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDefaultClusterParameters
    class DescribeDefaultClusterParameters
      def self.default(visited=[])
        {
          default_cluster_parameters: DefaultClusterParameters.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDefaultClusterParametersResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeDefaultClusterParametersResult')
        xml << DefaultClusterParameters.stub('DefaultClusterParameters', stub[:default_cluster_parameters]) unless stub[:default_cluster_parameters].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DefaultClusterParameters
    class DefaultClusterParameters
      def self.default(visited=[])
        return nil if visited.include?('DefaultClusterParameters')
        visited = visited + ['DefaultClusterParameters']
        {
          parameter_group_family: 'parameter_group_family',
          marker: 'marker',
          parameters: ParametersList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DefaultClusterParameters.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ParameterGroupFamily', stub[:parameter_group_family].to_s) unless stub[:parameter_group_family].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('Parameters', ParametersList.stub('Parameter', stub[:parameters])) unless stub[:parameters].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEndpointAccess
    class DescribeEndpointAccess
      def self.default(visited=[])
        {
          endpoint_access_list: EndpointAccesses.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEndpointAccessResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeEndpointAccessResult')
        xml << Hearth::XML::Node.new('EndpointAccessList', EndpointAccesses.stub('member', stub[:endpoint_access_list])) unless stub[:endpoint_access_list].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EndpointAccesses
    class EndpointAccesses
      def self.default(visited=[])
        return nil if visited.include?('EndpointAccesses')
        visited = visited + ['EndpointAccesses']
        [
          EndpointAccess.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << EndpointAccess.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EndpointAccess
    class EndpointAccess
      def self.default(visited=[])
        return nil if visited.include?('EndpointAccess')
        visited = visited + ['EndpointAccess']
        {
          cluster_identifier: 'cluster_identifier',
          resource_owner: 'resource_owner',
          subnet_group_name: 'subnet_group_name',
          endpoint_status: 'endpoint_status',
          endpoint_name: 'endpoint_name',
          endpoint_create_time: Time.now,
          port: 1,
          address: 'address',
          vpc_security_groups: VpcSecurityGroupMembershipList.default(visited),
          vpc_endpoint: VpcEndpoint.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EndpointAccess.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('ResourceOwner', stub[:resource_owner].to_s) unless stub[:resource_owner].nil?
        xml << Hearth::XML::Node.new('SubnetGroupName', stub[:subnet_group_name].to_s) unless stub[:subnet_group_name].nil?
        xml << Hearth::XML::Node.new('EndpointStatus', stub[:endpoint_status].to_s) unless stub[:endpoint_status].nil?
        xml << Hearth::XML::Node.new('EndpointName', stub[:endpoint_name].to_s) unless stub[:endpoint_name].nil?
        xml << Hearth::XML::Node.new('EndpointCreateTime', Hearth::TimeHelper.to_date_time(stub[:endpoint_create_time])) unless stub[:endpoint_create_time].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('Address', stub[:address].to_s) unless stub[:address].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroups', VpcSecurityGroupMembershipList.stub('VpcSecurityGroup', stub[:vpc_security_groups])) unless stub[:vpc_security_groups].nil?
        xml << VpcEndpoint.stub('VpcEndpoint', stub[:vpc_endpoint]) unless stub[:vpc_endpoint].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEndpointAuthorization
    class DescribeEndpointAuthorization
      def self.default(visited=[])
        {
          endpoint_authorization_list: EndpointAuthorizations.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEndpointAuthorizationResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeEndpointAuthorizationResult')
        xml << Hearth::XML::Node.new('EndpointAuthorizationList', EndpointAuthorizations.stub('member', stub[:endpoint_authorization_list])) unless stub[:endpoint_authorization_list].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EndpointAuthorizations
    class EndpointAuthorizations
      def self.default(visited=[])
        return nil if visited.include?('EndpointAuthorizations')
        visited = visited + ['EndpointAuthorizations']
        [
          EndpointAuthorization.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << EndpointAuthorization.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EndpointAuthorization
    class EndpointAuthorization
      def self.default(visited=[])
        return nil if visited.include?('EndpointAuthorization')
        visited = visited + ['EndpointAuthorization']
        {
          grantor: 'grantor',
          grantee: 'grantee',
          cluster_identifier: 'cluster_identifier',
          authorize_time: Time.now,
          cluster_status: 'cluster_status',
          status: 'status',
          allowed_all_vp_cs: false,
          allowed_vp_cs: VpcIdentifierList.default(visited),
          endpoint_count: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EndpointAuthorization.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Grantor', stub[:grantor].to_s) unless stub[:grantor].nil?
        xml << Hearth::XML::Node.new('Grantee', stub[:grantee].to_s) unless stub[:grantee].nil?
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('AuthorizeTime', Hearth::TimeHelper.to_date_time(stub[:authorize_time])) unless stub[:authorize_time].nil?
        xml << Hearth::XML::Node.new('ClusterStatus', stub[:cluster_status].to_s) unless stub[:cluster_status].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('AllowedAllVPCs', stub[:allowed_all_vp_cs].to_s) unless stub[:allowed_all_vp_cs].nil?
        xml << Hearth::XML::Node.new('AllowedVPCs', VpcIdentifierList.stub('VpcIdentifier', stub[:allowed_vp_cs])) unless stub[:allowed_vp_cs].nil?
        xml << Hearth::XML::Node.new('EndpointCount', stub[:endpoint_count].to_s) unless stub[:endpoint_count].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEventCategories
    class DescribeEventCategories
      def self.default(visited=[])
        {
          event_categories_map_list: EventCategoriesMapList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEventCategoriesResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeEventCategoriesResult')
        xml << Hearth::XML::Node.new('EventCategoriesMapList', EventCategoriesMapList.stub('EventCategoriesMap', stub[:event_categories_map_list])) unless stub[:event_categories_map_list].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EventCategoriesMapList
    class EventCategoriesMapList
      def self.default(visited=[])
        return nil if visited.include?('EventCategoriesMapList')
        visited = visited + ['EventCategoriesMapList']
        [
          EventCategoriesMap.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << EventCategoriesMap.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EventCategoriesMap
    class EventCategoriesMap
      def self.default(visited=[])
        return nil if visited.include?('EventCategoriesMap')
        visited = visited + ['EventCategoriesMap']
        {
          source_type: 'source_type',
          events: EventInfoMapList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EventCategoriesMap.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SourceType', stub[:source_type].to_s) unless stub[:source_type].nil?
        xml << Hearth::XML::Node.new('Events', EventInfoMapList.stub('EventInfoMap', stub[:events])) unless stub[:events].nil?
        xml
      end
    end

    # List Stubber for EventInfoMapList
    class EventInfoMapList
      def self.default(visited=[])
        return nil if visited.include?('EventInfoMapList')
        visited = visited + ['EventInfoMapList']
        [
          EventInfoMap.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << EventInfoMap.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EventInfoMap
    class EventInfoMap
      def self.default(visited=[])
        return nil if visited.include?('EventInfoMap')
        visited = visited + ['EventInfoMap']
        {
          event_id: 'event_id',
          event_categories: EventCategoriesList.default(visited),
          event_description: 'event_description',
          severity: 'severity',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EventInfoMap.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EventId', stub[:event_id].to_s) unless stub[:event_id].nil?
        xml << Hearth::XML::Node.new('EventCategories', EventCategoriesList.stub('EventCategory', stub[:event_categories])) unless stub[:event_categories].nil?
        xml << Hearth::XML::Node.new('EventDescription', stub[:event_description].to_s) unless stub[:event_description].nil?
        xml << Hearth::XML::Node.new('Severity', stub[:severity].to_s) unless stub[:severity].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEventSubscriptions
    class DescribeEventSubscriptions
      def self.default(visited=[])
        {
          marker: 'marker',
          event_subscriptions_list: EventSubscriptionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEventSubscriptionsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeEventSubscriptionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('EventSubscriptionsList', EventSubscriptionsList.stub('EventSubscription', stub[:event_subscriptions_list])) unless stub[:event_subscriptions_list].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EventSubscriptionsList
    class EventSubscriptionsList
      def self.default(visited=[])
        return nil if visited.include?('EventSubscriptionsList')
        visited = visited + ['EventSubscriptionsList']
        [
          EventSubscription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << EventSubscription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeEvents
    class DescribeEvents
      def self.default(visited=[])
        {
          marker: 'marker',
          events: EventList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEventsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeEventsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('Events', EventList.stub('Event', stub[:events])) unless stub[:events].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EventList
    class EventList
      def self.default(visited=[])
        return nil if visited.include?('EventList')
        visited = visited + ['EventList']
        [
          Event.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Event.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          source_identifier: 'source_identifier',
          source_type: 'source_type',
          message: 'message',
          event_categories: EventCategoriesList.default(visited),
          severity: 'severity',
          date: Time.now,
          event_id: 'event_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Event.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SourceIdentifier', stub[:source_identifier].to_s) unless stub[:source_identifier].nil?
        xml << Hearth::XML::Node.new('SourceType', stub[:source_type].to_s) unless stub[:source_type].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('EventCategories', EventCategoriesList.stub('EventCategory', stub[:event_categories])) unless stub[:event_categories].nil?
        xml << Hearth::XML::Node.new('Severity', stub[:severity].to_s) unless stub[:severity].nil?
        xml << Hearth::XML::Node.new('Date', Hearth::TimeHelper.to_date_time(stub[:date])) unless stub[:date].nil?
        xml << Hearth::XML::Node.new('EventId', stub[:event_id].to_s) unless stub[:event_id].nil?
        xml
      end
    end

    # Operation Stubber for DescribeHsmClientCertificates
    class DescribeHsmClientCertificates
      def self.default(visited=[])
        {
          marker: 'marker',
          hsm_client_certificates: HsmClientCertificateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeHsmClientCertificatesResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeHsmClientCertificatesResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('HsmClientCertificates', HsmClientCertificateList.stub('HsmClientCertificate', stub[:hsm_client_certificates])) unless stub[:hsm_client_certificates].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for HsmClientCertificateList
    class HsmClientCertificateList
      def self.default(visited=[])
        return nil if visited.include?('HsmClientCertificateList')
        visited = visited + ['HsmClientCertificateList']
        [
          HsmClientCertificate.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << HsmClientCertificate.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeHsmConfigurations
    class DescribeHsmConfigurations
      def self.default(visited=[])
        {
          marker: 'marker',
          hsm_configurations: HsmConfigurationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeHsmConfigurationsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeHsmConfigurationsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('HsmConfigurations', HsmConfigurationList.stub('HsmConfiguration', stub[:hsm_configurations])) unless stub[:hsm_configurations].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for HsmConfigurationList
    class HsmConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('HsmConfigurationList')
        visited = visited + ['HsmConfigurationList']
        [
          HsmConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << HsmConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeLoggingStatus
    class DescribeLoggingStatus
      def self.default(visited=[])
        {
          logging_enabled: false,
          bucket_name: 'bucket_name',
          s3_key_prefix: 's3_key_prefix',
          last_successful_delivery_time: Time.now,
          last_failure_time: Time.now,
          last_failure_message: 'last_failure_message',
          log_destination_type: 'log_destination_type',
          log_exports: LogTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLoggingStatusResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeLoggingStatusResult')
        xml << Hearth::XML::Node.new('LoggingEnabled', stub[:logging_enabled].to_s) unless stub[:logging_enabled].nil?
        xml << Hearth::XML::Node.new('BucketName', stub[:bucket_name].to_s) unless stub[:bucket_name].nil?
        xml << Hearth::XML::Node.new('S3KeyPrefix', stub[:s3_key_prefix].to_s) unless stub[:s3_key_prefix].nil?
        xml << Hearth::XML::Node.new('LastSuccessfulDeliveryTime', Hearth::TimeHelper.to_date_time(stub[:last_successful_delivery_time])) unless stub[:last_successful_delivery_time].nil?
        xml << Hearth::XML::Node.new('LastFailureTime', Hearth::TimeHelper.to_date_time(stub[:last_failure_time])) unless stub[:last_failure_time].nil?
        xml << Hearth::XML::Node.new('LastFailureMessage', stub[:last_failure_message].to_s) unless stub[:last_failure_message].nil?
        xml << Hearth::XML::Node.new('LogDestinationType', stub[:log_destination_type].to_s) unless stub[:log_destination_type].nil?
        xml << Hearth::XML::Node.new('LogExports', LogTypeList.stub('member', stub[:log_exports])) unless stub[:log_exports].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for LogTypeList
    class LogTypeList
      def self.default(visited=[])
        return nil if visited.include?('LogTypeList')
        visited = visited + ['LogTypeList']
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

    # Operation Stubber for DescribeNodeConfigurationOptions
    class DescribeNodeConfigurationOptions
      def self.default(visited=[])
        {
          node_configuration_option_list: NodeConfigurationOptionList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeNodeConfigurationOptionsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeNodeConfigurationOptionsResult')
        xml << Hearth::XML::Node.new('NodeConfigurationOptionList', NodeConfigurationOptionList.stub('NodeConfigurationOption', stub[:node_configuration_option_list])) unless stub[:node_configuration_option_list].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for NodeConfigurationOptionList
    class NodeConfigurationOptionList
      def self.default(visited=[])
        return nil if visited.include?('NodeConfigurationOptionList')
        visited = visited + ['NodeConfigurationOptionList']
        [
          NodeConfigurationOption.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << NodeConfigurationOption.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NodeConfigurationOption
    class NodeConfigurationOption
      def self.default(visited=[])
        return nil if visited.include?('NodeConfigurationOption')
        visited = visited + ['NodeConfigurationOption']
        {
          node_type: 'node_type',
          number_of_nodes: 1,
          estimated_disk_utilization_percent: 1.0,
          mode: 'mode',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NodeConfigurationOption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NodeType', stub[:node_type].to_s) unless stub[:node_type].nil?
        xml << Hearth::XML::Node.new('NumberOfNodes', stub[:number_of_nodes].to_s) unless stub[:number_of_nodes].nil?
        xml << Hearth::XML::Node.new('EstimatedDiskUtilizationPercent', Hearth::NumberHelper.serialize(stub[:estimated_disk_utilization_percent]).to_s) unless stub[:estimated_disk_utilization_percent].nil?
        xml << Hearth::XML::Node.new('Mode', stub[:mode].to_s) unless stub[:mode].nil?
        xml
      end
    end

    # Operation Stubber for DescribeOrderableClusterOptions
    class DescribeOrderableClusterOptions
      def self.default(visited=[])
        {
          orderable_cluster_options: OrderableClusterOptionsList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeOrderableClusterOptionsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeOrderableClusterOptionsResult')
        xml << Hearth::XML::Node.new('OrderableClusterOptions', OrderableClusterOptionsList.stub('OrderableClusterOption', stub[:orderable_cluster_options])) unless stub[:orderable_cluster_options].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for OrderableClusterOptionsList
    class OrderableClusterOptionsList
      def self.default(visited=[])
        return nil if visited.include?('OrderableClusterOptionsList')
        visited = visited + ['OrderableClusterOptionsList']
        [
          OrderableClusterOption.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << OrderableClusterOption.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OrderableClusterOption
    class OrderableClusterOption
      def self.default(visited=[])
        return nil if visited.include?('OrderableClusterOption')
        visited = visited + ['OrderableClusterOption']
        {
          cluster_version: 'cluster_version',
          cluster_type: 'cluster_type',
          node_type: 'node_type',
          availability_zones: AvailabilityZoneList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OrderableClusterOption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ClusterVersion', stub[:cluster_version].to_s) unless stub[:cluster_version].nil?
        xml << Hearth::XML::Node.new('ClusterType', stub[:cluster_type].to_s) unless stub[:cluster_type].nil?
        xml << Hearth::XML::Node.new('NodeType', stub[:node_type].to_s) unless stub[:node_type].nil?
        xml << Hearth::XML::Node.new('AvailabilityZones', AvailabilityZoneList.stub('AvailabilityZone', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml
      end
    end

    # List Stubber for AvailabilityZoneList
    class AvailabilityZoneList
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZoneList')
        visited = visited + ['AvailabilityZoneList']
        [
          AvailabilityZone.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AvailabilityZone.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribePartners
    class DescribePartners
      def self.default(visited=[])
        {
          partner_integration_info_list: PartnerIntegrationInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribePartnersResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribePartnersResult')
        xml << Hearth::XML::Node.new('PartnerIntegrationInfoList', PartnerIntegrationInfoList.stub('PartnerIntegrationInfo', stub[:partner_integration_info_list])) unless stub[:partner_integration_info_list].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PartnerIntegrationInfoList
    class PartnerIntegrationInfoList
      def self.default(visited=[])
        return nil if visited.include?('PartnerIntegrationInfoList')
        visited = visited + ['PartnerIntegrationInfoList']
        [
          PartnerIntegrationInfo.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PartnerIntegrationInfo.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PartnerIntegrationInfo
    class PartnerIntegrationInfo
      def self.default(visited=[])
        return nil if visited.include?('PartnerIntegrationInfo')
        visited = visited + ['PartnerIntegrationInfo']
        {
          database_name: 'database_name',
          partner_name: 'partner_name',
          status: 'status',
          status_message: 'status_message',
          created_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PartnerIntegrationInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DatabaseName', stub[:database_name].to_s) unless stub[:database_name].nil?
        xml << Hearth::XML::Node.new('PartnerName', stub[:partner_name].to_s) unless stub[:partner_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('StatusMessage', stub[:status_message].to_s) unless stub[:status_message].nil?
        xml << Hearth::XML::Node.new('CreatedAt', Hearth::TimeHelper.to_date_time(stub[:created_at])) unless stub[:created_at].nil?
        xml << Hearth::XML::Node.new('UpdatedAt', Hearth::TimeHelper.to_date_time(stub[:updated_at])) unless stub[:updated_at].nil?
        xml
      end
    end

    # Operation Stubber for DescribeReservedNodeExchangeStatus
    class DescribeReservedNodeExchangeStatus
      def self.default(visited=[])
        {
          reserved_node_exchange_status_details: ReservedNodeExchangeStatusList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReservedNodeExchangeStatusResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeReservedNodeExchangeStatusResult')
        xml << Hearth::XML::Node.new('ReservedNodeExchangeStatusDetails', ReservedNodeExchangeStatusList.stub('ReservedNodeExchangeStatus', stub[:reserved_node_exchange_status_details])) unless stub[:reserved_node_exchange_status_details].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReservedNodeExchangeStatusList
    class ReservedNodeExchangeStatusList
      def self.default(visited=[])
        return nil if visited.include?('ReservedNodeExchangeStatusList')
        visited = visited + ['ReservedNodeExchangeStatusList']
        [
          ReservedNodeExchangeStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ReservedNodeExchangeStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeReservedNodeOfferings
    class DescribeReservedNodeOfferings
      def self.default(visited=[])
        {
          marker: 'marker',
          reserved_node_offerings: ReservedNodeOfferingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReservedNodeOfferingsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeReservedNodeOfferingsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ReservedNodeOfferings', ReservedNodeOfferingList.stub('ReservedNodeOffering', stub[:reserved_node_offerings])) unless stub[:reserved_node_offerings].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReservedNodeOfferingList
    class ReservedNodeOfferingList
      def self.default(visited=[])
        return nil if visited.include?('ReservedNodeOfferingList')
        visited = visited + ['ReservedNodeOfferingList']
        [
          ReservedNodeOffering.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ReservedNodeOffering.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReservedNodeOffering
    class ReservedNodeOffering
      def self.default(visited=[])
        return nil if visited.include?('ReservedNodeOffering')
        visited = visited + ['ReservedNodeOffering']
        {
          reserved_node_offering_id: 'reserved_node_offering_id',
          node_type: 'node_type',
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          currency_code: 'currency_code',
          offering_type: 'offering_type',
          recurring_charges: RecurringChargeList.default(visited),
          reserved_node_offering_type: 'reserved_node_offering_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReservedNodeOffering.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReservedNodeOfferingId', stub[:reserved_node_offering_id].to_s) unless stub[:reserved_node_offering_id].nil?
        xml << Hearth::XML::Node.new('NodeType', stub[:node_type].to_s) unless stub[:node_type].nil?
        xml << Hearth::XML::Node.new('Duration', stub[:duration].to_s) unless stub[:duration].nil?
        xml << Hearth::XML::Node.new('FixedPrice', Hearth::NumberHelper.serialize(stub[:fixed_price]).to_s) unless stub[:fixed_price].nil?
        xml << Hearth::XML::Node.new('UsagePrice', Hearth::NumberHelper.serialize(stub[:usage_price]).to_s) unless stub[:usage_price].nil?
        xml << Hearth::XML::Node.new('CurrencyCode', stub[:currency_code].to_s) unless stub[:currency_code].nil?
        xml << Hearth::XML::Node.new('OfferingType', stub[:offering_type].to_s) unless stub[:offering_type].nil?
        xml << Hearth::XML::Node.new('RecurringCharges', RecurringChargeList.stub('RecurringCharge', stub[:recurring_charges])) unless stub[:recurring_charges].nil?
        xml << Hearth::XML::Node.new('ReservedNodeOfferingType', stub[:reserved_node_offering_type].to_s) unless stub[:reserved_node_offering_type].nil?
        xml
      end
    end

    # Operation Stubber for DescribeReservedNodes
    class DescribeReservedNodes
      def self.default(visited=[])
        {
          marker: 'marker',
          reserved_nodes: ReservedNodeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeReservedNodesResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeReservedNodesResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ReservedNodes', ReservedNodeList.stub('ReservedNode', stub[:reserved_nodes])) unless stub[:reserved_nodes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReservedNodeList
    class ReservedNodeList
      def self.default(visited=[])
        return nil if visited.include?('ReservedNodeList')
        visited = visited + ['ReservedNodeList']
        [
          ReservedNode.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ReservedNode.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeResize
    class DescribeResize
      def self.default(visited=[])
        {
          target_node_type: 'target_node_type',
          target_number_of_nodes: 1,
          target_cluster_type: 'target_cluster_type',
          status: 'status',
          import_tables_completed: ImportTablesCompleted.default(visited),
          import_tables_in_progress: ImportTablesInProgress.default(visited),
          import_tables_not_started: ImportTablesNotStarted.default(visited),
          avg_resize_rate_in_mega_bytes_per_second: 1.0,
          total_resize_data_in_mega_bytes: 1,
          progress_in_mega_bytes: 1,
          elapsed_time_in_seconds: 1,
          estimated_time_to_completion_in_seconds: 1,
          resize_type: 'resize_type',
          message: 'message',
          target_encryption_type: 'target_encryption_type',
          data_transfer_progress_percent: 1.0,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeResizeResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeResizeResult')
        xml << Hearth::XML::Node.new('TargetNodeType', stub[:target_node_type].to_s) unless stub[:target_node_type].nil?
        xml << Hearth::XML::Node.new('TargetNumberOfNodes', stub[:target_number_of_nodes].to_s) unless stub[:target_number_of_nodes].nil?
        xml << Hearth::XML::Node.new('TargetClusterType', stub[:target_cluster_type].to_s) unless stub[:target_cluster_type].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('ImportTablesCompleted', ImportTablesCompleted.stub('member', stub[:import_tables_completed])) unless stub[:import_tables_completed].nil?
        xml << Hearth::XML::Node.new('ImportTablesInProgress', ImportTablesInProgress.stub('member', stub[:import_tables_in_progress])) unless stub[:import_tables_in_progress].nil?
        xml << Hearth::XML::Node.new('ImportTablesNotStarted', ImportTablesNotStarted.stub('member', stub[:import_tables_not_started])) unless stub[:import_tables_not_started].nil?
        xml << Hearth::XML::Node.new('AvgResizeRateInMegaBytesPerSecond', Hearth::NumberHelper.serialize(stub[:avg_resize_rate_in_mega_bytes_per_second]).to_s) unless stub[:avg_resize_rate_in_mega_bytes_per_second].nil?
        xml << Hearth::XML::Node.new('TotalResizeDataInMegaBytes', stub[:total_resize_data_in_mega_bytes].to_s) unless stub[:total_resize_data_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('ProgressInMegaBytes', stub[:progress_in_mega_bytes].to_s) unless stub[:progress_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('ElapsedTimeInSeconds', stub[:elapsed_time_in_seconds].to_s) unless stub[:elapsed_time_in_seconds].nil?
        xml << Hearth::XML::Node.new('EstimatedTimeToCompletionInSeconds', stub[:estimated_time_to_completion_in_seconds].to_s) unless stub[:estimated_time_to_completion_in_seconds].nil?
        xml << Hearth::XML::Node.new('ResizeType', stub[:resize_type].to_s) unless stub[:resize_type].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('TargetEncryptionType', stub[:target_encryption_type].to_s) unless stub[:target_encryption_type].nil?
        xml << Hearth::XML::Node.new('DataTransferProgressPercent', Hearth::NumberHelper.serialize(stub[:data_transfer_progress_percent]).to_s) unless stub[:data_transfer_progress_percent].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeScheduledActions
    class DescribeScheduledActions
      def self.default(visited=[])
        {
          marker: 'marker',
          scheduled_actions: ScheduledActionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeScheduledActionsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeScheduledActionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ScheduledActions', ScheduledActionList.stub('ScheduledAction', stub[:scheduled_actions])) unless stub[:scheduled_actions].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ScheduledActionList
    class ScheduledActionList
      def self.default(visited=[])
        return nil if visited.include?('ScheduledActionList')
        visited = visited + ['ScheduledActionList']
        [
          ScheduledAction.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ScheduledAction.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ScheduledAction
    class ScheduledAction
      def self.default(visited=[])
        return nil if visited.include?('ScheduledAction')
        visited = visited + ['ScheduledAction']
        {
          scheduled_action_name: 'scheduled_action_name',
          target_action: ScheduledActionType.default(visited),
          schedule: 'schedule',
          iam_role: 'iam_role',
          scheduled_action_description: 'scheduled_action_description',
          state: 'state',
          next_invocations: ScheduledActionTimeList.default(visited),
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ScheduledAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ScheduledActionName', stub[:scheduled_action_name].to_s) unless stub[:scheduled_action_name].nil?
        xml << ScheduledActionType.stub('TargetAction', stub[:target_action]) unless stub[:target_action].nil?
        xml << Hearth::XML::Node.new('Schedule', stub[:schedule].to_s) unless stub[:schedule].nil?
        xml << Hearth::XML::Node.new('IamRole', stub[:iam_role].to_s) unless stub[:iam_role].nil?
        xml << Hearth::XML::Node.new('ScheduledActionDescription', stub[:scheduled_action_description].to_s) unless stub[:scheduled_action_description].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('NextInvocations', ScheduledActionTimeList.stub('ScheduledActionTime', stub[:next_invocations])) unless stub[:next_invocations].nil?
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('EndTime', Hearth::TimeHelper.to_date_time(stub[:end_time])) unless stub[:end_time].nil?
        xml
      end
    end

    # Operation Stubber for DescribeSnapshotCopyGrants
    class DescribeSnapshotCopyGrants
      def self.default(visited=[])
        {
          marker: 'marker',
          snapshot_copy_grants: SnapshotCopyGrantList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeSnapshotCopyGrantsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeSnapshotCopyGrantsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('SnapshotCopyGrants', SnapshotCopyGrantList.stub('SnapshotCopyGrant', stub[:snapshot_copy_grants])) unless stub[:snapshot_copy_grants].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SnapshotCopyGrantList
    class SnapshotCopyGrantList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotCopyGrantList')
        visited = visited + ['SnapshotCopyGrantList']
        [
          SnapshotCopyGrant.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SnapshotCopyGrant.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeSnapshotSchedules
    class DescribeSnapshotSchedules
      def self.default(visited=[])
        {
          snapshot_schedules: SnapshotScheduleList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeSnapshotSchedulesResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeSnapshotSchedulesResult')
        xml << Hearth::XML::Node.new('SnapshotSchedules', SnapshotScheduleList.stub('SnapshotSchedule', stub[:snapshot_schedules])) unless stub[:snapshot_schedules].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SnapshotScheduleList
    class SnapshotScheduleList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotScheduleList')
        visited = visited + ['SnapshotScheduleList']
        [
          SnapshotSchedule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SnapshotSchedule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SnapshotSchedule
    class SnapshotSchedule
      def self.default(visited=[])
        return nil if visited.include?('SnapshotSchedule')
        visited = visited + ['SnapshotSchedule']
        {
          schedule_definitions: ScheduleDefinitionList.default(visited),
          schedule_identifier: 'schedule_identifier',
          schedule_description: 'schedule_description',
          tags: TagList.default(visited),
          next_invocations: ScheduledSnapshotTimeList.default(visited),
          associated_cluster_count: 1,
          associated_clusters: AssociatedClusterList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SnapshotSchedule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ScheduleDefinitions', ScheduleDefinitionList.stub('ScheduleDefinition', stub[:schedule_definitions])) unless stub[:schedule_definitions].nil?
        xml << Hearth::XML::Node.new('ScheduleIdentifier', stub[:schedule_identifier].to_s) unless stub[:schedule_identifier].nil?
        xml << Hearth::XML::Node.new('ScheduleDescription', stub[:schedule_description].to_s) unless stub[:schedule_description].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('NextInvocations', ScheduledSnapshotTimeList.stub('SnapshotTime', stub[:next_invocations])) unless stub[:next_invocations].nil?
        xml << Hearth::XML::Node.new('AssociatedClusterCount', stub[:associated_cluster_count].to_s) unless stub[:associated_cluster_count].nil?
        xml << Hearth::XML::Node.new('AssociatedClusters', AssociatedClusterList.stub('ClusterAssociatedToSchedule', stub[:associated_clusters])) unless stub[:associated_clusters].nil?
        xml
      end
    end

    # Operation Stubber for DescribeStorage
    class DescribeStorage
      def self.default(visited=[])
        {
          total_backup_size_in_mega_bytes: 1.0,
          total_provisioned_storage_in_mega_bytes: 1.0,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeStorageResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeStorageResult')
        xml << Hearth::XML::Node.new('TotalBackupSizeInMegaBytes', Hearth::NumberHelper.serialize(stub[:total_backup_size_in_mega_bytes]).to_s) unless stub[:total_backup_size_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('TotalProvisionedStorageInMegaBytes', Hearth::NumberHelper.serialize(stub[:total_provisioned_storage_in_mega_bytes]).to_s) unless stub[:total_provisioned_storage_in_mega_bytes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeTableRestoreStatus
    class DescribeTableRestoreStatus
      def self.default(visited=[])
        {
          table_restore_status_details: TableRestoreStatusList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTableRestoreStatusResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeTableRestoreStatusResult')
        xml << Hearth::XML::Node.new('TableRestoreStatusDetails', TableRestoreStatusList.stub('TableRestoreStatus', stub[:table_restore_status_details])) unless stub[:table_restore_status_details].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TableRestoreStatusList
    class TableRestoreStatusList
      def self.default(visited=[])
        return nil if visited.include?('TableRestoreStatusList')
        visited = visited + ['TableRestoreStatusList']
        [
          TableRestoreStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << TableRestoreStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TableRestoreStatus
    class TableRestoreStatus
      def self.default(visited=[])
        return nil if visited.include?('TableRestoreStatus')
        visited = visited + ['TableRestoreStatus']
        {
          table_restore_request_id: 'table_restore_request_id',
          status: 'status',
          message: 'message',
          request_time: Time.now,
          progress_in_mega_bytes: 1,
          total_data_in_mega_bytes: 1,
          cluster_identifier: 'cluster_identifier',
          snapshot_identifier: 'snapshot_identifier',
          source_database_name: 'source_database_name',
          source_schema_name: 'source_schema_name',
          source_table_name: 'source_table_name',
          target_database_name: 'target_database_name',
          target_schema_name: 'target_schema_name',
          new_table_name: 'new_table_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TableRestoreStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TableRestoreRequestId', stub[:table_restore_request_id].to_s) unless stub[:table_restore_request_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('RequestTime', Hearth::TimeHelper.to_date_time(stub[:request_time])) unless stub[:request_time].nil?
        xml << Hearth::XML::Node.new('ProgressInMegaBytes', stub[:progress_in_mega_bytes].to_s) unless stub[:progress_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('TotalDataInMegaBytes', stub[:total_data_in_mega_bytes].to_s) unless stub[:total_data_in_mega_bytes].nil?
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('SnapshotIdentifier', stub[:snapshot_identifier].to_s) unless stub[:snapshot_identifier].nil?
        xml << Hearth::XML::Node.new('SourceDatabaseName', stub[:source_database_name].to_s) unless stub[:source_database_name].nil?
        xml << Hearth::XML::Node.new('SourceSchemaName', stub[:source_schema_name].to_s) unless stub[:source_schema_name].nil?
        xml << Hearth::XML::Node.new('SourceTableName', stub[:source_table_name].to_s) unless stub[:source_table_name].nil?
        xml << Hearth::XML::Node.new('TargetDatabaseName', stub[:target_database_name].to_s) unless stub[:target_database_name].nil?
        xml << Hearth::XML::Node.new('TargetSchemaName', stub[:target_schema_name].to_s) unless stub[:target_schema_name].nil?
        xml << Hearth::XML::Node.new('NewTableName', stub[:new_table_name].to_s) unless stub[:new_table_name].nil?
        xml
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags
      def self.default(visited=[])
        {
          tagged_resources: TaggedResourceList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTagsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeTagsResult')
        xml << Hearth::XML::Node.new('TaggedResources', TaggedResourceList.stub('TaggedResource', stub[:tagged_resources])) unless stub[:tagged_resources].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TaggedResourceList
    class TaggedResourceList
      def self.default(visited=[])
        return nil if visited.include?('TaggedResourceList')
        visited = visited + ['TaggedResourceList']
        [
          TaggedResource.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << TaggedResource.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TaggedResource
    class TaggedResource
      def self.default(visited=[])
        return nil if visited.include?('TaggedResource')
        visited = visited + ['TaggedResource']
        {
          tag: Tag.default(visited),
          resource_name: 'resource_name',
          resource_type: 'resource_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TaggedResource.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Tag.stub('Tag', stub[:tag]) unless stub[:tag].nil?
        xml << Hearth::XML::Node.new('ResourceName', stub[:resource_name].to_s) unless stub[:resource_name].nil?
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml
      end
    end

    # Operation Stubber for DescribeUsageLimits
    class DescribeUsageLimits
      def self.default(visited=[])
        {
          usage_limits: UsageLimits.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeUsageLimitsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DescribeUsageLimitsResult')
        xml << Hearth::XML::Node.new('UsageLimits', UsageLimits.stub('member', stub[:usage_limits])) unless stub[:usage_limits].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for UsageLimits
    class UsageLimits
      def self.default(visited=[])
        return nil if visited.include?('UsageLimits')
        visited = visited + ['UsageLimits']
        [
          UsageLimit.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << UsageLimit.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for UsageLimit
    class UsageLimit
      def self.default(visited=[])
        return nil if visited.include?('UsageLimit')
        visited = visited + ['UsageLimit']
        {
          usage_limit_id: 'usage_limit_id',
          cluster_identifier: 'cluster_identifier',
          feature_type: 'feature_type',
          limit_type: 'limit_type',
          amount: 1,
          period: 'period',
          breach_action: 'breach_action',
          tags: TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UsageLimit.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UsageLimitId', stub[:usage_limit_id].to_s) unless stub[:usage_limit_id].nil?
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('FeatureType', stub[:feature_type].to_s) unless stub[:feature_type].nil?
        xml << Hearth::XML::Node.new('LimitType', stub[:limit_type].to_s) unless stub[:limit_type].nil?
        xml << Hearth::XML::Node.new('Amount', stub[:amount].to_s) unless stub[:amount].nil?
        xml << Hearth::XML::Node.new('Period', stub[:period].to_s) unless stub[:period].nil?
        xml << Hearth::XML::Node.new('BreachAction', stub[:breach_action].to_s) unless stub[:breach_action].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for DisableLogging
    class DisableLogging
      def self.default(visited=[])
        {
          logging_enabled: false,
          bucket_name: 'bucket_name',
          s3_key_prefix: 's3_key_prefix',
          last_successful_delivery_time: Time.now,
          last_failure_time: Time.now,
          last_failure_message: 'last_failure_message',
          log_destination_type: 'log_destination_type',
          log_exports: LogTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DisableLoggingResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DisableLoggingResult')
        xml << Hearth::XML::Node.new('LoggingEnabled', stub[:logging_enabled].to_s) unless stub[:logging_enabled].nil?
        xml << Hearth::XML::Node.new('BucketName', stub[:bucket_name].to_s) unless stub[:bucket_name].nil?
        xml << Hearth::XML::Node.new('S3KeyPrefix', stub[:s3_key_prefix].to_s) unless stub[:s3_key_prefix].nil?
        xml << Hearth::XML::Node.new('LastSuccessfulDeliveryTime', Hearth::TimeHelper.to_date_time(stub[:last_successful_delivery_time])) unless stub[:last_successful_delivery_time].nil?
        xml << Hearth::XML::Node.new('LastFailureTime', Hearth::TimeHelper.to_date_time(stub[:last_failure_time])) unless stub[:last_failure_time].nil?
        xml << Hearth::XML::Node.new('LastFailureMessage', stub[:last_failure_message].to_s) unless stub[:last_failure_message].nil?
        xml << Hearth::XML::Node.new('LogDestinationType', stub[:log_destination_type].to_s) unless stub[:log_destination_type].nil?
        xml << Hearth::XML::Node.new('LogExports', LogTypeList.stub('member', stub[:log_exports])) unless stub[:log_exports].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableSnapshotCopy
    class DisableSnapshotCopy
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DisableSnapshotCopyResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DisableSnapshotCopyResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateDataShareConsumer
    class DisassociateDataShareConsumer
      def self.default(visited=[])
        {
          data_share_arn: 'data_share_arn',
          producer_arn: 'producer_arn',
          allow_publicly_accessible_consumers: false,
          data_share_associations: DataShareAssociationList.default(visited),
          managed_by: 'managed_by',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DisassociateDataShareConsumerResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('DisassociateDataShareConsumerResult')
        xml << Hearth::XML::Node.new('DataShareArn', stub[:data_share_arn].to_s) unless stub[:data_share_arn].nil?
        xml << Hearth::XML::Node.new('ProducerArn', stub[:producer_arn].to_s) unless stub[:producer_arn].nil?
        xml << Hearth::XML::Node.new('AllowPubliclyAccessibleConsumers', stub[:allow_publicly_accessible_consumers].to_s) unless stub[:allow_publicly_accessible_consumers].nil?
        xml << Hearth::XML::Node.new('DataShareAssociations', DataShareAssociationList.stub('member', stub[:data_share_associations])) unless stub[:data_share_associations].nil?
        xml << Hearth::XML::Node.new('ManagedBy', stub[:managed_by].to_s) unless stub[:managed_by].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableLogging
    class EnableLogging
      def self.default(visited=[])
        {
          logging_enabled: false,
          bucket_name: 'bucket_name',
          s3_key_prefix: 's3_key_prefix',
          last_successful_delivery_time: Time.now,
          last_failure_time: Time.now,
          last_failure_message: 'last_failure_message',
          log_destination_type: 'log_destination_type',
          log_exports: LogTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('EnableLoggingResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('EnableLoggingResult')
        xml << Hearth::XML::Node.new('LoggingEnabled', stub[:logging_enabled].to_s) unless stub[:logging_enabled].nil?
        xml << Hearth::XML::Node.new('BucketName', stub[:bucket_name].to_s) unless stub[:bucket_name].nil?
        xml << Hearth::XML::Node.new('S3KeyPrefix', stub[:s3_key_prefix].to_s) unless stub[:s3_key_prefix].nil?
        xml << Hearth::XML::Node.new('LastSuccessfulDeliveryTime', Hearth::TimeHelper.to_date_time(stub[:last_successful_delivery_time])) unless stub[:last_successful_delivery_time].nil?
        xml << Hearth::XML::Node.new('LastFailureTime', Hearth::TimeHelper.to_date_time(stub[:last_failure_time])) unless stub[:last_failure_time].nil?
        xml << Hearth::XML::Node.new('LastFailureMessage', stub[:last_failure_message].to_s) unless stub[:last_failure_message].nil?
        xml << Hearth::XML::Node.new('LogDestinationType', stub[:log_destination_type].to_s) unless stub[:log_destination_type].nil?
        xml << Hearth::XML::Node.new('LogExports', LogTypeList.stub('member', stub[:log_exports])) unless stub[:log_exports].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableSnapshotCopy
    class EnableSnapshotCopy
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('EnableSnapshotCopyResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('EnableSnapshotCopyResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetClusterCredentials
    class GetClusterCredentials
      def self.default(visited=[])
        {
          db_user: 'db_user',
          db_password: 'db_password',
          expiration: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetClusterCredentialsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('GetClusterCredentialsResult')
        xml << Hearth::XML::Node.new('DbUser', stub[:db_user].to_s) unless stub[:db_user].nil?
        xml << Hearth::XML::Node.new('DbPassword', stub[:db_password].to_s) unless stub[:db_password].nil?
        xml << Hearth::XML::Node.new('Expiration', Hearth::TimeHelper.to_date_time(stub[:expiration])) unless stub[:expiration].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetClusterCredentialsWithIAM
    class GetClusterCredentialsWithIAM
      def self.default(visited=[])
        {
          db_user: 'db_user',
          db_password: 'db_password',
          expiration: Time.now,
          next_refresh_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetClusterCredentialsWithIAMResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('GetClusterCredentialsWithIAMResult')
        xml << Hearth::XML::Node.new('DbUser', stub[:db_user].to_s) unless stub[:db_user].nil?
        xml << Hearth::XML::Node.new('DbPassword', stub[:db_password].to_s) unless stub[:db_password].nil?
        xml << Hearth::XML::Node.new('Expiration', Hearth::TimeHelper.to_date_time(stub[:expiration])) unless stub[:expiration].nil?
        xml << Hearth::XML::Node.new('NextRefreshTime', Hearth::TimeHelper.to_date_time(stub[:next_refresh_time])) unless stub[:next_refresh_time].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetReservedNodeExchangeConfigurationOptions
    class GetReservedNodeExchangeConfigurationOptions
      def self.default(visited=[])
        {
          marker: 'marker',
          reserved_node_configuration_option_list: ReservedNodeConfigurationOptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetReservedNodeExchangeConfigurationOptionsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('GetReservedNodeExchangeConfigurationOptionsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ReservedNodeConfigurationOptionList', ReservedNodeConfigurationOptionList.stub('ReservedNodeConfigurationOption', stub[:reserved_node_configuration_option_list])) unless stub[:reserved_node_configuration_option_list].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ReservedNodeConfigurationOptionList
    class ReservedNodeConfigurationOptionList
      def self.default(visited=[])
        return nil if visited.include?('ReservedNodeConfigurationOptionList')
        visited = visited + ['ReservedNodeConfigurationOptionList']
        [
          ReservedNodeConfigurationOption.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ReservedNodeConfigurationOption.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReservedNodeConfigurationOption
    class ReservedNodeConfigurationOption
      def self.default(visited=[])
        return nil if visited.include?('ReservedNodeConfigurationOption')
        visited = visited + ['ReservedNodeConfigurationOption']
        {
          source_reserved_node: ReservedNode.default(visited),
          target_reserved_node_count: 1,
          target_reserved_node_offering: ReservedNodeOffering.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReservedNodeConfigurationOption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << ReservedNode.stub('SourceReservedNode', stub[:source_reserved_node]) unless stub[:source_reserved_node].nil?
        xml << Hearth::XML::Node.new('TargetReservedNodeCount', stub[:target_reserved_node_count].to_s) unless stub[:target_reserved_node_count].nil?
        xml << ReservedNodeOffering.stub('TargetReservedNodeOffering', stub[:target_reserved_node_offering]) unless stub[:target_reserved_node_offering].nil?
        xml
      end
    end

    # Operation Stubber for GetReservedNodeExchangeOfferings
    class GetReservedNodeExchangeOfferings
      def self.default(visited=[])
        {
          marker: 'marker',
          reserved_node_offerings: ReservedNodeOfferingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetReservedNodeExchangeOfferingsResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('GetReservedNodeExchangeOfferingsResult')
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('ReservedNodeOfferings', ReservedNodeOfferingList.stub('ReservedNodeOffering', stub[:reserved_node_offerings])) unless stub[:reserved_node_offerings].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyAquaConfiguration
    class ModifyAquaConfiguration
      def self.default(visited=[])
        {
          aqua_configuration: AquaConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyAquaConfigurationResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyAquaConfigurationResult')
        xml << AquaConfiguration.stub('AquaConfiguration', stub[:aqua_configuration]) unless stub[:aqua_configuration].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyAuthenticationProfile
    class ModifyAuthenticationProfile
      def self.default(visited=[])
        {
          authentication_profile_name: 'authentication_profile_name',
          authentication_profile_content: 'authentication_profile_content',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyAuthenticationProfileResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyAuthenticationProfileResult')
        xml << Hearth::XML::Node.new('AuthenticationProfileName', stub[:authentication_profile_name].to_s) unless stub[:authentication_profile_name].nil?
        xml << Hearth::XML::Node.new('AuthenticationProfileContent', stub[:authentication_profile_content].to_s) unless stub[:authentication_profile_content].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyCluster
    class ModifyCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyClusterResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyClusterResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyClusterDbRevision
    class ModifyClusterDbRevision
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyClusterDbRevisionResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyClusterDbRevisionResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyClusterIamRoles
    class ModifyClusterIamRoles
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyClusterIamRolesResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyClusterIamRolesResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyClusterMaintenance
    class ModifyClusterMaintenance
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyClusterMaintenanceResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyClusterMaintenanceResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyClusterParameterGroup
    class ModifyClusterParameterGroup
      def self.default(visited=[])
        {
          parameter_group_name: 'parameter_group_name',
          parameter_group_status: 'parameter_group_status',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyClusterParameterGroupResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyClusterParameterGroupResult')
        xml << Hearth::XML::Node.new('ParameterGroupName', stub[:parameter_group_name].to_s) unless stub[:parameter_group_name].nil?
        xml << Hearth::XML::Node.new('ParameterGroupStatus', stub[:parameter_group_status].to_s) unless stub[:parameter_group_status].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyClusterSnapshot
    class ModifyClusterSnapshot
      def self.default(visited=[])
        {
          snapshot: Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyClusterSnapshotResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyClusterSnapshotResult')
        xml << Snapshot.stub('Snapshot', stub[:snapshot]) unless stub[:snapshot].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyClusterSnapshotSchedule
    class ModifyClusterSnapshotSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyClusterSnapshotScheduleResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyClusterSnapshotScheduleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyClusterSubnetGroup
    class ModifyClusterSubnetGroup
      def self.default(visited=[])
        {
          cluster_subnet_group: ClusterSubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyClusterSubnetGroupResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyClusterSubnetGroupResult')
        xml << ClusterSubnetGroup.stub('ClusterSubnetGroup', stub[:cluster_subnet_group]) unless stub[:cluster_subnet_group].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyEndpointAccess
    class ModifyEndpointAccess
      def self.default(visited=[])
        {
          cluster_identifier: 'cluster_identifier',
          resource_owner: 'resource_owner',
          subnet_group_name: 'subnet_group_name',
          endpoint_status: 'endpoint_status',
          endpoint_name: 'endpoint_name',
          endpoint_create_time: Time.now,
          port: 1,
          address: 'address',
          vpc_security_groups: VpcSecurityGroupMembershipList.default(visited),
          vpc_endpoint: VpcEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyEndpointAccessResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyEndpointAccessResult')
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('ResourceOwner', stub[:resource_owner].to_s) unless stub[:resource_owner].nil?
        xml << Hearth::XML::Node.new('SubnetGroupName', stub[:subnet_group_name].to_s) unless stub[:subnet_group_name].nil?
        xml << Hearth::XML::Node.new('EndpointStatus', stub[:endpoint_status].to_s) unless stub[:endpoint_status].nil?
        xml << Hearth::XML::Node.new('EndpointName', stub[:endpoint_name].to_s) unless stub[:endpoint_name].nil?
        xml << Hearth::XML::Node.new('EndpointCreateTime', Hearth::TimeHelper.to_date_time(stub[:endpoint_create_time])) unless stub[:endpoint_create_time].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml << Hearth::XML::Node.new('Address', stub[:address].to_s) unless stub[:address].nil?
        xml << Hearth::XML::Node.new('VpcSecurityGroups', VpcSecurityGroupMembershipList.stub('VpcSecurityGroup', stub[:vpc_security_groups])) unless stub[:vpc_security_groups].nil?
        xml << VpcEndpoint.stub('VpcEndpoint', stub[:vpc_endpoint]) unless stub[:vpc_endpoint].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyEventSubscription
    class ModifyEventSubscription
      def self.default(visited=[])
        {
          event_subscription: EventSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyEventSubscriptionResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyEventSubscriptionResult')
        xml << EventSubscription.stub('EventSubscription', stub[:event_subscription]) unless stub[:event_subscription].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyScheduledAction
    class ModifyScheduledAction
      def self.default(visited=[])
        {
          scheduled_action_name: 'scheduled_action_name',
          target_action: ScheduledActionType.default(visited),
          schedule: 'schedule',
          iam_role: 'iam_role',
          scheduled_action_description: 'scheduled_action_description',
          state: 'state',
          next_invocations: ScheduledActionTimeList.default(visited),
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyScheduledActionResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyScheduledActionResult')
        xml << Hearth::XML::Node.new('ScheduledActionName', stub[:scheduled_action_name].to_s) unless stub[:scheduled_action_name].nil?
        xml << ScheduledActionType.stub('TargetAction', stub[:target_action]) unless stub[:target_action].nil?
        xml << Hearth::XML::Node.new('Schedule', stub[:schedule].to_s) unless stub[:schedule].nil?
        xml << Hearth::XML::Node.new('IamRole', stub[:iam_role].to_s) unless stub[:iam_role].nil?
        xml << Hearth::XML::Node.new('ScheduledActionDescription', stub[:scheduled_action_description].to_s) unless stub[:scheduled_action_description].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('NextInvocations', ScheduledActionTimeList.stub('ScheduledActionTime', stub[:next_invocations])) unless stub[:next_invocations].nil?
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('EndTime', Hearth::TimeHelper.to_date_time(stub[:end_time])) unless stub[:end_time].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifySnapshotCopyRetentionPeriod
    class ModifySnapshotCopyRetentionPeriod
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifySnapshotCopyRetentionPeriodResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifySnapshotCopyRetentionPeriodResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifySnapshotSchedule
    class ModifySnapshotSchedule
      def self.default(visited=[])
        {
          schedule_definitions: ScheduleDefinitionList.default(visited),
          schedule_identifier: 'schedule_identifier',
          schedule_description: 'schedule_description',
          tags: TagList.default(visited),
          next_invocations: ScheduledSnapshotTimeList.default(visited),
          associated_cluster_count: 1,
          associated_clusters: AssociatedClusterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifySnapshotScheduleResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifySnapshotScheduleResult')
        xml << Hearth::XML::Node.new('ScheduleDefinitions', ScheduleDefinitionList.stub('ScheduleDefinition', stub[:schedule_definitions])) unless stub[:schedule_definitions].nil?
        xml << Hearth::XML::Node.new('ScheduleIdentifier', stub[:schedule_identifier].to_s) unless stub[:schedule_identifier].nil?
        xml << Hearth::XML::Node.new('ScheduleDescription', stub[:schedule_description].to_s) unless stub[:schedule_description].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('NextInvocations', ScheduledSnapshotTimeList.stub('SnapshotTime', stub[:next_invocations])) unless stub[:next_invocations].nil?
        xml << Hearth::XML::Node.new('AssociatedClusterCount', stub[:associated_cluster_count].to_s) unless stub[:associated_cluster_count].nil?
        xml << Hearth::XML::Node.new('AssociatedClusters', AssociatedClusterList.stub('ClusterAssociatedToSchedule', stub[:associated_clusters])) unless stub[:associated_clusters].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyUsageLimit
    class ModifyUsageLimit
      def self.default(visited=[])
        {
          usage_limit_id: 'usage_limit_id',
          cluster_identifier: 'cluster_identifier',
          feature_type: 'feature_type',
          limit_type: 'limit_type',
          amount: 1,
          period: 'period',
          breach_action: 'breach_action',
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ModifyUsageLimitResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ModifyUsageLimitResult')
        xml << Hearth::XML::Node.new('UsageLimitId', stub[:usage_limit_id].to_s) unless stub[:usage_limit_id].nil?
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('FeatureType', stub[:feature_type].to_s) unless stub[:feature_type].nil?
        xml << Hearth::XML::Node.new('LimitType', stub[:limit_type].to_s) unless stub[:limit_type].nil?
        xml << Hearth::XML::Node.new('Amount', stub[:amount].to_s) unless stub[:amount].nil?
        xml << Hearth::XML::Node.new('Period', stub[:period].to_s) unless stub[:period].nil?
        xml << Hearth::XML::Node.new('BreachAction', stub[:breach_action].to_s) unless stub[:breach_action].nil?
        xml << Hearth::XML::Node.new('Tags', TagList.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PauseCluster
    class PauseCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PauseClusterResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('PauseClusterResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PurchaseReservedNodeOffering
    class PurchaseReservedNodeOffering
      def self.default(visited=[])
        {
          reserved_node: ReservedNode.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PurchaseReservedNodeOfferingResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('PurchaseReservedNodeOfferingResult')
        xml << ReservedNode.stub('ReservedNode', stub[:reserved_node]) unless stub[:reserved_node].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RebootCluster
    class RebootCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RebootClusterResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('RebootClusterResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RejectDataShare
    class RejectDataShare
      def self.default(visited=[])
        {
          data_share_arn: 'data_share_arn',
          producer_arn: 'producer_arn',
          allow_publicly_accessible_consumers: false,
          data_share_associations: DataShareAssociationList.default(visited),
          managed_by: 'managed_by',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RejectDataShareResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('RejectDataShareResult')
        xml << Hearth::XML::Node.new('DataShareArn', stub[:data_share_arn].to_s) unless stub[:data_share_arn].nil?
        xml << Hearth::XML::Node.new('ProducerArn', stub[:producer_arn].to_s) unless stub[:producer_arn].nil?
        xml << Hearth::XML::Node.new('AllowPubliclyAccessibleConsumers', stub[:allow_publicly_accessible_consumers].to_s) unless stub[:allow_publicly_accessible_consumers].nil?
        xml << Hearth::XML::Node.new('DataShareAssociations', DataShareAssociationList.stub('member', stub[:data_share_associations])) unless stub[:data_share_associations].nil?
        xml << Hearth::XML::Node.new('ManagedBy', stub[:managed_by].to_s) unless stub[:managed_by].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetClusterParameterGroup
    class ResetClusterParameterGroup
      def self.default(visited=[])
        {
          parameter_group_name: 'parameter_group_name',
          parameter_group_status: 'parameter_group_status',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ResetClusterParameterGroupResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ResetClusterParameterGroupResult')
        xml << Hearth::XML::Node.new('ParameterGroupName', stub[:parameter_group_name].to_s) unless stub[:parameter_group_name].nil?
        xml << Hearth::XML::Node.new('ParameterGroupStatus', stub[:parameter_group_status].to_s) unless stub[:parameter_group_status].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResizeCluster
    class ResizeCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ResizeClusterResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ResizeClusterResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreFromClusterSnapshot
    class RestoreFromClusterSnapshot
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RestoreFromClusterSnapshotResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('RestoreFromClusterSnapshotResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreTableFromClusterSnapshot
    class RestoreTableFromClusterSnapshot
      def self.default(visited=[])
        {
          table_restore_status: TableRestoreStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RestoreTableFromClusterSnapshotResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('RestoreTableFromClusterSnapshotResult')
        xml << TableRestoreStatus.stub('TableRestoreStatus', stub[:table_restore_status]) unless stub[:table_restore_status].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResumeCluster
    class ResumeCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ResumeClusterResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('ResumeClusterResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeClusterSecurityGroupIngress
    class RevokeClusterSecurityGroupIngress
      def self.default(visited=[])
        {
          cluster_security_group: ClusterSecurityGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RevokeClusterSecurityGroupIngressResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('RevokeClusterSecurityGroupIngressResult')
        xml << ClusterSecurityGroup.stub('ClusterSecurityGroup', stub[:cluster_security_group]) unless stub[:cluster_security_group].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeEndpointAccess
    class RevokeEndpointAccess
      def self.default(visited=[])
        {
          grantor: 'grantor',
          grantee: 'grantee',
          cluster_identifier: 'cluster_identifier',
          authorize_time: Time.now,
          cluster_status: 'cluster_status',
          status: 'status',
          allowed_all_vp_cs: false,
          allowed_vp_cs: VpcIdentifierList.default(visited),
          endpoint_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RevokeEndpointAccessResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('RevokeEndpointAccessResult')
        xml << Hearth::XML::Node.new('Grantor', stub[:grantor].to_s) unless stub[:grantor].nil?
        xml << Hearth::XML::Node.new('Grantee', stub[:grantee].to_s) unless stub[:grantee].nil?
        xml << Hearth::XML::Node.new('ClusterIdentifier', stub[:cluster_identifier].to_s) unless stub[:cluster_identifier].nil?
        xml << Hearth::XML::Node.new('AuthorizeTime', Hearth::TimeHelper.to_date_time(stub[:authorize_time])) unless stub[:authorize_time].nil?
        xml << Hearth::XML::Node.new('ClusterStatus', stub[:cluster_status].to_s) unless stub[:cluster_status].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('AllowedAllVPCs', stub[:allowed_all_vp_cs].to_s) unless stub[:allowed_all_vp_cs].nil?
        xml << Hearth::XML::Node.new('AllowedVPCs', VpcIdentifierList.stub('VpcIdentifier', stub[:allowed_vp_cs])) unless stub[:allowed_vp_cs].nil?
        xml << Hearth::XML::Node.new('EndpointCount', stub[:endpoint_count].to_s) unless stub[:endpoint_count].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeSnapshotAccess
    class RevokeSnapshotAccess
      def self.default(visited=[])
        {
          snapshot: Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RevokeSnapshotAccessResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('RevokeSnapshotAccessResult')
        xml << Snapshot.stub('Snapshot', stub[:snapshot]) unless stub[:snapshot].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RotateEncryptionKey
    class RotateEncryptionKey
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RotateEncryptionKeyResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('RotateEncryptionKeyResult')
        xml << Cluster.stub('Cluster', stub[:cluster]) unless stub[:cluster].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePartnerStatus
    class UpdatePartnerStatus
      def self.default(visited=[])
        {
          database_name: 'database_name',
          partner_name: 'partner_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdatePartnerStatusResponse')
        response.attributes['xmlns'] = 'http://redshift.amazonaws.com/doc/2012-12-01/'
        xml = Hearth::XML::Node.new('UpdatePartnerStatusResult')
        xml << Hearth::XML::Node.new('DatabaseName', stub[:database_name].to_s) unless stub[:database_name].nil?
        xml << Hearth::XML::Node.new('PartnerName', stub[:partner_name].to_s) unless stub[:partner_name].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
