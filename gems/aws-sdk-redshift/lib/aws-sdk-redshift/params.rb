# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Redshift
  module Params

    module AcceptReservedNodeExchangeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptReservedNodeExchangeInput, context: context)
        type = Types::AcceptReservedNodeExchangeInput.new
        type.reserved_node_id = params[:reserved_node_id]
        type.target_reserved_node_offering_id = params[:target_reserved_node_offering_id]
        type
      end
    end

    module AcceptReservedNodeExchangeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptReservedNodeExchangeOutput, context: context)
        type = Types::AcceptReservedNodeExchangeOutput.new
        type.exchanged_reserved_node = ReservedNode.build(params[:exchanged_reserved_node], context: "#{context}[:exchanged_reserved_node]") unless params[:exchanged_reserved_node].nil?
        type
      end
    end

    module AccessToClusterDeniedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessToClusterDeniedFault, context: context)
        type = Types::AccessToClusterDeniedFault.new
        type.message = params[:message]
        type
      end
    end

    module AccessToSnapshotDeniedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessToSnapshotDeniedFault, context: context)
        type = Types::AccessToSnapshotDeniedFault.new
        type.message = params[:message]
        type
      end
    end

    module AccountAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAttribute, context: context)
        type = Types::AccountAttribute.new
        type.attribute_name = params[:attribute_name]
        type.attribute_values = AttributeValueList.build(params[:attribute_values], context: "#{context}[:attribute_values]") unless params[:attribute_values].nil?
        type
      end
    end

    module AccountWithRestoreAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountWithRestoreAccess, context: context)
        type = Types::AccountWithRestoreAccess.new
        type.account_id = params[:account_id]
        type.account_alias = params[:account_alias]
        type
      end
    end

    module AccountsWithRestoreAccessList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountWithRestoreAccess.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddPartnerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddPartnerInput, context: context)
        type = Types::AddPartnerInput.new
        type.account_id = params[:account_id]
        type.cluster_identifier = params[:cluster_identifier]
        type.database_name = params[:database_name]
        type.partner_name = params[:partner_name]
        type
      end
    end

    module AddPartnerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddPartnerOutput, context: context)
        type = Types::AddPartnerOutput.new
        type.database_name = params[:database_name]
        type.partner_name = params[:partner_name]
        type
      end
    end

    module AquaConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AquaConfiguration, context: context)
        type = Types::AquaConfiguration.new
        type.aqua_status = params[:aqua_status]
        type.aqua_configuration_status = params[:aqua_configuration_status]
        type
      end
    end

    module AssociateDataShareConsumerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDataShareConsumerInput, context: context)
        type = Types::AssociateDataShareConsumerInput.new
        type.data_share_arn = params[:data_share_arn]
        type.associate_entire_account = params[:associate_entire_account]
        type.consumer_arn = params[:consumer_arn]
        type.consumer_region = params[:consumer_region]
        type
      end
    end

    module AssociateDataShareConsumerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDataShareConsumerOutput, context: context)
        type = Types::AssociateDataShareConsumerOutput.new
        type.data_share_arn = params[:data_share_arn]
        type.producer_arn = params[:producer_arn]
        type.allow_publicly_accessible_consumers = params[:allow_publicly_accessible_consumers]
        type.data_share_associations = DataShareAssociationList.build(params[:data_share_associations], context: "#{context}[:data_share_associations]") unless params[:data_share_associations].nil?
        type.managed_by = params[:managed_by]
        type
      end
    end

    module AssociatedClusterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterAssociatedToSchedule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttributeValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeValueTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeValueTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeValueTarget, context: context)
        type = Types::AttributeValueTarget.new
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module AuthenticationProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationProfile, context: context)
        type = Types::AuthenticationProfile.new
        type.authentication_profile_name = params[:authentication_profile_name]
        type.authentication_profile_content = params[:authentication_profile_content]
        type
      end
    end

    module AuthenticationProfileAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationProfileAlreadyExistsFault, context: context)
        type = Types::AuthenticationProfileAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthenticationProfileList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuthenticationProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthenticationProfileNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationProfileNotFoundFault, context: context)
        type = Types::AuthenticationProfileNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthenticationProfileQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationProfileQuotaExceededFault, context: context)
        type = Types::AuthenticationProfileQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthorizationAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationAlreadyExistsFault, context: context)
        type = Types::AuthorizationAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthorizationNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationNotFoundFault, context: context)
        type = Types::AuthorizationNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthorizationQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationQuotaExceededFault, context: context)
        type = Types::AuthorizationQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthorizeClusterSecurityGroupIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeClusterSecurityGroupIngressInput, context: context)
        type = Types::AuthorizeClusterSecurityGroupIngressInput.new
        type.cluster_security_group_name = params[:cluster_security_group_name]
        type.cidrip = params[:cidrip]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type
      end
    end

    module AuthorizeClusterSecurityGroupIngressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeClusterSecurityGroupIngressOutput, context: context)
        type = Types::AuthorizeClusterSecurityGroupIngressOutput.new
        type.cluster_security_group = ClusterSecurityGroup.build(params[:cluster_security_group], context: "#{context}[:cluster_security_group]") unless params[:cluster_security_group].nil?
        type
      end
    end

    module AuthorizeDataShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeDataShareInput, context: context)
        type = Types::AuthorizeDataShareInput.new
        type.data_share_arn = params[:data_share_arn]
        type.consumer_identifier = params[:consumer_identifier]
        type
      end
    end

    module AuthorizeDataShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeDataShareOutput, context: context)
        type = Types::AuthorizeDataShareOutput.new
        type.data_share_arn = params[:data_share_arn]
        type.producer_arn = params[:producer_arn]
        type.allow_publicly_accessible_consumers = params[:allow_publicly_accessible_consumers]
        type.data_share_associations = DataShareAssociationList.build(params[:data_share_associations], context: "#{context}[:data_share_associations]") unless params[:data_share_associations].nil?
        type.managed_by = params[:managed_by]
        type
      end
    end

    module AuthorizeEndpointAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeEndpointAccessInput, context: context)
        type = Types::AuthorizeEndpointAccessInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.account = params[:account]
        type.vpc_ids = VpcIdentifierList.build(params[:vpc_ids], context: "#{context}[:vpc_ids]") unless params[:vpc_ids].nil?
        type
      end
    end

    module AuthorizeEndpointAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeEndpointAccessOutput, context: context)
        type = Types::AuthorizeEndpointAccessOutput.new
        type.grantor = params[:grantor]
        type.grantee = params[:grantee]
        type.cluster_identifier = params[:cluster_identifier]
        type.authorize_time = params[:authorize_time]
        type.cluster_status = params[:cluster_status]
        type.status = params[:status]
        type.allowed_all_vp_cs = params[:allowed_all_vp_cs]
        type.allowed_vp_cs = VpcIdentifierList.build(params[:allowed_vp_cs], context: "#{context}[:allowed_vp_cs]") unless params[:allowed_vp_cs].nil?
        type.endpoint_count = params[:endpoint_count]
        type
      end
    end

    module AuthorizeSnapshotAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeSnapshotAccessInput, context: context)
        type = Types::AuthorizeSnapshotAccessInput.new
        type.snapshot_identifier = params[:snapshot_identifier]
        type.snapshot_cluster_identifier = params[:snapshot_cluster_identifier]
        type.account_with_restore_access = params[:account_with_restore_access]
        type
      end
    end

    module AuthorizeSnapshotAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeSnapshotAccessOutput, context: context)
        type = Types::AuthorizeSnapshotAccessOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module AvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZone, context: context)
        type = Types::AvailabilityZone.new
        type.name = params[:name]
        type.supported_platforms = SupportedPlatformsList.build(params[:supported_platforms], context: "#{context}[:supported_platforms]") unless params[:supported_platforms].nil?
        type
      end
    end

    module AvailabilityZoneList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailabilityZone.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDeleteClusterSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteClusterSnapshotsInput, context: context)
        type = Types::BatchDeleteClusterSnapshotsInput.new
        type.identifiers = DeleteClusterSnapshotMessageList.build(params[:identifiers], context: "#{context}[:identifiers]") unless params[:identifiers].nil?
        type
      end
    end

    module BatchDeleteClusterSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteClusterSnapshotsOutput, context: context)
        type = Types::BatchDeleteClusterSnapshotsOutput.new
        type.resources = SnapshotIdentifierList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.errors = BatchSnapshotOperationErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDeleteRequestSizeExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteRequestSizeExceededFault, context: context)
        type = Types::BatchDeleteRequestSizeExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module BatchModifyClusterSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchModifyClusterSnapshotsInput, context: context)
        type = Types::BatchModifyClusterSnapshotsInput.new
        type.snapshot_identifier_list = SnapshotIdentifierList.build(params[:snapshot_identifier_list], context: "#{context}[:snapshot_identifier_list]") unless params[:snapshot_identifier_list].nil?
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.force = params[:force]
        type
      end
    end

    module BatchModifyClusterSnapshotsLimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchModifyClusterSnapshotsLimitExceededFault, context: context)
        type = Types::BatchModifyClusterSnapshotsLimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module BatchModifyClusterSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchModifyClusterSnapshotsOutput, context: context)
        type = Types::BatchModifyClusterSnapshotsOutput.new
        type.resources = SnapshotIdentifierList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.errors = BatchSnapshotOperationErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchSnapshotOperationErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnapshotErrorMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchSnapshotOperationErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnapshotErrorMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BucketNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketNotFoundFault, context: context)
        type = Types::BucketNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CancelResizeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelResizeInput, context: context)
        type = Types::CancelResizeInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module CancelResizeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelResizeOutput, context: context)
        type = Types::CancelResizeOutput.new
        type.target_node_type = params[:target_node_type]
        type.target_number_of_nodes = params[:target_number_of_nodes]
        type.target_cluster_type = params[:target_cluster_type]
        type.status = params[:status]
        type.import_tables_completed = ImportTablesCompleted.build(params[:import_tables_completed], context: "#{context}[:import_tables_completed]") unless params[:import_tables_completed].nil?
        type.import_tables_in_progress = ImportTablesInProgress.build(params[:import_tables_in_progress], context: "#{context}[:import_tables_in_progress]") unless params[:import_tables_in_progress].nil?
        type.import_tables_not_started = ImportTablesNotStarted.build(params[:import_tables_not_started], context: "#{context}[:import_tables_not_started]") unless params[:import_tables_not_started].nil?
        type.avg_resize_rate_in_mega_bytes_per_second = params[:avg_resize_rate_in_mega_bytes_per_second]
        type.total_resize_data_in_mega_bytes = params[:total_resize_data_in_mega_bytes]
        type.progress_in_mega_bytes = params[:progress_in_mega_bytes]
        type.elapsed_time_in_seconds = params[:elapsed_time_in_seconds]
        type.estimated_time_to_completion_in_seconds = params[:estimated_time_to_completion_in_seconds]
        type.resize_type = params[:resize_type]
        type.message = params[:message]
        type.target_encryption_type = params[:target_encryption_type]
        type.data_transfer_progress_percent = params[:data_transfer_progress_percent]
        type
      end
    end

    module Cluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cluster, context: context)
        type = Types::Cluster.new
        type.cluster_identifier = params[:cluster_identifier]
        type.node_type = params[:node_type]
        type.cluster_status = params[:cluster_status]
        type.cluster_availability_status = params[:cluster_availability_status]
        type.modify_status = params[:modify_status]
        type.master_username = params[:master_username]
        type.db_name = params[:db_name]
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type.cluster_create_time = params[:cluster_create_time]
        type.automated_snapshot_retention_period = params[:automated_snapshot_retention_period]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.cluster_security_groups = ClusterSecurityGroupMembershipList.build(params[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless params[:cluster_security_groups].nil?
        type.vpc_security_groups = VpcSecurityGroupMembershipList.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.cluster_parameter_groups = ClusterParameterGroupStatusList.build(params[:cluster_parameter_groups], context: "#{context}[:cluster_parameter_groups]") unless params[:cluster_parameter_groups].nil?
        type.cluster_subnet_group_name = params[:cluster_subnet_group_name]
        type.vpc_id = params[:vpc_id]
        type.availability_zone = params[:availability_zone]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.pending_modified_values = PendingModifiedValues.build(params[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless params[:pending_modified_values].nil?
        type.cluster_version = params[:cluster_version]
        type.allow_version_upgrade = params[:allow_version_upgrade]
        type.number_of_nodes = params[:number_of_nodes]
        type.publicly_accessible = params[:publicly_accessible]
        type.encrypted = params[:encrypted]
        type.restore_status = RestoreStatus.build(params[:restore_status], context: "#{context}[:restore_status]") unless params[:restore_status].nil?
        type.data_transfer_progress = DataTransferProgress.build(params[:data_transfer_progress], context: "#{context}[:data_transfer_progress]") unless params[:data_transfer_progress].nil?
        type.hsm_status = HsmStatus.build(params[:hsm_status], context: "#{context}[:hsm_status]") unless params[:hsm_status].nil?
        type.cluster_snapshot_copy_status = ClusterSnapshotCopyStatus.build(params[:cluster_snapshot_copy_status], context: "#{context}[:cluster_snapshot_copy_status]") unless params[:cluster_snapshot_copy_status].nil?
        type.cluster_public_key = params[:cluster_public_key]
        type.cluster_nodes = ClusterNodesList.build(params[:cluster_nodes], context: "#{context}[:cluster_nodes]") unless params[:cluster_nodes].nil?
        type.elastic_ip_status = ElasticIpStatus.build(params[:elastic_ip_status], context: "#{context}[:elastic_ip_status]") unless params[:elastic_ip_status].nil?
        type.cluster_revision_number = params[:cluster_revision_number]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type.enhanced_vpc_routing = params[:enhanced_vpc_routing]
        type.iam_roles = ClusterIamRoleList.build(params[:iam_roles], context: "#{context}[:iam_roles]") unless params[:iam_roles].nil?
        type.pending_actions = PendingActionsList.build(params[:pending_actions], context: "#{context}[:pending_actions]") unless params[:pending_actions].nil?
        type.maintenance_track_name = params[:maintenance_track_name]
        type.elastic_resize_number_of_node_options = params[:elastic_resize_number_of_node_options]
        type.deferred_maintenance_windows = DeferredMaintenanceWindowsList.build(params[:deferred_maintenance_windows], context: "#{context}[:deferred_maintenance_windows]") unless params[:deferred_maintenance_windows].nil?
        type.snapshot_schedule_identifier = params[:snapshot_schedule_identifier]
        type.snapshot_schedule_state = params[:snapshot_schedule_state]
        type.expected_next_snapshot_schedule_time = params[:expected_next_snapshot_schedule_time]
        type.expected_next_snapshot_schedule_time_status = params[:expected_next_snapshot_schedule_time_status]
        type.next_maintenance_window_start_time = params[:next_maintenance_window_start_time]
        type.resize_info = ResizeInfo.build(params[:resize_info], context: "#{context}[:resize_info]") unless params[:resize_info].nil?
        type.availability_zone_relocation_status = params[:availability_zone_relocation_status]
        type.cluster_namespace_arn = params[:cluster_namespace_arn]
        type.total_storage_capacity_in_mega_bytes = params[:total_storage_capacity_in_mega_bytes]
        type.aqua_configuration = AquaConfiguration.build(params[:aqua_configuration], context: "#{context}[:aqua_configuration]") unless params[:aqua_configuration].nil?
        type.default_iam_role_arn = params[:default_iam_role_arn]
        type.reserved_node_exchange_status = ReservedNodeExchangeStatus.build(params[:reserved_node_exchange_status], context: "#{context}[:reserved_node_exchange_status]") unless params[:reserved_node_exchange_status].nil?
        type
      end
    end

    module ClusterAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterAlreadyExistsFault, context: context)
        type = Types::ClusterAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterAssociatedToSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterAssociatedToSchedule, context: context)
        type = Types::ClusterAssociatedToSchedule.new
        type.cluster_identifier = params[:cluster_identifier]
        type.schedule_association_state = params[:schedule_association_state]
        type
      end
    end

    module ClusterDbRevision
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterDbRevision, context: context)
        type = Types::ClusterDbRevision.new
        type.cluster_identifier = params[:cluster_identifier]
        type.current_database_revision = params[:current_database_revision]
        type.database_revision_release_date = params[:database_revision_release_date]
        type.revision_targets = RevisionTargetsList.build(params[:revision_targets], context: "#{context}[:revision_targets]") unless params[:revision_targets].nil?
        type
      end
    end

    module ClusterDbRevisionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterDbRevision.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterIamRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterIamRole, context: context)
        type = Types::ClusterIamRole.new
        type.iam_role_arn = params[:iam_role_arn]
        type.apply_status = params[:apply_status]
        type
      end
    end

    module ClusterIamRoleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterIamRole.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterNode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterNode, context: context)
        type = Types::ClusterNode.new
        type.node_role = params[:node_role]
        type.private_ip_address = params[:private_ip_address]
        type.public_ip_address = params[:public_ip_address]
        type
      end
    end

    module ClusterNodesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterNode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterNotFoundFault, context: context)
        type = Types::ClusterNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterOnLatestRevisionFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterOnLatestRevisionFault, context: context)
        type = Types::ClusterOnLatestRevisionFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterParameterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterParameterGroup, context: context)
        type = Types::ClusterParameterGroup.new
        type.parameter_group_name = params[:parameter_group_name]
        type.parameter_group_family = params[:parameter_group_family]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ClusterParameterGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterParameterGroupAlreadyExistsFault, context: context)
        type = Types::ClusterParameterGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterParameterGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterParameterGroupNotFoundFault, context: context)
        type = Types::ClusterParameterGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterParameterGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterParameterGroupQuotaExceededFault, context: context)
        type = Types::ClusterParameterGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterParameterGroupStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterParameterGroupStatus, context: context)
        type = Types::ClusterParameterGroupStatus.new
        type.parameter_group_name = params[:parameter_group_name]
        type.parameter_apply_status = params[:parameter_apply_status]
        type.cluster_parameter_status_list = ClusterParameterStatusList.build(params[:cluster_parameter_status_list], context: "#{context}[:cluster_parameter_status_list]") unless params[:cluster_parameter_status_list].nil?
        type
      end
    end

    module ClusterParameterGroupStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterParameterGroupStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterParameterStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterParameterStatus, context: context)
        type = Types::ClusterParameterStatus.new
        type.parameter_name = params[:parameter_name]
        type.parameter_apply_status = params[:parameter_apply_status]
        type.parameter_apply_error_description = params[:parameter_apply_error_description]
        type
      end
    end

    module ClusterParameterStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterParameterStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterQuotaExceededFault, context: context)
        type = Types::ClusterQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSecurityGroup, context: context)
        type = Types::ClusterSecurityGroup.new
        type.cluster_security_group_name = params[:cluster_security_group_name]
        type.description = params[:description]
        type.ec2_security_groups = EC2SecurityGroupList.build(params[:ec2_security_groups], context: "#{context}[:ec2_security_groups]") unless params[:ec2_security_groups].nil?
        type.ip_ranges = IPRangeList.build(params[:ip_ranges], context: "#{context}[:ip_ranges]") unless params[:ip_ranges].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ClusterSecurityGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSecurityGroupAlreadyExistsFault, context: context)
        type = Types::ClusterSecurityGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSecurityGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSecurityGroupMembership, context: context)
        type = Types::ClusterSecurityGroupMembership.new
        type.cluster_security_group_name = params[:cluster_security_group_name]
        type.status = params[:status]
        type
      end
    end

    module ClusterSecurityGroupMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterSecurityGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterSecurityGroupNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClusterSecurityGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSecurityGroupNotFoundFault, context: context)
        type = Types::ClusterSecurityGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSecurityGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSecurityGroupQuotaExceededFault, context: context)
        type = Types::ClusterSecurityGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterSecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterSnapshotAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSnapshotAlreadyExistsFault, context: context)
        type = Types::ClusterSnapshotAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSnapshotCopyStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSnapshotCopyStatus, context: context)
        type = Types::ClusterSnapshotCopyStatus.new
        type.destination_region = params[:destination_region]
        type.retention_period = params[:retention_period]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.snapshot_copy_grant_name = params[:snapshot_copy_grant_name]
        type
      end
    end

    module ClusterSnapshotNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSnapshotNotFoundFault, context: context)
        type = Types::ClusterSnapshotNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSnapshotQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSnapshotQuotaExceededFault, context: context)
        type = Types::ClusterSnapshotQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSubnetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSubnetGroup, context: context)
        type = Types::ClusterSubnetGroup.new
        type.cluster_subnet_group_name = params[:cluster_subnet_group_name]
        type.description = params[:description]
        type.vpc_id = params[:vpc_id]
        type.subnet_group_status = params[:subnet_group_status]
        type.subnets = SubnetList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ClusterSubnetGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSubnetGroupAlreadyExistsFault, context: context)
        type = Types::ClusterSubnetGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSubnetGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSubnetGroupNotFoundFault, context: context)
        type = Types::ClusterSubnetGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSubnetGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSubnetGroupQuotaExceededFault, context: context)
        type = Types::ClusterSubnetGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSubnetGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterSubnetGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterSubnetQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSubnetQuotaExceededFault, context: context)
        type = Types::ClusterSubnetQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterVersion, context: context)
        type = Types::ClusterVersion.new
        type.cluster_version = params[:cluster_version]
        type.cluster_parameter_group_family = params[:cluster_parameter_group_family]
        type.description = params[:description]
        type
      end
    end

    module ClusterVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CopyClusterSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyClusterSnapshotInput, context: context)
        type = Types::CopyClusterSnapshotInput.new
        type.source_snapshot_identifier = params[:source_snapshot_identifier]
        type.source_snapshot_cluster_identifier = params[:source_snapshot_cluster_identifier]
        type.target_snapshot_identifier = params[:target_snapshot_identifier]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type
      end
    end

    module CopyClusterSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyClusterSnapshotOutput, context: context)
        type = Types::CopyClusterSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module CopyToRegionDisabledFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyToRegionDisabledFault, context: context)
        type = Types::CopyToRegionDisabledFault.new
        type.message = params[:message]
        type
      end
    end

    module CreateAuthenticationProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuthenticationProfileInput, context: context)
        type = Types::CreateAuthenticationProfileInput.new
        type.authentication_profile_name = params[:authentication_profile_name]
        type.authentication_profile_content = params[:authentication_profile_content]
        type
      end
    end

    module CreateAuthenticationProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuthenticationProfileOutput, context: context)
        type = Types::CreateAuthenticationProfileOutput.new
        type.authentication_profile_name = params[:authentication_profile_name]
        type.authentication_profile_content = params[:authentication_profile_content]
        type
      end
    end

    module CreateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterInput, context: context)
        type = Types::CreateClusterInput.new
        type.db_name = params[:db_name]
        type.cluster_identifier = params[:cluster_identifier]
        type.cluster_type = params[:cluster_type]
        type.node_type = params[:node_type]
        type.master_username = params[:master_username]
        type.master_user_password = params[:master_user_password]
        type.cluster_security_groups = ClusterSecurityGroupNameList.build(params[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless params[:cluster_security_groups].nil?
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.cluster_subnet_group_name = params[:cluster_subnet_group_name]
        type.availability_zone = params[:availability_zone]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.cluster_parameter_group_name = params[:cluster_parameter_group_name]
        type.automated_snapshot_retention_period = params[:automated_snapshot_retention_period]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.port = params[:port]
        type.cluster_version = params[:cluster_version]
        type.allow_version_upgrade = params[:allow_version_upgrade]
        type.number_of_nodes = params[:number_of_nodes]
        type.publicly_accessible = params[:publicly_accessible]
        type.encrypted = params[:encrypted]
        type.hsm_client_certificate_identifier = params[:hsm_client_certificate_identifier]
        type.hsm_configuration_identifier = params[:hsm_configuration_identifier]
        type.elastic_ip = params[:elastic_ip]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type.enhanced_vpc_routing = params[:enhanced_vpc_routing]
        type.additional_info = params[:additional_info]
        type.iam_roles = IamRoleArnList.build(params[:iam_roles], context: "#{context}[:iam_roles]") unless params[:iam_roles].nil?
        type.maintenance_track_name = params[:maintenance_track_name]
        type.snapshot_schedule_identifier = params[:snapshot_schedule_identifier]
        type.availability_zone_relocation = params[:availability_zone_relocation]
        type.aqua_configuration_status = params[:aqua_configuration_status]
        type.default_iam_role_arn = params[:default_iam_role_arn]
        type.load_sample_data = params[:load_sample_data]
        type
      end
    end

    module CreateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterOutput, context: context)
        type = Types::CreateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module CreateClusterParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterParameterGroupInput, context: context)
        type = Types::CreateClusterParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.parameter_group_family = params[:parameter_group_family]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateClusterParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterParameterGroupOutput, context: context)
        type = Types::CreateClusterParameterGroupOutput.new
        type.cluster_parameter_group = ClusterParameterGroup.build(params[:cluster_parameter_group], context: "#{context}[:cluster_parameter_group]") unless params[:cluster_parameter_group].nil?
        type
      end
    end

    module CreateClusterSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterSecurityGroupInput, context: context)
        type = Types::CreateClusterSecurityGroupInput.new
        type.cluster_security_group_name = params[:cluster_security_group_name]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateClusterSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterSecurityGroupOutput, context: context)
        type = Types::CreateClusterSecurityGroupOutput.new
        type.cluster_security_group = ClusterSecurityGroup.build(params[:cluster_security_group], context: "#{context}[:cluster_security_group]") unless params[:cluster_security_group].nil?
        type
      end
    end

    module CreateClusterSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterSnapshotInput, context: context)
        type = Types::CreateClusterSnapshotInput.new
        type.snapshot_identifier = params[:snapshot_identifier]
        type.cluster_identifier = params[:cluster_identifier]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateClusterSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterSnapshotOutput, context: context)
        type = Types::CreateClusterSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module CreateClusterSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterSubnetGroupInput, context: context)
        type = Types::CreateClusterSubnetGroupInput.new
        type.cluster_subnet_group_name = params[:cluster_subnet_group_name]
        type.description = params[:description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateClusterSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterSubnetGroupOutput, context: context)
        type = Types::CreateClusterSubnetGroupOutput.new
        type.cluster_subnet_group = ClusterSubnetGroup.build(params[:cluster_subnet_group], context: "#{context}[:cluster_subnet_group]") unless params[:cluster_subnet_group].nil?
        type
      end
    end

    module CreateEndpointAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointAccessInput, context: context)
        type = Types::CreateEndpointAccessInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.resource_owner = params[:resource_owner]
        type.endpoint_name = params[:endpoint_name]
        type.subnet_group_name = params[:subnet_group_name]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type
      end
    end

    module CreateEndpointAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointAccessOutput, context: context)
        type = Types::CreateEndpointAccessOutput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.resource_owner = params[:resource_owner]
        type.subnet_group_name = params[:subnet_group_name]
        type.endpoint_status = params[:endpoint_status]
        type.endpoint_name = params[:endpoint_name]
        type.endpoint_create_time = params[:endpoint_create_time]
        type.port = params[:port]
        type.address = params[:address]
        type.vpc_security_groups = VpcSecurityGroupMembershipList.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.vpc_endpoint = VpcEndpoint.build(params[:vpc_endpoint], context: "#{context}[:vpc_endpoint]") unless params[:vpc_endpoint].nil?
        type
      end
    end

    module CreateEventSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventSubscriptionInput, context: context)
        type = Types::CreateEventSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.source_type = params[:source_type]
        type.source_ids = SourceIdsList.build(params[:source_ids], context: "#{context}[:source_ids]") unless params[:source_ids].nil?
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.severity = params[:severity]
        type.enabled = params[:enabled]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEventSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventSubscriptionOutput, context: context)
        type = Types::CreateEventSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module CreateHsmClientCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHsmClientCertificateInput, context: context)
        type = Types::CreateHsmClientCertificateInput.new
        type.hsm_client_certificate_identifier = params[:hsm_client_certificate_identifier]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateHsmClientCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHsmClientCertificateOutput, context: context)
        type = Types::CreateHsmClientCertificateOutput.new
        type.hsm_client_certificate = HsmClientCertificate.build(params[:hsm_client_certificate], context: "#{context}[:hsm_client_certificate]") unless params[:hsm_client_certificate].nil?
        type
      end
    end

    module CreateHsmConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHsmConfigurationInput, context: context)
        type = Types::CreateHsmConfigurationInput.new
        type.hsm_configuration_identifier = params[:hsm_configuration_identifier]
        type.description = params[:description]
        type.hsm_ip_address = params[:hsm_ip_address]
        type.hsm_partition_name = params[:hsm_partition_name]
        type.hsm_partition_password = params[:hsm_partition_password]
        type.hsm_server_public_certificate = params[:hsm_server_public_certificate]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateHsmConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHsmConfigurationOutput, context: context)
        type = Types::CreateHsmConfigurationOutput.new
        type.hsm_configuration = HsmConfiguration.build(params[:hsm_configuration], context: "#{context}[:hsm_configuration]") unless params[:hsm_configuration].nil?
        type
      end
    end

    module CreateScheduledActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScheduledActionInput, context: context)
        type = Types::CreateScheduledActionInput.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type.target_action = ScheduledActionType.build(params[:target_action], context: "#{context}[:target_action]") unless params[:target_action].nil?
        type.schedule = params[:schedule]
        type.iam_role = params[:iam_role]
        type.scheduled_action_description = params[:scheduled_action_description]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.enable = params[:enable]
        type
      end
    end

    module CreateScheduledActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScheduledActionOutput, context: context)
        type = Types::CreateScheduledActionOutput.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type.target_action = ScheduledActionType.build(params[:target_action], context: "#{context}[:target_action]") unless params[:target_action].nil?
        type.schedule = params[:schedule]
        type.iam_role = params[:iam_role]
        type.scheduled_action_description = params[:scheduled_action_description]
        type.state = params[:state]
        type.next_invocations = ScheduledActionTimeList.build(params[:next_invocations], context: "#{context}[:next_invocations]") unless params[:next_invocations].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module CreateSnapshotCopyGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotCopyGrantInput, context: context)
        type = Types::CreateSnapshotCopyGrantInput.new
        type.snapshot_copy_grant_name = params[:snapshot_copy_grant_name]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSnapshotCopyGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotCopyGrantOutput, context: context)
        type = Types::CreateSnapshotCopyGrantOutput.new
        type.snapshot_copy_grant = SnapshotCopyGrant.build(params[:snapshot_copy_grant], context: "#{context}[:snapshot_copy_grant]") unless params[:snapshot_copy_grant].nil?
        type
      end
    end

    module CreateSnapshotScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotScheduleInput, context: context)
        type = Types::CreateSnapshotScheduleInput.new
        type.schedule_definitions = ScheduleDefinitionList.build(params[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless params[:schedule_definitions].nil?
        type.schedule_identifier = params[:schedule_identifier]
        type.schedule_description = params[:schedule_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.dry_run = params[:dry_run]
        type.next_invocations = params[:next_invocations]
        type
      end
    end

    module CreateSnapshotScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotScheduleOutput, context: context)
        type = Types::CreateSnapshotScheduleOutput.new
        type.schedule_definitions = ScheduleDefinitionList.build(params[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless params[:schedule_definitions].nil?
        type.schedule_identifier = params[:schedule_identifier]
        type.schedule_description = params[:schedule_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_invocations = ScheduledSnapshotTimeList.build(params[:next_invocations], context: "#{context}[:next_invocations]") unless params[:next_invocations].nil?
        type.associated_cluster_count = params[:associated_cluster_count]
        type.associated_clusters = AssociatedClusterList.build(params[:associated_clusters], context: "#{context}[:associated_clusters]") unless params[:associated_clusters].nil?
        type
      end
    end

    module CreateTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsInput, context: context)
        type = Types::CreateTagsInput.new
        type.resource_name = params[:resource_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsOutput, context: context)
        type = Types::CreateTagsOutput.new
        type
      end
    end

    module CreateUsageLimitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUsageLimitInput, context: context)
        type = Types::CreateUsageLimitInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.feature_type = params[:feature_type]
        type.limit_type = params[:limit_type]
        type.amount = params[:amount]
        type.period = params[:period]
        type.breach_action = params[:breach_action]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUsageLimitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUsageLimitOutput, context: context)
        type = Types::CreateUsageLimitOutput.new
        type.usage_limit_id = params[:usage_limit_id]
        type.cluster_identifier = params[:cluster_identifier]
        type.feature_type = params[:feature_type]
        type.limit_type = params[:limit_type]
        type.amount = params[:amount]
        type.period = params[:period]
        type.breach_action = params[:breach_action]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DataShare
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataShare, context: context)
        type = Types::DataShare.new
        type.data_share_arn = params[:data_share_arn]
        type.producer_arn = params[:producer_arn]
        type.allow_publicly_accessible_consumers = params[:allow_publicly_accessible_consumers]
        type.data_share_associations = DataShareAssociationList.build(params[:data_share_associations], context: "#{context}[:data_share_associations]") unless params[:data_share_associations].nil?
        type.managed_by = params[:managed_by]
        type
      end
    end

    module DataShareAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataShareAssociation, context: context)
        type = Types::DataShareAssociation.new
        type.consumer_identifier = params[:consumer_identifier]
        type.status = params[:status]
        type.consumer_region = params[:consumer_region]
        type.created_date = params[:created_date]
        type.status_change_date = params[:status_change_date]
        type
      end
    end

    module DataShareAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataShareAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataShareList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataShare.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataTransferProgress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataTransferProgress, context: context)
        type = Types::DataTransferProgress.new
        type.status = params[:status]
        type.current_rate_in_mega_bytes_per_second = params[:current_rate_in_mega_bytes_per_second]
        type.total_data_in_mega_bytes = params[:total_data_in_mega_bytes]
        type.data_transferred_in_mega_bytes = params[:data_transferred_in_mega_bytes]
        type.estimated_time_to_completion_in_seconds = params[:estimated_time_to_completion_in_seconds]
        type.elapsed_time_in_seconds = params[:elapsed_time_in_seconds]
        type
      end
    end

    module DbGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeauthorizeDataShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeauthorizeDataShareInput, context: context)
        type = Types::DeauthorizeDataShareInput.new
        type.data_share_arn = params[:data_share_arn]
        type.consumer_identifier = params[:consumer_identifier]
        type
      end
    end

    module DeauthorizeDataShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeauthorizeDataShareOutput, context: context)
        type = Types::DeauthorizeDataShareOutput.new
        type.data_share_arn = params[:data_share_arn]
        type.producer_arn = params[:producer_arn]
        type.allow_publicly_accessible_consumers = params[:allow_publicly_accessible_consumers]
        type.data_share_associations = DataShareAssociationList.build(params[:data_share_associations], context: "#{context}[:data_share_associations]") unless params[:data_share_associations].nil?
        type.managed_by = params[:managed_by]
        type
      end
    end

    module DefaultClusterParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultClusterParameters, context: context)
        type = Types::DefaultClusterParameters.new
        type.parameter_group_family = params[:parameter_group_family]
        type.marker = params[:marker]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module DeferredMaintenanceWindow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeferredMaintenanceWindow, context: context)
        type = Types::DeferredMaintenanceWindow.new
        type.defer_maintenance_identifier = params[:defer_maintenance_identifier]
        type.defer_maintenance_start_time = params[:defer_maintenance_start_time]
        type.defer_maintenance_end_time = params[:defer_maintenance_end_time]
        type
      end
    end

    module DeferredMaintenanceWindowsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeferredMaintenanceWindow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAuthenticationProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAuthenticationProfileInput, context: context)
        type = Types::DeleteAuthenticationProfileInput.new
        type.authentication_profile_name = params[:authentication_profile_name]
        type
      end
    end

    module DeleteAuthenticationProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAuthenticationProfileOutput, context: context)
        type = Types::DeleteAuthenticationProfileOutput.new
        type.authentication_profile_name = params[:authentication_profile_name]
        type
      end
    end

    module DeleteClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterInput, context: context)
        type = Types::DeleteClusterInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.skip_final_cluster_snapshot = params[:skip_final_cluster_snapshot]
        type.final_cluster_snapshot_identifier = params[:final_cluster_snapshot_identifier]
        type.final_cluster_snapshot_retention_period = params[:final_cluster_snapshot_retention_period]
        type
      end
    end

    module DeleteClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterOutput, context: context)
        type = Types::DeleteClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DeleteClusterParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterParameterGroupInput, context: context)
        type = Types::DeleteClusterParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type
      end
    end

    module DeleteClusterParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterParameterGroupOutput, context: context)
        type = Types::DeleteClusterParameterGroupOutput.new
        type
      end
    end

    module DeleteClusterSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterSecurityGroupInput, context: context)
        type = Types::DeleteClusterSecurityGroupInput.new
        type.cluster_security_group_name = params[:cluster_security_group_name]
        type
      end
    end

    module DeleteClusterSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterSecurityGroupOutput, context: context)
        type = Types::DeleteClusterSecurityGroupOutput.new
        type
      end
    end

    module DeleteClusterSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterSnapshotInput, context: context)
        type = Types::DeleteClusterSnapshotInput.new
        type.snapshot_identifier = params[:snapshot_identifier]
        type.snapshot_cluster_identifier = params[:snapshot_cluster_identifier]
        type
      end
    end

    module DeleteClusterSnapshotMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterSnapshotMessage, context: context)
        type = Types::DeleteClusterSnapshotMessage.new
        type.snapshot_identifier = params[:snapshot_identifier]
        type.snapshot_cluster_identifier = params[:snapshot_cluster_identifier]
        type
      end
    end

    module DeleteClusterSnapshotMessageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeleteClusterSnapshotMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteClusterSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterSnapshotOutput, context: context)
        type = Types::DeleteClusterSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module DeleteClusterSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterSubnetGroupInput, context: context)
        type = Types::DeleteClusterSubnetGroupInput.new
        type.cluster_subnet_group_name = params[:cluster_subnet_group_name]
        type
      end
    end

    module DeleteClusterSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterSubnetGroupOutput, context: context)
        type = Types::DeleteClusterSubnetGroupOutput.new
        type
      end
    end

    module DeleteEndpointAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointAccessInput, context: context)
        type = Types::DeleteEndpointAccessInput.new
        type.endpoint_name = params[:endpoint_name]
        type
      end
    end

    module DeleteEndpointAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointAccessOutput, context: context)
        type = Types::DeleteEndpointAccessOutput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.resource_owner = params[:resource_owner]
        type.subnet_group_name = params[:subnet_group_name]
        type.endpoint_status = params[:endpoint_status]
        type.endpoint_name = params[:endpoint_name]
        type.endpoint_create_time = params[:endpoint_create_time]
        type.port = params[:port]
        type.address = params[:address]
        type.vpc_security_groups = VpcSecurityGroupMembershipList.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.vpc_endpoint = VpcEndpoint.build(params[:vpc_endpoint], context: "#{context}[:vpc_endpoint]") unless params[:vpc_endpoint].nil?
        type
      end
    end

    module DeleteEventSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventSubscriptionInput, context: context)
        type = Types::DeleteEventSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type
      end
    end

    module DeleteEventSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventSubscriptionOutput, context: context)
        type = Types::DeleteEventSubscriptionOutput.new
        type
      end
    end

    module DeleteHsmClientCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHsmClientCertificateInput, context: context)
        type = Types::DeleteHsmClientCertificateInput.new
        type.hsm_client_certificate_identifier = params[:hsm_client_certificate_identifier]
        type
      end
    end

    module DeleteHsmClientCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHsmClientCertificateOutput, context: context)
        type = Types::DeleteHsmClientCertificateOutput.new
        type
      end
    end

    module DeleteHsmConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHsmConfigurationInput, context: context)
        type = Types::DeleteHsmConfigurationInput.new
        type.hsm_configuration_identifier = params[:hsm_configuration_identifier]
        type
      end
    end

    module DeleteHsmConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHsmConfigurationOutput, context: context)
        type = Types::DeleteHsmConfigurationOutput.new
        type
      end
    end

    module DeletePartnerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePartnerInput, context: context)
        type = Types::DeletePartnerInput.new
        type.account_id = params[:account_id]
        type.cluster_identifier = params[:cluster_identifier]
        type.database_name = params[:database_name]
        type.partner_name = params[:partner_name]
        type
      end
    end

    module DeletePartnerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePartnerOutput, context: context)
        type = Types::DeletePartnerOutput.new
        type.database_name = params[:database_name]
        type.partner_name = params[:partner_name]
        type
      end
    end

    module DeleteScheduledActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduledActionInput, context: context)
        type = Types::DeleteScheduledActionInput.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type
      end
    end

    module DeleteScheduledActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduledActionOutput, context: context)
        type = Types::DeleteScheduledActionOutput.new
        type
      end
    end

    module DeleteSnapshotCopyGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotCopyGrantInput, context: context)
        type = Types::DeleteSnapshotCopyGrantInput.new
        type.snapshot_copy_grant_name = params[:snapshot_copy_grant_name]
        type
      end
    end

    module DeleteSnapshotCopyGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotCopyGrantOutput, context: context)
        type = Types::DeleteSnapshotCopyGrantOutput.new
        type
      end
    end

    module DeleteSnapshotScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotScheduleInput, context: context)
        type = Types::DeleteSnapshotScheduleInput.new
        type.schedule_identifier = params[:schedule_identifier]
        type
      end
    end

    module DeleteSnapshotScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotScheduleOutput, context: context)
        type = Types::DeleteSnapshotScheduleOutput.new
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.resource_name = params[:resource_name]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module DeleteTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsOutput, context: context)
        type = Types::DeleteTagsOutput.new
        type
      end
    end

    module DeleteUsageLimitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUsageLimitInput, context: context)
        type = Types::DeleteUsageLimitInput.new
        type.usage_limit_id = params[:usage_limit_id]
        type
      end
    end

    module DeleteUsageLimitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUsageLimitOutput, context: context)
        type = Types::DeleteUsageLimitOutput.new
        type
      end
    end

    module DependentServiceRequestThrottlingFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependentServiceRequestThrottlingFault, context: context)
        type = Types::DependentServiceRequestThrottlingFault.new
        type.message = params[:message]
        type
      end
    end

    module DependentServiceUnavailableFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependentServiceUnavailableFault, context: context)
        type = Types::DependentServiceUnavailableFault.new
        type.message = params[:message]
        type
      end
    end

    module DescribeAccountAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesInput, context: context)
        type = Types::DescribeAccountAttributesInput.new
        type.attribute_names = AttributeNameList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type
      end
    end

    module DescribeAccountAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesOutput, context: context)
        type = Types::DescribeAccountAttributesOutput.new
        type.account_attributes = AttributeList.build(params[:account_attributes], context: "#{context}[:account_attributes]") unless params[:account_attributes].nil?
        type
      end
    end

    module DescribeAuthenticationProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuthenticationProfilesInput, context: context)
        type = Types::DescribeAuthenticationProfilesInput.new
        type.authentication_profile_name = params[:authentication_profile_name]
        type
      end
    end

    module DescribeAuthenticationProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuthenticationProfilesOutput, context: context)
        type = Types::DescribeAuthenticationProfilesOutput.new
        type.authentication_profiles = AuthenticationProfileList.build(params[:authentication_profiles], context: "#{context}[:authentication_profiles]") unless params[:authentication_profiles].nil?
        type
      end
    end

    module DescribeClusterDbRevisionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterDbRevisionsInput, context: context)
        type = Types::DescribeClusterDbRevisionsInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeClusterDbRevisionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterDbRevisionsOutput, context: context)
        type = Types::DescribeClusterDbRevisionsOutput.new
        type.marker = params[:marker]
        type.cluster_db_revisions = ClusterDbRevisionsList.build(params[:cluster_db_revisions], context: "#{context}[:cluster_db_revisions]") unless params[:cluster_db_revisions].nil?
        type
      end
    end

    module DescribeClusterParameterGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterParameterGroupsInput, context: context)
        type = Types::DescribeClusterParameterGroupsInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeClusterParameterGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterParameterGroupsOutput, context: context)
        type = Types::DescribeClusterParameterGroupsOutput.new
        type.marker = params[:marker]
        type.parameter_groups = ParameterGroupList.build(params[:parameter_groups], context: "#{context}[:parameter_groups]") unless params[:parameter_groups].nil?
        type
      end
    end

    module DescribeClusterParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterParametersInput, context: context)
        type = Types::DescribeClusterParametersInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.source = params[:source]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeClusterParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterParametersOutput, context: context)
        type = Types::DescribeClusterParametersOutput.new
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeClusterSecurityGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterSecurityGroupsInput, context: context)
        type = Types::DescribeClusterSecurityGroupsInput.new
        type.cluster_security_group_name = params[:cluster_security_group_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeClusterSecurityGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterSecurityGroupsOutput, context: context)
        type = Types::DescribeClusterSecurityGroupsOutput.new
        type.marker = params[:marker]
        type.cluster_security_groups = ClusterSecurityGroups.build(params[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless params[:cluster_security_groups].nil?
        type
      end
    end

    module DescribeClusterSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterSnapshotsInput, context: context)
        type = Types::DescribeClusterSnapshotsInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.snapshot_identifier = params[:snapshot_identifier]
        type.snapshot_type = params[:snapshot_type]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.owner_account = params[:owner_account]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type.cluster_exists = params[:cluster_exists]
        type.sorting_entities = SnapshotSortingEntityList.build(params[:sorting_entities], context: "#{context}[:sorting_entities]") unless params[:sorting_entities].nil?
        type
      end
    end

    module DescribeClusterSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterSnapshotsOutput, context: context)
        type = Types::DescribeClusterSnapshotsOutput.new
        type.marker = params[:marker]
        type.snapshots = SnapshotList.build(params[:snapshots], context: "#{context}[:snapshots]") unless params[:snapshots].nil?
        type
      end
    end

    module DescribeClusterSubnetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterSubnetGroupsInput, context: context)
        type = Types::DescribeClusterSubnetGroupsInput.new
        type.cluster_subnet_group_name = params[:cluster_subnet_group_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeClusterSubnetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterSubnetGroupsOutput, context: context)
        type = Types::DescribeClusterSubnetGroupsOutput.new
        type.marker = params[:marker]
        type.cluster_subnet_groups = ClusterSubnetGroups.build(params[:cluster_subnet_groups], context: "#{context}[:cluster_subnet_groups]") unless params[:cluster_subnet_groups].nil?
        type
      end
    end

    module DescribeClusterTracksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterTracksInput, context: context)
        type = Types::DescribeClusterTracksInput.new
        type.maintenance_track_name = params[:maintenance_track_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeClusterTracksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterTracksOutput, context: context)
        type = Types::DescribeClusterTracksOutput.new
        type.maintenance_tracks = TrackList.build(params[:maintenance_tracks], context: "#{context}[:maintenance_tracks]") unless params[:maintenance_tracks].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeClusterVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterVersionsInput, context: context)
        type = Types::DescribeClusterVersionsInput.new
        type.cluster_version = params[:cluster_version]
        type.cluster_parameter_group_family = params[:cluster_parameter_group_family]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeClusterVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterVersionsOutput, context: context)
        type = Types::DescribeClusterVersionsOutput.new
        type.marker = params[:marker]
        type.cluster_versions = ClusterVersionList.build(params[:cluster_versions], context: "#{context}[:cluster_versions]") unless params[:cluster_versions].nil?
        type
      end
    end

    module DescribeClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersInput, context: context)
        type = Types::DescribeClustersInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersOutput, context: context)
        type = Types::DescribeClustersOutput.new
        type.marker = params[:marker]
        type.clusters = ClusterList.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type
      end
    end

    module DescribeDataSharesForConsumerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSharesForConsumerInput, context: context)
        type = Types::DescribeDataSharesForConsumerInput.new
        type.consumer_arn = params[:consumer_arn]
        type.status = params[:status]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDataSharesForConsumerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSharesForConsumerOutput, context: context)
        type = Types::DescribeDataSharesForConsumerOutput.new
        type.data_shares = DataShareList.build(params[:data_shares], context: "#{context}[:data_shares]") unless params[:data_shares].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDataSharesForProducerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSharesForProducerInput, context: context)
        type = Types::DescribeDataSharesForProducerInput.new
        type.producer_arn = params[:producer_arn]
        type.status = params[:status]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDataSharesForProducerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSharesForProducerOutput, context: context)
        type = Types::DescribeDataSharesForProducerOutput.new
        type.data_shares = DataShareList.build(params[:data_shares], context: "#{context}[:data_shares]") unless params[:data_shares].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDataSharesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSharesInput, context: context)
        type = Types::DescribeDataSharesInput.new
        type.data_share_arn = params[:data_share_arn]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDataSharesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSharesOutput, context: context)
        type = Types::DescribeDataSharesOutput.new
        type.data_shares = DataShareList.build(params[:data_shares], context: "#{context}[:data_shares]") unless params[:data_shares].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDefaultClusterParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDefaultClusterParametersInput, context: context)
        type = Types::DescribeDefaultClusterParametersInput.new
        type.parameter_group_family = params[:parameter_group_family]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDefaultClusterParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDefaultClusterParametersOutput, context: context)
        type = Types::DescribeDefaultClusterParametersOutput.new
        type.default_cluster_parameters = DefaultClusterParameters.build(params[:default_cluster_parameters], context: "#{context}[:default_cluster_parameters]") unless params[:default_cluster_parameters].nil?
        type
      end
    end

    module DescribeEndpointAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointAccessInput, context: context)
        type = Types::DescribeEndpointAccessInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.resource_owner = params[:resource_owner]
        type.endpoint_name = params[:endpoint_name]
        type.vpc_id = params[:vpc_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEndpointAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointAccessOutput, context: context)
        type = Types::DescribeEndpointAccessOutput.new
        type.endpoint_access_list = EndpointAccesses.build(params[:endpoint_access_list], context: "#{context}[:endpoint_access_list]") unless params[:endpoint_access_list].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEndpointAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointAuthorizationInput, context: context)
        type = Types::DescribeEndpointAuthorizationInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.account = params[:account]
        type.grantee = params[:grantee]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEndpointAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointAuthorizationOutput, context: context)
        type = Types::DescribeEndpointAuthorizationOutput.new
        type.endpoint_authorization_list = EndpointAuthorizations.build(params[:endpoint_authorization_list], context: "#{context}[:endpoint_authorization_list]") unless params[:endpoint_authorization_list].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEventCategoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventCategoriesInput, context: context)
        type = Types::DescribeEventCategoriesInput.new
        type.source_type = params[:source_type]
        type
      end
    end

    module DescribeEventCategoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventCategoriesOutput, context: context)
        type = Types::DescribeEventCategoriesOutput.new
        type.event_categories_map_list = EventCategoriesMapList.build(params[:event_categories_map_list], context: "#{context}[:event_categories_map_list]") unless params[:event_categories_map_list].nil?
        type
      end
    end

    module DescribeEventSubscriptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSubscriptionsInput, context: context)
        type = Types::DescribeEventSubscriptionsInput.new
        type.subscription_name = params[:subscription_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeEventSubscriptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSubscriptionsOutput, context: context)
        type = Types::DescribeEventSubscriptionsOutput.new
        type.marker = params[:marker]
        type.event_subscriptions_list = EventSubscriptionsList.build(params[:event_subscriptions_list], context: "#{context}[:event_subscriptions_list]") unless params[:event_subscriptions_list].nil?
        type
      end
    end

    module DescribeEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsInput, context: context)
        type = Types::DescribeEventsInput.new
        type.source_identifier = params[:source_identifier]
        type.source_type = params[:source_type]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.duration = params[:duration]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsOutput, context: context)
        type = Types::DescribeEventsOutput.new
        type.marker = params[:marker]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module DescribeHsmClientCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHsmClientCertificatesInput, context: context)
        type = Types::DescribeHsmClientCertificatesInput.new
        type.hsm_client_certificate_identifier = params[:hsm_client_certificate_identifier]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeHsmClientCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHsmClientCertificatesOutput, context: context)
        type = Types::DescribeHsmClientCertificatesOutput.new
        type.marker = params[:marker]
        type.hsm_client_certificates = HsmClientCertificateList.build(params[:hsm_client_certificates], context: "#{context}[:hsm_client_certificates]") unless params[:hsm_client_certificates].nil?
        type
      end
    end

    module DescribeHsmConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHsmConfigurationsInput, context: context)
        type = Types::DescribeHsmConfigurationsInput.new
        type.hsm_configuration_identifier = params[:hsm_configuration_identifier]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeHsmConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHsmConfigurationsOutput, context: context)
        type = Types::DescribeHsmConfigurationsOutput.new
        type.marker = params[:marker]
        type.hsm_configurations = HsmConfigurationList.build(params[:hsm_configurations], context: "#{context}[:hsm_configurations]") unless params[:hsm_configurations].nil?
        type
      end
    end

    module DescribeLoggingStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingStatusInput, context: context)
        type = Types::DescribeLoggingStatusInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module DescribeLoggingStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingStatusOutput, context: context)
        type = Types::DescribeLoggingStatusOutput.new
        type.logging_enabled = params[:logging_enabled]
        type.bucket_name = params[:bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.last_successful_delivery_time = params[:last_successful_delivery_time]
        type.last_failure_time = params[:last_failure_time]
        type.last_failure_message = params[:last_failure_message]
        type.log_destination_type = params[:log_destination_type]
        type.log_exports = LogTypeList.build(params[:log_exports], context: "#{context}[:log_exports]") unless params[:log_exports].nil?
        type
      end
    end

    module DescribeNodeConfigurationOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodeConfigurationOptionsInput, context: context)
        type = Types::DescribeNodeConfigurationOptionsInput.new
        type.action_type = params[:action_type]
        type.cluster_identifier = params[:cluster_identifier]
        type.snapshot_identifier = params[:snapshot_identifier]
        type.owner_account = params[:owner_account]
        type.filters = NodeConfigurationOptionsFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeNodeConfigurationOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodeConfigurationOptionsOutput, context: context)
        type = Types::DescribeNodeConfigurationOptionsOutput.new
        type.node_configuration_option_list = NodeConfigurationOptionList.build(params[:node_configuration_option_list], context: "#{context}[:node_configuration_option_list]") unless params[:node_configuration_option_list].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeOrderableClusterOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrderableClusterOptionsInput, context: context)
        type = Types::DescribeOrderableClusterOptionsInput.new
        type.cluster_version = params[:cluster_version]
        type.node_type = params[:node_type]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeOrderableClusterOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrderableClusterOptionsOutput, context: context)
        type = Types::DescribeOrderableClusterOptionsOutput.new
        type.orderable_cluster_options = OrderableClusterOptionsList.build(params[:orderable_cluster_options], context: "#{context}[:orderable_cluster_options]") unless params[:orderable_cluster_options].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribePartnersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePartnersInput, context: context)
        type = Types::DescribePartnersInput.new
        type.account_id = params[:account_id]
        type.cluster_identifier = params[:cluster_identifier]
        type.database_name = params[:database_name]
        type.partner_name = params[:partner_name]
        type
      end
    end

    module DescribePartnersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePartnersOutput, context: context)
        type = Types::DescribePartnersOutput.new
        type.partner_integration_info_list = PartnerIntegrationInfoList.build(params[:partner_integration_info_list], context: "#{context}[:partner_integration_info_list]") unless params[:partner_integration_info_list].nil?
        type
      end
    end

    module DescribeReservedNodeExchangeStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedNodeExchangeStatusInput, context: context)
        type = Types::DescribeReservedNodeExchangeStatusInput.new
        type.reserved_node_id = params[:reserved_node_id]
        type.reserved_node_exchange_request_id = params[:reserved_node_exchange_request_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReservedNodeExchangeStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedNodeExchangeStatusOutput, context: context)
        type = Types::DescribeReservedNodeExchangeStatusOutput.new
        type.reserved_node_exchange_status_details = ReservedNodeExchangeStatusList.build(params[:reserved_node_exchange_status_details], context: "#{context}[:reserved_node_exchange_status_details]") unless params[:reserved_node_exchange_status_details].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReservedNodeOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedNodeOfferingsInput, context: context)
        type = Types::DescribeReservedNodeOfferingsInput.new
        type.reserved_node_offering_id = params[:reserved_node_offering_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReservedNodeOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedNodeOfferingsOutput, context: context)
        type = Types::DescribeReservedNodeOfferingsOutput.new
        type.marker = params[:marker]
        type.reserved_node_offerings = ReservedNodeOfferingList.build(params[:reserved_node_offerings], context: "#{context}[:reserved_node_offerings]") unless params[:reserved_node_offerings].nil?
        type
      end
    end

    module DescribeReservedNodesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedNodesInput, context: context)
        type = Types::DescribeReservedNodesInput.new
        type.reserved_node_id = params[:reserved_node_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReservedNodesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedNodesOutput, context: context)
        type = Types::DescribeReservedNodesOutput.new
        type.marker = params[:marker]
        type.reserved_nodes = ReservedNodeList.build(params[:reserved_nodes], context: "#{context}[:reserved_nodes]") unless params[:reserved_nodes].nil?
        type
      end
    end

    module DescribeResizeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResizeInput, context: context)
        type = Types::DescribeResizeInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module DescribeResizeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResizeOutput, context: context)
        type = Types::DescribeResizeOutput.new
        type.target_node_type = params[:target_node_type]
        type.target_number_of_nodes = params[:target_number_of_nodes]
        type.target_cluster_type = params[:target_cluster_type]
        type.status = params[:status]
        type.import_tables_completed = ImportTablesCompleted.build(params[:import_tables_completed], context: "#{context}[:import_tables_completed]") unless params[:import_tables_completed].nil?
        type.import_tables_in_progress = ImportTablesInProgress.build(params[:import_tables_in_progress], context: "#{context}[:import_tables_in_progress]") unless params[:import_tables_in_progress].nil?
        type.import_tables_not_started = ImportTablesNotStarted.build(params[:import_tables_not_started], context: "#{context}[:import_tables_not_started]") unless params[:import_tables_not_started].nil?
        type.avg_resize_rate_in_mega_bytes_per_second = params[:avg_resize_rate_in_mega_bytes_per_second]
        type.total_resize_data_in_mega_bytes = params[:total_resize_data_in_mega_bytes]
        type.progress_in_mega_bytes = params[:progress_in_mega_bytes]
        type.elapsed_time_in_seconds = params[:elapsed_time_in_seconds]
        type.estimated_time_to_completion_in_seconds = params[:estimated_time_to_completion_in_seconds]
        type.resize_type = params[:resize_type]
        type.message = params[:message]
        type.target_encryption_type = params[:target_encryption_type]
        type.data_transfer_progress_percent = params[:data_transfer_progress_percent]
        type
      end
    end

    module DescribeScheduledActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledActionsInput, context: context)
        type = Types::DescribeScheduledActionsInput.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type.target_action_type = params[:target_action_type]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.active = params[:active]
        type.filters = ScheduledActionFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeScheduledActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledActionsOutput, context: context)
        type = Types::DescribeScheduledActionsOutput.new
        type.marker = params[:marker]
        type.scheduled_actions = ScheduledActionList.build(params[:scheduled_actions], context: "#{context}[:scheduled_actions]") unless params[:scheduled_actions].nil?
        type
      end
    end

    module DescribeSnapshotCopyGrantsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotCopyGrantsInput, context: context)
        type = Types::DescribeSnapshotCopyGrantsInput.new
        type.snapshot_copy_grant_name = params[:snapshot_copy_grant_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeSnapshotCopyGrantsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotCopyGrantsOutput, context: context)
        type = Types::DescribeSnapshotCopyGrantsOutput.new
        type.marker = params[:marker]
        type.snapshot_copy_grants = SnapshotCopyGrantList.build(params[:snapshot_copy_grants], context: "#{context}[:snapshot_copy_grants]") unless params[:snapshot_copy_grants].nil?
        type
      end
    end

    module DescribeSnapshotSchedulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotSchedulesInput, context: context)
        type = Types::DescribeSnapshotSchedulesInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.schedule_identifier = params[:schedule_identifier]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeSnapshotSchedulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotSchedulesOutput, context: context)
        type = Types::DescribeSnapshotSchedulesOutput.new
        type.snapshot_schedules = SnapshotScheduleList.build(params[:snapshot_schedules], context: "#{context}[:snapshot_schedules]") unless params[:snapshot_schedules].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStorageInput, context: context)
        type = Types::DescribeStorageInput.new
        type
      end
    end

    module DescribeStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStorageOutput, context: context)
        type = Types::DescribeStorageOutput.new
        type.total_backup_size_in_mega_bytes = params[:total_backup_size_in_mega_bytes]
        type.total_provisioned_storage_in_mega_bytes = params[:total_provisioned_storage_in_mega_bytes]
        type
      end
    end

    module DescribeTableRestoreStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableRestoreStatusInput, context: context)
        type = Types::DescribeTableRestoreStatusInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.table_restore_request_id = params[:table_restore_request_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeTableRestoreStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableRestoreStatusOutput, context: context)
        type = Types::DescribeTableRestoreStatusOutput.new
        type.table_restore_status_details = TableRestoreStatusList.build(params[:table_restore_status_details], context: "#{context}[:table_restore_status_details]") unless params[:table_restore_status_details].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.resource_name = params[:resource_name]
        type.resource_type = params[:resource_type]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsOutput, context: context)
        type = Types::DescribeTagsOutput.new
        type.tagged_resources = TaggedResourceList.build(params[:tagged_resources], context: "#{context}[:tagged_resources]") unless params[:tagged_resources].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeUsageLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsageLimitsInput, context: context)
        type = Types::DescribeUsageLimitsInput.new
        type.usage_limit_id = params[:usage_limit_id]
        type.cluster_identifier = params[:cluster_identifier]
        type.feature_type = params[:feature_type]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module DescribeUsageLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsageLimitsOutput, context: context)
        type = Types::DescribeUsageLimitsOutput.new
        type.usage_limits = UsageLimits.build(params[:usage_limits], context: "#{context}[:usage_limits]") unless params[:usage_limits].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DisableLoggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableLoggingInput, context: context)
        type = Types::DisableLoggingInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module DisableLoggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableLoggingOutput, context: context)
        type = Types::DisableLoggingOutput.new
        type.logging_enabled = params[:logging_enabled]
        type.bucket_name = params[:bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.last_successful_delivery_time = params[:last_successful_delivery_time]
        type.last_failure_time = params[:last_failure_time]
        type.last_failure_message = params[:last_failure_message]
        type.log_destination_type = params[:log_destination_type]
        type.log_exports = LogTypeList.build(params[:log_exports], context: "#{context}[:log_exports]") unless params[:log_exports].nil?
        type
      end
    end

    module DisableSnapshotCopyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableSnapshotCopyInput, context: context)
        type = Types::DisableSnapshotCopyInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module DisableSnapshotCopyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableSnapshotCopyOutput, context: context)
        type = Types::DisableSnapshotCopyOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DisassociateDataShareConsumerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDataShareConsumerInput, context: context)
        type = Types::DisassociateDataShareConsumerInput.new
        type.data_share_arn = params[:data_share_arn]
        type.disassociate_entire_account = params[:disassociate_entire_account]
        type.consumer_arn = params[:consumer_arn]
        type.consumer_region = params[:consumer_region]
        type
      end
    end

    module DisassociateDataShareConsumerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDataShareConsumerOutput, context: context)
        type = Types::DisassociateDataShareConsumerOutput.new
        type.data_share_arn = params[:data_share_arn]
        type.producer_arn = params[:producer_arn]
        type.allow_publicly_accessible_consumers = params[:allow_publicly_accessible_consumers]
        type.data_share_associations = DataShareAssociationList.build(params[:data_share_associations], context: "#{context}[:data_share_associations]") unless params[:data_share_associations].nil?
        type.managed_by = params[:managed_by]
        type
      end
    end

    module EC2SecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2SecurityGroup, context: context)
        type = Types::EC2SecurityGroup.new
        type.status = params[:status]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EC2SecurityGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EC2SecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ElasticIpStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticIpStatus, context: context)
        type = Types::ElasticIpStatus.new
        type.elastic_ip = params[:elastic_ip]
        type.status = params[:status]
        type
      end
    end

    module EligibleTracksToUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnableLoggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableLoggingInput, context: context)
        type = Types::EnableLoggingInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.bucket_name = params[:bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.log_destination_type = params[:log_destination_type]
        type.log_exports = LogTypeList.build(params[:log_exports], context: "#{context}[:log_exports]") unless params[:log_exports].nil?
        type
      end
    end

    module EnableLoggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableLoggingOutput, context: context)
        type = Types::EnableLoggingOutput.new
        type.logging_enabled = params[:logging_enabled]
        type.bucket_name = params[:bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.last_successful_delivery_time = params[:last_successful_delivery_time]
        type.last_failure_time = params[:last_failure_time]
        type.last_failure_message = params[:last_failure_message]
        type.log_destination_type = params[:log_destination_type]
        type.log_exports = LogTypeList.build(params[:log_exports], context: "#{context}[:log_exports]") unless params[:log_exports].nil?
        type
      end
    end

    module EnableSnapshotCopyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSnapshotCopyInput, context: context)
        type = Types::EnableSnapshotCopyInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.destination_region = params[:destination_region]
        type.retention_period = params[:retention_period]
        type.snapshot_copy_grant_name = params[:snapshot_copy_grant_name]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type
      end
    end

    module EnableSnapshotCopyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSnapshotCopyOutput, context: context)
        type = Types::EnableSnapshotCopyOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.address = params[:address]
        type.port = params[:port]
        type.vpc_endpoints = VpcEndpointsList.build(params[:vpc_endpoints], context: "#{context}[:vpc_endpoints]") unless params[:vpc_endpoints].nil?
        type
      end
    end

    module EndpointAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointAccess, context: context)
        type = Types::EndpointAccess.new
        type.cluster_identifier = params[:cluster_identifier]
        type.resource_owner = params[:resource_owner]
        type.subnet_group_name = params[:subnet_group_name]
        type.endpoint_status = params[:endpoint_status]
        type.endpoint_name = params[:endpoint_name]
        type.endpoint_create_time = params[:endpoint_create_time]
        type.port = params[:port]
        type.address = params[:address]
        type.vpc_security_groups = VpcSecurityGroupMembershipList.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.vpc_endpoint = VpcEndpoint.build(params[:vpc_endpoint], context: "#{context}[:vpc_endpoint]") unless params[:vpc_endpoint].nil?
        type
      end
    end

    module EndpointAccesses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointAccess.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointAlreadyExistsFault, context: context)
        type = Types::EndpointAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module EndpointAuthorization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointAuthorization, context: context)
        type = Types::EndpointAuthorization.new
        type.grantor = params[:grantor]
        type.grantee = params[:grantee]
        type.cluster_identifier = params[:cluster_identifier]
        type.authorize_time = params[:authorize_time]
        type.cluster_status = params[:cluster_status]
        type.status = params[:status]
        type.allowed_all_vp_cs = params[:allowed_all_vp_cs]
        type.allowed_vp_cs = VpcIdentifierList.build(params[:allowed_vp_cs], context: "#{context}[:allowed_vp_cs]") unless params[:allowed_vp_cs].nil?
        type.endpoint_count = params[:endpoint_count]
        type
      end
    end

    module EndpointAuthorizationAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointAuthorizationAlreadyExistsFault, context: context)
        type = Types::EndpointAuthorizationAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module EndpointAuthorizationNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointAuthorizationNotFoundFault, context: context)
        type = Types::EndpointAuthorizationNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module EndpointAuthorizations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointAuthorization.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointAuthorizationsPerClusterLimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointAuthorizationsPerClusterLimitExceededFault, context: context)
        type = Types::EndpointAuthorizationsPerClusterLimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module EndpointNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointNotFoundFault, context: context)
        type = Types::EndpointNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module EndpointsPerAuthorizationLimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointsPerAuthorizationLimitExceededFault, context: context)
        type = Types::EndpointsPerAuthorizationLimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module EndpointsPerClusterLimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointsPerClusterLimitExceededFault, context: context)
        type = Types::EndpointsPerClusterLimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.source_identifier = params[:source_identifier]
        type.source_type = params[:source_type]
        type.message = params[:message]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.severity = params[:severity]
        type.date = params[:date]
        type.event_id = params[:event_id]
        type
      end
    end

    module EventCategoriesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventCategoriesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventCategoriesMap, context: context)
        type = Types::EventCategoriesMap.new
        type.source_type = params[:source_type]
        type.events = EventInfoMapList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module EventCategoriesMapList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventCategoriesMap.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventInfoMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventInfoMap, context: context)
        type = Types::EventInfoMap.new
        type.event_id = params[:event_id]
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.event_description = params[:event_description]
        type.severity = params[:severity]
        type
      end
    end

    module EventInfoMapList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventInfoMap.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventSubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSubscription, context: context)
        type = Types::EventSubscription.new
        type.customer_aws_id = params[:customer_aws_id]
        type.cust_subscription_id = params[:cust_subscription_id]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.status = params[:status]
        type.subscription_creation_time = params[:subscription_creation_time]
        type.source_type = params[:source_type]
        type.source_ids_list = SourceIdsList.build(params[:source_ids_list], context: "#{context}[:source_ids_list]") unless params[:source_ids_list].nil?
        type.event_categories_list = EventCategoriesList.build(params[:event_categories_list], context: "#{context}[:event_categories_list]") unless params[:event_categories_list].nil?
        type.severity = params[:severity]
        type.enabled = params[:enabled]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EventSubscriptionQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSubscriptionQuotaExceededFault, context: context)
        type = Types::EventSubscriptionQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module EventSubscriptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventSubscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetClusterCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClusterCredentialsInput, context: context)
        type = Types::GetClusterCredentialsInput.new
        type.db_user = params[:db_user]
        type.db_name = params[:db_name]
        type.cluster_identifier = params[:cluster_identifier]
        type.duration_seconds = params[:duration_seconds]
        type.auto_create = params[:auto_create]
        type.db_groups = DbGroupList.build(params[:db_groups], context: "#{context}[:db_groups]") unless params[:db_groups].nil?
        type
      end
    end

    module GetClusterCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClusterCredentialsOutput, context: context)
        type = Types::GetClusterCredentialsOutput.new
        type.db_user = params[:db_user]
        type.db_password = params[:db_password]
        type.expiration = params[:expiration]
        type
      end
    end

    module GetClusterCredentialsWithIAMInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClusterCredentialsWithIAMInput, context: context)
        type = Types::GetClusterCredentialsWithIAMInput.new
        type.db_name = params[:db_name]
        type.cluster_identifier = params[:cluster_identifier]
        type.duration_seconds = params[:duration_seconds]
        type
      end
    end

    module GetClusterCredentialsWithIAMOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClusterCredentialsWithIAMOutput, context: context)
        type = Types::GetClusterCredentialsWithIAMOutput.new
        type.db_user = params[:db_user]
        type.db_password = params[:db_password]
        type.expiration = params[:expiration]
        type.next_refresh_time = params[:next_refresh_time]
        type
      end
    end

    module GetReservedNodeExchangeConfigurationOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservedNodeExchangeConfigurationOptionsInput, context: context)
        type = Types::GetReservedNodeExchangeConfigurationOptionsInput.new
        type.action_type = params[:action_type]
        type.cluster_identifier = params[:cluster_identifier]
        type.snapshot_identifier = params[:snapshot_identifier]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module GetReservedNodeExchangeConfigurationOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservedNodeExchangeConfigurationOptionsOutput, context: context)
        type = Types::GetReservedNodeExchangeConfigurationOptionsOutput.new
        type.marker = params[:marker]
        type.reserved_node_configuration_option_list = ReservedNodeConfigurationOptionList.build(params[:reserved_node_configuration_option_list], context: "#{context}[:reserved_node_configuration_option_list]") unless params[:reserved_node_configuration_option_list].nil?
        type
      end
    end

    module GetReservedNodeExchangeOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservedNodeExchangeOfferingsInput, context: context)
        type = Types::GetReservedNodeExchangeOfferingsInput.new
        type.reserved_node_id = params[:reserved_node_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module GetReservedNodeExchangeOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservedNodeExchangeOfferingsOutput, context: context)
        type = Types::GetReservedNodeExchangeOfferingsOutput.new
        type.marker = params[:marker]
        type.reserved_node_offerings = ReservedNodeOfferingList.build(params[:reserved_node_offerings], context: "#{context}[:reserved_node_offerings]") unless params[:reserved_node_offerings].nil?
        type
      end
    end

    module HsmClientCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HsmClientCertificate, context: context)
        type = Types::HsmClientCertificate.new
        type.hsm_client_certificate_identifier = params[:hsm_client_certificate_identifier]
        type.hsm_client_certificate_public_key = params[:hsm_client_certificate_public_key]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module HsmClientCertificateAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HsmClientCertificateAlreadyExistsFault, context: context)
        type = Types::HsmClientCertificateAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module HsmClientCertificateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HsmClientCertificate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HsmClientCertificateNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HsmClientCertificateNotFoundFault, context: context)
        type = Types::HsmClientCertificateNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module HsmClientCertificateQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HsmClientCertificateQuotaExceededFault, context: context)
        type = Types::HsmClientCertificateQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module HsmConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HsmConfiguration, context: context)
        type = Types::HsmConfiguration.new
        type.hsm_configuration_identifier = params[:hsm_configuration_identifier]
        type.description = params[:description]
        type.hsm_ip_address = params[:hsm_ip_address]
        type.hsm_partition_name = params[:hsm_partition_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module HsmConfigurationAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HsmConfigurationAlreadyExistsFault, context: context)
        type = Types::HsmConfigurationAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module HsmConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HsmConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HsmConfigurationNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HsmConfigurationNotFoundFault, context: context)
        type = Types::HsmConfigurationNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module HsmConfigurationQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HsmConfigurationQuotaExceededFault, context: context)
        type = Types::HsmConfigurationQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module HsmStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HsmStatus, context: context)
        type = Types::HsmStatus.new
        type.hsm_client_certificate_identifier = params[:hsm_client_certificate_identifier]
        type.hsm_configuration_identifier = params[:hsm_configuration_identifier]
        type.status = params[:status]
        type
      end
    end

    module IPRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPRange, context: context)
        type = Types::IPRange.new
        type.status = params[:status]
        type.cidrip = params[:cidrip]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module IPRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IPRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IamRoleArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImportTablesCompleted
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImportTablesInProgress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImportTablesNotStarted
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InProgressTableRestoreQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InProgressTableRestoreQuotaExceededFault, context: context)
        type = Types::InProgressTableRestoreQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module IncompatibleOrderableOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatibleOrderableOptions, context: context)
        type = Types::IncompatibleOrderableOptions.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientClusterCapacityFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientClusterCapacityFault, context: context)
        type = Types::InsufficientClusterCapacityFault.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientS3BucketPolicyFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientS3BucketPolicyFault, context: context)
        type = Types::InsufficientS3BucketPolicyFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAuthenticationProfileRequestFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAuthenticationProfileRequestFault, context: context)
        type = Types::InvalidAuthenticationProfileRequestFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAuthorizationStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAuthorizationStateFault, context: context)
        type = Types::InvalidAuthorizationStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterParameterGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterParameterGroupStateFault, context: context)
        type = Types::InvalidClusterParameterGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterSecurityGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterSecurityGroupStateFault, context: context)
        type = Types::InvalidClusterSecurityGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterSnapshotScheduleStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterSnapshotScheduleStateFault, context: context)
        type = Types::InvalidClusterSnapshotScheduleStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterSnapshotStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterSnapshotStateFault, context: context)
        type = Types::InvalidClusterSnapshotStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterStateFault, context: context)
        type = Types::InvalidClusterStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterSubnetGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterSubnetGroupStateFault, context: context)
        type = Types::InvalidClusterSubnetGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterSubnetStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterSubnetStateFault, context: context)
        type = Types::InvalidClusterSubnetStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterTrackFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterTrackFault, context: context)
        type = Types::InvalidClusterTrackFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDataShareFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDataShareFault, context: context)
        type = Types::InvalidDataShareFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidElasticIpFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidElasticIpFault, context: context)
        type = Types::InvalidElasticIpFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEndpointStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEndpointStateFault, context: context)
        type = Types::InvalidEndpointStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidHsmClientCertificateStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidHsmClientCertificateStateFault, context: context)
        type = Types::InvalidHsmClientCertificateStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidHsmConfigurationStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidHsmConfigurationStateFault, context: context)
        type = Types::InvalidHsmConfigurationStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNamespaceFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNamespaceFault, context: context)
        type = Types::InvalidNamespaceFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidReservedNodeStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidReservedNodeStateFault, context: context)
        type = Types::InvalidReservedNodeStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRestoreFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRestoreFault, context: context)
        type = Types::InvalidRestoreFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRetentionPeriodFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRetentionPeriodFault, context: context)
        type = Types::InvalidRetentionPeriodFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidS3BucketNameFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3BucketNameFault, context: context)
        type = Types::InvalidS3BucketNameFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidS3KeyPrefixFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3KeyPrefixFault, context: context)
        type = Types::InvalidS3KeyPrefixFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidScheduleFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidScheduleFault, context: context)
        type = Types::InvalidScheduleFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidScheduledActionFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidScheduledActionFault, context: context)
        type = Types::InvalidScheduledActionFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSnapshotCopyGrantStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSnapshotCopyGrantStateFault, context: context)
        type = Types::InvalidSnapshotCopyGrantStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSubnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSubnet, context: context)
        type = Types::InvalidSubnet.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSubscriptionStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSubscriptionStateFault, context: context)
        type = Types::InvalidSubscriptionStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTableRestoreArgumentFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTableRestoreArgumentFault, context: context)
        type = Types::InvalidTableRestoreArgumentFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagFault, context: context)
        type = Types::InvalidTagFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUsageLimitFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUsageLimitFault, context: context)
        type = Types::InvalidUsageLimitFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidVPCNetworkStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidVPCNetworkStateFault, context: context)
        type = Types::InvalidVPCNetworkStateFault.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededFault, context: context)
        type = Types::LimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module LogTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MaintenanceTrack
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceTrack, context: context)
        type = Types::MaintenanceTrack.new
        type.maintenance_track_name = params[:maintenance_track_name]
        type.database_version = params[:database_version]
        type.update_targets = EligibleTracksToUpdateList.build(params[:update_targets], context: "#{context}[:update_targets]") unless params[:update_targets].nil?
        type
      end
    end

    module ModifyAquaConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyAquaConfigurationInput, context: context)
        type = Types::ModifyAquaConfigurationInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.aqua_configuration_status = params[:aqua_configuration_status]
        type
      end
    end

    module ModifyAquaConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyAquaConfigurationOutput, context: context)
        type = Types::ModifyAquaConfigurationOutput.new
        type.aqua_configuration = AquaConfiguration.build(params[:aqua_configuration], context: "#{context}[:aqua_configuration]") unless params[:aqua_configuration].nil?
        type
      end
    end

    module ModifyAuthenticationProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyAuthenticationProfileInput, context: context)
        type = Types::ModifyAuthenticationProfileInput.new
        type.authentication_profile_name = params[:authentication_profile_name]
        type.authentication_profile_content = params[:authentication_profile_content]
        type
      end
    end

    module ModifyAuthenticationProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyAuthenticationProfileOutput, context: context)
        type = Types::ModifyAuthenticationProfileOutput.new
        type.authentication_profile_name = params[:authentication_profile_name]
        type.authentication_profile_content = params[:authentication_profile_content]
        type
      end
    end

    module ModifyClusterDbRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterDbRevisionInput, context: context)
        type = Types::ModifyClusterDbRevisionInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.revision_target = params[:revision_target]
        type
      end
    end

    module ModifyClusterDbRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterDbRevisionOutput, context: context)
        type = Types::ModifyClusterDbRevisionOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module ModifyClusterIamRolesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterIamRolesInput, context: context)
        type = Types::ModifyClusterIamRolesInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.add_iam_roles = IamRoleArnList.build(params[:add_iam_roles], context: "#{context}[:add_iam_roles]") unless params[:add_iam_roles].nil?
        type.remove_iam_roles = IamRoleArnList.build(params[:remove_iam_roles], context: "#{context}[:remove_iam_roles]") unless params[:remove_iam_roles].nil?
        type.default_iam_role_arn = params[:default_iam_role_arn]
        type
      end
    end

    module ModifyClusterIamRolesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterIamRolesOutput, context: context)
        type = Types::ModifyClusterIamRolesOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module ModifyClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterInput, context: context)
        type = Types::ModifyClusterInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.cluster_type = params[:cluster_type]
        type.node_type = params[:node_type]
        type.number_of_nodes = params[:number_of_nodes]
        type.cluster_security_groups = ClusterSecurityGroupNameList.build(params[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless params[:cluster_security_groups].nil?
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.master_user_password = params[:master_user_password]
        type.cluster_parameter_group_name = params[:cluster_parameter_group_name]
        type.automated_snapshot_retention_period = params[:automated_snapshot_retention_period]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.cluster_version = params[:cluster_version]
        type.allow_version_upgrade = params[:allow_version_upgrade]
        type.hsm_client_certificate_identifier = params[:hsm_client_certificate_identifier]
        type.hsm_configuration_identifier = params[:hsm_configuration_identifier]
        type.new_cluster_identifier = params[:new_cluster_identifier]
        type.publicly_accessible = params[:publicly_accessible]
        type.elastic_ip = params[:elastic_ip]
        type.enhanced_vpc_routing = params[:enhanced_vpc_routing]
        type.maintenance_track_name = params[:maintenance_track_name]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.availability_zone_relocation = params[:availability_zone_relocation]
        type.availability_zone = params[:availability_zone]
        type.port = params[:port]
        type
      end
    end

    module ModifyClusterMaintenanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterMaintenanceInput, context: context)
        type = Types::ModifyClusterMaintenanceInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.defer_maintenance = params[:defer_maintenance]
        type.defer_maintenance_identifier = params[:defer_maintenance_identifier]
        type.defer_maintenance_start_time = params[:defer_maintenance_start_time]
        type.defer_maintenance_end_time = params[:defer_maintenance_end_time]
        type.defer_maintenance_duration = params[:defer_maintenance_duration]
        type
      end
    end

    module ModifyClusterMaintenanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterMaintenanceOutput, context: context)
        type = Types::ModifyClusterMaintenanceOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module ModifyClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterOutput, context: context)
        type = Types::ModifyClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module ModifyClusterParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterParameterGroupInput, context: context)
        type = Types::ModifyClusterParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ModifyClusterParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterParameterGroupOutput, context: context)
        type = Types::ModifyClusterParameterGroupOutput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.parameter_group_status = params[:parameter_group_status]
        type
      end
    end

    module ModifyClusterSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterSnapshotInput, context: context)
        type = Types::ModifyClusterSnapshotInput.new
        type.snapshot_identifier = params[:snapshot_identifier]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.force = params[:force]
        type
      end
    end

    module ModifyClusterSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterSnapshotOutput, context: context)
        type = Types::ModifyClusterSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module ModifyClusterSnapshotScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterSnapshotScheduleInput, context: context)
        type = Types::ModifyClusterSnapshotScheduleInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.schedule_identifier = params[:schedule_identifier]
        type.disassociate_schedule = params[:disassociate_schedule]
        type
      end
    end

    module ModifyClusterSnapshotScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterSnapshotScheduleOutput, context: context)
        type = Types::ModifyClusterSnapshotScheduleOutput.new
        type
      end
    end

    module ModifyClusterSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterSubnetGroupInput, context: context)
        type = Types::ModifyClusterSubnetGroupInput.new
        type.cluster_subnet_group_name = params[:cluster_subnet_group_name]
        type.description = params[:description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module ModifyClusterSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterSubnetGroupOutput, context: context)
        type = Types::ModifyClusterSubnetGroupOutput.new
        type.cluster_subnet_group = ClusterSubnetGroup.build(params[:cluster_subnet_group], context: "#{context}[:cluster_subnet_group]") unless params[:cluster_subnet_group].nil?
        type
      end
    end

    module ModifyEndpointAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEndpointAccessInput, context: context)
        type = Types::ModifyEndpointAccessInput.new
        type.endpoint_name = params[:endpoint_name]
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type
      end
    end

    module ModifyEndpointAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEndpointAccessOutput, context: context)
        type = Types::ModifyEndpointAccessOutput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.resource_owner = params[:resource_owner]
        type.subnet_group_name = params[:subnet_group_name]
        type.endpoint_status = params[:endpoint_status]
        type.endpoint_name = params[:endpoint_name]
        type.endpoint_create_time = params[:endpoint_create_time]
        type.port = params[:port]
        type.address = params[:address]
        type.vpc_security_groups = VpcSecurityGroupMembershipList.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.vpc_endpoint = VpcEndpoint.build(params[:vpc_endpoint], context: "#{context}[:vpc_endpoint]") unless params[:vpc_endpoint].nil?
        type
      end
    end

    module ModifyEventSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEventSubscriptionInput, context: context)
        type = Types::ModifyEventSubscriptionInput.new
        type.subscription_name = params[:subscription_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.source_type = params[:source_type]
        type.source_ids = SourceIdsList.build(params[:source_ids], context: "#{context}[:source_ids]") unless params[:source_ids].nil?
        type.event_categories = EventCategoriesList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type.severity = params[:severity]
        type.enabled = params[:enabled]
        type
      end
    end

    module ModifyEventSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyEventSubscriptionOutput, context: context)
        type = Types::ModifyEventSubscriptionOutput.new
        type.event_subscription = EventSubscription.build(params[:event_subscription], context: "#{context}[:event_subscription]") unless params[:event_subscription].nil?
        type
      end
    end

    module ModifyScheduledActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyScheduledActionInput, context: context)
        type = Types::ModifyScheduledActionInput.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type.target_action = ScheduledActionType.build(params[:target_action], context: "#{context}[:target_action]") unless params[:target_action].nil?
        type.schedule = params[:schedule]
        type.iam_role = params[:iam_role]
        type.scheduled_action_description = params[:scheduled_action_description]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.enable = params[:enable]
        type
      end
    end

    module ModifyScheduledActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyScheduledActionOutput, context: context)
        type = Types::ModifyScheduledActionOutput.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type.target_action = ScheduledActionType.build(params[:target_action], context: "#{context}[:target_action]") unless params[:target_action].nil?
        type.schedule = params[:schedule]
        type.iam_role = params[:iam_role]
        type.scheduled_action_description = params[:scheduled_action_description]
        type.state = params[:state]
        type.next_invocations = ScheduledActionTimeList.build(params[:next_invocations], context: "#{context}[:next_invocations]") unless params[:next_invocations].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module ModifySnapshotCopyRetentionPeriodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySnapshotCopyRetentionPeriodInput, context: context)
        type = Types::ModifySnapshotCopyRetentionPeriodInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.retention_period = params[:retention_period]
        type.manual = params[:manual]
        type
      end
    end

    module ModifySnapshotCopyRetentionPeriodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySnapshotCopyRetentionPeriodOutput, context: context)
        type = Types::ModifySnapshotCopyRetentionPeriodOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module ModifySnapshotScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySnapshotScheduleInput, context: context)
        type = Types::ModifySnapshotScheduleInput.new
        type.schedule_identifier = params[:schedule_identifier]
        type.schedule_definitions = ScheduleDefinitionList.build(params[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless params[:schedule_definitions].nil?
        type
      end
    end

    module ModifySnapshotScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySnapshotScheduleOutput, context: context)
        type = Types::ModifySnapshotScheduleOutput.new
        type.schedule_definitions = ScheduleDefinitionList.build(params[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless params[:schedule_definitions].nil?
        type.schedule_identifier = params[:schedule_identifier]
        type.schedule_description = params[:schedule_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_invocations = ScheduledSnapshotTimeList.build(params[:next_invocations], context: "#{context}[:next_invocations]") unless params[:next_invocations].nil?
        type.associated_cluster_count = params[:associated_cluster_count]
        type.associated_clusters = AssociatedClusterList.build(params[:associated_clusters], context: "#{context}[:associated_clusters]") unless params[:associated_clusters].nil?
        type
      end
    end

    module ModifyUsageLimitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyUsageLimitInput, context: context)
        type = Types::ModifyUsageLimitInput.new
        type.usage_limit_id = params[:usage_limit_id]
        type.amount = params[:amount]
        type.breach_action = params[:breach_action]
        type
      end
    end

    module ModifyUsageLimitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyUsageLimitOutput, context: context)
        type = Types::ModifyUsageLimitOutput.new
        type.usage_limit_id = params[:usage_limit_id]
        type.cluster_identifier = params[:cluster_identifier]
        type.feature_type = params[:feature_type]
        type.limit_type = params[:limit_type]
        type.amount = params[:amount]
        type.period = params[:period]
        type.breach_action = params[:breach_action]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.network_interface_id = params[:network_interface_id]
        type.subnet_id = params[:subnet_id]
        type.private_ip_address = params[:private_ip_address]
        type.availability_zone = params[:availability_zone]
        type
      end
    end

    module NetworkInterfaceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeConfigurationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeConfigurationOption, context: context)
        type = Types::NodeConfigurationOption.new
        type.node_type = params[:node_type]
        type.number_of_nodes = params[:number_of_nodes]
        type.estimated_disk_utilization_percent = params[:estimated_disk_utilization_percent]
        type.mode = params[:mode]
        type
      end
    end

    module NodeConfigurationOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeConfigurationOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeConfigurationOptionsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeConfigurationOptionsFilter, context: context)
        type = Types::NodeConfigurationOptionsFilter.new
        type.name = params[:name]
        type.operator = params[:operator]
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module NodeConfigurationOptionsFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeConfigurationOptionsFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NumberOfNodesPerClusterLimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberOfNodesPerClusterLimitExceededFault, context: context)
        type = Types::NumberOfNodesPerClusterLimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module NumberOfNodesQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberOfNodesQuotaExceededFault, context: context)
        type = Types::NumberOfNodesQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module OrderableClusterOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrderableClusterOption, context: context)
        type = Types::OrderableClusterOption.new
        type.cluster_version = params[:cluster_version]
        type.cluster_type = params[:cluster_type]
        type.node_type = params[:node_type]
        type.availability_zones = AvailabilityZoneList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type
      end
    end

    module OrderableClusterOptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrderableClusterOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Parameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameter, context: context)
        type = Types::Parameter.new
        type.parameter_name = params[:parameter_name]
        type.parameter_value = params[:parameter_value]
        type.description = params[:description]
        type.source = params[:source]
        type.data_type = params[:data_type]
        type.allowed_values = params[:allowed_values]
        type.apply_type = params[:apply_type]
        type.is_modifiable = params[:is_modifiable]
        type.minimum_engine_version = params[:minimum_engine_version]
        type
      end
    end

    module ParameterGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterParameterGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartnerIntegrationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartnerIntegrationInfo, context: context)
        type = Types::PartnerIntegrationInfo.new
        type.database_name = params[:database_name]
        type.partner_name = params[:partner_name]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module PartnerIntegrationInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartnerIntegrationInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartnerNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartnerNotFoundFault, context: context)
        type = Types::PartnerNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module PauseClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PauseClusterInput, context: context)
        type = Types::PauseClusterInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module PauseClusterMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PauseClusterMessage, context: context)
        type = Types::PauseClusterMessage.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module PauseClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PauseClusterOutput, context: context)
        type = Types::PauseClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module PendingActionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PendingModifiedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingModifiedValues, context: context)
        type = Types::PendingModifiedValues.new
        type.master_user_password = params[:master_user_password]
        type.node_type = params[:node_type]
        type.number_of_nodes = params[:number_of_nodes]
        type.cluster_type = params[:cluster_type]
        type.cluster_version = params[:cluster_version]
        type.automated_snapshot_retention_period = params[:automated_snapshot_retention_period]
        type.cluster_identifier = params[:cluster_identifier]
        type.publicly_accessible = params[:publicly_accessible]
        type.enhanced_vpc_routing = params[:enhanced_vpc_routing]
        type.maintenance_track_name = params[:maintenance_track_name]
        type.encryption_type = params[:encryption_type]
        type
      end
    end

    module PurchaseReservedNodeOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseReservedNodeOfferingInput, context: context)
        type = Types::PurchaseReservedNodeOfferingInput.new
        type.reserved_node_offering_id = params[:reserved_node_offering_id]
        type.node_count = params[:node_count]
        type
      end
    end

    module PurchaseReservedNodeOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseReservedNodeOfferingOutput, context: context)
        type = Types::PurchaseReservedNodeOfferingOutput.new
        type.reserved_node = ReservedNode.build(params[:reserved_node], context: "#{context}[:reserved_node]") unless params[:reserved_node].nil?
        type
      end
    end

    module RebootClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootClusterInput, context: context)
        type = Types::RebootClusterInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module RebootClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootClusterOutput, context: context)
        type = Types::RebootClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module RecurringCharge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecurringCharge, context: context)
        type = Types::RecurringCharge.new
        type.recurring_charge_amount = params[:recurring_charge_amount]
        type.recurring_charge_frequency = params[:recurring_charge_frequency]
        type
      end
    end

    module RecurringChargeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecurringCharge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RejectDataShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectDataShareInput, context: context)
        type = Types::RejectDataShareInput.new
        type.data_share_arn = params[:data_share_arn]
        type
      end
    end

    module RejectDataShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectDataShareOutput, context: context)
        type = Types::RejectDataShareOutput.new
        type.data_share_arn = params[:data_share_arn]
        type.producer_arn = params[:producer_arn]
        type.allow_publicly_accessible_consumers = params[:allow_publicly_accessible_consumers]
        type.data_share_associations = DataShareAssociationList.build(params[:data_share_associations], context: "#{context}[:data_share_associations]") unless params[:data_share_associations].nil?
        type.managed_by = params[:managed_by]
        type
      end
    end

    module ReservedNode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNode, context: context)
        type = Types::ReservedNode.new
        type.reserved_node_id = params[:reserved_node_id]
        type.reserved_node_offering_id = params[:reserved_node_offering_id]
        type.node_type = params[:node_type]
        type.start_time = params[:start_time]
        type.duration = params[:duration]
        type.fixed_price = params[:fixed_price]
        type.usage_price = params[:usage_price]
        type.currency_code = params[:currency_code]
        type.node_count = params[:node_count]
        type.state = params[:state]
        type.offering_type = params[:offering_type]
        type.recurring_charges = RecurringChargeList.build(params[:recurring_charges], context: "#{context}[:recurring_charges]") unless params[:recurring_charges].nil?
        type.reserved_node_offering_type = params[:reserved_node_offering_type]
        type
      end
    end

    module ReservedNodeAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNodeAlreadyExistsFault, context: context)
        type = Types::ReservedNodeAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedNodeAlreadyMigratedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNodeAlreadyMigratedFault, context: context)
        type = Types::ReservedNodeAlreadyMigratedFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedNodeConfigurationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNodeConfigurationOption, context: context)
        type = Types::ReservedNodeConfigurationOption.new
        type.source_reserved_node = ReservedNode.build(params[:source_reserved_node], context: "#{context}[:source_reserved_node]") unless params[:source_reserved_node].nil?
        type.target_reserved_node_count = params[:target_reserved_node_count]
        type.target_reserved_node_offering = ReservedNodeOffering.build(params[:target_reserved_node_offering], context: "#{context}[:target_reserved_node_offering]") unless params[:target_reserved_node_offering].nil?
        type
      end
    end

    module ReservedNodeConfigurationOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedNodeConfigurationOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedNodeExchangeNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNodeExchangeNotFoundFault, context: context)
        type = Types::ReservedNodeExchangeNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedNodeExchangeStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNodeExchangeStatus, context: context)
        type = Types::ReservedNodeExchangeStatus.new
        type.reserved_node_exchange_request_id = params[:reserved_node_exchange_request_id]
        type.status = params[:status]
        type.request_time = params[:request_time]
        type.source_reserved_node_id = params[:source_reserved_node_id]
        type.source_reserved_node_type = params[:source_reserved_node_type]
        type.source_reserved_node_count = params[:source_reserved_node_count]
        type.target_reserved_node_offering_id = params[:target_reserved_node_offering_id]
        type.target_reserved_node_type = params[:target_reserved_node_type]
        type.target_reserved_node_count = params[:target_reserved_node_count]
        type
      end
    end

    module ReservedNodeExchangeStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedNodeExchangeStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedNodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedNode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedNodeNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNodeNotFoundFault, context: context)
        type = Types::ReservedNodeNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedNodeOffering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNodeOffering, context: context)
        type = Types::ReservedNodeOffering.new
        type.reserved_node_offering_id = params[:reserved_node_offering_id]
        type.node_type = params[:node_type]
        type.duration = params[:duration]
        type.fixed_price = params[:fixed_price]
        type.usage_price = params[:usage_price]
        type.currency_code = params[:currency_code]
        type.offering_type = params[:offering_type]
        type.recurring_charges = RecurringChargeList.build(params[:recurring_charges], context: "#{context}[:recurring_charges]") unless params[:recurring_charges].nil?
        type.reserved_node_offering_type = params[:reserved_node_offering_type]
        type
      end
    end

    module ReservedNodeOfferingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedNodeOffering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedNodeOfferingNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNodeOfferingNotFoundFault, context: context)
        type = Types::ReservedNodeOfferingNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedNodeQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedNodeQuotaExceededFault, context: context)
        type = Types::ReservedNodeQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ResetClusterParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetClusterParameterGroupInput, context: context)
        type = Types::ResetClusterParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.reset_all_parameters = params[:reset_all_parameters]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ResetClusterParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetClusterParameterGroupOutput, context: context)
        type = Types::ResetClusterParameterGroupOutput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.parameter_group_status = params[:parameter_group_status]
        type
      end
    end

    module ResizeClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResizeClusterInput, context: context)
        type = Types::ResizeClusterInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.cluster_type = params[:cluster_type]
        type.node_type = params[:node_type]
        type.number_of_nodes = params[:number_of_nodes]
        type.classic = params[:classic]
        type.reserved_node_id = params[:reserved_node_id]
        type.target_reserved_node_offering_id = params[:target_reserved_node_offering_id]
        type
      end
    end

    module ResizeClusterMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResizeClusterMessage, context: context)
        type = Types::ResizeClusterMessage.new
        type.cluster_identifier = params[:cluster_identifier]
        type.cluster_type = params[:cluster_type]
        type.node_type = params[:node_type]
        type.number_of_nodes = params[:number_of_nodes]
        type.classic = params[:classic]
        type.reserved_node_id = params[:reserved_node_id]
        type.target_reserved_node_offering_id = params[:target_reserved_node_offering_id]
        type
      end
    end

    module ResizeClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResizeClusterOutput, context: context)
        type = Types::ResizeClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module ResizeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResizeInfo, context: context)
        type = Types::ResizeInfo.new
        type.resize_type = params[:resize_type]
        type.allow_cancel_resize = params[:allow_cancel_resize]
        type
      end
    end

    module ResizeNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResizeNotFoundFault, context: context)
        type = Types::ResizeNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundFault, context: context)
        type = Types::ResourceNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module RestorableNodeTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RestoreFromClusterSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreFromClusterSnapshotInput, context: context)
        type = Types::RestoreFromClusterSnapshotInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.snapshot_identifier = params[:snapshot_identifier]
        type.snapshot_cluster_identifier = params[:snapshot_cluster_identifier]
        type.port = params[:port]
        type.availability_zone = params[:availability_zone]
        type.allow_version_upgrade = params[:allow_version_upgrade]
        type.cluster_subnet_group_name = params[:cluster_subnet_group_name]
        type.publicly_accessible = params[:publicly_accessible]
        type.owner_account = params[:owner_account]
        type.hsm_client_certificate_identifier = params[:hsm_client_certificate_identifier]
        type.hsm_configuration_identifier = params[:hsm_configuration_identifier]
        type.elastic_ip = params[:elastic_ip]
        type.cluster_parameter_group_name = params[:cluster_parameter_group_name]
        type.cluster_security_groups = ClusterSecurityGroupNameList.build(params[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless params[:cluster_security_groups].nil?
        type.vpc_security_group_ids = VpcSecurityGroupIdList.build(params[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless params[:vpc_security_group_ids].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.automated_snapshot_retention_period = params[:automated_snapshot_retention_period]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.kms_key_id = params[:kms_key_id]
        type.node_type = params[:node_type]
        type.enhanced_vpc_routing = params[:enhanced_vpc_routing]
        type.additional_info = params[:additional_info]
        type.iam_roles = IamRoleArnList.build(params[:iam_roles], context: "#{context}[:iam_roles]") unless params[:iam_roles].nil?
        type.maintenance_track_name = params[:maintenance_track_name]
        type.snapshot_schedule_identifier = params[:snapshot_schedule_identifier]
        type.number_of_nodes = params[:number_of_nodes]
        type.availability_zone_relocation = params[:availability_zone_relocation]
        type.aqua_configuration_status = params[:aqua_configuration_status]
        type.default_iam_role_arn = params[:default_iam_role_arn]
        type.reserved_node_id = params[:reserved_node_id]
        type.target_reserved_node_offering_id = params[:target_reserved_node_offering_id]
        type.encrypted = params[:encrypted]
        type
      end
    end

    module RestoreFromClusterSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreFromClusterSnapshotOutput, context: context)
        type = Types::RestoreFromClusterSnapshotOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module RestoreStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreStatus, context: context)
        type = Types::RestoreStatus.new
        type.status = params[:status]
        type.current_restore_rate_in_mega_bytes_per_second = params[:current_restore_rate_in_mega_bytes_per_second]
        type.snapshot_size_in_mega_bytes = params[:snapshot_size_in_mega_bytes]
        type.progress_in_mega_bytes = params[:progress_in_mega_bytes]
        type.elapsed_time_in_seconds = params[:elapsed_time_in_seconds]
        type.estimated_time_to_completion_in_seconds = params[:estimated_time_to_completion_in_seconds]
        type
      end
    end

    module RestoreTableFromClusterSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreTableFromClusterSnapshotInput, context: context)
        type = Types::RestoreTableFromClusterSnapshotInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.snapshot_identifier = params[:snapshot_identifier]
        type.source_database_name = params[:source_database_name]
        type.source_schema_name = params[:source_schema_name]
        type.source_table_name = params[:source_table_name]
        type.target_database_name = params[:target_database_name]
        type.target_schema_name = params[:target_schema_name]
        type.new_table_name = params[:new_table_name]
        type.enable_case_sensitive_identifier = params[:enable_case_sensitive_identifier]
        type
      end
    end

    module RestoreTableFromClusterSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreTableFromClusterSnapshotOutput, context: context)
        type = Types::RestoreTableFromClusterSnapshotOutput.new
        type.table_restore_status = TableRestoreStatus.build(params[:table_restore_status], context: "#{context}[:table_restore_status]") unless params[:table_restore_status].nil?
        type
      end
    end

    module ResumeClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeClusterInput, context: context)
        type = Types::ResumeClusterInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module ResumeClusterMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeClusterMessage, context: context)
        type = Types::ResumeClusterMessage.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module ResumeClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeClusterOutput, context: context)
        type = Types::ResumeClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module RevisionTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionTarget, context: context)
        type = Types::RevisionTarget.new
        type.database_revision = params[:database_revision]
        type.description = params[:description]
        type.database_revision_release_date = params[:database_revision_release_date]
        type
      end
    end

    module RevisionTargetsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RevisionTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RevokeClusterSecurityGroupIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeClusterSecurityGroupIngressInput, context: context)
        type = Types::RevokeClusterSecurityGroupIngressInput.new
        type.cluster_security_group_name = params[:cluster_security_group_name]
        type.cidrip = params[:cidrip]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type
      end
    end

    module RevokeClusterSecurityGroupIngressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeClusterSecurityGroupIngressOutput, context: context)
        type = Types::RevokeClusterSecurityGroupIngressOutput.new
        type.cluster_security_group = ClusterSecurityGroup.build(params[:cluster_security_group], context: "#{context}[:cluster_security_group]") unless params[:cluster_security_group].nil?
        type
      end
    end

    module RevokeEndpointAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeEndpointAccessInput, context: context)
        type = Types::RevokeEndpointAccessInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.account = params[:account]
        type.vpc_ids = VpcIdentifierList.build(params[:vpc_ids], context: "#{context}[:vpc_ids]") unless params[:vpc_ids].nil?
        type.force = params[:force]
        type
      end
    end

    module RevokeEndpointAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeEndpointAccessOutput, context: context)
        type = Types::RevokeEndpointAccessOutput.new
        type.grantor = params[:grantor]
        type.grantee = params[:grantee]
        type.cluster_identifier = params[:cluster_identifier]
        type.authorize_time = params[:authorize_time]
        type.cluster_status = params[:cluster_status]
        type.status = params[:status]
        type.allowed_all_vp_cs = params[:allowed_all_vp_cs]
        type.allowed_vp_cs = VpcIdentifierList.build(params[:allowed_vp_cs], context: "#{context}[:allowed_vp_cs]") unless params[:allowed_vp_cs].nil?
        type.endpoint_count = params[:endpoint_count]
        type
      end
    end

    module RevokeSnapshotAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeSnapshotAccessInput, context: context)
        type = Types::RevokeSnapshotAccessInput.new
        type.snapshot_identifier = params[:snapshot_identifier]
        type.snapshot_cluster_identifier = params[:snapshot_cluster_identifier]
        type.account_with_restore_access = params[:account_with_restore_access]
        type
      end
    end

    module RevokeSnapshotAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeSnapshotAccessOutput, context: context)
        type = Types::RevokeSnapshotAccessOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module RotateEncryptionKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateEncryptionKeyInput, context: context)
        type = Types::RotateEncryptionKeyInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module RotateEncryptionKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateEncryptionKeyOutput, context: context)
        type = Types::RotateEncryptionKeyOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module SNSInvalidTopicFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSInvalidTopicFault, context: context)
        type = Types::SNSInvalidTopicFault.new
        type.message = params[:message]
        type
      end
    end

    module SNSNoAuthorizationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSNoAuthorizationFault, context: context)
        type = Types::SNSNoAuthorizationFault.new
        type.message = params[:message]
        type
      end
    end

    module SNSTopicArnNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSTopicArnNotFoundFault, context: context)
        type = Types::SNSTopicArnNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ScheduleDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ScheduleDefinitionTypeUnsupportedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleDefinitionTypeUnsupportedFault, context: context)
        type = Types::ScheduleDefinitionTypeUnsupportedFault.new
        type.message = params[:message]
        type
      end
    end

    module ScheduledAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledAction, context: context)
        type = Types::ScheduledAction.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type.target_action = ScheduledActionType.build(params[:target_action], context: "#{context}[:target_action]") unless params[:target_action].nil?
        type.schedule = params[:schedule]
        type.iam_role = params[:iam_role]
        type.scheduled_action_description = params[:scheduled_action_description]
        type.state = params[:state]
        type.next_invocations = ScheduledActionTimeList.build(params[:next_invocations], context: "#{context}[:next_invocations]") unless params[:next_invocations].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module ScheduledActionAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledActionAlreadyExistsFault, context: context)
        type = Types::ScheduledActionAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ScheduledActionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledActionFilter, context: context)
        type = Types::ScheduledActionFilter.new
        type.name = params[:name]
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ScheduledActionFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledActionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduledActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduledActionNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledActionNotFoundFault, context: context)
        type = Types::ScheduledActionNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ScheduledActionQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledActionQuotaExceededFault, context: context)
        type = Types::ScheduledActionQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ScheduledActionTimeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ScheduledActionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledActionType, context: context)
        type = Types::ScheduledActionType.new
        type.resize_cluster = ResizeClusterMessage.build(params[:resize_cluster], context: "#{context}[:resize_cluster]") unless params[:resize_cluster].nil?
        type.pause_cluster = PauseClusterMessage.build(params[:pause_cluster], context: "#{context}[:pause_cluster]") unless params[:pause_cluster].nil?
        type.resume_cluster = ResumeClusterMessage.build(params[:resume_cluster], context: "#{context}[:resume_cluster]") unless params[:resume_cluster].nil?
        type
      end
    end

    module ScheduledActionTypeUnsupportedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledActionTypeUnsupportedFault, context: context)
        type = Types::ScheduledActionTypeUnsupportedFault.new
        type.message = params[:message]
        type
      end
    end

    module ScheduledSnapshotTimeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Snapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Snapshot, context: context)
        type = Types::Snapshot.new
        type.snapshot_identifier = params[:snapshot_identifier]
        type.cluster_identifier = params[:cluster_identifier]
        type.snapshot_create_time = params[:snapshot_create_time]
        type.status = params[:status]
        type.port = params[:port]
        type.availability_zone = params[:availability_zone]
        type.cluster_create_time = params[:cluster_create_time]
        type.master_username = params[:master_username]
        type.cluster_version = params[:cluster_version]
        type.engine_full_version = params[:engine_full_version]
        type.snapshot_type = params[:snapshot_type]
        type.node_type = params[:node_type]
        type.number_of_nodes = params[:number_of_nodes]
        type.db_name = params[:db_name]
        type.vpc_id = params[:vpc_id]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.encrypted_with_hsm = params[:encrypted_with_hsm]
        type.accounts_with_restore_access = AccountsWithRestoreAccessList.build(params[:accounts_with_restore_access], context: "#{context}[:accounts_with_restore_access]") unless params[:accounts_with_restore_access].nil?
        type.owner_account = params[:owner_account]
        type.total_backup_size_in_mega_bytes = params[:total_backup_size_in_mega_bytes]
        type.actual_incremental_backup_size_in_mega_bytes = params[:actual_incremental_backup_size_in_mega_bytes]
        type.backup_progress_in_mega_bytes = params[:backup_progress_in_mega_bytes]
        type.current_backup_rate_in_mega_bytes_per_second = params[:current_backup_rate_in_mega_bytes_per_second]
        type.estimated_seconds_to_completion = params[:estimated_seconds_to_completion]
        type.elapsed_time_in_seconds = params[:elapsed_time_in_seconds]
        type.source_region = params[:source_region]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.restorable_node_types = RestorableNodeTypeList.build(params[:restorable_node_types], context: "#{context}[:restorable_node_types]") unless params[:restorable_node_types].nil?
        type.enhanced_vpc_routing = params[:enhanced_vpc_routing]
        type.maintenance_track_name = params[:maintenance_track_name]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.manual_snapshot_remaining_days = params[:manual_snapshot_remaining_days]
        type.snapshot_retention_start_time = params[:snapshot_retention_start_time]
        type
      end
    end

    module SnapshotCopyAlreadyDisabledFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotCopyAlreadyDisabledFault, context: context)
        type = Types::SnapshotCopyAlreadyDisabledFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotCopyAlreadyEnabledFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotCopyAlreadyEnabledFault, context: context)
        type = Types::SnapshotCopyAlreadyEnabledFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotCopyDisabledFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotCopyDisabledFault, context: context)
        type = Types::SnapshotCopyDisabledFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotCopyGrant
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotCopyGrant, context: context)
        type = Types::SnapshotCopyGrant.new
        type.snapshot_copy_grant_name = params[:snapshot_copy_grant_name]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SnapshotCopyGrantAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotCopyGrantAlreadyExistsFault, context: context)
        type = Types::SnapshotCopyGrantAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotCopyGrantList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnapshotCopyGrant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SnapshotCopyGrantNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotCopyGrantNotFoundFault, context: context)
        type = Types::SnapshotCopyGrantNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotCopyGrantQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotCopyGrantQuotaExceededFault, context: context)
        type = Types::SnapshotCopyGrantQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotErrorMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotErrorMessage, context: context)
        type = Types::SnapshotErrorMessage.new
        type.snapshot_identifier = params[:snapshot_identifier]
        type.snapshot_cluster_identifier = params[:snapshot_cluster_identifier]
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module SnapshotIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Snapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SnapshotSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotSchedule, context: context)
        type = Types::SnapshotSchedule.new
        type.schedule_definitions = ScheduleDefinitionList.build(params[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless params[:schedule_definitions].nil?
        type.schedule_identifier = params[:schedule_identifier]
        type.schedule_description = params[:schedule_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_invocations = ScheduledSnapshotTimeList.build(params[:next_invocations], context: "#{context}[:next_invocations]") unless params[:next_invocations].nil?
        type.associated_cluster_count = params[:associated_cluster_count]
        type.associated_clusters = AssociatedClusterList.build(params[:associated_clusters], context: "#{context}[:associated_clusters]") unless params[:associated_clusters].nil?
        type
      end
    end

    module SnapshotScheduleAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotScheduleAlreadyExistsFault, context: context)
        type = Types::SnapshotScheduleAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotScheduleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnapshotSchedule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SnapshotScheduleNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotScheduleNotFoundFault, context: context)
        type = Types::SnapshotScheduleNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotScheduleQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotScheduleQuotaExceededFault, context: context)
        type = Types::SnapshotScheduleQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotScheduleUpdateInProgressFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotScheduleUpdateInProgressFault, context: context)
        type = Types::SnapshotScheduleUpdateInProgressFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotSortingEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotSortingEntity, context: context)
        type = Types::SnapshotSortingEntity.new
        type.attribute = params[:attribute]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module SnapshotSortingEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnapshotSortingEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SourceNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceNotFoundFault, context: context)
        type = Types::SourceNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module Subnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subnet, context: context)
        type = Types::Subnet.new
        type.subnet_identifier = params[:subnet_identifier]
        type.subnet_availability_zone = AvailabilityZone.build(params[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless params[:subnet_availability_zone].nil?
        type.subnet_status = params[:subnet_status]
        type
      end
    end

    module SubnetAlreadyInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetAlreadyInUse, context: context)
        type = Types::SubnetAlreadyInUse.new
        type.message = params[:message]
        type
      end
    end

    module SubnetIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subnet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubscriptionAlreadyExistFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionAlreadyExistFault, context: context)
        type = Types::SubscriptionAlreadyExistFault.new
        type.message = params[:message]
        type
      end
    end

    module SubscriptionCategoryNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionCategoryNotFoundFault, context: context)
        type = Types::SubscriptionCategoryNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SubscriptionEventIdNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionEventIdNotFoundFault, context: context)
        type = Types::SubscriptionEventIdNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SubscriptionNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionNotFoundFault, context: context)
        type = Types::SubscriptionNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SubscriptionSeverityNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionSeverityNotFoundFault, context: context)
        type = Types::SubscriptionSeverityNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SupportedOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SupportedOperation, context: context)
        type = Types::SupportedOperation.new
        type.operation_name = params[:operation_name]
        type
      end
    end

    module SupportedOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SupportedOperation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SupportedPlatform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SupportedPlatform, context: context)
        type = Types::SupportedPlatform.new
        type.name = params[:name]
        type
      end
    end

    module SupportedPlatformsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SupportedPlatform.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableLimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableLimitExceededFault, context: context)
        type = Types::TableLimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module TableRestoreNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableRestoreNotFoundFault, context: context)
        type = Types::TableRestoreNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module TableRestoreStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableRestoreStatus, context: context)
        type = Types::TableRestoreStatus.new
        type.table_restore_request_id = params[:table_restore_request_id]
        type.status = params[:status]
        type.message = params[:message]
        type.request_time = params[:request_time]
        type.progress_in_mega_bytes = params[:progress_in_mega_bytes]
        type.total_data_in_mega_bytes = params[:total_data_in_mega_bytes]
        type.cluster_identifier = params[:cluster_identifier]
        type.snapshot_identifier = params[:snapshot_identifier]
        type.source_database_name = params[:source_database_name]
        type.source_schema_name = params[:source_schema_name]
        type.source_table_name = params[:source_table_name]
        type.target_database_name = params[:target_database_name]
        type.target_schema_name = params[:target_schema_name]
        type.new_table_name = params[:new_table_name]
        type
      end
    end

    module TableRestoreStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableRestoreStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagLimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagLimitExceededFault, context: context)
        type = Types::TagLimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TaggedResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaggedResource, context: context)
        type = Types::TaggedResource.new
        type.tag = Tag.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?
        type.resource_name = params[:resource_name]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module TaggedResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaggedResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrackList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceTrack.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnauthorizedOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedOperation, context: context)
        type = Types::UnauthorizedOperation.new
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedPartnerIntegrationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedPartnerIntegrationFault, context: context)
        type = Types::UnauthorizedPartnerIntegrationFault.new
        type.message = params[:message]
        type
      end
    end

    module UnknownSnapshotCopyRegionFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnknownSnapshotCopyRegionFault, context: context)
        type = Types::UnknownSnapshotCopyRegionFault.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedOperationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationFault, context: context)
        type = Types::UnsupportedOperationFault.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedOptionFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOptionFault, context: context)
        type = Types::UnsupportedOptionFault.new
        type.message = params[:message]
        type
      end
    end

    module UpdatePartnerStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePartnerStatusInput, context: context)
        type = Types::UpdatePartnerStatusInput.new
        type.account_id = params[:account_id]
        type.cluster_identifier = params[:cluster_identifier]
        type.database_name = params[:database_name]
        type.partner_name = params[:partner_name]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module UpdatePartnerStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePartnerStatusOutput, context: context)
        type = Types::UpdatePartnerStatusOutput.new
        type.database_name = params[:database_name]
        type.partner_name = params[:partner_name]
        type
      end
    end

    module UpdateTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTarget, context: context)
        type = Types::UpdateTarget.new
        type.maintenance_track_name = params[:maintenance_track_name]
        type.database_version = params[:database_version]
        type.supported_operations = SupportedOperationList.build(params[:supported_operations], context: "#{context}[:supported_operations]") unless params[:supported_operations].nil?
        type
      end
    end

    module UsageLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageLimit, context: context)
        type = Types::UsageLimit.new
        type.usage_limit_id = params[:usage_limit_id]
        type.cluster_identifier = params[:cluster_identifier]
        type.feature_type = params[:feature_type]
        type.limit_type = params[:limit_type]
        type.amount = params[:amount]
        type.period = params[:period]
        type.breach_action = params[:breach_action]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UsageLimitAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageLimitAlreadyExistsFault, context: context)
        type = Types::UsageLimitAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module UsageLimitNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageLimitNotFoundFault, context: context)
        type = Types::UsageLimitNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module UsageLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageLimit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValueStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VpcEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcEndpoint, context: context)
        type = Types::VpcEndpoint.new
        type.vpc_endpoint_id = params[:vpc_endpoint_id]
        type.vpc_id = params[:vpc_id]
        type.network_interfaces = NetworkInterfaceList.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type
      end
    end

    module VpcEndpointsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VpcSecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VpcSecurityGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcSecurityGroupMembership, context: context)
        type = Types::VpcSecurityGroupMembership.new
        type.vpc_security_group_id = params[:vpc_security_group_id]
        type.status = params[:status]
        type
      end
    end

    module VpcSecurityGroupMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcSecurityGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
