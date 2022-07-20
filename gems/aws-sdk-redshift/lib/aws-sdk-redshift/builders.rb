# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Redshift
  module Builders

    # Operation Builder for AcceptReservedNodeExchange
    class AcceptReservedNodeExchange
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AcceptReservedNodeExchange'
        params['Version'] = '2012-12-01'
        params[context + 'ReservedNodeId'] = input[:reserved_node_id].to_s unless input[:reserved_node_id].nil?
        params[context + 'TargetReservedNodeOfferingId'] = input[:target_reserved_node_offering_id].to_s unless input[:target_reserved_node_offering_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AddPartner
    class AddPartner
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddPartner'
        params['Version'] = '2012-12-01'
        params[context + 'AccountId'] = input[:account_id].to_s unless input[:account_id].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'DatabaseName'] = input[:database_name].to_s unless input[:database_name].nil?
        params[context + 'PartnerName'] = input[:partner_name].to_s unless input[:partner_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateDataShareConsumer
    class AssociateDataShareConsumer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateDataShareConsumer'
        params['Version'] = '2012-12-01'
        params[context + 'DataShareArn'] = input[:data_share_arn].to_s unless input[:data_share_arn].nil?
        params[context + 'AssociateEntireAccount'] = input[:associate_entire_account].to_s unless input[:associate_entire_account].nil?
        params[context + 'ConsumerArn'] = input[:consumer_arn].to_s unless input[:consumer_arn].nil?
        params[context + 'ConsumerRegion'] = input[:consumer_region].to_s unless input[:consumer_region].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AuthorizeClusterSecurityGroupIngress
    class AuthorizeClusterSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AuthorizeClusterSecurityGroupIngress'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterSecurityGroupName'] = input[:cluster_security_group_name].to_s unless input[:cluster_security_group_name].nil?
        params[context + 'CIDRIP'] = input[:cidrip].to_s unless input[:cidrip].nil?
        params[context + 'EC2SecurityGroupName'] = input[:ec2_security_group_name].to_s unless input[:ec2_security_group_name].nil?
        params[context + 'EC2SecurityGroupOwnerId'] = input[:ec2_security_group_owner_id].to_s unless input[:ec2_security_group_owner_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AuthorizeDataShare
    class AuthorizeDataShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AuthorizeDataShare'
        params['Version'] = '2012-12-01'
        params[context + 'DataShareArn'] = input[:data_share_arn].to_s unless input[:data_share_arn].nil?
        params[context + 'ConsumerIdentifier'] = input[:consumer_identifier].to_s unless input[:consumer_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AuthorizeEndpointAccess
    class AuthorizeEndpointAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AuthorizeEndpointAccess'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'Account'] = input[:account].to_s unless input[:account].nil?
        VpcIdentifierList.build(input[:vpc_ids], params, context: context + 'VpcIds' + '.VpcIdentifier') unless input[:vpc_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for VpcIdentifierList
    class VpcIdentifierList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AuthorizeSnapshotAccess
    class AuthorizeSnapshotAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AuthorizeSnapshotAccess'
        params['Version'] = '2012-12-01'
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'SnapshotClusterIdentifier'] = input[:snapshot_cluster_identifier].to_s unless input[:snapshot_cluster_identifier].nil?
        params[context + 'AccountWithRestoreAccess'] = input[:account_with_restore_access].to_s unless input[:account_with_restore_access].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for BatchDeleteClusterSnapshots
    class BatchDeleteClusterSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BatchDeleteClusterSnapshots'
        params['Version'] = '2012-12-01'
        DeleteClusterSnapshotMessageList.build(input[:identifiers], params, context: context + 'Identifiers' + '.DeleteClusterSnapshotMessage') unless input[:identifiers].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for DeleteClusterSnapshotMessageList
    class DeleteClusterSnapshotMessageList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          DeleteClusterSnapshotMessage.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for DeleteClusterSnapshotMessage
    class DeleteClusterSnapshotMessage
      def self.build(input, params, context: nil)
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'SnapshotClusterIdentifier'] = input[:snapshot_cluster_identifier].to_s unless input[:snapshot_cluster_identifier].nil?
      end
    end

    # Operation Builder for BatchModifyClusterSnapshots
    class BatchModifyClusterSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BatchModifyClusterSnapshots'
        params['Version'] = '2012-12-01'
        SnapshotIdentifierList.build(input[:snapshot_identifier_list], params, context: context + 'SnapshotIdentifierList' + '.String') unless input[:snapshot_identifier_list].nil?
        params[context + 'ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period].to_s unless input[:manual_snapshot_retention_period].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for SnapshotIdentifierList
    class SnapshotIdentifierList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CancelResize
    class CancelResize
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelResize'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CopyClusterSnapshot
    class CopyClusterSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CopyClusterSnapshot'
        params['Version'] = '2012-12-01'
        params[context + 'SourceSnapshotIdentifier'] = input[:source_snapshot_identifier].to_s unless input[:source_snapshot_identifier].nil?
        params[context + 'SourceSnapshotClusterIdentifier'] = input[:source_snapshot_cluster_identifier].to_s unless input[:source_snapshot_cluster_identifier].nil?
        params[context + 'TargetSnapshotIdentifier'] = input[:target_snapshot_identifier].to_s unless input[:target_snapshot_identifier].nil?
        params[context + 'ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period].to_s unless input[:manual_snapshot_retention_period].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateAuthenticationProfile
    class CreateAuthenticationProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateAuthenticationProfile'
        params['Version'] = '2012-12-01'
        params[context + 'AuthenticationProfileName'] = input[:authentication_profile_name].to_s unless input[:authentication_profile_name].nil?
        params[context + 'AuthenticationProfileContent'] = input[:authentication_profile_content].to_s unless input[:authentication_profile_content].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateCluster
    class CreateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateCluster'
        params['Version'] = '2012-12-01'
        params[context + 'DBName'] = input[:db_name].to_s unless input[:db_name].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'ClusterType'] = input[:cluster_type].to_s unless input[:cluster_type].nil?
        params[context + 'NodeType'] = input[:node_type].to_s unless input[:node_type].nil?
        params[context + 'MasterUsername'] = input[:master_username].to_s unless input[:master_username].nil?
        params[context + 'MasterUserPassword'] = input[:master_user_password].to_s unless input[:master_user_password].nil?
        ClusterSecurityGroupNameList.build(input[:cluster_security_groups], params, context: context + 'ClusterSecurityGroups' + '.ClusterSecurityGroupName') unless input[:cluster_security_groups].nil?
        VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'ClusterSubnetGroupName'] = input[:cluster_subnet_group_name].to_s unless input[:cluster_subnet_group_name].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'ClusterParameterGroupName'] = input[:cluster_parameter_group_name].to_s unless input[:cluster_parameter_group_name].nil?
        params[context + 'AutomatedSnapshotRetentionPeriod'] = input[:automated_snapshot_retention_period].to_s unless input[:automated_snapshot_retention_period].nil?
        params[context + 'ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period].to_s unless input[:manual_snapshot_retention_period].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'ClusterVersion'] = input[:cluster_version].to_s unless input[:cluster_version].nil?
        params[context + 'AllowVersionUpgrade'] = input[:allow_version_upgrade].to_s unless input[:allow_version_upgrade].nil?
        params[context + 'NumberOfNodes'] = input[:number_of_nodes].to_s unless input[:number_of_nodes].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'HsmClientCertificateIdentifier'] = input[:hsm_client_certificate_identifier].to_s unless input[:hsm_client_certificate_identifier].nil?
        params[context + 'HsmConfigurationIdentifier'] = input[:hsm_configuration_identifier].to_s unless input[:hsm_configuration_identifier].nil?
        params[context + 'ElasticIp'] = input[:elastic_ip].to_s unless input[:elastic_ip].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'EnhancedVpcRouting'] = input[:enhanced_vpc_routing].to_s unless input[:enhanced_vpc_routing].nil?
        params[context + 'AdditionalInfo'] = input[:additional_info].to_s unless input[:additional_info].nil?
        IamRoleArnList.build(input[:iam_roles], params, context: context + 'IamRoles' + '.IamRoleArn') unless input[:iam_roles].nil?
        params[context + 'MaintenanceTrackName'] = input[:maintenance_track_name].to_s unless input[:maintenance_track_name].nil?
        params[context + 'SnapshotScheduleIdentifier'] = input[:snapshot_schedule_identifier].to_s unless input[:snapshot_schedule_identifier].nil?
        params[context + 'AvailabilityZoneRelocation'] = input[:availability_zone_relocation].to_s unless input[:availability_zone_relocation].nil?
        params[context + 'AquaConfigurationStatus'] = input[:aqua_configuration_status].to_s unless input[:aqua_configuration_status].nil?
        params[context + 'DefaultIamRoleArn'] = input[:default_iam_role_arn].to_s unless input[:default_iam_role_arn].nil?
        params[context + 'LoadSampleData'] = input[:load_sample_data].to_s unless input[:load_sample_data].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for IamRoleArnList
    class IamRoleArnList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
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

    # List Builder for VpcSecurityGroupIdList
    class VpcSecurityGroupIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ClusterSecurityGroupNameList
    class ClusterSecurityGroupNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateClusterParameterGroup
    class CreateClusterParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateClusterParameterGroup'
        params['Version'] = '2012-12-01'
        params[context + 'ParameterGroupName'] = input[:parameter_group_name].to_s unless input[:parameter_group_name].nil?
        params[context + 'ParameterGroupFamily'] = input[:parameter_group_family].to_s unless input[:parameter_group_family].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateClusterSecurityGroup
    class CreateClusterSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateClusterSecurityGroup'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterSecurityGroupName'] = input[:cluster_security_group_name].to_s unless input[:cluster_security_group_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateClusterSnapshot
    class CreateClusterSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateClusterSnapshot'
        params['Version'] = '2012-12-01'
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period].to_s unless input[:manual_snapshot_retention_period].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateClusterSubnetGroup
    class CreateClusterSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateClusterSubnetGroup'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterSubnetGroupName'] = input[:cluster_subnet_group_name].to_s unless input[:cluster_subnet_group_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        SubnetIdentifierList.build(input[:subnet_ids], params, context: context + 'SubnetIds' + '.SubnetIdentifier') unless input[:subnet_ids].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for SubnetIdentifierList
    class SubnetIdentifierList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateEndpointAccess
    class CreateEndpointAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateEndpointAccess'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'ResourceOwner'] = input[:resource_owner].to_s unless input[:resource_owner].nil?
        params[context + 'EndpointName'] = input[:endpoint_name].to_s unless input[:endpoint_name].nil?
        params[context + 'SubnetGroupName'] = input[:subnet_group_name].to_s unless input[:subnet_group_name].nil?
        VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateEventSubscription
    class CreateEventSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateEventSubscription'
        params['Version'] = '2012-12-01'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        params[context + 'SnsTopicArn'] = input[:sns_topic_arn].to_s unless input[:sns_topic_arn].nil?
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        SourceIdsList.build(input[:source_ids], params, context: context + 'SourceIds' + '.SourceId') unless input[:source_ids].nil?
        EventCategoriesList.build(input[:event_categories], params, context: context + 'EventCategories' + '.EventCategory') unless input[:event_categories].nil?
        params[context + 'Severity'] = input[:severity].to_s unless input[:severity].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for EventCategoriesList
    class EventCategoriesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for SourceIdsList
    class SourceIdsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateHsmClientCertificate
    class CreateHsmClientCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateHsmClientCertificate'
        params['Version'] = '2012-12-01'
        params[context + 'HsmClientCertificateIdentifier'] = input[:hsm_client_certificate_identifier].to_s unless input[:hsm_client_certificate_identifier].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateHsmConfiguration
    class CreateHsmConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateHsmConfiguration'
        params['Version'] = '2012-12-01'
        params[context + 'HsmConfigurationIdentifier'] = input[:hsm_configuration_identifier].to_s unless input[:hsm_configuration_identifier].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'HsmIpAddress'] = input[:hsm_ip_address].to_s unless input[:hsm_ip_address].nil?
        params[context + 'HsmPartitionName'] = input[:hsm_partition_name].to_s unless input[:hsm_partition_name].nil?
        params[context + 'HsmPartitionPassword'] = input[:hsm_partition_password].to_s unless input[:hsm_partition_password].nil?
        params[context + 'HsmServerPublicCertificate'] = input[:hsm_server_public_certificate].to_s unless input[:hsm_server_public_certificate].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateScheduledAction
    class CreateScheduledAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateScheduledAction'
        params['Version'] = '2012-12-01'
        params[context + 'ScheduledActionName'] = input[:scheduled_action_name].to_s unless input[:scheduled_action_name].nil?
        ScheduledActionType.build(input[:target_action], params, context: context + 'TargetAction' + '.') unless input[:target_action].nil?
        params[context + 'Schedule'] = input[:schedule].to_s unless input[:schedule].nil?
        params[context + 'IamRole'] = input[:iam_role].to_s unless input[:iam_role].nil?
        params[context + 'ScheduledActionDescription'] = input[:scheduled_action_description].to_s unless input[:scheduled_action_description].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Enable'] = input[:enable].to_s unless input[:enable].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ScheduledActionType
    class ScheduledActionType
      def self.build(input, params, context: nil)
        ResizeClusterMessage.build(input[:resize_cluster], params, context: context + 'ResizeCluster' + '.') unless input[:resize_cluster].nil?
        PauseClusterMessage.build(input[:pause_cluster], params, context: context + 'PauseCluster' + '.') unless input[:pause_cluster].nil?
        ResumeClusterMessage.build(input[:resume_cluster], params, context: context + 'ResumeCluster' + '.') unless input[:resume_cluster].nil?
      end
    end

    # Structure Builder for ResumeClusterMessage
    class ResumeClusterMessage
      def self.build(input, params, context: nil)
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
      end
    end

    # Structure Builder for PauseClusterMessage
    class PauseClusterMessage
      def self.build(input, params, context: nil)
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
      end
    end

    # Structure Builder for ResizeClusterMessage
    class ResizeClusterMessage
      def self.build(input, params, context: nil)
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'ClusterType'] = input[:cluster_type].to_s unless input[:cluster_type].nil?
        params[context + 'NodeType'] = input[:node_type].to_s unless input[:node_type].nil?
        params[context + 'NumberOfNodes'] = input[:number_of_nodes].to_s unless input[:number_of_nodes].nil?
        params[context + 'Classic'] = input[:classic].to_s unless input[:classic].nil?
        params[context + 'ReservedNodeId'] = input[:reserved_node_id].to_s unless input[:reserved_node_id].nil?
        params[context + 'TargetReservedNodeOfferingId'] = input[:target_reserved_node_offering_id].to_s unless input[:target_reserved_node_offering_id].nil?
      end
    end

    # Operation Builder for CreateSnapshotCopyGrant
    class CreateSnapshotCopyGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSnapshotCopyGrant'
        params['Version'] = '2012-12-01'
        params[context + 'SnapshotCopyGrantName'] = input[:snapshot_copy_grant_name].to_s unless input[:snapshot_copy_grant_name].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateSnapshotSchedule
    class CreateSnapshotSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSnapshotSchedule'
        params['Version'] = '2012-12-01'
        ScheduleDefinitionList.build(input[:schedule_definitions], params, context: context + 'ScheduleDefinitions' + '.ScheduleDefinition') unless input[:schedule_definitions].nil?
        params[context + 'ScheduleIdentifier'] = input[:schedule_identifier].to_s unless input[:schedule_identifier].nil?
        params[context + 'ScheduleDescription'] = input[:schedule_description].to_s unless input[:schedule_description].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        params[context + 'DryRun'] = input[:dry_run].to_s unless input[:dry_run].nil?
        params[context + 'NextInvocations'] = input[:next_invocations].to_s unless input[:next_invocations].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for ScheduleDefinitionList
    class ScheduleDefinitionList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateTags
    class CreateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateTags'
        params['Version'] = '2012-12-01'
        params[context + 'ResourceName'] = input[:resource_name].to_s unless input[:resource_name].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateUsageLimit
    class CreateUsageLimit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateUsageLimit'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'FeatureType'] = input[:feature_type].to_s unless input[:feature_type].nil?
        params[context + 'LimitType'] = input[:limit_type].to_s unless input[:limit_type].nil?
        params[context + 'Amount'] = input[:amount].to_s unless input[:amount].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'BreachAction'] = input[:breach_action].to_s unless input[:breach_action].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.Tag') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeauthorizeDataShare
    class DeauthorizeDataShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeauthorizeDataShare'
        params['Version'] = '2012-12-01'
        params[context + 'DataShareArn'] = input[:data_share_arn].to_s unless input[:data_share_arn].nil?
        params[context + 'ConsumerIdentifier'] = input[:consumer_identifier].to_s unless input[:consumer_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteAuthenticationProfile
    class DeleteAuthenticationProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteAuthenticationProfile'
        params['Version'] = '2012-12-01'
        params[context + 'AuthenticationProfileName'] = input[:authentication_profile_name].to_s unless input[:authentication_profile_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteCluster
    class DeleteCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteCluster'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'SkipFinalClusterSnapshot'] = input[:skip_final_cluster_snapshot].to_s unless input[:skip_final_cluster_snapshot].nil?
        params[context + 'FinalClusterSnapshotIdentifier'] = input[:final_cluster_snapshot_identifier].to_s unless input[:final_cluster_snapshot_identifier].nil?
        params[context + 'FinalClusterSnapshotRetentionPeriod'] = input[:final_cluster_snapshot_retention_period].to_s unless input[:final_cluster_snapshot_retention_period].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteClusterParameterGroup
    class DeleteClusterParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteClusterParameterGroup'
        params['Version'] = '2012-12-01'
        params[context + 'ParameterGroupName'] = input[:parameter_group_name].to_s unless input[:parameter_group_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteClusterSecurityGroup
    class DeleteClusterSecurityGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteClusterSecurityGroup'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterSecurityGroupName'] = input[:cluster_security_group_name].to_s unless input[:cluster_security_group_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteClusterSnapshot
    class DeleteClusterSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteClusterSnapshot'
        params['Version'] = '2012-12-01'
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'SnapshotClusterIdentifier'] = input[:snapshot_cluster_identifier].to_s unless input[:snapshot_cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteClusterSubnetGroup
    class DeleteClusterSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteClusterSubnetGroup'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterSubnetGroupName'] = input[:cluster_subnet_group_name].to_s unless input[:cluster_subnet_group_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteEndpointAccess
    class DeleteEndpointAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteEndpointAccess'
        params['Version'] = '2012-12-01'
        params[context + 'EndpointName'] = input[:endpoint_name].to_s unless input[:endpoint_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteEventSubscription
    class DeleteEventSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteEventSubscription'
        params['Version'] = '2012-12-01'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteHsmClientCertificate
    class DeleteHsmClientCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteHsmClientCertificate'
        params['Version'] = '2012-12-01'
        params[context + 'HsmClientCertificateIdentifier'] = input[:hsm_client_certificate_identifier].to_s unless input[:hsm_client_certificate_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteHsmConfiguration
    class DeleteHsmConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteHsmConfiguration'
        params['Version'] = '2012-12-01'
        params[context + 'HsmConfigurationIdentifier'] = input[:hsm_configuration_identifier].to_s unless input[:hsm_configuration_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeletePartner
    class DeletePartner
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeletePartner'
        params['Version'] = '2012-12-01'
        params[context + 'AccountId'] = input[:account_id].to_s unless input[:account_id].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'DatabaseName'] = input[:database_name].to_s unless input[:database_name].nil?
        params[context + 'PartnerName'] = input[:partner_name].to_s unless input[:partner_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteScheduledAction
    class DeleteScheduledAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteScheduledAction'
        params['Version'] = '2012-12-01'
        params[context + 'ScheduledActionName'] = input[:scheduled_action_name].to_s unless input[:scheduled_action_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSnapshotCopyGrant
    class DeleteSnapshotCopyGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSnapshotCopyGrant'
        params['Version'] = '2012-12-01'
        params[context + 'SnapshotCopyGrantName'] = input[:snapshot_copy_grant_name].to_s unless input[:snapshot_copy_grant_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSnapshotSchedule
    class DeleteSnapshotSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSnapshotSchedule'
        params['Version'] = '2012-12-01'
        params[context + 'ScheduleIdentifier'] = input[:schedule_identifier].to_s unless input[:schedule_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTags'
        params['Version'] = '2012-12-01'
        params[context + 'ResourceName'] = input[:resource_name].to_s unless input[:resource_name].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteUsageLimit
    class DeleteUsageLimit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteUsageLimit'
        params['Version'] = '2012-12-01'
        params[context + 'UsageLimitId'] = input[:usage_limit_id].to_s unless input[:usage_limit_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAccountAttributes'
        params['Version'] = '2012-12-01'
        AttributeNameList.build(input[:attribute_names], params, context: context + 'AttributeNames' + '.AttributeName') unless input[:attribute_names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for AttributeNameList
    class AttributeNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeAuthenticationProfiles
    class DescribeAuthenticationProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAuthenticationProfiles'
        params['Version'] = '2012-12-01'
        params[context + 'AuthenticationProfileName'] = input[:authentication_profile_name].to_s unless input[:authentication_profile_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClusterDbRevisions
    class DescribeClusterDbRevisions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClusterDbRevisions'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClusterParameterGroups
    class DescribeClusterParameterGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClusterParameterGroups'
        params['Version'] = '2012-12-01'
        params[context + 'ParameterGroupName'] = input[:parameter_group_name].to_s unless input[:parameter_group_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for TagValueList
    class TagValueList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeClusterParameters
    class DescribeClusterParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClusterParameters'
        params['Version'] = '2012-12-01'
        params[context + 'ParameterGroupName'] = input[:parameter_group_name].to_s unless input[:parameter_group_name].nil?
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClusterSecurityGroups
    class DescribeClusterSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClusterSecurityGroups'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterSecurityGroupName'] = input[:cluster_security_group_name].to_s unless input[:cluster_security_group_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClusterSnapshots
    class DescribeClusterSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClusterSnapshots'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'SnapshotType'] = input[:snapshot_type].to_s unless input[:snapshot_type].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'OwnerAccount'] = input[:owner_account].to_s unless input[:owner_account].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        params[context + 'ClusterExists'] = input[:cluster_exists].to_s unless input[:cluster_exists].nil?
        SnapshotSortingEntityList.build(input[:sorting_entities], params, context: context + 'SortingEntities' + '.SnapshotSortingEntity') unless input[:sorting_entities].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for SnapshotSortingEntityList
    class SnapshotSortingEntityList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          SnapshotSortingEntity.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for SnapshotSortingEntity
    class SnapshotSortingEntity
      def self.build(input, params, context: nil)
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'SortOrder'] = input[:sort_order].to_s unless input[:sort_order].nil?
      end
    end

    # Operation Builder for DescribeClusterSubnetGroups
    class DescribeClusterSubnetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClusterSubnetGroups'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterSubnetGroupName'] = input[:cluster_subnet_group_name].to_s unless input[:cluster_subnet_group_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClusterTracks
    class DescribeClusterTracks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClusterTracks'
        params['Version'] = '2012-12-01'
        params[context + 'MaintenanceTrackName'] = input[:maintenance_track_name].to_s unless input[:maintenance_track_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClusterVersions
    class DescribeClusterVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClusterVersions'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterVersion'] = input[:cluster_version].to_s unless input[:cluster_version].nil?
        params[context + 'ClusterParameterGroupFamily'] = input[:cluster_parameter_group_family].to_s unless input[:cluster_parameter_group_family].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeClusters
    class DescribeClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeClusters'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDataShares
    class DescribeDataShares
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDataShares'
        params['Version'] = '2012-12-01'
        params[context + 'DataShareArn'] = input[:data_share_arn].to_s unless input[:data_share_arn].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDataSharesForConsumer
    class DescribeDataSharesForConsumer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDataSharesForConsumer'
        params['Version'] = '2012-12-01'
        params[context + 'ConsumerArn'] = input[:consumer_arn].to_s unless input[:consumer_arn].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDataSharesForProducer
    class DescribeDataSharesForProducer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDataSharesForProducer'
        params['Version'] = '2012-12-01'
        params[context + 'ProducerArn'] = input[:producer_arn].to_s unless input[:producer_arn].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDefaultClusterParameters
    class DescribeDefaultClusterParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDefaultClusterParameters'
        params['Version'] = '2012-12-01'
        params[context + 'ParameterGroupFamily'] = input[:parameter_group_family].to_s unless input[:parameter_group_family].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEndpointAccess
    class DescribeEndpointAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEndpointAccess'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'ResourceOwner'] = input[:resource_owner].to_s unless input[:resource_owner].nil?
        params[context + 'EndpointName'] = input[:endpoint_name].to_s unless input[:endpoint_name].nil?
        params[context + 'VpcId'] = input[:vpc_id].to_s unless input[:vpc_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEndpointAuthorization
    class DescribeEndpointAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEndpointAuthorization'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'Account'] = input[:account].to_s unless input[:account].nil?
        params[context + 'Grantee'] = input[:grantee].to_s unless input[:grantee].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEventCategories
    class DescribeEventCategories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEventCategories'
        params['Version'] = '2012-12-01'
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEventSubscriptions
    class DescribeEventSubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEventSubscriptions'
        params['Version'] = '2012-12-01'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEvents
    class DescribeEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEvents'
        params['Version'] = '2012-12-01'
        params[context + 'SourceIdentifier'] = input[:source_identifier].to_s unless input[:source_identifier].nil?
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Duration'] = input[:duration].to_s unless input[:duration].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeHsmClientCertificates
    class DescribeHsmClientCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeHsmClientCertificates'
        params['Version'] = '2012-12-01'
        params[context + 'HsmClientCertificateIdentifier'] = input[:hsm_client_certificate_identifier].to_s unless input[:hsm_client_certificate_identifier].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeHsmConfigurations
    class DescribeHsmConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeHsmConfigurations'
        params['Version'] = '2012-12-01'
        params[context + 'HsmConfigurationIdentifier'] = input[:hsm_configuration_identifier].to_s unless input[:hsm_configuration_identifier].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeLoggingStatus
    class DescribeLoggingStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLoggingStatus'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeNodeConfigurationOptions
    class DescribeNodeConfigurationOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNodeConfigurationOptions'
        params['Version'] = '2012-12-01'
        params[context + 'ActionType'] = input[:action_type].to_s unless input[:action_type].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'OwnerAccount'] = input[:owner_account].to_s unless input[:owner_account].nil?
        NodeConfigurationOptionsFilterList.build(input[:filters], params, context: context + 'Filter' + '.NodeConfigurationOptionsFilter') unless input[:filters].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for NodeConfigurationOptionsFilterList
    class NodeConfigurationOptionsFilterList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          NodeConfigurationOptionsFilter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for NodeConfigurationOptionsFilter
    class NodeConfigurationOptionsFilter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Operator'] = input[:operator].to_s unless input[:operator].nil?
        ValueStringList.build(input[:values], params, context: context + 'Value' + '.item') unless input[:values].nil?
      end
    end

    # List Builder for ValueStringList
    class ValueStringList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeOrderableClusterOptions
    class DescribeOrderableClusterOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeOrderableClusterOptions'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterVersion'] = input[:cluster_version].to_s unless input[:cluster_version].nil?
        params[context + 'NodeType'] = input[:node_type].to_s unless input[:node_type].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribePartners
    class DescribePartners
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePartners'
        params['Version'] = '2012-12-01'
        params[context + 'AccountId'] = input[:account_id].to_s unless input[:account_id].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'DatabaseName'] = input[:database_name].to_s unless input[:database_name].nil?
        params[context + 'PartnerName'] = input[:partner_name].to_s unless input[:partner_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReservedNodeExchangeStatus
    class DescribeReservedNodeExchangeStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedNodeExchangeStatus'
        params['Version'] = '2012-12-01'
        params[context + 'ReservedNodeId'] = input[:reserved_node_id].to_s unless input[:reserved_node_id].nil?
        params[context + 'ReservedNodeExchangeRequestId'] = input[:reserved_node_exchange_request_id].to_s unless input[:reserved_node_exchange_request_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReservedNodeOfferings
    class DescribeReservedNodeOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedNodeOfferings'
        params['Version'] = '2012-12-01'
        params[context + 'ReservedNodeOfferingId'] = input[:reserved_node_offering_id].to_s unless input[:reserved_node_offering_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeReservedNodes
    class DescribeReservedNodes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeReservedNodes'
        params['Version'] = '2012-12-01'
        params[context + 'ReservedNodeId'] = input[:reserved_node_id].to_s unless input[:reserved_node_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeResize
    class DescribeResize
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeResize'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeScheduledActions
    class DescribeScheduledActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeScheduledActions'
        params['Version'] = '2012-12-01'
        params[context + 'ScheduledActionName'] = input[:scheduled_action_name].to_s unless input[:scheduled_action_name].nil?
        params[context + 'TargetActionType'] = input[:target_action_type].to_s unless input[:target_action_type].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Active'] = input[:active].to_s unless input[:active].nil?
        ScheduledActionFilterList.build(input[:filters], params, context: context + 'Filters' + '.ScheduledActionFilter') unless input[:filters].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for ScheduledActionFilterList
    class ScheduledActionFilterList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ScheduledActionFilter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ScheduledActionFilter
    class ScheduledActionFilter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        ValueStringList.build(input[:values], params, context: context + 'Values' + '.item') unless input[:values].nil?
      end
    end

    # Operation Builder for DescribeSnapshotCopyGrants
    class DescribeSnapshotCopyGrants
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSnapshotCopyGrants'
        params['Version'] = '2012-12-01'
        params[context + 'SnapshotCopyGrantName'] = input[:snapshot_copy_grant_name].to_s unless input[:snapshot_copy_grant_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSnapshotSchedules
    class DescribeSnapshotSchedules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSnapshotSchedules'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'ScheduleIdentifier'] = input[:schedule_identifier].to_s unless input[:schedule_identifier].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeStorage
    class DescribeStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeStorage'
        params['Version'] = '2012-12-01'
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTableRestoreStatus
    class DescribeTableRestoreStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTableRestoreStatus'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'TableRestoreRequestId'] = input[:table_restore_request_id].to_s unless input[:table_restore_request_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
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
        params['Version'] = '2012-12-01'
        params[context + 'ResourceName'] = input[:resource_name].to_s unless input[:resource_name].nil?
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeUsageLimits
    class DescribeUsageLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeUsageLimits'
        params['Version'] = '2012-12-01'
        params[context + 'UsageLimitId'] = input[:usage_limit_id].to_s unless input[:usage_limit_id].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'FeatureType'] = input[:feature_type].to_s unless input[:feature_type].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.TagKey') unless input[:tag_keys].nil?
        TagValueList.build(input[:tag_values], params, context: context + 'TagValues' + '.TagValue') unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableLogging
    class DisableLogging
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableLogging'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableSnapshotCopy
    class DisableSnapshotCopy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableSnapshotCopy'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateDataShareConsumer
    class DisassociateDataShareConsumer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateDataShareConsumer'
        params['Version'] = '2012-12-01'
        params[context + 'DataShareArn'] = input[:data_share_arn].to_s unless input[:data_share_arn].nil?
        params[context + 'DisassociateEntireAccount'] = input[:disassociate_entire_account].to_s unless input[:disassociate_entire_account].nil?
        params[context + 'ConsumerArn'] = input[:consumer_arn].to_s unless input[:consumer_arn].nil?
        params[context + 'ConsumerRegion'] = input[:consumer_region].to_s unless input[:consumer_region].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableLogging
    class EnableLogging
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableLogging'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'BucketName'] = input[:bucket_name].to_s unless input[:bucket_name].nil?
        params[context + 'S3KeyPrefix'] = input[:s3_key_prefix].to_s unless input[:s3_key_prefix].nil?
        params[context + 'LogDestinationType'] = input[:log_destination_type].to_s unless input[:log_destination_type].nil?
        LogTypeList.build(input[:log_exports], params, context: context + 'LogExports' + '.member') unless input[:log_exports].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for LogTypeList
    class LogTypeList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for EnableSnapshotCopy
    class EnableSnapshotCopy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableSnapshotCopy'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'DestinationRegion'] = input[:destination_region].to_s unless input[:destination_region].nil?
        params[context + 'RetentionPeriod'] = input[:retention_period].to_s unless input[:retention_period].nil?
        params[context + 'SnapshotCopyGrantName'] = input[:snapshot_copy_grant_name].to_s unless input[:snapshot_copy_grant_name].nil?
        params[context + 'ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period].to_s unless input[:manual_snapshot_retention_period].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetClusterCredentials
    class GetClusterCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetClusterCredentials'
        params['Version'] = '2012-12-01'
        params[context + 'DbUser'] = input[:db_user].to_s unless input[:db_user].nil?
        params[context + 'DbName'] = input[:db_name].to_s unless input[:db_name].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'DurationSeconds'] = input[:duration_seconds].to_s unless input[:duration_seconds].nil?
        params[context + 'AutoCreate'] = input[:auto_create].to_s unless input[:auto_create].nil?
        DbGroupList.build(input[:db_groups], params, context: context + 'DbGroups' + '.DbGroup') unless input[:db_groups].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for DbGroupList
    class DbGroupList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetClusterCredentialsWithIAM
    class GetClusterCredentialsWithIAM
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetClusterCredentialsWithIAM'
        params['Version'] = '2012-12-01'
        params[context + 'DbName'] = input[:db_name].to_s unless input[:db_name].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'DurationSeconds'] = input[:duration_seconds].to_s unless input[:duration_seconds].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetReservedNodeExchangeConfigurationOptions
    class GetReservedNodeExchangeConfigurationOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetReservedNodeExchangeConfigurationOptions'
        params['Version'] = '2012-12-01'
        params[context + 'ActionType'] = input[:action_type].to_s unless input[:action_type].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetReservedNodeExchangeOfferings
    class GetReservedNodeExchangeOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetReservedNodeExchangeOfferings'
        params['Version'] = '2012-12-01'
        params[context + 'ReservedNodeId'] = input[:reserved_node_id].to_s unless input[:reserved_node_id].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyAquaConfiguration
    class ModifyAquaConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyAquaConfiguration'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'AquaConfigurationStatus'] = input[:aqua_configuration_status].to_s unless input[:aqua_configuration_status].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyAuthenticationProfile
    class ModifyAuthenticationProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyAuthenticationProfile'
        params['Version'] = '2012-12-01'
        params[context + 'AuthenticationProfileName'] = input[:authentication_profile_name].to_s unless input[:authentication_profile_name].nil?
        params[context + 'AuthenticationProfileContent'] = input[:authentication_profile_content].to_s unless input[:authentication_profile_content].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyCluster
    class ModifyCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyCluster'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'ClusterType'] = input[:cluster_type].to_s unless input[:cluster_type].nil?
        params[context + 'NodeType'] = input[:node_type].to_s unless input[:node_type].nil?
        params[context + 'NumberOfNodes'] = input[:number_of_nodes].to_s unless input[:number_of_nodes].nil?
        ClusterSecurityGroupNameList.build(input[:cluster_security_groups], params, context: context + 'ClusterSecurityGroups' + '.ClusterSecurityGroupName') unless input[:cluster_security_groups].nil?
        VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'MasterUserPassword'] = input[:master_user_password].to_s unless input[:master_user_password].nil?
        params[context + 'ClusterParameterGroupName'] = input[:cluster_parameter_group_name].to_s unless input[:cluster_parameter_group_name].nil?
        params[context + 'AutomatedSnapshotRetentionPeriod'] = input[:automated_snapshot_retention_period].to_s unless input[:automated_snapshot_retention_period].nil?
        params[context + 'ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period].to_s unless input[:manual_snapshot_retention_period].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'ClusterVersion'] = input[:cluster_version].to_s unless input[:cluster_version].nil?
        params[context + 'AllowVersionUpgrade'] = input[:allow_version_upgrade].to_s unless input[:allow_version_upgrade].nil?
        params[context + 'HsmClientCertificateIdentifier'] = input[:hsm_client_certificate_identifier].to_s unless input[:hsm_client_certificate_identifier].nil?
        params[context + 'HsmConfigurationIdentifier'] = input[:hsm_configuration_identifier].to_s unless input[:hsm_configuration_identifier].nil?
        params[context + 'NewClusterIdentifier'] = input[:new_cluster_identifier].to_s unless input[:new_cluster_identifier].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        params[context + 'ElasticIp'] = input[:elastic_ip].to_s unless input[:elastic_ip].nil?
        params[context + 'EnhancedVpcRouting'] = input[:enhanced_vpc_routing].to_s unless input[:enhanced_vpc_routing].nil?
        params[context + 'MaintenanceTrackName'] = input[:maintenance_track_name].to_s unless input[:maintenance_track_name].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'AvailabilityZoneRelocation'] = input[:availability_zone_relocation].to_s unless input[:availability_zone_relocation].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyClusterDbRevision
    class ModifyClusterDbRevision
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyClusterDbRevision'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'RevisionTarget'] = input[:revision_target].to_s unless input[:revision_target].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyClusterIamRoles
    class ModifyClusterIamRoles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyClusterIamRoles'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        IamRoleArnList.build(input[:add_iam_roles], params, context: context + 'AddIamRoles' + '.IamRoleArn') unless input[:add_iam_roles].nil?
        IamRoleArnList.build(input[:remove_iam_roles], params, context: context + 'RemoveIamRoles' + '.IamRoleArn') unless input[:remove_iam_roles].nil?
        params[context + 'DefaultIamRoleArn'] = input[:default_iam_role_arn].to_s unless input[:default_iam_role_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyClusterMaintenance
    class ModifyClusterMaintenance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyClusterMaintenance'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'DeferMaintenance'] = input[:defer_maintenance].to_s unless input[:defer_maintenance].nil?
        params[context + 'DeferMaintenanceIdentifier'] = input[:defer_maintenance_identifier].to_s unless input[:defer_maintenance_identifier].nil?
        params[context + 'DeferMaintenanceStartTime'] = Hearth::TimeHelper.to_date_time(input[:defer_maintenance_start_time]) unless input[:defer_maintenance_start_time].nil?
        params[context + 'DeferMaintenanceEndTime'] = Hearth::TimeHelper.to_date_time(input[:defer_maintenance_end_time]) unless input[:defer_maintenance_end_time].nil?
        params[context + 'DeferMaintenanceDuration'] = input[:defer_maintenance_duration].to_s unless input[:defer_maintenance_duration].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyClusterParameterGroup
    class ModifyClusterParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyClusterParameterGroup'
        params['Version'] = '2012-12-01'
        params[context + 'ParameterGroupName'] = input[:parameter_group_name].to_s unless input[:parameter_group_name].nil?
        ParametersList.build(input[:parameters], params, context: context + 'Parameters' + '.Parameter') unless input[:parameters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for ParametersList
    class ParametersList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Parameter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Parameter
    class Parameter
      def self.build(input, params, context: nil)
        params[context + 'ParameterName'] = input[:parameter_name].to_s unless input[:parameter_name].nil?
        params[context + 'ParameterValue'] = input[:parameter_value].to_s unless input[:parameter_value].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'Source'] = input[:source].to_s unless input[:source].nil?
        params[context + 'DataType'] = input[:data_type].to_s unless input[:data_type].nil?
        params[context + 'AllowedValues'] = input[:allowed_values].to_s unless input[:allowed_values].nil?
        params[context + 'ApplyType'] = input[:apply_type].to_s unless input[:apply_type].nil?
        params[context + 'IsModifiable'] = input[:is_modifiable].to_s unless input[:is_modifiable].nil?
        params[context + 'MinimumEngineVersion'] = input[:minimum_engine_version].to_s unless input[:minimum_engine_version].nil?
      end
    end

    # Operation Builder for ModifyClusterSnapshot
    class ModifyClusterSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyClusterSnapshot'
        params['Version'] = '2012-12-01'
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period].to_s unless input[:manual_snapshot_retention_period].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyClusterSnapshotSchedule
    class ModifyClusterSnapshotSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyClusterSnapshotSchedule'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'ScheduleIdentifier'] = input[:schedule_identifier].to_s unless input[:schedule_identifier].nil?
        params[context + 'DisassociateSchedule'] = input[:disassociate_schedule].to_s unless input[:disassociate_schedule].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyClusterSubnetGroup
    class ModifyClusterSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyClusterSubnetGroup'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterSubnetGroupName'] = input[:cluster_subnet_group_name].to_s unless input[:cluster_subnet_group_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        SubnetIdentifierList.build(input[:subnet_ids], params, context: context + 'SubnetIds' + '.SubnetIdentifier') unless input[:subnet_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyEndpointAccess
    class ModifyEndpointAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyEndpointAccess'
        params['Version'] = '2012-12-01'
        params[context + 'EndpointName'] = input[:endpoint_name].to_s unless input[:endpoint_name].nil?
        VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyEventSubscription
    class ModifyEventSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyEventSubscription'
        params['Version'] = '2012-12-01'
        params[context + 'SubscriptionName'] = input[:subscription_name].to_s unless input[:subscription_name].nil?
        params[context + 'SnsTopicArn'] = input[:sns_topic_arn].to_s unless input[:sns_topic_arn].nil?
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        SourceIdsList.build(input[:source_ids], params, context: context + 'SourceIds' + '.SourceId') unless input[:source_ids].nil?
        EventCategoriesList.build(input[:event_categories], params, context: context + 'EventCategories' + '.EventCategory') unless input[:event_categories].nil?
        params[context + 'Severity'] = input[:severity].to_s unless input[:severity].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyScheduledAction
    class ModifyScheduledAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyScheduledAction'
        params['Version'] = '2012-12-01'
        params[context + 'ScheduledActionName'] = input[:scheduled_action_name].to_s unless input[:scheduled_action_name].nil?
        ScheduledActionType.build(input[:target_action], params, context: context + 'TargetAction' + '.') unless input[:target_action].nil?
        params[context + 'Schedule'] = input[:schedule].to_s unless input[:schedule].nil?
        params[context + 'IamRole'] = input[:iam_role].to_s unless input[:iam_role].nil?
        params[context + 'ScheduledActionDescription'] = input[:scheduled_action_description].to_s unless input[:scheduled_action_description].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Enable'] = input[:enable].to_s unless input[:enable].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifySnapshotCopyRetentionPeriod
    class ModifySnapshotCopyRetentionPeriod
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifySnapshotCopyRetentionPeriod'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'RetentionPeriod'] = input[:retention_period].to_s unless input[:retention_period].nil?
        params[context + 'Manual'] = input[:manual].to_s unless input[:manual].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifySnapshotSchedule
    class ModifySnapshotSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifySnapshotSchedule'
        params['Version'] = '2012-12-01'
        params[context + 'ScheduleIdentifier'] = input[:schedule_identifier].to_s unless input[:schedule_identifier].nil?
        ScheduleDefinitionList.build(input[:schedule_definitions], params, context: context + 'ScheduleDefinitions' + '.ScheduleDefinition') unless input[:schedule_definitions].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ModifyUsageLimit
    class ModifyUsageLimit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ModifyUsageLimit'
        params['Version'] = '2012-12-01'
        params[context + 'UsageLimitId'] = input[:usage_limit_id].to_s unless input[:usage_limit_id].nil?
        params[context + 'Amount'] = input[:amount].to_s unless input[:amount].nil?
        params[context + 'BreachAction'] = input[:breach_action].to_s unless input[:breach_action].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PauseCluster
    class PauseCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PauseCluster'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PurchaseReservedNodeOffering
    class PurchaseReservedNodeOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PurchaseReservedNodeOffering'
        params['Version'] = '2012-12-01'
        params[context + 'ReservedNodeOfferingId'] = input[:reserved_node_offering_id].to_s unless input[:reserved_node_offering_id].nil?
        params[context + 'NodeCount'] = input[:node_count].to_s unless input[:node_count].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RebootCluster
    class RebootCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RebootCluster'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RejectDataShare
    class RejectDataShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RejectDataShare'
        params['Version'] = '2012-12-01'
        params[context + 'DataShareArn'] = input[:data_share_arn].to_s unless input[:data_share_arn].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResetClusterParameterGroup
    class ResetClusterParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetClusterParameterGroup'
        params['Version'] = '2012-12-01'
        params[context + 'ParameterGroupName'] = input[:parameter_group_name].to_s unless input[:parameter_group_name].nil?
        params[context + 'ResetAllParameters'] = input[:reset_all_parameters].to_s unless input[:reset_all_parameters].nil?
        ParametersList.build(input[:parameters], params, context: context + 'Parameters' + '.Parameter') unless input[:parameters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResizeCluster
    class ResizeCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResizeCluster'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'ClusterType'] = input[:cluster_type].to_s unless input[:cluster_type].nil?
        params[context + 'NodeType'] = input[:node_type].to_s unless input[:node_type].nil?
        params[context + 'NumberOfNodes'] = input[:number_of_nodes].to_s unless input[:number_of_nodes].nil?
        params[context + 'Classic'] = input[:classic].to_s unless input[:classic].nil?
        params[context + 'ReservedNodeId'] = input[:reserved_node_id].to_s unless input[:reserved_node_id].nil?
        params[context + 'TargetReservedNodeOfferingId'] = input[:target_reserved_node_offering_id].to_s unless input[:target_reserved_node_offering_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreFromClusterSnapshot
    class RestoreFromClusterSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreFromClusterSnapshot'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'SnapshotClusterIdentifier'] = input[:snapshot_cluster_identifier].to_s unless input[:snapshot_cluster_identifier].nil?
        params[context + 'Port'] = input[:port].to_s unless input[:port].nil?
        params[context + 'AvailabilityZone'] = input[:availability_zone].to_s unless input[:availability_zone].nil?
        params[context + 'AllowVersionUpgrade'] = input[:allow_version_upgrade].to_s unless input[:allow_version_upgrade].nil?
        params[context + 'ClusterSubnetGroupName'] = input[:cluster_subnet_group_name].to_s unless input[:cluster_subnet_group_name].nil?
        params[context + 'PubliclyAccessible'] = input[:publicly_accessible].to_s unless input[:publicly_accessible].nil?
        params[context + 'OwnerAccount'] = input[:owner_account].to_s unless input[:owner_account].nil?
        params[context + 'HsmClientCertificateIdentifier'] = input[:hsm_client_certificate_identifier].to_s unless input[:hsm_client_certificate_identifier].nil?
        params[context + 'HsmConfigurationIdentifier'] = input[:hsm_configuration_identifier].to_s unless input[:hsm_configuration_identifier].nil?
        params[context + 'ElasticIp'] = input[:elastic_ip].to_s unless input[:elastic_ip].nil?
        params[context + 'ClusterParameterGroupName'] = input[:cluster_parameter_group_name].to_s unless input[:cluster_parameter_group_name].nil?
        ClusterSecurityGroupNameList.build(input[:cluster_security_groups], params, context: context + 'ClusterSecurityGroups' + '.ClusterSecurityGroupName') unless input[:cluster_security_groups].nil?
        VpcSecurityGroupIdList.build(input[:vpc_security_group_ids], params, context: context + 'VpcSecurityGroupIds' + '.VpcSecurityGroupId') unless input[:vpc_security_group_ids].nil?
        params[context + 'PreferredMaintenanceWindow'] = input[:preferred_maintenance_window].to_s unless input[:preferred_maintenance_window].nil?
        params[context + 'AutomatedSnapshotRetentionPeriod'] = input[:automated_snapshot_retention_period].to_s unless input[:automated_snapshot_retention_period].nil?
        params[context + 'ManualSnapshotRetentionPeriod'] = input[:manual_snapshot_retention_period].to_s unless input[:manual_snapshot_retention_period].nil?
        params[context + 'KmsKeyId'] = input[:kms_key_id].to_s unless input[:kms_key_id].nil?
        params[context + 'NodeType'] = input[:node_type].to_s unless input[:node_type].nil?
        params[context + 'EnhancedVpcRouting'] = input[:enhanced_vpc_routing].to_s unless input[:enhanced_vpc_routing].nil?
        params[context + 'AdditionalInfo'] = input[:additional_info].to_s unless input[:additional_info].nil?
        IamRoleArnList.build(input[:iam_roles], params, context: context + 'IamRoles' + '.IamRoleArn') unless input[:iam_roles].nil?
        params[context + 'MaintenanceTrackName'] = input[:maintenance_track_name].to_s unless input[:maintenance_track_name].nil?
        params[context + 'SnapshotScheduleIdentifier'] = input[:snapshot_schedule_identifier].to_s unless input[:snapshot_schedule_identifier].nil?
        params[context + 'NumberOfNodes'] = input[:number_of_nodes].to_s unless input[:number_of_nodes].nil?
        params[context + 'AvailabilityZoneRelocation'] = input[:availability_zone_relocation].to_s unless input[:availability_zone_relocation].nil?
        params[context + 'AquaConfigurationStatus'] = input[:aqua_configuration_status].to_s unless input[:aqua_configuration_status].nil?
        params[context + 'DefaultIamRoleArn'] = input[:default_iam_role_arn].to_s unless input[:default_iam_role_arn].nil?
        params[context + 'ReservedNodeId'] = input[:reserved_node_id].to_s unless input[:reserved_node_id].nil?
        params[context + 'TargetReservedNodeOfferingId'] = input[:target_reserved_node_offering_id].to_s unless input[:target_reserved_node_offering_id].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestoreTableFromClusterSnapshot
    class RestoreTableFromClusterSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestoreTableFromClusterSnapshot'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'SourceDatabaseName'] = input[:source_database_name].to_s unless input[:source_database_name].nil?
        params[context + 'SourceSchemaName'] = input[:source_schema_name].to_s unless input[:source_schema_name].nil?
        params[context + 'SourceTableName'] = input[:source_table_name].to_s unless input[:source_table_name].nil?
        params[context + 'TargetDatabaseName'] = input[:target_database_name].to_s unless input[:target_database_name].nil?
        params[context + 'TargetSchemaName'] = input[:target_schema_name].to_s unless input[:target_schema_name].nil?
        params[context + 'NewTableName'] = input[:new_table_name].to_s unless input[:new_table_name].nil?
        params[context + 'EnableCaseSensitiveIdentifier'] = input[:enable_case_sensitive_identifier].to_s unless input[:enable_case_sensitive_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResumeCluster
    class ResumeCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResumeCluster'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RevokeClusterSecurityGroupIngress
    class RevokeClusterSecurityGroupIngress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RevokeClusterSecurityGroupIngress'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterSecurityGroupName'] = input[:cluster_security_group_name].to_s unless input[:cluster_security_group_name].nil?
        params[context + 'CIDRIP'] = input[:cidrip].to_s unless input[:cidrip].nil?
        params[context + 'EC2SecurityGroupName'] = input[:ec2_security_group_name].to_s unless input[:ec2_security_group_name].nil?
        params[context + 'EC2SecurityGroupOwnerId'] = input[:ec2_security_group_owner_id].to_s unless input[:ec2_security_group_owner_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RevokeEndpointAccess
    class RevokeEndpointAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RevokeEndpointAccess'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'Account'] = input[:account].to_s unless input[:account].nil?
        VpcIdentifierList.build(input[:vpc_ids], params, context: context + 'VpcIds' + '.VpcIdentifier') unless input[:vpc_ids].nil?
        params[context + 'Force'] = input[:force].to_s unless input[:force].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RevokeSnapshotAccess
    class RevokeSnapshotAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RevokeSnapshotAccess'
        params['Version'] = '2012-12-01'
        params[context + 'SnapshotIdentifier'] = input[:snapshot_identifier].to_s unless input[:snapshot_identifier].nil?
        params[context + 'SnapshotClusterIdentifier'] = input[:snapshot_cluster_identifier].to_s unless input[:snapshot_cluster_identifier].nil?
        params[context + 'AccountWithRestoreAccess'] = input[:account_with_restore_access].to_s unless input[:account_with_restore_access].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RotateEncryptionKey
    class RotateEncryptionKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RotateEncryptionKey'
        params['Version'] = '2012-12-01'
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdatePartnerStatus
    class UpdatePartnerStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdatePartnerStatus'
        params['Version'] = '2012-12-01'
        params[context + 'AccountId'] = input[:account_id].to_s unless input[:account_id].nil?
        params[context + 'ClusterIdentifier'] = input[:cluster_identifier].to_s unless input[:cluster_identifier].nil?
        params[context + 'DatabaseName'] = input[:database_name].to_s unless input[:database_name].nil?
        params[context + 'PartnerName'] = input[:partner_name].to_s unless input[:partner_name].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        params[context + 'StatusMessage'] = input[:status_message].to_s unless input[:status_message].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end
  end
end
