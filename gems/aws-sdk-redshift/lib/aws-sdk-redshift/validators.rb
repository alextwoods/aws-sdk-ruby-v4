# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Redshift
  module Validators

    class AcceptReservedNodeExchangeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptReservedNodeExchangeInput, context: context)
        Hearth::Validator.validate!(input[:reserved_node_id], ::String, context: "#{context}[:reserved_node_id]")
        Hearth::Validator.validate!(input[:target_reserved_node_offering_id], ::String, context: "#{context}[:target_reserved_node_offering_id]")
      end
    end

    class AcceptReservedNodeExchangeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptReservedNodeExchangeOutput, context: context)
        Validators::ReservedNode.validate!(input[:exchanged_reserved_node], context: "#{context}[:exchanged_reserved_node]") unless input[:exchanged_reserved_node].nil?
      end
    end

    class AccessToClusterDeniedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessToClusterDeniedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccessToSnapshotDeniedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessToSnapshotDeniedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAttribute, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Validators::AttributeValueList.validate!(input[:attribute_values], context: "#{context}[:attribute_values]") unless input[:attribute_values].nil?
      end
    end

    class AccountWithRestoreAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountWithRestoreAccess, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:account_alias], ::String, context: "#{context}[:account_alias]")
      end
    end

    class AccountsWithRestoreAccessList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountWithRestoreAccess.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddPartnerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddPartnerInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
      end
    end

    class AddPartnerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddPartnerOutput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
      end
    end

    class AquaConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AquaConfiguration, context: context)
        Hearth::Validator.validate!(input[:aqua_status], ::String, context: "#{context}[:aqua_status]")
        Hearth::Validator.validate!(input[:aqua_configuration_status], ::String, context: "#{context}[:aqua_configuration_status]")
      end
    end

    class AssociateDataShareConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDataShareConsumerInput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:associate_entire_account], ::TrueClass, ::FalseClass, context: "#{context}[:associate_entire_account]")
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate!(input[:consumer_region], ::String, context: "#{context}[:consumer_region]")
      end
    end

    class AssociateDataShareConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDataShareConsumerOutput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:producer_arn], ::String, context: "#{context}[:producer_arn]")
        Hearth::Validator.validate!(input[:allow_publicly_accessible_consumers], ::TrueClass, ::FalseClass, context: "#{context}[:allow_publicly_accessible_consumers]")
        Validators::DataShareAssociationList.validate!(input[:data_share_associations], context: "#{context}[:data_share_associations]") unless input[:data_share_associations].nil?
        Hearth::Validator.validate!(input[:managed_by], ::String, context: "#{context}[:managed_by]")
      end
    end

    class AssociatedClusterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterAssociatedToSchedule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttributeValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttributeValueTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeValueTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeValueTarget, context: context)
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
      end
    end

    class AuthenticationProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationProfile, context: context)
        Hearth::Validator.validate!(input[:authentication_profile_name], ::String, context: "#{context}[:authentication_profile_name]")
        Hearth::Validator.validate!(input[:authentication_profile_content], ::String, context: "#{context}[:authentication_profile_content]")
      end
    end

    class AuthenticationProfileAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationProfileAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthenticationProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuthenticationProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthenticationProfileNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationProfileNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthenticationProfileQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationProfileQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthorizationAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthorizationNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthorizationQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthorizeClusterSecurityGroupIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeClusterSecurityGroupIngressInput, context: context)
        Hearth::Validator.validate!(input[:cluster_security_group_name], ::String, context: "#{context}[:cluster_security_group_name]")
        Hearth::Validator.validate!(input[:cidrip], ::String, context: "#{context}[:cidrip]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
      end
    end

    class AuthorizeClusterSecurityGroupIngressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeClusterSecurityGroupIngressOutput, context: context)
        Validators::ClusterSecurityGroup.validate!(input[:cluster_security_group], context: "#{context}[:cluster_security_group]") unless input[:cluster_security_group].nil?
      end
    end

    class AuthorizeDataShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeDataShareInput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:consumer_identifier], ::String, context: "#{context}[:consumer_identifier]")
      end
    end

    class AuthorizeDataShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeDataShareOutput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:producer_arn], ::String, context: "#{context}[:producer_arn]")
        Hearth::Validator.validate!(input[:allow_publicly_accessible_consumers], ::TrueClass, ::FalseClass, context: "#{context}[:allow_publicly_accessible_consumers]")
        Validators::DataShareAssociationList.validate!(input[:data_share_associations], context: "#{context}[:data_share_associations]") unless input[:data_share_associations].nil?
        Hearth::Validator.validate!(input[:managed_by], ::String, context: "#{context}[:managed_by]")
      end
    end

    class AuthorizeEndpointAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeEndpointAccessInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Validators::VpcIdentifierList.validate!(input[:vpc_ids], context: "#{context}[:vpc_ids]") unless input[:vpc_ids].nil?
      end
    end

    class AuthorizeEndpointAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeEndpointAccessOutput, context: context)
        Hearth::Validator.validate!(input[:grantor], ::String, context: "#{context}[:grantor]")
        Hearth::Validator.validate!(input[:grantee], ::String, context: "#{context}[:grantee]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:authorize_time], ::Time, context: "#{context}[:authorize_time]")
        Hearth::Validator.validate!(input[:cluster_status], ::String, context: "#{context}[:cluster_status]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:allowed_all_vp_cs], ::TrueClass, ::FalseClass, context: "#{context}[:allowed_all_vp_cs]")
        Validators::VpcIdentifierList.validate!(input[:allowed_vp_cs], context: "#{context}[:allowed_vp_cs]") unless input[:allowed_vp_cs].nil?
        Hearth::Validator.validate!(input[:endpoint_count], ::Integer, context: "#{context}[:endpoint_count]")
      end
    end

    class AuthorizeSnapshotAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeSnapshotAccessInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_cluster_identifier], ::String, context: "#{context}[:snapshot_cluster_identifier]")
        Hearth::Validator.validate!(input[:account_with_restore_access], ::String, context: "#{context}[:account_with_restore_access]")
      end
    end

    class AuthorizeSnapshotAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeSnapshotAccessOutput, context: context)
        Validators::Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class AvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::SupportedPlatformsList.validate!(input[:supported_platforms], context: "#{context}[:supported_platforms]") unless input[:supported_platforms].nil?
      end
    end

    class AvailabilityZoneList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AvailabilityZone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDeleteClusterSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteClusterSnapshotsInput, context: context)
        Validators::DeleteClusterSnapshotMessageList.validate!(input[:identifiers], context: "#{context}[:identifiers]") unless input[:identifiers].nil?
      end
    end

    class BatchDeleteClusterSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteClusterSnapshotsOutput, context: context)
        Validators::SnapshotIdentifierList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Validators::BatchSnapshotOperationErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDeleteRequestSizeExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteRequestSizeExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchModifyClusterSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchModifyClusterSnapshotsInput, context: context)
        Validators::SnapshotIdentifierList.validate!(input[:snapshot_identifier_list], context: "#{context}[:snapshot_identifier_list]") unless input[:snapshot_identifier_list].nil?
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class BatchModifyClusterSnapshotsLimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchModifyClusterSnapshotsLimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchModifyClusterSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchModifyClusterSnapshotsOutput, context: context)
        Validators::SnapshotIdentifierList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Validators::BatchSnapshotOperationErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchSnapshotOperationErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SnapshotErrorMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchSnapshotOperationErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SnapshotErrorMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BucketNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelResizeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelResizeInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class CancelResizeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelResizeOutput, context: context)
        Hearth::Validator.validate!(input[:target_node_type], ::String, context: "#{context}[:target_node_type]")
        Hearth::Validator.validate!(input[:target_number_of_nodes], ::Integer, context: "#{context}[:target_number_of_nodes]")
        Hearth::Validator.validate!(input[:target_cluster_type], ::String, context: "#{context}[:target_cluster_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ImportTablesCompleted.validate!(input[:import_tables_completed], context: "#{context}[:import_tables_completed]") unless input[:import_tables_completed].nil?
        Validators::ImportTablesInProgress.validate!(input[:import_tables_in_progress], context: "#{context}[:import_tables_in_progress]") unless input[:import_tables_in_progress].nil?
        Validators::ImportTablesNotStarted.validate!(input[:import_tables_not_started], context: "#{context}[:import_tables_not_started]") unless input[:import_tables_not_started].nil?
        Hearth::Validator.validate!(input[:avg_resize_rate_in_mega_bytes_per_second], ::Float, context: "#{context}[:avg_resize_rate_in_mega_bytes_per_second]")
        Hearth::Validator.validate!(input[:total_resize_data_in_mega_bytes], ::Integer, context: "#{context}[:total_resize_data_in_mega_bytes]")
        Hearth::Validator.validate!(input[:progress_in_mega_bytes], ::Integer, context: "#{context}[:progress_in_mega_bytes]")
        Hearth::Validator.validate!(input[:elapsed_time_in_seconds], ::Integer, context: "#{context}[:elapsed_time_in_seconds]")
        Hearth::Validator.validate!(input[:estimated_time_to_completion_in_seconds], ::Integer, context: "#{context}[:estimated_time_to_completion_in_seconds]")
        Hearth::Validator.validate!(input[:resize_type], ::String, context: "#{context}[:resize_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:target_encryption_type], ::String, context: "#{context}[:target_encryption_type]")
        Hearth::Validator.validate!(input[:data_transfer_progress_percent], ::Float, context: "#{context}[:data_transfer_progress_percent]")
      end
    end

    class Cluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cluster, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:cluster_status], ::String, context: "#{context}[:cluster_status]")
        Hearth::Validator.validate!(input[:cluster_availability_status], ::String, context: "#{context}[:cluster_availability_status]")
        Hearth::Validator.validate!(input[:modify_status], ::String, context: "#{context}[:modify_status]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Validators::Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        Hearth::Validator.validate!(input[:cluster_create_time], ::Time, context: "#{context}[:cluster_create_time]")
        Hearth::Validator.validate!(input[:automated_snapshot_retention_period], ::Integer, context: "#{context}[:automated_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Validators::ClusterSecurityGroupMembershipList.validate!(input[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless input[:cluster_security_groups].nil?
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Validators::ClusterParameterGroupStatusList.validate!(input[:cluster_parameter_groups], context: "#{context}[:cluster_parameter_groups]") unless input[:cluster_parameter_groups].nil?
        Hearth::Validator.validate!(input[:cluster_subnet_group_name], ::String, context: "#{context}[:cluster_subnet_group_name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::PendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:allow_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_version_upgrade]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Validators::RestoreStatus.validate!(input[:restore_status], context: "#{context}[:restore_status]") unless input[:restore_status].nil?
        Validators::DataTransferProgress.validate!(input[:data_transfer_progress], context: "#{context}[:data_transfer_progress]") unless input[:data_transfer_progress].nil?
        Validators::HsmStatus.validate!(input[:hsm_status], context: "#{context}[:hsm_status]") unless input[:hsm_status].nil?
        Validators::ClusterSnapshotCopyStatus.validate!(input[:cluster_snapshot_copy_status], context: "#{context}[:cluster_snapshot_copy_status]") unless input[:cluster_snapshot_copy_status].nil?
        Hearth::Validator.validate!(input[:cluster_public_key], ::String, context: "#{context}[:cluster_public_key]")
        Validators::ClusterNodesList.validate!(input[:cluster_nodes], context: "#{context}[:cluster_nodes]") unless input[:cluster_nodes].nil?
        Validators::ElasticIpStatus.validate!(input[:elastic_ip_status], context: "#{context}[:elastic_ip_status]") unless input[:elastic_ip_status].nil?
        Hearth::Validator.validate!(input[:cluster_revision_number], ::String, context: "#{context}[:cluster_revision_number]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:enhanced_vpc_routing], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_vpc_routing]")
        Validators::ClusterIamRoleList.validate!(input[:iam_roles], context: "#{context}[:iam_roles]") unless input[:iam_roles].nil?
        Validators::PendingActionsList.validate!(input[:pending_actions], context: "#{context}[:pending_actions]") unless input[:pending_actions].nil?
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:elastic_resize_number_of_node_options], ::String, context: "#{context}[:elastic_resize_number_of_node_options]")
        Validators::DeferredMaintenanceWindowsList.validate!(input[:deferred_maintenance_windows], context: "#{context}[:deferred_maintenance_windows]") unless input[:deferred_maintenance_windows].nil?
        Hearth::Validator.validate!(input[:snapshot_schedule_identifier], ::String, context: "#{context}[:snapshot_schedule_identifier]")
        Hearth::Validator.validate!(input[:snapshot_schedule_state], ::String, context: "#{context}[:snapshot_schedule_state]")
        Hearth::Validator.validate!(input[:expected_next_snapshot_schedule_time], ::Time, context: "#{context}[:expected_next_snapshot_schedule_time]")
        Hearth::Validator.validate!(input[:expected_next_snapshot_schedule_time_status], ::String, context: "#{context}[:expected_next_snapshot_schedule_time_status]")
        Hearth::Validator.validate!(input[:next_maintenance_window_start_time], ::Time, context: "#{context}[:next_maintenance_window_start_time]")
        Validators::ResizeInfo.validate!(input[:resize_info], context: "#{context}[:resize_info]") unless input[:resize_info].nil?
        Hearth::Validator.validate!(input[:availability_zone_relocation_status], ::String, context: "#{context}[:availability_zone_relocation_status]")
        Hearth::Validator.validate!(input[:cluster_namespace_arn], ::String, context: "#{context}[:cluster_namespace_arn]")
        Hearth::Validator.validate!(input[:total_storage_capacity_in_mega_bytes], ::Integer, context: "#{context}[:total_storage_capacity_in_mega_bytes]")
        Validators::AquaConfiguration.validate!(input[:aqua_configuration], context: "#{context}[:aqua_configuration]") unless input[:aqua_configuration].nil?
        Hearth::Validator.validate!(input[:default_iam_role_arn], ::String, context: "#{context}[:default_iam_role_arn]")
        Validators::ReservedNodeExchangeStatus.validate!(input[:reserved_node_exchange_status], context: "#{context}[:reserved_node_exchange_status]") unless input[:reserved_node_exchange_status].nil?
      end
    end

    class ClusterAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterAssociatedToSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterAssociatedToSchedule, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:schedule_association_state], ::String, context: "#{context}[:schedule_association_state]")
      end
    end

    class ClusterDbRevision
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterDbRevision, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:current_database_revision], ::String, context: "#{context}[:current_database_revision]")
        Hearth::Validator.validate!(input[:database_revision_release_date], ::Time, context: "#{context}[:database_revision_release_date]")
        Validators::RevisionTargetsList.validate!(input[:revision_targets], context: "#{context}[:revision_targets]") unless input[:revision_targets].nil?
      end
    end

    class ClusterDbRevisionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterDbRevision.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterIamRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterIamRole, context: context)
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:apply_status], ::String, context: "#{context}[:apply_status]")
      end
    end

    class ClusterIamRoleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterIamRole.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Cluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterNode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterNode, context: context)
        Hearth::Validator.validate!(input[:node_role], ::String, context: "#{context}[:node_role]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Hearth::Validator.validate!(input[:public_ip_address], ::String, context: "#{context}[:public_ip_address]")
      end
    end

    class ClusterNodesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterNode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterOnLatestRevisionFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterOnLatestRevisionFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterParameterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterParameterGroup, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_group_family], ::String, context: "#{context}[:parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ClusterParameterGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterParameterGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterParameterGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterParameterGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterParameterGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterParameterGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterParameterGroupStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterParameterGroupStatus, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_apply_status], ::String, context: "#{context}[:parameter_apply_status]")
        Validators::ClusterParameterStatusList.validate!(input[:cluster_parameter_status_list], context: "#{context}[:cluster_parameter_status_list]") unless input[:cluster_parameter_status_list].nil?
      end
    end

    class ClusterParameterGroupStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterParameterGroupStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterParameterStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterParameterStatus, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_apply_status], ::String, context: "#{context}[:parameter_apply_status]")
        Hearth::Validator.validate!(input[:parameter_apply_error_description], ::String, context: "#{context}[:parameter_apply_error_description]")
      end
    end

    class ClusterParameterStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterParameterStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:cluster_security_group_name], ::String, context: "#{context}[:cluster_security_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EC2SecurityGroupList.validate!(input[:ec2_security_groups], context: "#{context}[:ec2_security_groups]") unless input[:ec2_security_groups].nil?
        Validators::IPRangeList.validate!(input[:ip_ranges], context: "#{context}[:ip_ranges]") unless input[:ip_ranges].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ClusterSecurityGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSecurityGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSecurityGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSecurityGroupMembership, context: context)
        Hearth::Validator.validate!(input[:cluster_security_group_name], ::String, context: "#{context}[:cluster_security_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ClusterSecurityGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterSecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterSecurityGroupNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClusterSecurityGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSecurityGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSecurityGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSecurityGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterSecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterSnapshotAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSnapshotAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSnapshotCopyStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSnapshotCopyStatus, context: context)
        Hearth::Validator.validate!(input[:destination_region], ::String, context: "#{context}[:destination_region]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:snapshot_copy_grant_name], ::String, context: "#{context}[:snapshot_copy_grant_name]")
      end
    end

    class ClusterSnapshotNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSnapshotNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSnapshotQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSnapshotQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSubnetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSubnetGroup, context: context)
        Hearth::Validator.validate!(input[:cluster_subnet_group_name], ::String, context: "#{context}[:cluster_subnet_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_group_status], ::String, context: "#{context}[:subnet_group_status]")
        Validators::SubnetList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ClusterSubnetGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSubnetGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSubnetGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSubnetGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSubnetGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSubnetGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSubnetGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterSubnetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterSubnetQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSubnetQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterVersion, context: context)
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:cluster_parameter_group_family], ::String, context: "#{context}[:cluster_parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ClusterVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CopyClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:source_snapshot_identifier], ::String, context: "#{context}[:source_snapshot_identifier]")
        Hearth::Validator.validate!(input[:source_snapshot_cluster_identifier], ::String, context: "#{context}[:source_snapshot_cluster_identifier]")
        Hearth::Validator.validate!(input[:target_snapshot_identifier], ::String, context: "#{context}[:target_snapshot_identifier]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
      end
    end

    class CopyClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyClusterSnapshotOutput, context: context)
        Validators::Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class CopyToRegionDisabledFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyToRegionDisabledFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateAuthenticationProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuthenticationProfileInput, context: context)
        Hearth::Validator.validate!(input[:authentication_profile_name], ::String, context: "#{context}[:authentication_profile_name]")
        Hearth::Validator.validate!(input[:authentication_profile_content], ::String, context: "#{context}[:authentication_profile_content]")
      end
    end

    class CreateAuthenticationProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuthenticationProfileOutput, context: context)
        Hearth::Validator.validate!(input[:authentication_profile_name], ::String, context: "#{context}[:authentication_profile_name]")
        Hearth::Validator.validate!(input[:authentication_profile_content], ::String, context: "#{context}[:authentication_profile_content]")
      end
    end

    class CreateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterInput, context: context)
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:cluster_type], ::String, context: "#{context}[:cluster_type]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Validators::ClusterSecurityGroupNameList.validate!(input[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless input[:cluster_security_groups].nil?
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:cluster_subnet_group_name], ::String, context: "#{context}[:cluster_subnet_group_name]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:cluster_parameter_group_name], ::String, context: "#{context}[:cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:automated_snapshot_retention_period], ::Integer, context: "#{context}[:automated_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:allow_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_version_upgrade]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:hsm_client_certificate_identifier], ::String, context: "#{context}[:hsm_client_certificate_identifier]")
        Hearth::Validator.validate!(input[:hsm_configuration_identifier], ::String, context: "#{context}[:hsm_configuration_identifier]")
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:enhanced_vpc_routing], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_vpc_routing]")
        Hearth::Validator.validate!(input[:additional_info], ::String, context: "#{context}[:additional_info]")
        Validators::IamRoleArnList.validate!(input[:iam_roles], context: "#{context}[:iam_roles]") unless input[:iam_roles].nil?
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:snapshot_schedule_identifier], ::String, context: "#{context}[:snapshot_schedule_identifier]")
        Hearth::Validator.validate!(input[:availability_zone_relocation], ::TrueClass, ::FalseClass, context: "#{context}[:availability_zone_relocation]")
        Hearth::Validator.validate!(input[:aqua_configuration_status], ::String, context: "#{context}[:aqua_configuration_status]")
        Hearth::Validator.validate!(input[:default_iam_role_arn], ::String, context: "#{context}[:default_iam_role_arn]")
        Hearth::Validator.validate!(input[:load_sample_data], ::String, context: "#{context}[:load_sample_data]")
      end
    end

    class CreateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class CreateClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_group_family], ::String, context: "#{context}[:parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterParameterGroupOutput, context: context)
        Validators::ClusterParameterGroup.validate!(input[:cluster_parameter_group], context: "#{context}[:cluster_parameter_group]") unless input[:cluster_parameter_group].nil?
      end
    end

    class CreateClusterSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:cluster_security_group_name], ::String, context: "#{context}[:cluster_security_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateClusterSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterSecurityGroupOutput, context: context)
        Validators::ClusterSecurityGroup.validate!(input[:cluster_security_group], context: "#{context}[:cluster_security_group]") unless input[:cluster_security_group].nil?
      end
    end

    class CreateClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterSnapshotOutput, context: context)
        Validators::Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class CreateClusterSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:cluster_subnet_group_name], ::String, context: "#{context}[:cluster_subnet_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateClusterSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterSubnetGroupOutput, context: context)
        Validators::ClusterSubnetGroup.validate!(input[:cluster_subnet_group], context: "#{context}[:cluster_subnet_group]") unless input[:cluster_subnet_group].nil?
      end
    end

    class CreateEndpointAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointAccessInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
      end
    end

    class CreateEndpointAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointAccessOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_create_time], ::Time, context: "#{context}[:endpoint_create_time]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Validators::VpcEndpoint.validate!(input[:vpc_endpoint], context: "#{context}[:vpc_endpoint]") unless input[:vpc_endpoint].nil?
      end
    end

    class CreateEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::SourceIdsList.validate!(input[:source_ids], context: "#{context}[:source_ids]") unless input[:source_ids].nil?
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class CreateHsmClientCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHsmClientCertificateInput, context: context)
        Hearth::Validator.validate!(input[:hsm_client_certificate_identifier], ::String, context: "#{context}[:hsm_client_certificate_identifier]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateHsmClientCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHsmClientCertificateOutput, context: context)
        Validators::HsmClientCertificate.validate!(input[:hsm_client_certificate], context: "#{context}[:hsm_client_certificate]") unless input[:hsm_client_certificate].nil?
      end
    end

    class CreateHsmConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHsmConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:hsm_configuration_identifier], ::String, context: "#{context}[:hsm_configuration_identifier]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:hsm_ip_address], ::String, context: "#{context}[:hsm_ip_address]")
        Hearth::Validator.validate!(input[:hsm_partition_name], ::String, context: "#{context}[:hsm_partition_name]")
        Hearth::Validator.validate!(input[:hsm_partition_password], ::String, context: "#{context}[:hsm_partition_password]")
        Hearth::Validator.validate!(input[:hsm_server_public_certificate], ::String, context: "#{context}[:hsm_server_public_certificate]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateHsmConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHsmConfigurationOutput, context: context)
        Validators::HsmConfiguration.validate!(input[:hsm_configuration], context: "#{context}[:hsm_configuration]") unless input[:hsm_configuration].nil?
      end
    end

    class CreateScheduledActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScheduledActionInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Validators::ScheduledActionType.validate!(input[:target_action], context: "#{context}[:target_action]") unless input[:target_action].nil?
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:scheduled_action_description], ::String, context: "#{context}[:scheduled_action_description]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
      end
    end

    class CreateScheduledActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScheduledActionOutput, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Validators::ScheduledActionType.validate!(input[:target_action], context: "#{context}[:target_action]") unless input[:target_action].nil?
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:scheduled_action_description], ::String, context: "#{context}[:scheduled_action_description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::ScheduledActionTimeList.validate!(input[:next_invocations], context: "#{context}[:next_invocations]") unless input[:next_invocations].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class CreateSnapshotCopyGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotCopyGrantInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_copy_grant_name], ::String, context: "#{context}[:snapshot_copy_grant_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSnapshotCopyGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotCopyGrantOutput, context: context)
        Validators::SnapshotCopyGrant.validate!(input[:snapshot_copy_grant], context: "#{context}[:snapshot_copy_grant]") unless input[:snapshot_copy_grant].nil?
      end
    end

    class CreateSnapshotScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotScheduleInput, context: context)
        Validators::ScheduleDefinitionList.validate!(input[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless input[:schedule_definitions].nil?
        Hearth::Validator.validate!(input[:schedule_identifier], ::String, context: "#{context}[:schedule_identifier]")
        Hearth::Validator.validate!(input[:schedule_description], ::String, context: "#{context}[:schedule_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:next_invocations], ::Integer, context: "#{context}[:next_invocations]")
      end
    end

    class CreateSnapshotScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotScheduleOutput, context: context)
        Validators::ScheduleDefinitionList.validate!(input[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless input[:schedule_definitions].nil?
        Hearth::Validator.validate!(input[:schedule_identifier], ::String, context: "#{context}[:schedule_identifier]")
        Hearth::Validator.validate!(input[:schedule_description], ::String, context: "#{context}[:schedule_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ScheduledSnapshotTimeList.validate!(input[:next_invocations], context: "#{context}[:next_invocations]") unless input[:next_invocations].nil?
        Hearth::Validator.validate!(input[:associated_cluster_count], ::Integer, context: "#{context}[:associated_cluster_count]")
        Validators::AssociatedClusterList.validate!(input[:associated_clusters], context: "#{context}[:associated_clusters]") unless input[:associated_clusters].nil?
      end
    end

    class CreateTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsOutput, context: context)
      end
    end

    class CreateUsageLimitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUsageLimitInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:feature_type], ::String, context: "#{context}[:feature_type]")
        Hearth::Validator.validate!(input[:limit_type], ::String, context: "#{context}[:limit_type]")
        Hearth::Validator.validate!(input[:amount], ::Integer, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:breach_action], ::String, context: "#{context}[:breach_action]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUsageLimitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUsageLimitOutput, context: context)
        Hearth::Validator.validate!(input[:usage_limit_id], ::String, context: "#{context}[:usage_limit_id]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:feature_type], ::String, context: "#{context}[:feature_type]")
        Hearth::Validator.validate!(input[:limit_type], ::String, context: "#{context}[:limit_type]")
        Hearth::Validator.validate!(input[:amount], ::Integer, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:breach_action], ::String, context: "#{context}[:breach_action]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DataShare
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataShare, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:producer_arn], ::String, context: "#{context}[:producer_arn]")
        Hearth::Validator.validate!(input[:allow_publicly_accessible_consumers], ::TrueClass, ::FalseClass, context: "#{context}[:allow_publicly_accessible_consumers]")
        Validators::DataShareAssociationList.validate!(input[:data_share_associations], context: "#{context}[:data_share_associations]") unless input[:data_share_associations].nil?
        Hearth::Validator.validate!(input[:managed_by], ::String, context: "#{context}[:managed_by]")
      end
    end

    class DataShareAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataShareAssociation, context: context)
        Hearth::Validator.validate!(input[:consumer_identifier], ::String, context: "#{context}[:consumer_identifier]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:consumer_region], ::String, context: "#{context}[:consumer_region]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:status_change_date], ::Time, context: "#{context}[:status_change_date]")
      end
    end

    class DataShareAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataShareAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataShareList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataShare.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataTransferProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataTransferProgress, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:current_rate_in_mega_bytes_per_second], ::Float, context: "#{context}[:current_rate_in_mega_bytes_per_second]")
        Hearth::Validator.validate!(input[:total_data_in_mega_bytes], ::Integer, context: "#{context}[:total_data_in_mega_bytes]")
        Hearth::Validator.validate!(input[:data_transferred_in_mega_bytes], ::Integer, context: "#{context}[:data_transferred_in_mega_bytes]")
        Hearth::Validator.validate!(input[:estimated_time_to_completion_in_seconds], ::Integer, context: "#{context}[:estimated_time_to_completion_in_seconds]")
        Hearth::Validator.validate!(input[:elapsed_time_in_seconds], ::Integer, context: "#{context}[:elapsed_time_in_seconds]")
      end
    end

    class DbGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeauthorizeDataShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeauthorizeDataShareInput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:consumer_identifier], ::String, context: "#{context}[:consumer_identifier]")
      end
    end

    class DeauthorizeDataShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeauthorizeDataShareOutput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:producer_arn], ::String, context: "#{context}[:producer_arn]")
        Hearth::Validator.validate!(input[:allow_publicly_accessible_consumers], ::TrueClass, ::FalseClass, context: "#{context}[:allow_publicly_accessible_consumers]")
        Validators::DataShareAssociationList.validate!(input[:data_share_associations], context: "#{context}[:data_share_associations]") unless input[:data_share_associations].nil?
        Hearth::Validator.validate!(input[:managed_by], ::String, context: "#{context}[:managed_by]")
      end
    end

    class DefaultClusterParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultClusterParameters, context: context)
        Hearth::Validator.validate!(input[:parameter_group_family], ::String, context: "#{context}[:parameter_group_family]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class DeferredMaintenanceWindow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeferredMaintenanceWindow, context: context)
        Hearth::Validator.validate!(input[:defer_maintenance_identifier], ::String, context: "#{context}[:defer_maintenance_identifier]")
        Hearth::Validator.validate!(input[:defer_maintenance_start_time], ::Time, context: "#{context}[:defer_maintenance_start_time]")
        Hearth::Validator.validate!(input[:defer_maintenance_end_time], ::Time, context: "#{context}[:defer_maintenance_end_time]")
      end
    end

    class DeferredMaintenanceWindowsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeferredMaintenanceWindow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAuthenticationProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuthenticationProfileInput, context: context)
        Hearth::Validator.validate!(input[:authentication_profile_name], ::String, context: "#{context}[:authentication_profile_name]")
      end
    end

    class DeleteAuthenticationProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuthenticationProfileOutput, context: context)
        Hearth::Validator.validate!(input[:authentication_profile_name], ::String, context: "#{context}[:authentication_profile_name]")
      end
    end

    class DeleteClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:skip_final_cluster_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:skip_final_cluster_snapshot]")
        Hearth::Validator.validate!(input[:final_cluster_snapshot_identifier], ::String, context: "#{context}[:final_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:final_cluster_snapshot_retention_period], ::Integer, context: "#{context}[:final_cluster_snapshot_retention_period]")
      end
    end

    class DeleteClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DeleteClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
      end
    end

    class DeleteClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterParameterGroupOutput, context: context)
      end
    end

    class DeleteClusterSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:cluster_security_group_name], ::String, context: "#{context}[:cluster_security_group_name]")
      end
    end

    class DeleteClusterSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterSecurityGroupOutput, context: context)
      end
    end

    class DeleteClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_cluster_identifier], ::String, context: "#{context}[:snapshot_cluster_identifier]")
      end
    end

    class DeleteClusterSnapshotMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterSnapshotMessage, context: context)
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_cluster_identifier], ::String, context: "#{context}[:snapshot_cluster_identifier]")
      end
    end

    class DeleteClusterSnapshotMessageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeleteClusterSnapshotMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterSnapshotOutput, context: context)
        Validators::Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class DeleteClusterSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:cluster_subnet_group_name], ::String, context: "#{context}[:cluster_subnet_group_name]")
      end
    end

    class DeleteClusterSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterSubnetGroupOutput, context: context)
      end
    end

    class DeleteEndpointAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointAccessInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
      end
    end

    class DeleteEndpointAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointAccessOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_create_time], ::Time, context: "#{context}[:endpoint_create_time]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Validators::VpcEndpoint.validate!(input[:vpc_endpoint], context: "#{context}[:vpc_endpoint]") unless input[:vpc_endpoint].nil?
      end
    end

    class DeleteEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
      end
    end

    class DeleteEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventSubscriptionOutput, context: context)
      end
    end

    class DeleteHsmClientCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHsmClientCertificateInput, context: context)
        Hearth::Validator.validate!(input[:hsm_client_certificate_identifier], ::String, context: "#{context}[:hsm_client_certificate_identifier]")
      end
    end

    class DeleteHsmClientCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHsmClientCertificateOutput, context: context)
      end
    end

    class DeleteHsmConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHsmConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:hsm_configuration_identifier], ::String, context: "#{context}[:hsm_configuration_identifier]")
      end
    end

    class DeleteHsmConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHsmConfigurationOutput, context: context)
      end
    end

    class DeletePartnerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePartnerInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
      end
    end

    class DeletePartnerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePartnerOutput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
      end
    end

    class DeleteScheduledActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledActionInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
      end
    end

    class DeleteScheduledActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledActionOutput, context: context)
      end
    end

    class DeleteSnapshotCopyGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotCopyGrantInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_copy_grant_name], ::String, context: "#{context}[:snapshot_copy_grant_name]")
      end
    end

    class DeleteSnapshotCopyGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotCopyGrantOutput, context: context)
      end
    end

    class DeleteSnapshotScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotScheduleInput, context: context)
        Hearth::Validator.validate!(input[:schedule_identifier], ::String, context: "#{context}[:schedule_identifier]")
      end
    end

    class DeleteSnapshotScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotScheduleOutput, context: context)
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class DeleteTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsOutput, context: context)
      end
    end

    class DeleteUsageLimitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUsageLimitInput, context: context)
        Hearth::Validator.validate!(input[:usage_limit_id], ::String, context: "#{context}[:usage_limit_id]")
      end
    end

    class DeleteUsageLimitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUsageLimitOutput, context: context)
      end
    end

    class DependentServiceRequestThrottlingFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependentServiceRequestThrottlingFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DependentServiceUnavailableFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependentServiceUnavailableFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DescribeAccountAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesInput, context: context)
        Validators::AttributeNameList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
      end
    end

    class DescribeAccountAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesOutput, context: context)
        Validators::AttributeList.validate!(input[:account_attributes], context: "#{context}[:account_attributes]") unless input[:account_attributes].nil?
      end
    end

    class DescribeAuthenticationProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuthenticationProfilesInput, context: context)
        Hearth::Validator.validate!(input[:authentication_profile_name], ::String, context: "#{context}[:authentication_profile_name]")
      end
    end

    class DescribeAuthenticationProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuthenticationProfilesOutput, context: context)
        Validators::AuthenticationProfileList.validate!(input[:authentication_profiles], context: "#{context}[:authentication_profiles]") unless input[:authentication_profiles].nil?
      end
    end

    class DescribeClusterDbRevisionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterDbRevisionsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeClusterDbRevisionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterDbRevisionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ClusterDbRevisionsList.validate!(input[:cluster_db_revisions], context: "#{context}[:cluster_db_revisions]") unless input[:cluster_db_revisions].nil?
      end
    end

    class DescribeClusterParameterGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterParameterGroupsInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeClusterParameterGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterParameterGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ParameterGroupList.validate!(input[:parameter_groups], context: "#{context}[:parameter_groups]") unless input[:parameter_groups].nil?
      end
    end

    class DescribeClusterParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterParametersInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeClusterParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterParametersOutput, context: context)
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeClusterSecurityGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterSecurityGroupsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_security_group_name], ::String, context: "#{context}[:cluster_security_group_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeClusterSecurityGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterSecurityGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ClusterSecurityGroups.validate!(input[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless input[:cluster_security_groups].nil?
      end
    end

    class DescribeClusterSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
        Hearth::Validator.validate!(input[:cluster_exists], ::TrueClass, ::FalseClass, context: "#{context}[:cluster_exists]")
        Validators::SnapshotSortingEntityList.validate!(input[:sorting_entities], context: "#{context}[:sorting_entities]") unless input[:sorting_entities].nil?
      end
    end

    class DescribeClusterSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterSnapshotsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::SnapshotList.validate!(input[:snapshots], context: "#{context}[:snapshots]") unless input[:snapshots].nil?
      end
    end

    class DescribeClusterSubnetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterSubnetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_subnet_group_name], ::String, context: "#{context}[:cluster_subnet_group_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeClusterSubnetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterSubnetGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ClusterSubnetGroups.validate!(input[:cluster_subnet_groups], context: "#{context}[:cluster_subnet_groups]") unless input[:cluster_subnet_groups].nil?
      end
    end

    class DescribeClusterTracksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterTracksInput, context: context)
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeClusterTracksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterTracksOutput, context: context)
        Validators::TrackList.validate!(input[:maintenance_tracks], context: "#{context}[:maintenance_tracks]") unless input[:maintenance_tracks].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeClusterVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterVersionsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:cluster_parameter_group_family], ::String, context: "#{context}[:cluster_parameter_group_family]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeClusterVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ClusterVersionList.validate!(input[:cluster_versions], context: "#{context}[:cluster_versions]") unless input[:cluster_versions].nil?
      end
    end

    class DescribeClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ClusterList.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
      end
    end

    class DescribeDataSharesForConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSharesForConsumerInput, context: context)
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDataSharesForConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSharesForConsumerOutput, context: context)
        Validators::DataShareList.validate!(input[:data_shares], context: "#{context}[:data_shares]") unless input[:data_shares].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDataSharesForProducerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSharesForProducerInput, context: context)
        Hearth::Validator.validate!(input[:producer_arn], ::String, context: "#{context}[:producer_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDataSharesForProducerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSharesForProducerOutput, context: context)
        Validators::DataShareList.validate!(input[:data_shares], context: "#{context}[:data_shares]") unless input[:data_shares].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDataSharesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSharesInput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDataSharesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSharesOutput, context: context)
        Validators::DataShareList.validate!(input[:data_shares], context: "#{context}[:data_shares]") unless input[:data_shares].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDefaultClusterParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDefaultClusterParametersInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_family], ::String, context: "#{context}[:parameter_group_family]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDefaultClusterParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDefaultClusterParametersOutput, context: context)
        Validators::DefaultClusterParameters.validate!(input[:default_cluster_parameters], context: "#{context}[:default_cluster_parameters]") unless input[:default_cluster_parameters].nil?
      end
    end

    class DescribeEndpointAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointAccessInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEndpointAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointAccessOutput, context: context)
        Validators::EndpointAccesses.validate!(input[:endpoint_access_list], context: "#{context}[:endpoint_access_list]") unless input[:endpoint_access_list].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEndpointAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate!(input[:grantee], ::TrueClass, ::FalseClass, context: "#{context}[:grantee]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEndpointAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointAuthorizationOutput, context: context)
        Validators::EndpointAuthorizations.validate!(input[:endpoint_authorization_list], context: "#{context}[:endpoint_authorization_list]") unless input[:endpoint_authorization_list].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEventCategoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventCategoriesInput, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
      end
    end

    class DescribeEventCategoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventCategoriesOutput, context: context)
        Validators::EventCategoriesMapList.validate!(input[:event_categories_map_list], context: "#{context}[:event_categories_map_list]") unless input[:event_categories_map_list].nil?
      end
    end

    class DescribeEventSubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSubscriptionsInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeEventSubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSubscriptionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::EventSubscriptionsList.validate!(input[:event_subscriptions_list], context: "#{context}[:event_subscriptions_list]") unless input[:event_subscriptions_list].nil?
      end
    end

    class DescribeEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsInput, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class DescribeHsmClientCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHsmClientCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:hsm_client_certificate_identifier], ::String, context: "#{context}[:hsm_client_certificate_identifier]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeHsmClientCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHsmClientCertificatesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::HsmClientCertificateList.validate!(input[:hsm_client_certificates], context: "#{context}[:hsm_client_certificates]") unless input[:hsm_client_certificates].nil?
      end
    end

    class DescribeHsmConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHsmConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:hsm_configuration_identifier], ::String, context: "#{context}[:hsm_configuration_identifier]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeHsmConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHsmConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::HsmConfigurationList.validate!(input[:hsm_configurations], context: "#{context}[:hsm_configurations]") unless input[:hsm_configurations].nil?
      end
    end

    class DescribeLoggingStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingStatusInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class DescribeLoggingStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingStatusOutput, context: context)
        Hearth::Validator.validate!(input[:logging_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:logging_enabled]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:last_successful_delivery_time], ::Time, context: "#{context}[:last_successful_delivery_time]")
        Hearth::Validator.validate!(input[:last_failure_time], ::Time, context: "#{context}[:last_failure_time]")
        Hearth::Validator.validate!(input[:last_failure_message], ::String, context: "#{context}[:last_failure_message]")
        Hearth::Validator.validate!(input[:log_destination_type], ::String, context: "#{context}[:log_destination_type]")
        Validators::LogTypeList.validate!(input[:log_exports], context: "#{context}[:log_exports]") unless input[:log_exports].nil?
      end
    end

    class DescribeNodeConfigurationOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodeConfigurationOptionsInput, context: context)
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Validators::NodeConfigurationOptionsFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeNodeConfigurationOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodeConfigurationOptionsOutput, context: context)
        Validators::NodeConfigurationOptionList.validate!(input[:node_configuration_option_list], context: "#{context}[:node_configuration_option_list]") unless input[:node_configuration_option_list].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeOrderableClusterOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrderableClusterOptionsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeOrderableClusterOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrderableClusterOptionsOutput, context: context)
        Validators::OrderableClusterOptionsList.validate!(input[:orderable_cluster_options], context: "#{context}[:orderable_cluster_options]") unless input[:orderable_cluster_options].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribePartnersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePartnersInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
      end
    end

    class DescribePartnersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePartnersOutput, context: context)
        Validators::PartnerIntegrationInfoList.validate!(input[:partner_integration_info_list], context: "#{context}[:partner_integration_info_list]") unless input[:partner_integration_info_list].nil?
      end
    end

    class DescribeReservedNodeExchangeStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedNodeExchangeStatusInput, context: context)
        Hearth::Validator.validate!(input[:reserved_node_id], ::String, context: "#{context}[:reserved_node_id]")
        Hearth::Validator.validate!(input[:reserved_node_exchange_request_id], ::String, context: "#{context}[:reserved_node_exchange_request_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReservedNodeExchangeStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedNodeExchangeStatusOutput, context: context)
        Validators::ReservedNodeExchangeStatusList.validate!(input[:reserved_node_exchange_status_details], context: "#{context}[:reserved_node_exchange_status_details]") unless input[:reserved_node_exchange_status_details].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReservedNodeOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedNodeOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:reserved_node_offering_id], ::String, context: "#{context}[:reserved_node_offering_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReservedNodeOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedNodeOfferingsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReservedNodeOfferingList.validate!(input[:reserved_node_offerings], context: "#{context}[:reserved_node_offerings]") unless input[:reserved_node_offerings].nil?
      end
    end

    class DescribeReservedNodesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedNodesInput, context: context)
        Hearth::Validator.validate!(input[:reserved_node_id], ::String, context: "#{context}[:reserved_node_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReservedNodesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedNodesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReservedNodeList.validate!(input[:reserved_nodes], context: "#{context}[:reserved_nodes]") unless input[:reserved_nodes].nil?
      end
    end

    class DescribeResizeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResizeInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class DescribeResizeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResizeOutput, context: context)
        Hearth::Validator.validate!(input[:target_node_type], ::String, context: "#{context}[:target_node_type]")
        Hearth::Validator.validate!(input[:target_number_of_nodes], ::Integer, context: "#{context}[:target_number_of_nodes]")
        Hearth::Validator.validate!(input[:target_cluster_type], ::String, context: "#{context}[:target_cluster_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ImportTablesCompleted.validate!(input[:import_tables_completed], context: "#{context}[:import_tables_completed]") unless input[:import_tables_completed].nil?
        Validators::ImportTablesInProgress.validate!(input[:import_tables_in_progress], context: "#{context}[:import_tables_in_progress]") unless input[:import_tables_in_progress].nil?
        Validators::ImportTablesNotStarted.validate!(input[:import_tables_not_started], context: "#{context}[:import_tables_not_started]") unless input[:import_tables_not_started].nil?
        Hearth::Validator.validate!(input[:avg_resize_rate_in_mega_bytes_per_second], ::Float, context: "#{context}[:avg_resize_rate_in_mega_bytes_per_second]")
        Hearth::Validator.validate!(input[:total_resize_data_in_mega_bytes], ::Integer, context: "#{context}[:total_resize_data_in_mega_bytes]")
        Hearth::Validator.validate!(input[:progress_in_mega_bytes], ::Integer, context: "#{context}[:progress_in_mega_bytes]")
        Hearth::Validator.validate!(input[:elapsed_time_in_seconds], ::Integer, context: "#{context}[:elapsed_time_in_seconds]")
        Hearth::Validator.validate!(input[:estimated_time_to_completion_in_seconds], ::Integer, context: "#{context}[:estimated_time_to_completion_in_seconds]")
        Hearth::Validator.validate!(input[:resize_type], ::String, context: "#{context}[:resize_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:target_encryption_type], ::String, context: "#{context}[:target_encryption_type]")
        Hearth::Validator.validate!(input[:data_transfer_progress_percent], ::Float, context: "#{context}[:data_transfer_progress_percent]")
      end
    end

    class DescribeScheduledActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledActionsInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Hearth::Validator.validate!(input[:target_action_type], ::String, context: "#{context}[:target_action_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
        Validators::ScheduledActionFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeScheduledActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledActionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ScheduledActionList.validate!(input[:scheduled_actions], context: "#{context}[:scheduled_actions]") unless input[:scheduled_actions].nil?
      end
    end

    class DescribeSnapshotCopyGrantsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotCopyGrantsInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_copy_grant_name], ::String, context: "#{context}[:snapshot_copy_grant_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeSnapshotCopyGrantsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotCopyGrantsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::SnapshotCopyGrantList.validate!(input[:snapshot_copy_grants], context: "#{context}[:snapshot_copy_grants]") unless input[:snapshot_copy_grants].nil?
      end
    end

    class DescribeSnapshotSchedulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotSchedulesInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:schedule_identifier], ::String, context: "#{context}[:schedule_identifier]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeSnapshotSchedulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotSchedulesOutput, context: context)
        Validators::SnapshotScheduleList.validate!(input[:snapshot_schedules], context: "#{context}[:snapshot_schedules]") unless input[:snapshot_schedules].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStorageInput, context: context)
      end
    end

    class DescribeStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStorageOutput, context: context)
        Hearth::Validator.validate!(input[:total_backup_size_in_mega_bytes], ::Float, context: "#{context}[:total_backup_size_in_mega_bytes]")
        Hearth::Validator.validate!(input[:total_provisioned_storage_in_mega_bytes], ::Float, context: "#{context}[:total_provisioned_storage_in_mega_bytes]")
      end
    end

    class DescribeTableRestoreStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableRestoreStatusInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:table_restore_request_id], ::String, context: "#{context}[:table_restore_request_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeTableRestoreStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableRestoreStatusOutput, context: context)
        Validators::TableRestoreStatusList.validate!(input[:table_restore_status_details], context: "#{context}[:table_restore_status_details]") unless input[:table_restore_status_details].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsOutput, context: context)
        Validators::TaggedResourceList.validate!(input[:tagged_resources], context: "#{context}[:tagged_resources]") unless input[:tagged_resources].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeUsageLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsageLimitsInput, context: context)
        Hearth::Validator.validate!(input[:usage_limit_id], ::String, context: "#{context}[:usage_limit_id]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:feature_type], ::String, context: "#{context}[:feature_type]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class DescribeUsageLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsageLimitsOutput, context: context)
        Validators::UsageLimits.validate!(input[:usage_limits], context: "#{context}[:usage_limits]") unless input[:usage_limits].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DisableLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableLoggingInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class DisableLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableLoggingOutput, context: context)
        Hearth::Validator.validate!(input[:logging_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:logging_enabled]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:last_successful_delivery_time], ::Time, context: "#{context}[:last_successful_delivery_time]")
        Hearth::Validator.validate!(input[:last_failure_time], ::Time, context: "#{context}[:last_failure_time]")
        Hearth::Validator.validate!(input[:last_failure_message], ::String, context: "#{context}[:last_failure_message]")
        Hearth::Validator.validate!(input[:log_destination_type], ::String, context: "#{context}[:log_destination_type]")
        Validators::LogTypeList.validate!(input[:log_exports], context: "#{context}[:log_exports]") unless input[:log_exports].nil?
      end
    end

    class DisableSnapshotCopyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableSnapshotCopyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class DisableSnapshotCopyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableSnapshotCopyOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DisassociateDataShareConsumerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDataShareConsumerInput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:disassociate_entire_account], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_entire_account]")
        Hearth::Validator.validate!(input[:consumer_arn], ::String, context: "#{context}[:consumer_arn]")
        Hearth::Validator.validate!(input[:consumer_region], ::String, context: "#{context}[:consumer_region]")
      end
    end

    class DisassociateDataShareConsumerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDataShareConsumerOutput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:producer_arn], ::String, context: "#{context}[:producer_arn]")
        Hearth::Validator.validate!(input[:allow_publicly_accessible_consumers], ::TrueClass, ::FalseClass, context: "#{context}[:allow_publicly_accessible_consumers]")
        Validators::DataShareAssociationList.validate!(input[:data_share_associations], context: "#{context}[:data_share_associations]") unless input[:data_share_associations].nil?
        Hearth::Validator.validate!(input[:managed_by], ::String, context: "#{context}[:managed_by]")
      end
    end

    class EC2SecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2SecurityGroup, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EC2SecurityGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EC2SecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ElasticIpStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticIpStatus, context: context)
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class EligibleTracksToUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpdateTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnableLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableLoggingInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:log_destination_type], ::String, context: "#{context}[:log_destination_type]")
        Validators::LogTypeList.validate!(input[:log_exports], context: "#{context}[:log_exports]") unless input[:log_exports].nil?
      end
    end

    class EnableLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableLoggingOutput, context: context)
        Hearth::Validator.validate!(input[:logging_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:logging_enabled]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:last_successful_delivery_time], ::Time, context: "#{context}[:last_successful_delivery_time]")
        Hearth::Validator.validate!(input[:last_failure_time], ::Time, context: "#{context}[:last_failure_time]")
        Hearth::Validator.validate!(input[:last_failure_message], ::String, context: "#{context}[:last_failure_message]")
        Hearth::Validator.validate!(input[:log_destination_type], ::String, context: "#{context}[:log_destination_type]")
        Validators::LogTypeList.validate!(input[:log_exports], context: "#{context}[:log_exports]") unless input[:log_exports].nil?
      end
    end

    class EnableSnapshotCopyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSnapshotCopyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:destination_region], ::String, context: "#{context}[:destination_region]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:snapshot_copy_grant_name], ::String, context: "#{context}[:snapshot_copy_grant_name]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
      end
    end

    class EnableSnapshotCopyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSnapshotCopyOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Validators::VpcEndpointsList.validate!(input[:vpc_endpoints], context: "#{context}[:vpc_endpoints]") unless input[:vpc_endpoints].nil?
      end
    end

    class EndpointAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointAccess, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_create_time], ::Time, context: "#{context}[:endpoint_create_time]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Validators::VpcEndpoint.validate!(input[:vpc_endpoint], context: "#{context}[:vpc_endpoint]") unless input[:vpc_endpoint].nil?
      end
    end

    class EndpointAccesses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EndpointAccess.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointAuthorization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointAuthorization, context: context)
        Hearth::Validator.validate!(input[:grantor], ::String, context: "#{context}[:grantor]")
        Hearth::Validator.validate!(input[:grantee], ::String, context: "#{context}[:grantee]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:authorize_time], ::Time, context: "#{context}[:authorize_time]")
        Hearth::Validator.validate!(input[:cluster_status], ::String, context: "#{context}[:cluster_status]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:allowed_all_vp_cs], ::TrueClass, ::FalseClass, context: "#{context}[:allowed_all_vp_cs]")
        Validators::VpcIdentifierList.validate!(input[:allowed_vp_cs], context: "#{context}[:allowed_vp_cs]") unless input[:allowed_vp_cs].nil?
        Hearth::Validator.validate!(input[:endpoint_count], ::Integer, context: "#{context}[:endpoint_count]")
      end
    end

    class EndpointAuthorizationAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointAuthorizationAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointAuthorizationNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointAuthorizationNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointAuthorizations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EndpointAuthorization.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointAuthorizationsPerClusterLimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointAuthorizationsPerClusterLimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointsPerAuthorizationLimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointsPerAuthorizationLimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointsPerClusterLimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointsPerClusterLimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
      end
    end

    class EventCategoriesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventCategoriesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventCategoriesMap, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::EventInfoMapList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class EventCategoriesMapList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventCategoriesMap.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventInfoMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventInfoMap, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Hearth::Validator.validate!(input[:event_description], ::String, context: "#{context}[:event_description]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
      end
    end

    class EventInfoMapList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventInfoMap.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSubscription, context: context)
        Hearth::Validator.validate!(input[:customer_aws_id], ::String, context: "#{context}[:customer_aws_id]")
        Hearth::Validator.validate!(input[:cust_subscription_id], ::String, context: "#{context}[:cust_subscription_id]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:subscription_creation_time], ::Time, context: "#{context}[:subscription_creation_time]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::SourceIdsList.validate!(input[:source_ids_list], context: "#{context}[:source_ids_list]") unless input[:source_ids_list].nil?
        Validators::EventCategoriesList.validate!(input[:event_categories_list], context: "#{context}[:event_categories_list]") unless input[:event_categories_list].nil?
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EventSubscriptionQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSubscriptionQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventSubscriptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventSubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetClusterCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClusterCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        Hearth::Validator.validate!(input[:auto_create], ::TrueClass, ::FalseClass, context: "#{context}[:auto_create]")
        Validators::DbGroupList.validate!(input[:db_groups], context: "#{context}[:db_groups]") unless input[:db_groups].nil?
      end
    end

    class GetClusterCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClusterCredentialsOutput, context: context)
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:db_password], ::String, context: "#{context}[:db_password]")
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class GetClusterCredentialsWithIAMInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClusterCredentialsWithIAMInput, context: context)
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
      end
    end

    class GetClusterCredentialsWithIAMOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClusterCredentialsWithIAMOutput, context: context)
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:db_password], ::String, context: "#{context}[:db_password]")
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
        Hearth::Validator.validate!(input[:next_refresh_time], ::Time, context: "#{context}[:next_refresh_time]")
      end
    end

    class GetReservedNodeExchangeConfigurationOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservedNodeExchangeConfigurationOptionsInput, context: context)
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetReservedNodeExchangeConfigurationOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservedNodeExchangeConfigurationOptionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReservedNodeConfigurationOptionList.validate!(input[:reserved_node_configuration_option_list], context: "#{context}[:reserved_node_configuration_option_list]") unless input[:reserved_node_configuration_option_list].nil?
      end
    end

    class GetReservedNodeExchangeOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservedNodeExchangeOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:reserved_node_id], ::String, context: "#{context}[:reserved_node_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetReservedNodeExchangeOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservedNodeExchangeOfferingsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::ReservedNodeOfferingList.validate!(input[:reserved_node_offerings], context: "#{context}[:reserved_node_offerings]") unless input[:reserved_node_offerings].nil?
      end
    end

    class HsmClientCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HsmClientCertificate, context: context)
        Hearth::Validator.validate!(input[:hsm_client_certificate_identifier], ::String, context: "#{context}[:hsm_client_certificate_identifier]")
        Hearth::Validator.validate!(input[:hsm_client_certificate_public_key], ::String, context: "#{context}[:hsm_client_certificate_public_key]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class HsmClientCertificateAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HsmClientCertificateAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HsmClientCertificateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HsmClientCertificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HsmClientCertificateNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HsmClientCertificateNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HsmClientCertificateQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HsmClientCertificateQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HsmConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HsmConfiguration, context: context)
        Hearth::Validator.validate!(input[:hsm_configuration_identifier], ::String, context: "#{context}[:hsm_configuration_identifier]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:hsm_ip_address], ::String, context: "#{context}[:hsm_ip_address]")
        Hearth::Validator.validate!(input[:hsm_partition_name], ::String, context: "#{context}[:hsm_partition_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class HsmConfigurationAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HsmConfigurationAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HsmConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HsmConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HsmConfigurationNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HsmConfigurationNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HsmConfigurationQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HsmConfigurationQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HsmStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HsmStatus, context: context)
        Hearth::Validator.validate!(input[:hsm_client_certificate_identifier], ::String, context: "#{context}[:hsm_client_certificate_identifier]")
        Hearth::Validator.validate!(input[:hsm_configuration_identifier], ::String, context: "#{context}[:hsm_configuration_identifier]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class IPRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPRange, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:cidrip], ::String, context: "#{context}[:cidrip]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class IPRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IPRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IamRoleArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportTablesCompleted
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportTablesInProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportTablesNotStarted
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InProgressTableRestoreQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InProgressTableRestoreQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncompatibleOrderableOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatibleOrderableOptions, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientClusterCapacityFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientClusterCapacityFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientS3BucketPolicyFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientS3BucketPolicyFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAuthenticationProfileRequestFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAuthenticationProfileRequestFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAuthorizationStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAuthorizationStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterParameterGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterParameterGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterSecurityGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterSecurityGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterSnapshotScheduleStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterSnapshotScheduleStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterSnapshotStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterSnapshotStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterSubnetGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterSubnetGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterSubnetStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterSubnetStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterTrackFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterTrackFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDataShareFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDataShareFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidElasticIpFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidElasticIpFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEndpointStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEndpointStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidHsmClientCertificateStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidHsmClientCertificateStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidHsmConfigurationStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidHsmConfigurationStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNamespaceFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNamespaceFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidReservedNodeStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidReservedNodeStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRestoreFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRestoreFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRetentionPeriodFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRetentionPeriodFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3BucketNameFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3BucketNameFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3KeyPrefixFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3KeyPrefixFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidScheduleFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidScheduleFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidScheduledActionFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidScheduledActionFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSnapshotCopyGrantStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSnapshotCopyGrantStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSubnet, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubscriptionStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSubscriptionStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTableRestoreArgumentFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTableRestoreArgumentFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUsageLimitFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUsageLimitFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidVPCNetworkStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidVPCNetworkStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LogTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MaintenanceTrack
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceTrack, context: context)
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:database_version], ::String, context: "#{context}[:database_version]")
        Validators::EligibleTracksToUpdateList.validate!(input[:update_targets], context: "#{context}[:update_targets]") unless input[:update_targets].nil?
      end
    end

    class ModifyAquaConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyAquaConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:aqua_configuration_status], ::String, context: "#{context}[:aqua_configuration_status]")
      end
    end

    class ModifyAquaConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyAquaConfigurationOutput, context: context)
        Validators::AquaConfiguration.validate!(input[:aqua_configuration], context: "#{context}[:aqua_configuration]") unless input[:aqua_configuration].nil?
      end
    end

    class ModifyAuthenticationProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyAuthenticationProfileInput, context: context)
        Hearth::Validator.validate!(input[:authentication_profile_name], ::String, context: "#{context}[:authentication_profile_name]")
        Hearth::Validator.validate!(input[:authentication_profile_content], ::String, context: "#{context}[:authentication_profile_content]")
      end
    end

    class ModifyAuthenticationProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyAuthenticationProfileOutput, context: context)
        Hearth::Validator.validate!(input[:authentication_profile_name], ::String, context: "#{context}[:authentication_profile_name]")
        Hearth::Validator.validate!(input[:authentication_profile_content], ::String, context: "#{context}[:authentication_profile_content]")
      end
    end

    class ModifyClusterDbRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterDbRevisionInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:revision_target], ::String, context: "#{context}[:revision_target]")
      end
    end

    class ModifyClusterDbRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterDbRevisionOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class ModifyClusterIamRolesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterIamRolesInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Validators::IamRoleArnList.validate!(input[:add_iam_roles], context: "#{context}[:add_iam_roles]") unless input[:add_iam_roles].nil?
        Validators::IamRoleArnList.validate!(input[:remove_iam_roles], context: "#{context}[:remove_iam_roles]") unless input[:remove_iam_roles].nil?
        Hearth::Validator.validate!(input[:default_iam_role_arn], ::String, context: "#{context}[:default_iam_role_arn]")
      end
    end

    class ModifyClusterIamRolesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterIamRolesOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class ModifyClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:cluster_type], ::String, context: "#{context}[:cluster_type]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Validators::ClusterSecurityGroupNameList.validate!(input[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless input[:cluster_security_groups].nil?
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:cluster_parameter_group_name], ::String, context: "#{context}[:cluster_parameter_group_name]")
        Hearth::Validator.validate!(input[:automated_snapshot_retention_period], ::Integer, context: "#{context}[:automated_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:allow_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_version_upgrade]")
        Hearth::Validator.validate!(input[:hsm_client_certificate_identifier], ::String, context: "#{context}[:hsm_client_certificate_identifier]")
        Hearth::Validator.validate!(input[:hsm_configuration_identifier], ::String, context: "#{context}[:hsm_configuration_identifier]")
        Hearth::Validator.validate!(input[:new_cluster_identifier], ::String, context: "#{context}[:new_cluster_identifier]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
        Hearth::Validator.validate!(input[:enhanced_vpc_routing], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_vpc_routing]")
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:availability_zone_relocation], ::TrueClass, ::FalseClass, context: "#{context}[:availability_zone_relocation]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class ModifyClusterMaintenanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterMaintenanceInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:defer_maintenance], ::TrueClass, ::FalseClass, context: "#{context}[:defer_maintenance]")
        Hearth::Validator.validate!(input[:defer_maintenance_identifier], ::String, context: "#{context}[:defer_maintenance_identifier]")
        Hearth::Validator.validate!(input[:defer_maintenance_start_time], ::Time, context: "#{context}[:defer_maintenance_start_time]")
        Hearth::Validator.validate!(input[:defer_maintenance_end_time], ::Time, context: "#{context}[:defer_maintenance_end_time]")
        Hearth::Validator.validate!(input[:defer_maintenance_duration], ::Integer, context: "#{context}[:defer_maintenance_duration]")
      end
    end

    class ModifyClusterMaintenanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterMaintenanceOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class ModifyClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class ModifyClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ModifyClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_group_status], ::String, context: "#{context}[:parameter_group_status]")
      end
    end

    class ModifyClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class ModifyClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterSnapshotOutput, context: context)
        Validators::Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class ModifyClusterSnapshotScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterSnapshotScheduleInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:schedule_identifier], ::String, context: "#{context}[:schedule_identifier]")
        Hearth::Validator.validate!(input[:disassociate_schedule], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_schedule]")
      end
    end

    class ModifyClusterSnapshotScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterSnapshotScheduleOutput, context: context)
      end
    end

    class ModifyClusterSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:cluster_subnet_group_name], ::String, context: "#{context}[:cluster_subnet_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class ModifyClusterSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterSubnetGroupOutput, context: context)
        Validators::ClusterSubnetGroup.validate!(input[:cluster_subnet_group], context: "#{context}[:cluster_subnet_group]") unless input[:cluster_subnet_group].nil?
      end
    end

    class ModifyEndpointAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEndpointAccessInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
      end
    end

    class ModifyEndpointAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEndpointAccessOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_create_time], ::Time, context: "#{context}[:endpoint_create_time]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Validators::VpcSecurityGroupMembershipList.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Validators::VpcEndpoint.validate!(input[:vpc_endpoint], context: "#{context}[:vpc_endpoint]") unless input[:vpc_endpoint].nil?
      end
    end

    class ModifyEventSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEventSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Validators::SourceIdsList.validate!(input[:source_ids], context: "#{context}[:source_ids]") unless input[:source_ids].nil?
        Validators::EventCategoriesList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ModifyEventSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyEventSubscriptionOutput, context: context)
        Validators::EventSubscription.validate!(input[:event_subscription], context: "#{context}[:event_subscription]") unless input[:event_subscription].nil?
      end
    end

    class ModifyScheduledActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyScheduledActionInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Validators::ScheduledActionType.validate!(input[:target_action], context: "#{context}[:target_action]") unless input[:target_action].nil?
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:scheduled_action_description], ::String, context: "#{context}[:scheduled_action_description]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
      end
    end

    class ModifyScheduledActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyScheduledActionOutput, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Validators::ScheduledActionType.validate!(input[:target_action], context: "#{context}[:target_action]") unless input[:target_action].nil?
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:scheduled_action_description], ::String, context: "#{context}[:scheduled_action_description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::ScheduledActionTimeList.validate!(input[:next_invocations], context: "#{context}[:next_invocations]") unless input[:next_invocations].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class ModifySnapshotCopyRetentionPeriodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySnapshotCopyRetentionPeriodInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:manual], ::TrueClass, ::FalseClass, context: "#{context}[:manual]")
      end
    end

    class ModifySnapshotCopyRetentionPeriodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySnapshotCopyRetentionPeriodOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class ModifySnapshotScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySnapshotScheduleInput, context: context)
        Hearth::Validator.validate!(input[:schedule_identifier], ::String, context: "#{context}[:schedule_identifier]")
        Validators::ScheduleDefinitionList.validate!(input[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless input[:schedule_definitions].nil?
      end
    end

    class ModifySnapshotScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySnapshotScheduleOutput, context: context)
        Validators::ScheduleDefinitionList.validate!(input[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless input[:schedule_definitions].nil?
        Hearth::Validator.validate!(input[:schedule_identifier], ::String, context: "#{context}[:schedule_identifier]")
        Hearth::Validator.validate!(input[:schedule_description], ::String, context: "#{context}[:schedule_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ScheduledSnapshotTimeList.validate!(input[:next_invocations], context: "#{context}[:next_invocations]") unless input[:next_invocations].nil?
        Hearth::Validator.validate!(input[:associated_cluster_count], ::Integer, context: "#{context}[:associated_cluster_count]")
        Validators::AssociatedClusterList.validate!(input[:associated_clusters], context: "#{context}[:associated_clusters]") unless input[:associated_clusters].nil?
      end
    end

    class ModifyUsageLimitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyUsageLimitInput, context: context)
        Hearth::Validator.validate!(input[:usage_limit_id], ::String, context: "#{context}[:usage_limit_id]")
        Hearth::Validator.validate!(input[:amount], ::Integer, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:breach_action], ::String, context: "#{context}[:breach_action]")
      end
    end

    class ModifyUsageLimitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyUsageLimitOutput, context: context)
        Hearth::Validator.validate!(input[:usage_limit_id], ::String, context: "#{context}[:usage_limit_id]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:feature_type], ::String, context: "#{context}[:feature_type]")
        Hearth::Validator.validate!(input[:limit_type], ::String, context: "#{context}[:limit_type]")
        Hearth::Validator.validate!(input[:amount], ::Integer, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:breach_action], ::String, context: "#{context}[:breach_action]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
      end
    end

    class NetworkInterfaceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeConfigurationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeConfigurationOption, context: context)
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:estimated_disk_utilization_percent], ::Float, context: "#{context}[:estimated_disk_utilization_percent]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class NodeConfigurationOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodeConfigurationOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeConfigurationOptionsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeConfigurationOptionsFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Validators::ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class NodeConfigurationOptionsFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodeConfigurationOptionsFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NumberOfNodesPerClusterLimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberOfNodesPerClusterLimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NumberOfNodesQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberOfNodesQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrderableClusterOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrderableClusterOption, context: context)
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:cluster_type], ::String, context: "#{context}[:cluster_type]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Validators::AvailabilityZoneList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
      end
    end

    class OrderableClusterOptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OrderableClusterOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Parameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameter, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
        Hearth::Validator.validate!(input[:apply_type], ::String, context: "#{context}[:apply_type]")
        Hearth::Validator.validate!(input[:is_modifiable], ::TrueClass, ::FalseClass, context: "#{context}[:is_modifiable]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
      end
    end

    class ParameterGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClusterParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Parameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartnerIntegrationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartnerIntegrationInfo, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class PartnerIntegrationInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PartnerIntegrationInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartnerNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartnerNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PauseClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PauseClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class PauseClusterMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PauseClusterMessage, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class PauseClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PauseClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class PendingActionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PendingModifiedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingModifiedValues, context: context)
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:cluster_type], ::String, context: "#{context}[:cluster_type]")
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:automated_snapshot_retention_period], ::Integer, context: "#{context}[:automated_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:enhanced_vpc_routing], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_vpc_routing]")
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
      end
    end

    class PurchaseReservedNodeOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseReservedNodeOfferingInput, context: context)
        Hearth::Validator.validate!(input[:reserved_node_offering_id], ::String, context: "#{context}[:reserved_node_offering_id]")
        Hearth::Validator.validate!(input[:node_count], ::Integer, context: "#{context}[:node_count]")
      end
    end

    class PurchaseReservedNodeOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseReservedNodeOfferingOutput, context: context)
        Validators::ReservedNode.validate!(input[:reserved_node], context: "#{context}[:reserved_node]") unless input[:reserved_node].nil?
      end
    end

    class RebootClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class RebootClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class RecurringCharge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecurringCharge, context: context)
        Hearth::Validator.validate!(input[:recurring_charge_amount], ::Float, context: "#{context}[:recurring_charge_amount]")
        Hearth::Validator.validate!(input[:recurring_charge_frequency], ::String, context: "#{context}[:recurring_charge_frequency]")
      end
    end

    class RecurringChargeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecurringCharge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RejectDataShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectDataShareInput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
      end
    end

    class RejectDataShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectDataShareOutput, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
        Hearth::Validator.validate!(input[:producer_arn], ::String, context: "#{context}[:producer_arn]")
        Hearth::Validator.validate!(input[:allow_publicly_accessible_consumers], ::TrueClass, ::FalseClass, context: "#{context}[:allow_publicly_accessible_consumers]")
        Validators::DataShareAssociationList.validate!(input[:data_share_associations], context: "#{context}[:data_share_associations]") unless input[:data_share_associations].nil?
        Hearth::Validator.validate!(input[:managed_by], ::String, context: "#{context}[:managed_by]")
      end
    end

    class ReservedNode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNode, context: context)
        Hearth::Validator.validate!(input[:reserved_node_id], ::String, context: "#{context}[:reserved_node_id]")
        Hearth::Validator.validate!(input[:reserved_node_offering_id], ::String, context: "#{context}[:reserved_node_offering_id]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:node_count], ::Integer, context: "#{context}[:node_count]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Validators::RecurringChargeList.validate!(input[:recurring_charges], context: "#{context}[:recurring_charges]") unless input[:recurring_charges].nil?
        Hearth::Validator.validate!(input[:reserved_node_offering_type], ::String, context: "#{context}[:reserved_node_offering_type]")
      end
    end

    class ReservedNodeAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNodeAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedNodeAlreadyMigratedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNodeAlreadyMigratedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedNodeConfigurationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNodeConfigurationOption, context: context)
        Validators::ReservedNode.validate!(input[:source_reserved_node], context: "#{context}[:source_reserved_node]") unless input[:source_reserved_node].nil?
        Hearth::Validator.validate!(input[:target_reserved_node_count], ::Integer, context: "#{context}[:target_reserved_node_count]")
        Validators::ReservedNodeOffering.validate!(input[:target_reserved_node_offering], context: "#{context}[:target_reserved_node_offering]") unless input[:target_reserved_node_offering].nil?
      end
    end

    class ReservedNodeConfigurationOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReservedNodeConfigurationOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedNodeExchangeNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNodeExchangeNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedNodeExchangeStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNodeExchangeStatus, context: context)
        Hearth::Validator.validate!(input[:reserved_node_exchange_request_id], ::String, context: "#{context}[:reserved_node_exchange_request_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_time], ::Time, context: "#{context}[:request_time]")
        Hearth::Validator.validate!(input[:source_reserved_node_id], ::String, context: "#{context}[:source_reserved_node_id]")
        Hearth::Validator.validate!(input[:source_reserved_node_type], ::String, context: "#{context}[:source_reserved_node_type]")
        Hearth::Validator.validate!(input[:source_reserved_node_count], ::Integer, context: "#{context}[:source_reserved_node_count]")
        Hearth::Validator.validate!(input[:target_reserved_node_offering_id], ::String, context: "#{context}[:target_reserved_node_offering_id]")
        Hearth::Validator.validate!(input[:target_reserved_node_type], ::String, context: "#{context}[:target_reserved_node_type]")
        Hearth::Validator.validate!(input[:target_reserved_node_count], ::Integer, context: "#{context}[:target_reserved_node_count]")
      end
    end

    class ReservedNodeExchangeStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReservedNodeExchangeStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedNodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReservedNode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedNodeNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNodeNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedNodeOffering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNodeOffering, context: context)
        Hearth::Validator.validate!(input[:reserved_node_offering_id], ::String, context: "#{context}[:reserved_node_offering_id]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Validators::RecurringChargeList.validate!(input[:recurring_charges], context: "#{context}[:recurring_charges]") unless input[:recurring_charges].nil?
        Hearth::Validator.validate!(input[:reserved_node_offering_type], ::String, context: "#{context}[:reserved_node_offering_type]")
      end
    end

    class ReservedNodeOfferingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReservedNodeOffering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedNodeOfferingNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNodeOfferingNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedNodeQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedNodeQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResetClusterParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetClusterParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:reset_all_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:reset_all_parameters]")
        Validators::ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ResetClusterParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetClusterParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_group_status], ::String, context: "#{context}[:parameter_group_status]")
      end
    end

    class ResizeClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResizeClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:cluster_type], ::String, context: "#{context}[:cluster_type]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:classic], ::TrueClass, ::FalseClass, context: "#{context}[:classic]")
        Hearth::Validator.validate!(input[:reserved_node_id], ::String, context: "#{context}[:reserved_node_id]")
        Hearth::Validator.validate!(input[:target_reserved_node_offering_id], ::String, context: "#{context}[:target_reserved_node_offering_id]")
      end
    end

    class ResizeClusterMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResizeClusterMessage, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:cluster_type], ::String, context: "#{context}[:cluster_type]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:classic], ::TrueClass, ::FalseClass, context: "#{context}[:classic]")
        Hearth::Validator.validate!(input[:reserved_node_id], ::String, context: "#{context}[:reserved_node_id]")
        Hearth::Validator.validate!(input[:target_reserved_node_offering_id], ::String, context: "#{context}[:target_reserved_node_offering_id]")
      end
    end

    class ResizeClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResizeClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class ResizeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResizeInfo, context: context)
        Hearth::Validator.validate!(input[:resize_type], ::String, context: "#{context}[:resize_type]")
        Hearth::Validator.validate!(input[:allow_cancel_resize], ::TrueClass, ::FalseClass, context: "#{context}[:allow_cancel_resize]")
      end
    end

    class ResizeNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResizeNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestorableNodeTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RestoreFromClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreFromClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_cluster_identifier], ::String, context: "#{context}[:snapshot_cluster_identifier]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:allow_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_version_upgrade]")
        Hearth::Validator.validate!(input[:cluster_subnet_group_name], ::String, context: "#{context}[:cluster_subnet_group_name]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:hsm_client_certificate_identifier], ::String, context: "#{context}[:hsm_client_certificate_identifier]")
        Hearth::Validator.validate!(input[:hsm_configuration_identifier], ::String, context: "#{context}[:hsm_configuration_identifier]")
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
        Hearth::Validator.validate!(input[:cluster_parameter_group_name], ::String, context: "#{context}[:cluster_parameter_group_name]")
        Validators::ClusterSecurityGroupNameList.validate!(input[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless input[:cluster_security_groups].nil?
        Validators::VpcSecurityGroupIdList.validate!(input[:vpc_security_group_ids], context: "#{context}[:vpc_security_group_ids]") unless input[:vpc_security_group_ids].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:automated_snapshot_retention_period], ::Integer, context: "#{context}[:automated_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:enhanced_vpc_routing], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_vpc_routing]")
        Hearth::Validator.validate!(input[:additional_info], ::String, context: "#{context}[:additional_info]")
        Validators::IamRoleArnList.validate!(input[:iam_roles], context: "#{context}[:iam_roles]") unless input[:iam_roles].nil?
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:snapshot_schedule_identifier], ::String, context: "#{context}[:snapshot_schedule_identifier]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:availability_zone_relocation], ::TrueClass, ::FalseClass, context: "#{context}[:availability_zone_relocation]")
        Hearth::Validator.validate!(input[:aqua_configuration_status], ::String, context: "#{context}[:aqua_configuration_status]")
        Hearth::Validator.validate!(input[:default_iam_role_arn], ::String, context: "#{context}[:default_iam_role_arn]")
        Hearth::Validator.validate!(input[:reserved_node_id], ::String, context: "#{context}[:reserved_node_id]")
        Hearth::Validator.validate!(input[:target_reserved_node_offering_id], ::String, context: "#{context}[:target_reserved_node_offering_id]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
      end
    end

    class RestoreFromClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreFromClusterSnapshotOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class RestoreStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:current_restore_rate_in_mega_bytes_per_second], ::Float, context: "#{context}[:current_restore_rate_in_mega_bytes_per_second]")
        Hearth::Validator.validate!(input[:snapshot_size_in_mega_bytes], ::Integer, context: "#{context}[:snapshot_size_in_mega_bytes]")
        Hearth::Validator.validate!(input[:progress_in_mega_bytes], ::Integer, context: "#{context}[:progress_in_mega_bytes]")
        Hearth::Validator.validate!(input[:elapsed_time_in_seconds], ::Integer, context: "#{context}[:elapsed_time_in_seconds]")
        Hearth::Validator.validate!(input[:estimated_time_to_completion_in_seconds], ::Integer, context: "#{context}[:estimated_time_to_completion_in_seconds]")
      end
    end

    class RestoreTableFromClusterSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreTableFromClusterSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:source_database_name], ::String, context: "#{context}[:source_database_name]")
        Hearth::Validator.validate!(input[:source_schema_name], ::String, context: "#{context}[:source_schema_name]")
        Hearth::Validator.validate!(input[:source_table_name], ::String, context: "#{context}[:source_table_name]")
        Hearth::Validator.validate!(input[:target_database_name], ::String, context: "#{context}[:target_database_name]")
        Hearth::Validator.validate!(input[:target_schema_name], ::String, context: "#{context}[:target_schema_name]")
        Hearth::Validator.validate!(input[:new_table_name], ::String, context: "#{context}[:new_table_name]")
        Hearth::Validator.validate!(input[:enable_case_sensitive_identifier], ::TrueClass, ::FalseClass, context: "#{context}[:enable_case_sensitive_identifier]")
      end
    end

    class RestoreTableFromClusterSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreTableFromClusterSnapshotOutput, context: context)
        Validators::TableRestoreStatus.validate!(input[:table_restore_status], context: "#{context}[:table_restore_status]") unless input[:table_restore_status].nil?
      end
    end

    class ResumeClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class ResumeClusterMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeClusterMessage, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class ResumeClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class RevisionTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionTarget, context: context)
        Hearth::Validator.validate!(input[:database_revision], ::String, context: "#{context}[:database_revision]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:database_revision_release_date], ::Time, context: "#{context}[:database_revision_release_date]")
      end
    end

    class RevisionTargetsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RevisionTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RevokeClusterSecurityGroupIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeClusterSecurityGroupIngressInput, context: context)
        Hearth::Validator.validate!(input[:cluster_security_group_name], ::String, context: "#{context}[:cluster_security_group_name]")
        Hearth::Validator.validate!(input[:cidrip], ::String, context: "#{context}[:cidrip]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
      end
    end

    class RevokeClusterSecurityGroupIngressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeClusterSecurityGroupIngressOutput, context: context)
        Validators::ClusterSecurityGroup.validate!(input[:cluster_security_group], context: "#{context}[:cluster_security_group]") unless input[:cluster_security_group].nil?
      end
    end

    class RevokeEndpointAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeEndpointAccessInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Validators::VpcIdentifierList.validate!(input[:vpc_ids], context: "#{context}[:vpc_ids]") unless input[:vpc_ids].nil?
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class RevokeEndpointAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeEndpointAccessOutput, context: context)
        Hearth::Validator.validate!(input[:grantor], ::String, context: "#{context}[:grantor]")
        Hearth::Validator.validate!(input[:grantee], ::String, context: "#{context}[:grantee]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:authorize_time], ::Time, context: "#{context}[:authorize_time]")
        Hearth::Validator.validate!(input[:cluster_status], ::String, context: "#{context}[:cluster_status]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:allowed_all_vp_cs], ::TrueClass, ::FalseClass, context: "#{context}[:allowed_all_vp_cs]")
        Validators::VpcIdentifierList.validate!(input[:allowed_vp_cs], context: "#{context}[:allowed_vp_cs]") unless input[:allowed_vp_cs].nil?
        Hearth::Validator.validate!(input[:endpoint_count], ::Integer, context: "#{context}[:endpoint_count]")
      end
    end

    class RevokeSnapshotAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeSnapshotAccessInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_cluster_identifier], ::String, context: "#{context}[:snapshot_cluster_identifier]")
        Hearth::Validator.validate!(input[:account_with_restore_access], ::String, context: "#{context}[:account_with_restore_access]")
      end
    end

    class RevokeSnapshotAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeSnapshotAccessOutput, context: context)
        Validators::Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class RotateEncryptionKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateEncryptionKeyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class RotateEncryptionKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateEncryptionKeyOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class SNSInvalidTopicFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSInvalidTopicFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SNSNoAuthorizationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSNoAuthorizationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SNSTopicArnNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSTopicArnNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScheduleDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ScheduleDefinitionTypeUnsupportedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleDefinitionTypeUnsupportedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScheduledAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledAction, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Validators::ScheduledActionType.validate!(input[:target_action], context: "#{context}[:target_action]") unless input[:target_action].nil?
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:scheduled_action_description], ::String, context: "#{context}[:scheduled_action_description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::ScheduledActionTimeList.validate!(input[:next_invocations], context: "#{context}[:next_invocations]") unless input[:next_invocations].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class ScheduledActionAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledActionAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScheduledActionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledActionFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ScheduledActionFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledActionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduledActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduledActionNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledActionNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScheduledActionQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledActionQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScheduledActionTimeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Time, context: "#{context}[#{index}]")
        end
      end
    end

    class ScheduledActionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledActionType, context: context)
        Validators::ResizeClusterMessage.validate!(input[:resize_cluster], context: "#{context}[:resize_cluster]") unless input[:resize_cluster].nil?
        Validators::PauseClusterMessage.validate!(input[:pause_cluster], context: "#{context}[:pause_cluster]") unless input[:pause_cluster].nil?
        Validators::ResumeClusterMessage.validate!(input[:resume_cluster], context: "#{context}[:resume_cluster]") unless input[:resume_cluster].nil?
      end
    end

    class ScheduledActionTypeUnsupportedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledActionTypeUnsupportedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScheduledSnapshotTimeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Time, context: "#{context}[#{index}]")
        end
      end
    end

    class Snapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Snapshot, context: context)
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_create_time], ::Time, context: "#{context}[:snapshot_create_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:cluster_create_time], ::Time, context: "#{context}[:cluster_create_time]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:engine_full_version], ::String, context: "#{context}[:engine_full_version]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:encrypted_with_hsm], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted_with_hsm]")
        Validators::AccountsWithRestoreAccessList.validate!(input[:accounts_with_restore_access], context: "#{context}[:accounts_with_restore_access]") unless input[:accounts_with_restore_access].nil?
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:total_backup_size_in_mega_bytes], ::Float, context: "#{context}[:total_backup_size_in_mega_bytes]")
        Hearth::Validator.validate!(input[:actual_incremental_backup_size_in_mega_bytes], ::Float, context: "#{context}[:actual_incremental_backup_size_in_mega_bytes]")
        Hearth::Validator.validate!(input[:backup_progress_in_mega_bytes], ::Float, context: "#{context}[:backup_progress_in_mega_bytes]")
        Hearth::Validator.validate!(input[:current_backup_rate_in_mega_bytes_per_second], ::Float, context: "#{context}[:current_backup_rate_in_mega_bytes_per_second]")
        Hearth::Validator.validate!(input[:estimated_seconds_to_completion], ::Integer, context: "#{context}[:estimated_seconds_to_completion]")
        Hearth::Validator.validate!(input[:elapsed_time_in_seconds], ::Integer, context: "#{context}[:elapsed_time_in_seconds]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::RestorableNodeTypeList.validate!(input[:restorable_node_types], context: "#{context}[:restorable_node_types]") unless input[:restorable_node_types].nil?
        Hearth::Validator.validate!(input[:enhanced_vpc_routing], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_vpc_routing]")
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:manual_snapshot_remaining_days], ::Integer, context: "#{context}[:manual_snapshot_remaining_days]")
        Hearth::Validator.validate!(input[:snapshot_retention_start_time], ::Time, context: "#{context}[:snapshot_retention_start_time]")
      end
    end

    class SnapshotCopyAlreadyDisabledFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotCopyAlreadyDisabledFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotCopyAlreadyEnabledFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotCopyAlreadyEnabledFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotCopyDisabledFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotCopyDisabledFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotCopyGrant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotCopyGrant, context: context)
        Hearth::Validator.validate!(input[:snapshot_copy_grant_name], ::String, context: "#{context}[:snapshot_copy_grant_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SnapshotCopyGrantAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotCopyGrantAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotCopyGrantList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SnapshotCopyGrant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SnapshotCopyGrantNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotCopyGrantNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotCopyGrantQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotCopyGrantQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotErrorMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotErrorMessage, context: context)
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:snapshot_cluster_identifier], ::String, context: "#{context}[:snapshot_cluster_identifier]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class SnapshotIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Snapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SnapshotSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotSchedule, context: context)
        Validators::ScheduleDefinitionList.validate!(input[:schedule_definitions], context: "#{context}[:schedule_definitions]") unless input[:schedule_definitions].nil?
        Hearth::Validator.validate!(input[:schedule_identifier], ::String, context: "#{context}[:schedule_identifier]")
        Hearth::Validator.validate!(input[:schedule_description], ::String, context: "#{context}[:schedule_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ScheduledSnapshotTimeList.validate!(input[:next_invocations], context: "#{context}[:next_invocations]") unless input[:next_invocations].nil?
        Hearth::Validator.validate!(input[:associated_cluster_count], ::Integer, context: "#{context}[:associated_cluster_count]")
        Validators::AssociatedClusterList.validate!(input[:associated_clusters], context: "#{context}[:associated_clusters]") unless input[:associated_clusters].nil?
      end
    end

    class SnapshotScheduleAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotScheduleAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotScheduleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SnapshotSchedule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SnapshotScheduleNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotScheduleNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotScheduleQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotScheduleQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotScheduleUpdateInProgressFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotScheduleUpdateInProgressFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotSortingEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotSortingEntity, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class SnapshotSortingEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SnapshotSortingEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SourceNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Subnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subnet, context: context)
        Hearth::Validator.validate!(input[:subnet_identifier], ::String, context: "#{context}[:subnet_identifier]")
        Validators::AvailabilityZone.validate!(input[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless input[:subnet_availability_zone].nil?
        Hearth::Validator.validate!(input[:subnet_status], ::String, context: "#{context}[:subnet_status]")
      end
    end

    class SubnetAlreadyInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetAlreadyInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Subnet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubscriptionAlreadyExistFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionAlreadyExistFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubscriptionCategoryNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionCategoryNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubscriptionEventIdNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionEventIdNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubscriptionNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubscriptionSeverityNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionSeverityNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SupportedOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SupportedOperation, context: context)
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
      end
    end

    class SupportedOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SupportedOperation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SupportedPlatform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SupportedPlatform, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SupportedPlatformsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SupportedPlatform.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableLimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableLimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TableRestoreNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableRestoreNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TableRestoreStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableRestoreStatus, context: context)
        Hearth::Validator.validate!(input[:table_restore_request_id], ::String, context: "#{context}[:table_restore_request_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_time], ::Time, context: "#{context}[:request_time]")
        Hearth::Validator.validate!(input[:progress_in_mega_bytes], ::Integer, context: "#{context}[:progress_in_mega_bytes]")
        Hearth::Validator.validate!(input[:total_data_in_mega_bytes], ::Integer, context: "#{context}[:total_data_in_mega_bytes]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:snapshot_identifier], ::String, context: "#{context}[:snapshot_identifier]")
        Hearth::Validator.validate!(input[:source_database_name], ::String, context: "#{context}[:source_database_name]")
        Hearth::Validator.validate!(input[:source_schema_name], ::String, context: "#{context}[:source_schema_name]")
        Hearth::Validator.validate!(input[:source_table_name], ::String, context: "#{context}[:source_table_name]")
        Hearth::Validator.validate!(input[:target_database_name], ::String, context: "#{context}[:target_database_name]")
        Hearth::Validator.validate!(input[:target_schema_name], ::String, context: "#{context}[:target_schema_name]")
        Hearth::Validator.validate!(input[:new_table_name], ::String, context: "#{context}[:new_table_name]")
      end
    end

    class TableRestoreStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TableRestoreStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagLimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagLimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TaggedResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaggedResource, context: context)
        Validators::Tag.validate!(input[:tag], context: "#{context}[:tag]") unless input[:tag].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class TaggedResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TaggedResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrackList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MaintenanceTrack.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnauthorizedOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedOperation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedPartnerIntegrationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedPartnerIntegrationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnknownSnapshotCopyRegionFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnknownSnapshotCopyRegionFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedOperationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedOptionFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOptionFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdatePartnerStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePartnerStatusInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class UpdatePartnerStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePartnerStatusOutput, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:partner_name], ::String, context: "#{context}[:partner_name]")
      end
    end

    class UpdateTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTarget, context: context)
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:database_version], ::String, context: "#{context}[:database_version]")
        Validators::SupportedOperationList.validate!(input[:supported_operations], context: "#{context}[:supported_operations]") unless input[:supported_operations].nil?
      end
    end

    class UsageLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageLimit, context: context)
        Hearth::Validator.validate!(input[:usage_limit_id], ::String, context: "#{context}[:usage_limit_id]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:feature_type], ::String, context: "#{context}[:feature_type]")
        Hearth::Validator.validate!(input[:limit_type], ::String, context: "#{context}[:limit_type]")
        Hearth::Validator.validate!(input[:amount], ::Integer, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:breach_action], ::String, context: "#{context}[:breach_action]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UsageLimitAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageLimitAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UsageLimitNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageLimitNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UsageLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UsageLimit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValueStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcEndpoint, context: context)
        Hearth::Validator.validate!(input[:vpc_endpoint_id], ::String, context: "#{context}[:vpc_endpoint_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::NetworkInterfaceList.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
      end
    end

    class VpcEndpointsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpcEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcSecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcSecurityGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcSecurityGroupMembership, context: context)
        Hearth::Validator.validate!(input[:vpc_security_group_id], ::String, context: "#{context}[:vpc_security_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class VpcSecurityGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VpcSecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
